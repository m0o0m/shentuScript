local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

local path = "龙城, 188, 680, 0,    龙城, 190, 680, 0,    龙城, 186, 682, 0,    龙城, 188, 676, 0,    龙城, 190, 680, 0,    龙城, 186, 682, 0,    龙城, 188, 676, 0,    龙城, 190, 680, 0,    龙城, 186, 682, 0,    龙城, 188, 676, 0,    龙城, 190, 680, 0,    龙城, 186, 682, 0,    龙城, 188, 676, 0,    龙城, 190, 680, 0,    龙城, 186, 682, 0,    龙城, 188, 676, 0,    龙城, 190, 680, 0,    龙城, 186, 682, 0,    龙城, 188, 676, 0,    龙城, 190, 680, 0,    龙城, 186, 682, 0,    龙城, 188, 676, 0,    龙城, 190, 680, 0,    龙城, 186, 682, 0,    龙城, 188, 676, 0,    龙城, 188, 680, 0,	龙城, 174, 666, 0,	龙城, 159, 641, 0,	龙城, 158, 632, 0,	龙城, 156, 606, 0,	龙城, 150, 600, 0,	龙城, 140, 600, 0,	龙城, 139, 583, 0,	龙城, 139, 577, 0,	龙城, 143, 572, 0,	龙城, 141, 560, 0,	龙城, 139, 551, 0,	龙城, 141, 537, 0,	龙城, 143, 523, 0,	龙城, 150, 510, 0,	龙城, 150, 502, 0,	龙城, 144, 496, 0,	龙城, 141, 484, 0,	龙城, 139, 474, 0,	龙城, 137, 446, 0,	龙城, 135, 431, 0,	龙城, 135, 415, 0,	龙城, 128, 410, 0,	龙城, 118, 410, 0,	龙城, 115, 404, 0,	龙城, 113, 396, 0,	龙城, 105, 392, 0,	龙城, 102, 388, 0,	龙城, 99, 376, 0,	龙城, 99, 368, 0,	龙城, 95, 356, 0,	龙城, 86, 357, 0,	龙城, 86, 351, 0,	龙城, 90, 345, 0,	龙城, 86, 334, 0,	龙城, 86, 324, 0,	龙城, 86, 311, 0,	龙城, 80, 303, 0,	龙城, 82, 292, 0,	龙城, 82, 270, 0,	龙城, 86, 266, 0,	龙城, 83, 256, 0,	龙城, 83, 227, 0,	龙城, 77, 221, 0,	龙城, 77, 211, 0,	龙城, 73, 203, 0,	龙城, 67, 197, 0,	龙城, 63, 193, 0,	龙城, 47, 193, 0,	龙城, 47, 192, 0,	龙城, 36, 113, 0,	龙城, 34, 97, 0,	龙城, 18, 97, 0,	龙城, 17, 97, 0,	东临城, 424, 393, 0,	东临城, 422, 389, 0,	东临城, 388, 355, 0"
	
gQuestMap =
{
	{3001, "QuestAccept3001", "","*01*任务: 押镖", ""}
}
gQuestNum = table.getn(gQuestMap)
Escorter = --领任务用
{
    campaign_id = 99771,        --活动id
    req_npc = "运镖车夫",  --押送接任务NPC
    str_gold = "扣金币：接镖车护送任务",
    str_ingot = "扣元宝：接镖车护送任务",
    req_gold = 0,            --押送需求金币5000
    color_flag =             --押送颜色标识
    {
        --镖车颜色          ,元宝花费   ,                ,镖车名字  ,广播 ,镖车keyname
        {"#COLORCOLOR_BLUE#",   0,         "#COLOREND#", "镖车·普", false, "镖车·普"},
        {"#COLORCOLOR_GREENG#",  15,       "#COLOREND#", "镖车·极", false, "镖车·极"},
        {"#COLORCOLOR_PURPLE#",    15,       "#COLOREND#", "镖车·珍", false, "镖车·珍"},
        {"#COLORCOLOR_RED#",   15,       "#COLOREND#", "镖车·绝", true, "镖车·绝"},
        {"#COLORCOLOR_GOLD#" ,    15,       "#COLOREND#", "镖车·神", true, "镖车·神"},
    },
    cur_color = "escort_color",--当前镖车颜色
    cur_level = "cur_level",   --存放镖车主人的等级
    cur_guid = "cur_guid",     --存放镖车主人的GUID
    life = 610,               --镖车存在时间
    cur_dest = "cur_dest",     --保存镖车目的地
    escort_dest = "巫山城镖头"
}

