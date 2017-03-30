local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

local path = "����, 188, 680, 0,    ����, 190, 680, 0,    ����, 186, 682, 0,    ����, 188, 676, 0,    ����, 190, 680, 0,    ����, 186, 682, 0,    ����, 188, 676, 0,    ����, 190, 680, 0,    ����, 186, 682, 0,    ����, 188, 676, 0,    ����, 190, 680, 0,    ����, 186, 682, 0,    ����, 188, 676, 0,    ����, 190, 680, 0,    ����, 186, 682, 0,    ����, 188, 676, 0,    ����, 190, 680, 0,    ����, 186, 682, 0,    ����, 188, 676, 0,    ����, 190, 680, 0,    ����, 186, 682, 0,    ����, 188, 676, 0,    ����, 190, 680, 0,    ����, 186, 682, 0,    ����, 188, 676, 0,    ����, 188, 680, 0,	����, 174, 666, 0,	����, 159, 641, 0,	����, 158, 632, 0,	����, 156, 606, 0,	����, 150, 600, 0,	����, 140, 600, 0,	����, 139, 583, 0,	����, 139, 577, 0,	����, 143, 572, 0,	����, 141, 560, 0,	����, 139, 551, 0,	����, 141, 537, 0,	����, 143, 523, 0,	����, 150, 510, 0,	����, 150, 502, 0,	����, 144, 496, 0,	����, 141, 484, 0,	����, 139, 474, 0,	����, 137, 446, 0,	����, 135, 431, 0,	����, 135, 415, 0,	����, 128, 410, 0,	����, 118, 410, 0,	����, 115, 404, 0,	����, 113, 396, 0,	����, 105, 392, 0,	����, 102, 388, 0,	����, 99, 376, 0,	����, 99, 368, 0,	����, 95, 356, 0,	����, 86, 357, 0,	����, 86, 351, 0,	����, 90, 345, 0,	����, 86, 334, 0,	����, 86, 324, 0,	����, 86, 311, 0,	����, 80, 303, 0,	����, 82, 292, 0,	����, 82, 270, 0,	����, 86, 266, 0,	����, 83, 256, 0,	����, 83, 227, 0,	����, 77, 221, 0,	����, 77, 211, 0,	����, 73, 203, 0,	����, 67, 197, 0,	����, 63, 193, 0,	����, 47, 193, 0,	����, 47, 192, 0,	����, 36, 113, 0,	����, 34, 97, 0,	����, 18, 97, 0,	����, 17, 97, 0,	���ٳ�, 424, 393, 0,	���ٳ�, 422, 389, 0,	���ٳ�, 388, 355, 0"
	
gQuestMap =
{
	{3001, "QuestAccept3001", "","*01*����: Ѻ��", ""}
}
gQuestNum = table.getn(gQuestMap)
Escorter = --��������
{
    campaign_id = 99771,        --�id
    req_npc = "���ڳ���",  --Ѻ�ͽ�����NPC
    str_gold = "�۽�ң����ڳ���������",
    str_ingot = "��Ԫ�������ڳ���������",
    req_gold = 0,            --Ѻ��������5000
    color_flag =             --Ѻ����ɫ��ʶ
    {
        --�ڳ���ɫ          ,Ԫ������   ,                ,�ڳ�����  ,�㲥 ,�ڳ�keyname
        {"#COLORCOLOR_BLUE#",   0,         "#COLOREND#", "�ڳ�����", false, "�ڳ�����"},
        {"#COLORCOLOR_GREENG#",  15,       "#COLOREND#", "�ڳ�����", false, "�ڳ�����"},
        {"#COLORCOLOR_PURPLE#",    15,       "#COLOREND#", "�ڳ�����", false, "�ڳ�����"},
        {"#COLORCOLOR_RED#",   15,       "#COLOREND#", "�ڳ�����", true, "�ڳ�����"},
        {"#COLORCOLOR_GOLD#" ,    15,       "#COLOREND#", "�ڳ�����", true, "�ڳ�����"},
    },
    cur_color = "escort_color",--��ǰ�ڳ���ɫ
    cur_level = "cur_level",   --����ڳ����˵ĵȼ�
    cur_guid = "cur_guid",     --����ڳ����˵�GUID
    life = 610,               --�ڳ�����ʱ��
    cur_dest = "cur_dest",     --�����ڳ�Ŀ�ĵ�
    escort_dest = "��ɽ����ͷ"
}