AwardList =
{
	{
		--经验, 	 绑金, 	 	功勋
		{357500,   	 500000,    3000},--一级镖车
		{572000,   	 800000,    4800},--二级镖车
		{893750,   	 1250000,   7500},--三级镖车
		{1287000,  	 1800000,   10800},--四级镖车
		{1787500,    2500000,   15000},--五级镖车
	},
	{250000, 	 400000, 	600000, 	900000, 	1250000},--押金
	{500000, 	 800000, 	1250000, 	1800000, 	2500000},--劫镖奖励(绑金)
}
--------------------------------------------------------------------------------
function Escorter:VerifyLevel(player)
    return lualib:VerifyCampLevel(player, self.campaign_id)
	
end

function Escorter:VerifyCampaign(player)
    return lualib:VerifyCampCount(player, self.campaign_id)
end

function Escorter:JoinCampaign(player)
    lualib:JoinCamp(player, self.campaign_id, 0)
end

function Escorter:VerifyGold(player, req_gold)
    return lualib:Player_IsGoldEnough(player, req_gold, false)
end

function Escorter:SubGold(player, req_gold)
    return lualib:Player_SubGold(player, req_gold, false,
        self.str_gold, self.req_npc)
end

function Escorter:VerifyIngot(player, ingot)
    return lualib:Player_IsIngotEnough(player, ingot, false)
end

function Escorter:SubIngot(player, ingot)
    return lualib:Player_SubIngot(player, ingot, false,
            self.str_ingot, self.req_npc)
end

function Escorter:SetColor(player, color)
    lualib:SetInt(player, self.cur_color, color)
end

function Escorter:GetColor(player)
    return lualib:GetInt(player, self.cur_color)
end