AwardList =
{
	{
		--����, 	 ���, 	 	��ѫ
		{357500,   	 500000,    3000},--һ���ڳ�
		{572000,   	 800000,    4800},--�����ڳ�
		{893750,   	 1250000,   7500},--�����ڳ�
		{1287000,  	 1800000,   10800},--�ļ��ڳ�
		{1787500,    2500000,   15000},--�弶�ڳ�
	},
	{250000, 	 400000, 	600000, 	900000, 	1250000},--Ѻ��
	{500000, 	 800000, 	1250000, 	1800000, 	2500000},--���ڽ���(���)
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
    --�Ƿ��ǻ�ڼ�˫������--��ô����
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
		lualib:ShowFormWithContent(player,"�ű���","EscorterNPC.msg1('�㼶�𲻹�����50���������ɣ�')")
		lualib:SysPromptMsg(player, "");
        return ""
    end

    if not Escorter:IsEscorterDied(player) then
		lualib:ShowFormWithContent(player,"�ű���","EscorterNPC.msg1('����������е�Ѻ������')")
		return ""
	end
	
	local count = lualib:GetDayInt(player, "Escorter_count");
	if count >= 3 then 
		lualib:ShowFormWithContent(player,"�ű���","EscorterNPC.msg1('�������ڴ��������꣬�޷�����')")
		return ""
	end
	local level = lualib:GetDayInt(player, "EscorterLevel");
	if level >= 4 then 
		lualib:ShowFormWithContent(player,"�ű���","EscorterNPC.msg1('�Ѿ�����ߵȼ����ڳ�')")
		return ""
	end
	local refresh_cost = lualib:GetDayInt(player, "Escorter_refresh_count")
	if refresh_cost < 3 then 
		lualib:SetDayInt(player, "Escorter_refresh_count", refresh_cost + 1)
	else
		if not Escorter:VerifyIngot(player, 50) then
			lualib:ShowFormWithContent(player,"�ű���","EscorterNPC.msg1('Ԫ������')")
			--lualib:SysPromptMsg(player, "");
			return ""
		end
		if not Escorter:SubIngot(player, 50) then
			lualib:ShowFormWithContent(player,"�ű���","EscorterNPC.msg1('�۳�Ԫ��ʧ��')")
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
		local str = "��ϲ����ˢ�µ���"..index.."���ڳ���";
		str = string.format("%q", str);
		lualib:ShowFormWithContent(player,"�ű���","EscorterNPC.msg1("..str..")")
	else
		index = next_level;
		lualib:ShowFormWithContent(player,"�ű���","EscorterNPC.msg1('ʧ���ˣ�ϴϴ��������')")
	end
	local DATA = {};
	DATA[0] = index;
	--�Ƿ��ǻ�ڼ�˫������
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
	lualib:ShowFormWithContent(player,"�ű���","EscorterNPC:Update("..serialize(DATA)..")")
	return ""
end

function Begin(player)
    if not Escorter:VerifyLevel(player) then
		lualib:ShowFormWithContent(player,"�ű���","EscorterNPC.msg2('�㼶�𲻹�����50���������ɣ�')")
		--lualib:SysPromptMsg(player, "");
        return ""
    end
	if not Escorter:IsEscorterDied(player) then
		lualib:ShowFormWithContent(player,"�ű���","EscorterNPC.msg2('����������е�Ѻ������')")
		return ""
	end
	
	local count = lualib:GetDayInt(player, "Escorter_count");
	if count >= 3 then 
		lualib:ShowFormWithContent(player,"�ű���","EscorterNPC.msg2('�������ڴ��������꣬�޷�����')")
		return ""
	end

    
	local level = lualib:GetDayInt(player, "EscorterLevel"); 
	local index = level + 1;
	
	local gold = AwardList[2][index];
	if not Escorter:VerifyGold(player, gold) then
		lualib:ShowFormWithContent(player,"�ű���","EscorterNPC.msg2('��Ҳ���(Ѻ��)')")
		--lualib:SysPromptMsg(player, "");
		return ""
	end
	if not Escorter:SubGold(player, gold) then 
		lualib:ShowFormWithContent(player,"�ű���","EscorterNPC.msg2('�۳����ʧ��')")
		--lualib:SysPromptMsg(player, "");
		return ""
	end
	if index >= 4 then 
		lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BLUE#["..lualib:Name(player).."]#COLORCOLOR_YELLOW#��ȡ��#COLORCOLOR_BLUE#"..index.."���ڳ�#COLORCOLOR_YELLOW#�����ڿ�ʼ���ͣ�#COLOREND#" , "" , 1, 0)
	end
	local monster = Escorter.color_flag[index][6]
	lualib:GenEscorter(player, monster, Escorter.life) 
	local player_name = lualib:Name(player)
	lualib:SetInt(lualib:GetEscorter(player), Escorter.cur_level, lualib:Level(player))
	lualib:SetStr(lualib:GetEscorter(player), Escorter.cur_dest, Escorter.escort_dest)
	lualib:SetStr(lualib:GetEscorter(player), Escorter.cur_guid, player)
	--lualib:SetStr(lualib:GetEscorter(player), Escorter.cur_name, player_name)
	--lualib:AddBuff(lualib:GetEscorter(player), "��ħ�����ֹ�Ȧ", 0);
	
	--lualib:ShowFormWithContent(player,"�ű���","EscorterNPC:CloseWnd();CL:AutoRunByPos('����',102,119)")
	--lualib:ShowFormWithContent(player,"�ű���","EscorterNPC:CloseWnd();CL:AutoRunByNpcName('��ħʹ��')")
	lualib:ShowFormWithContent(player,"�ű���","EscorterNPC:ChangeWnd()")
	local DATA = {}
	DATA[1] = 4;  --�򿪿ͻ������4
	--�Ƿ��ǻ�ڼ�˫������
	local IsInCampaign = 0
	if Escorter:IsInCampaign(player) then
		IsInCampaign = 1
	end
	DATA[2] = IsInCampaign;
	local AWARD = AwardList[1][index];
	DATA[3] = AWARD;
	DATA[4] = index;
	DATA[5] = 600; --����ʱ
	lualib:ShowFormWithContent(player, "form�ļ���", "EscorterNPC#".. serialize(DATA))	
	--[[
	if not lualib:HasQuest(player,7000) then
		lualib:AcceptQuest(player, 7000)
	end	
	--]]
	return ""
	
end

function wudi(player)
	lualib:AddBuff(player, "�޵�5��", 0)
	return ""
end


function Help(player)
	local family = lualib:GuildGuid(player);
	if family ~= "" then 
		local str = "#COLORCOLOR_BLUE#��"..lualib:Name(player).."��#COLORCOLOR_YELLOW#����ʱ��[��ɽ��](197,234)�����ٷˣ�����Ԯ����#COLOREND#"
		lualib:SysMsg_SendGuildMsg(family, str);
		--str = string.format("%q", str);
		--lualib:ShowFormWithContent(player,"�ű���","EscorterNPC:SendFamilyMsg("..str..")");
	end
	return ""
end

function TimeOut(player)
	lualib:SetDayInt(player, "EscorterLevel", 0);
	local count = lualib:GetDayInt(player, "Escorter_count")
	count = count + 1;
	lualib:SetDayInt(player, "Escorter_count",  count)
	
	lualib:ShowFormWithContent(player,"�ű���","EscorterNPC:RestoreWnd()")
	local DATA = {}
	DATA[1] = 3;  --�򿪿ͻ������3
	local sum = 3
	local remain = sum - count;
	if remain < 0 then 
		remain = 0;
	end
	DATA[2] = remain
	lualib:ShowFormWithContent(player, "form�ļ���", "EscorterNPC#".. serialize(DATA))	
	if not lualib:RemoveEscorter(player) then
        return "TimeOut�Ƴ��ڳ�ʧ��"
	else
		
	end
	return ""
end

function GetAward(player)
	local level = lualib:GetDayInt(player, "EscorterLevel"); 
	local index = level + 1;
	local deposit = AwardList[2][index] 
	--����Ѻ��
	if not lualib:Player_AddGold(player, deposit, false, "����Ѻ��", "Ѻ��") then
       return "����Ѻ�����"           
	end
	
	local AWARD = AwardList[1][index];
	local exp = AWARD[1];
	local gold = AWARD[2];
	local achieve = AWARD[3];
	--�Ƿ��ǻ�ڼ�˫������
	if Escorter:IsInCampaign(player) then
		exp = exp * 2;
		gold = gold * 2;
		achieve = achieve * 2;
	end
	lualib:SetDayInt(player, "EscorterLevel", 0);
	if not lualib:Player_AddExp(player, exp, "�Ӿ��飺Ѻ��", "Ѻ��")  then
		return "�����������"
	end
	if not lualib:Player_AddGold(player, gold, true, "�ӽ��", "Ѻ��") then
       return "������ҳ���"           
	end
	lualib:SetInt(player, "ach_score", lualib:GetInt(player, "ach_score") + achieve);
	--lualib:DropQuest(player, 7000)
	
	
	local count = lualib:GetDayInt(player, "Escorter_count")
	count = count + 1;
	lualib:SetDayInt(player, "Escorter_count",  count)
	lualib:ShowFormWithContent(player,"�ű���","EscorterNPC:RestoreWnd()")
	local DATA = {}
	DATA[1] = 2;  --�򿪿ͻ������2
	local AWARD = AwardList[1][index];
	DATA[2] = AWARD;
	local sum = 3
	DATA[3] = sum - count;
	lualib:ShowFormWithContent(player, "form�ļ���", "EscorterNPC#".. serialize(DATA))
    return ""        
end

function Continue(player)
	lualib:Player_MapMoveXY(player, "��ɽ��" , 175 , 208 , 6 )
	local DATA = {}
	DATA[1] = 1;  --�򿪿ͻ������1
	local level = lualib:GetDayInt(player, "EscorterLevel");
	local index = level + 1;
	DATA[0] = index;
	--�Ƿ��ǻ�ڼ�˫������
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

	lualib:ShowFormWithContent(player, "form�ļ���", "EscorterNPC#".. serialize(DATA))
	return ""
end