function Escorter:GenColor(player)
    local color = self:GetColor(player)
    if color == #self.color_flag then return nil, nil end

    color = math.random(1, #self.color_flag)
    return color, self.color_flag[color][2]
end

function Escorter:IsEscorterDied(player)
    if lualib:IsEscorterDied(player) then
        self:SetColor(player, 0)
        return true
    end
    return false
end

function Escorter:IsInCampaign(player)
    --是否是活动期间双倍奖励--这么经典
	local cur_time = lualib:GetAllTime()
	local cur_time_str = lualib:Time2Str("%H%M", cur_time)  
	cur_time_str = tonumber(cur_time_str)
	if (cur_time_str > 1040 and cur_time_str <= 1100) or (cur_time_str > 1840 and cur_time_str <= 1900) then
		return true
	else
		return false
	end
end
----------------------------------------------------------------------------------------------------------------------

function Refresh(player)
	if not Escorter:VerifyLevel(player) then
		lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC.msg1('你级别不够，请50级后再来吧！')")
		lualib:SysPromptMsg(player, "");
        return ""
    end

    if not Escorter:IsEscorterDied(player) then
		lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC.msg1('请先完成已有的押镖任务')")
		return ""
	end
	
	local count = lualib:GetDayInt(player, "Escorter_count");
	if count >= 3 then 
		lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC.msg1('今日运镖次数已用完，无法运镖')")
		return ""
	end
	local level = lualib:GetDayInt(player, "EscorterLevel");
	if level >= 4 then 
		lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC.msg1('已经是最高等级的镖车')")
		return ""
	end
	local refresh_cost = lualib:GetDayInt(player, "Escorter_refresh_count")
	if refresh_cost < 3 then 
		lualib:SetDayInt(player, "Escorter_refresh_count", refresh_cost + 1)
	else
		if not Escorter:VerifyIngot(player, 50) then
			lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC.msg1('元宝不足')")
			--lualib:SysPromptMsg(player, "");
			return ""
		end
		if not Escorter:SubIngot(player, 50) then
			lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC.msg1('扣除元宝失败')")
			--lualib:SysPromptMsg(player, "");
			return ""
		end
	end
	
	local RATE = {100, 90, 80, 70};
	local rate = math.random(1, 100);
	local next_level = level + 1;
	local index = 0
	if rate <= RATE[next_level] then 
		lualib:SetDayInt(player, "EscorterLevel", next_level);
		index = next_level + 1;
		local str = "恭喜您，刷新到："..index.."级镖车！";
		str = string.format("%q", str);
		lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC.msg1("..str..")")
	else
		index = next_level;
		lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC.msg1('失败了，洗洗脸再来！')")
	end
	local DATA = {};
	DATA[0] = index;
	--是否是活动期间双倍奖励
	local IsInCampaign = 0
	if Escorter:IsInCampaign(player) then
		IsInCampaign = 1
	end
	DATA[1] = IsInCampaign;
	DATA[2] = AwardList[1][index];
	local level = lualib:GetDayInt(player, "EscorterLevel");
	DATA[3] = AwardList[2][index];
	local sum = 3
	local refresh_cost = lualib:GetDayInt(player, "Escorter_refresh_count")
	local refresh_remain = sum - refresh_cost
	DATA[4] = refresh_remain;
	lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC:Update("..serialize(DATA)..")")
	return ""
end

function Begin(player)
    if not Escorter:VerifyLevel(player) then
		lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC.msg2('你级别不够，请50级后再来吧！')")
		--lualib:SysPromptMsg(player, "");
        return ""
    end
	if not Escorter:IsEscorterDied(player) then
		lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC.msg2('请先完成已有的押镖任务')")
		return ""
	end
	
	local count = lualib:GetDayInt(player, "Escorter_count");
	if count >= 3 then 
		lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC.msg2('今日运镖次数已用完，无法运镖')")
		return ""
	end

    
	local level = lualib:GetDayInt(player, "EscorterLevel"); 
	local index = level + 1;
	
	local gold = AwardList[2][index];
	if not Escorter:VerifyGold(player, gold) then
		lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC.msg2('金币不足(押金)')")
		--lualib:SysPromptMsg(player, "");
		return ""
	end
	if not Escorter:SubGold(player, gold) then 
		lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC.msg2('扣除金币失败')")
		--lualib:SysPromptMsg(player, "");
		return ""
	end
	if index >= 4 then 
		lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BLUE#["..lualib:Name(player).."]#COLORCOLOR_YELLOW#接取了#COLORCOLOR_BLUE#"..index.."级镖车#COLORCOLOR_YELLOW#，现在开始护送！#COLOREND#" , "" , 1, 0)
	end
	local monster = Escorter.color_flag[index][6]
	lualib:GenEscorter(player, monster, Escorter.life) 
	local player_name = lualib:Name(player)
	lualib:SetInt(lualib:GetEscorter(player), Escorter.cur_level, lualib:Level(player))
	lualib:SetStr(lualib:GetEscorter(player), Escorter.cur_dest, Escorter.escort_dest)
	lualib:SetStr(lualib:GetEscorter(player), Escorter.cur_guid, player)
	--lualib:SetStr(lualib:GetEscorter(player), Escorter.cur_name, player_name)
	--lualib:AddBuff(lualib:GetEscorter(player), "封魔弓箭手光圈", 0);
	
	--lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC:CloseWnd();CL:AutoRunByPos('龙城',102,119)")
	--lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC:CloseWnd();CL:AutoRunByNpcName('封魔使节')")
	lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC:ChangeWnd()")
	local DATA = {}
	DATA[1] = 4;  --打开客户端面板4
	--是否是活动期间双倍奖励
	local IsInCampaign = 0
	if Escorter:IsInCampaign(player) then
		IsInCampaign = 1
	end
	DATA[2] = IsInCampaign;
	local AWARD = AwardList[1][index];
	DATA[3] = AWARD;
	DATA[4] = index;
	DATA[5] = 600; --倒计时
	lualib:ShowFormWithContent(player, "form文件表单", "EscorterNPC#".. serialize(DATA))	
	--[[
	if not lualib:HasQuest(player,7000) then
		lualib:AcceptQuest(player, 7000)
	end	
	--]]
	return ""
	
end

function wudi(player)
	lualib:AddBuff(player, "无敌5秒", 0)
	return ""
end


function Help(player)
	local family = lualib:GuildGuid(player);
	if family ~= "" then 
		local str = "#COLORCOLOR_BLUE#［"..lualib:Name(player).."］#COLORCOLOR_YELLOW#运镖时于[巫山城](197,234)遭遇劫匪，请求援助！#COLOREND#"
		lualib:SysMsg_SendGuildMsg(family, str);
		--str = string.format("%q", str);
		--lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC:SendFamilyMsg("..str..")");
	end
	return ""
end

function TimeOut(player)
	lualib:SetDayInt(player, "EscorterLevel", 0);
	local count = lualib:GetDayInt(player, "Escorter_count")
	count = count + 1;
	lualib:SetDayInt(player, "Escorter_count",  count)
	
	lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC:RestoreWnd()")
	local DATA = {}
	DATA[1] = 3;  --打开客户端面板3
	local sum = 3
	local remain = sum - count;
	if remain < 0 then 
		remain = 0;
	end
	DATA[2] = remain
	lualib:ShowFormWithContent(player, "form文件表单", "EscorterNPC#".. serialize(DATA))	
	if not lualib:RemoveEscorter(player) then
        return "TimeOut移除镖车失败"
	else
		
	end
	return ""
end

function GetAward(player)
	local level = lualib:GetDayInt(player, "EscorterLevel"); 
	local index = level + 1;
	local deposit = AwardList[2][index] 
	--返还押金
	if not lualib:Player_AddGold(player, deposit, false, "返还押金", "押镖") then
       return "返还押金出错！"           
	end
	
	local AWARD = AwardList[1][index];
	local exp = AWARD[1];
	local gold = AWARD[2];
	local achieve = AWARD[3];
	--是否是活动期间双倍奖励
	if Escorter:IsInCampaign(player) then
		exp = exp * 2;
		gold = gold * 2;
		achieve = achieve * 2;
	end
	lualib:SetDayInt(player, "EscorterLevel", 0);
	if not lualib:Player_AddExp(player, exp, "加经验：押镖", "押镖")  then
		return "奖励经验出错！"
	end
	if not lualib:Player_AddGold(player, gold, true, "加金币", "押镖") then
       return "奖励金币出错！"           
	end
	lualib:SetInt(player, "ach_score", lualib:GetInt(player, "ach_score") + achieve);
	--lualib:DropQuest(player, 7000)
	
	
	local count = lualib:GetDayInt(player, "Escorter_count")
	count = count + 1;
	lualib:SetDayInt(player, "Escorter_count",  count)
	lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC:RestoreWnd()")
	local DATA = {}
	DATA[1] = 2;  --打开客户端面板2
	local AWARD = AwardList[1][index];
	DATA[2] = AWARD;
	local sum = 3
	DATA[3] = sum - count;
	lualib:ShowFormWithContent(player, "form文件表单", "EscorterNPC#".. serialize(DATA))
    return ""        
end

function Continue(player)
	lualib:Player_MapMoveXY(player, "巫山城" , 175 , 208 , 6 )
	local DATA = {}
	DATA[1] = 1;  --打开客户端面板1
	local level = lualib:GetDayInt(player, "EscorterLevel");
	local index = level + 1;
	DATA[0] = index;
	--是否是活动期间双倍奖励
	local IsInCampaign = 0
	if Escorter:IsInCampaign(player) then
		IsInCampaign = 1
	end
	DATA[2] = IsInCampaign;
	DATA[3] = AwardList;
	local sum = 3
	local cost = lualib:GetDayInt(player, "Escorter_count")
	local refresh_cost = lualib:GetDayInt(player, "Escorter_refresh_count")
	local refresh_remain = sum - refresh_cost
	DATA[4] = refresh_remain;
	DATA[5] = cost;

	lualib:ShowFormWithContent(player, "form文件表单", "EscorterNPC#".. serialize(DATA))
	return ""
end


