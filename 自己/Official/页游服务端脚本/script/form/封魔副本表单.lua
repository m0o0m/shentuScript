local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
--require("form/MarsWnd_s")
require("map/封魔副本")
require("form/ActivityDegree_s")




function main(player)
	--lualib:SysPromptMsg(player, "main")
	local level = lualib:Level(player)
	if level < 66 then 
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonster.msg1('您等级不足,66级才能参加封魔副本')")
		return ''
	end
	local dayCounts = lualib:GetDayInt(player, "fengmo_count")
	local dayCounts = lualib:GetInt(player, "fengmo_count")
	if dayCounts >= 3 then 
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonster.msg1('今天可进入次数已满,请明天再来')")
	else
		if lualib:Player_GetBagFree(player) < 1 then 
			lualib:ShowFormWithContent(player, "脚本表单", "PreventMonster.msg1('背包已满,请先清理背包')")
			--lualib:SysPromptMsg(player, "背包已满,请先清理背包");
			--lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip('包裹已经满了,请先清空包裹')");
			return ""
		end
		local dgnGuid = lualib:Map_CreateDgn("封魔副本", false, 21*60)
		--lualib:Map_JumpXY(dgnGuid, player, 55, 88, 10) --不可用这个接口,坑的界面都没了
		lualib:Player_SetDgnTicket(player, dgnGuid)
		lualib:Player_EnterDgn(player, "封魔副本", 6, 26, 5)
		lualib:SetDayInt(player, "fengmo_count", dayCounts + 1);
		lualib:SetInt(player, "fengmo_count", dayCounts + 1);
		if dayCounts >= 2 then 
			if lualib:HasQuest(player, 20000) then
				lualib:DropQuest(player, 20000);	
			end
		end
		----------------活跃度相关--------------------------------------------
		local count = lualib:GetDayInt(player,"activityDgr_fm")
			if 0 == count then
				lualib:SetDayInt(player,"activityDgr_fm", 1)
				lualib:SetDayInt(player, "totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 10)
				ActivityDegree_setFlag(player)
			end
		----------------活跃度相关END-----------------------------------------
		--lualib:SysPromptMsg(player, "fengmo_count="..lualib:GetDayInt(player, "fengmo_count"))
		lualib:ShowFormWithContent(player,"脚本表单","PreventMonster:CloseWnd()")
	end
	return ""
end

function BeginGenMonster(player)
	FM_BeginGenMonster(player)
	return ""
end

function GenArrowGuarder(player)
	
	local num = lualib:ItemCount(player, "弓箭手令牌");
	if num <= 0 then 
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip('缺少道具[神弓营军令]')");
		return ""
	end
	local map = lualib:MapGuid(player)
	local keyname = lualib:KeyName(map);
	if keyname ~= "封魔副本" then 
		return ""
	end
	local count = lualib:GetInt(map, "guarderCount");
	if count >= 16 then 
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip('地图守卫数量不能超过16个')");
		return ""
	end
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local ranges = {1, x, y, 0, 0};
	local MONSTERS = lualib:Map_GetRegionMonstersCount(map, "塔防弓箭侍卫", ranges, true, true);
	--lualib:SysPromptMsg(player, ''..MONSTERS);
	if MONSTERS > 0 then 
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip('这个地方已经有守卫了,请换个地方召唤')");
		return ""
	end
	MONSTERS = lualib:Map_GetRegionMonstersCount(map, "塔防魔法侍卫", ranges, true, true);
	if MONSTERS > 0 then 
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip('这个地方已经有守卫了,请换个地方召唤')");
		return ""
	end
	local monster = lualib:Map_GenSingleMonster(map, x, y, 0, 1, "塔防弓箭侍卫", false);
	if monster ~= "" then 
		
		lualib:SetCamp(monster, 2)                           --设置角色阵营
		--local zheny = lualib:Camp(sw_guid[1]);
		--lualib:SysMsg_SendPromptMsg(player, "召唤弓箭守卫成功");
		lualib:DelItem(player, "弓箭手令牌", 1, 2, "刷塔防弓箭侍卫", "封魔副本");
		num = num - 1;
		local monsterNum = lualib:GetInt(map, "guarderCount");
		local lastCount = 15 - monsterNum;
		local monsterNum_s = "\"召唤弓箭守卫成功，本次副本还可召唤"..lastCount.."次\"";
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip("..monsterNum_s..");");
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:UpDataArrowNumble(".. num ..");");
		lualib:SetInt(map, "guarderCount", monsterNum + 1);
	end
	return ""
end

function GenMagicGuarder(player)
	local num = lualib:ItemCount(player, "法神令牌");
	if num <= 0 then 
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip('缺少道具[法神营军令]')");
		return ""
	end
	local map = lualib:MapGuid(player)
	local keyname = lualib:KeyName(map);
	if keyname ~= "封魔副本" then 
		return ""
	end
	local count = lualib:GetInt(map, "guarderCount");
	if count >= 16 then 
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip('地图守卫数量不能超过16个')");
		return ""
	end
	
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local ranges = {1, x, y, 0, 0};
	local MONSTERS = lualib:Map_GetRegionMonstersCount(map, "塔防弓箭侍卫", ranges, true, true);
	if MONSTERS > 0 then 
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip('这个地方已经有守卫了,请换个地方召唤')");
		return ""
	end
	MONSTERS = lualib:Map_GetRegionMonstersCount(map, "塔防魔法侍卫", ranges, true, true);
	if MONSTERS > 0 then 
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip('这个地方已经有守卫了,请换个地方召唤')");
		return ""
	end
	local monster = lualib:Map_GenSingleMonster(map, x, y, 0, 1, "塔防魔法侍卫", false);
	--lualib:SysPromptMsg(player, monster);
	if monster ~= "" then 
		lualib:SetCamp(monster, 2)                           --设置角色阵营
		--local zheny = lualib:Camp(sw_guid[1]);
		--lualib:SysMsg_SendPromptMsg(player, "召唤法神守卫成功");
		lualib:DelItem(player, "法神令牌", 1, 2, "刷塔防法神侍卫", "封魔副本");
		num = num - 1;
		local monsterNum = lualib:GetInt(map, "guarderCount");
		local lastCount = 15 - monsterNum;
		local monsterNum_s = "\"召唤法神守卫成功，本次副本还可召唤"..lastCount.."次\"";
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip("..monsterNum_s..");");
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:UpDataMagicNumble(".. num ..");");
		lualib:SetInt(map, "guarderCount", monsterNum + 1);
	end
	return ""
end

function BuyArrow(player)
	--lualib:SysPromptMsg(player, "BuyArrow");
	if lualib:Player_GetBagFree(player) < 1 then 
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip('包裹已经满了,请先清空包裹')");
		return ""
	end
	if lualib:Player_IsIngotEnough(player, 500, true) == false then
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip('绑定元宝不足')");
		return ""
	else
		if lualib:Player_SubIngot(player, 500, true, "购买神弓守卫", player) == false then
			return "扣除绑定元宝失败"
		else
			lualib:AddItem(player,"弓箭手令牌", 1, true, "购买神弓守卫", player)
			local num = lualib:ItemCount(player, "弓箭手令牌");
			lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:UpDataArrowNumble(".. num ..")");
		end
	end
	return ""
end


function BuyMagic(player)
	--lualib:SysPromptMsg(player, "BuyMagic");
	if lualib:Player_GetBagFree(player) < 1 then 
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip('包裹已经满了,请先清空包裹')");
		return ""
	end
	
	if lualib:Player_IsIngotEnough(player, 99, false) == false then
		lualib:ShowFormWithContent(player,"脚本表单","PreventMonster.YBMsg()") 
		--lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip('元宝不足')");
		return ""
	else
		if lualib:Player_SubIngot(player, 99, false, "购买塔防魔法侍卫", player) == false then
			return "扣除元宝失败"
		else
			lualib:AddItem(player,"法神令牌", 1, true, "购买法神守卫", player)
			local num = lualib:ItemCount(player, "法神令牌");
			lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:UpDataMagicNumble(".. num ..")");
		end
	end
	return ""
end

function AddBuff(player, index)
	--lualib:SysPromptMsg(player, "AddBuff"..index);
	if tonumber(index) == 1 then 
		lualib:AddBuff(player, "封魔弓箭手光圈", 0);
	elseif tonumber(index) == 2 then
		lualib:AddBuff(player, "封魔法神光圈", 0);
	end
	return ""
end

function DelBuff(player, index)
	--lualib:SysPromptMsg(player, "DelBuff"..index);
	if tonumber(index) == 1 then 
		lualib:DelBuff(player, "封魔弓箭手光圈");
	elseif tonumber(index) == 2 then
		lualib:DelBuff(player, "封魔法神光圈");
	end
	return ""
end

function Exit(player)
	--lualib:SysPromptMsg(player, "Exit");
	local map = lualib:MapGuid(player);
	local IsEnd = lualib:GetInt(map, "IsEnd");
	if IsEnd == 1 then 
		lualib:Player_MapMoveXY(player, "巫山城" , 161 , 207 , 3 );
	else
		lualib:ShowFormWithContent(player, "脚本表单", "PreventMonster_c2.ConfirmDlg()");
	end
	return ""
end

function LeaveMap(player)
	lualib:Player_MapMoveXY(player, "巫山城" , 161 , 207 , 3 );
	return ""
end


function GoToGetAward(player)
	local ret = lualib:Player_MapMoveXY(player, "巫山城", 161, 207, 2)
    if ret ~= true then
        return "跳地图失败"
    end
	local totalExp = lualib:GetInt(player, "TotalOfExp");
	local getExp = lualib:GetInt(player, "exp");
	local loseExp = totalExp - getExp;
	--lualib:SysPromptMsg(player, ""..getExp);
	if getExp ~= 0 then 
		local TABLE =
		{
			{0, 0, 1, 2, 3, 4},
			{0,500, 1100, 1800, 2600, 5000},
		}
		local vip_level = lualib:GetVipLevel(player);
		
		local ingot = lualib:GetIngot(player);
		local grade = 0 
		for i = 1, 6 do 
			if vip_level >= TABLE[1][i] then 
				grade = i
			end
		end
		local index = 2  --1是打开功能面板,index=2时打开领奖面板,3是经验值提示框
		local lostExp = lualib:GetInt(player, "lostExp");
		lualib:ShowFormWithContent(player, "form文件表单", "PreventMonster#".. index .."#"..getExp.."#"..loseExp.."#"..grade)
		return ""
	end
	return ""
end



function GetAward(player, index)
	index = tonumber(index);
	local getExp = lualib:GetInt(player, "exp");
	if getExp <= 0 then
		return ""
	end
	local vip_level = lualib:GetVipLevel(player);
	if index == 6 then 
		if vip_level < 4 then 
			lualib:ShowFormWithContent(player,"脚本表单","PreventMonster.msg(".. 6 .. ",".."'VIP等级不足'"..")") 
			return ""
		end
		if lualib:Player_IsIngotEnough(player, 5000, false) == false then
			lualib:ShowFormWithContent(player,"脚本表单","PreventMonster.YBMsg()") 
			return ""
		else
			local getTotalExp = getExp * 8
			if lualib:Player_SubIngot(player, 5000, false, "封魔副本领取奖励", player) == false then
				return "扣除元宝失败"
			else
				if not lualib:Player_AddExp(player, getTotalExp, "封魔副本领取奖励", "封魔副本领取奖励")  then
					lualib:Error("封魔副本领取奖励奖励经验出错！");
					return ""
				end
			end
			--lualib:ShowFormWithContent(player,"脚本表单","PreventMonster.msg(".. 6 .. ",".."'领取成功'"..")");
			lualib:ShowFormWithContent(player,"脚本表单","PreventMonster.CloseWnd2()");
			local index = 3  --1是打开功能面板,index=2时打开领奖面板,3是经验值提示框
			lualib:ShowFormWithContent(player, "form文件表单", "PreventMonster#".. index .."#"..getTotalExp)
			--lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip(".."'完成封魔任务获得经验'"..getTotalExp..")");
		end
	elseif index == 1 then 
		if not lualib:Player_AddExp(player, getExp, "封魔副本领取奖励", "封魔副本领取奖励")  then
			lualib:Error("封魔副本领取奖励奖励经验出错！");
			return ""
		end
		--lualib:ShowFormWithContent(player,"脚本表单","PreventMonster.msg(".. 1 .. ",".."'领取成功'"..")");
		lualib:ShowFormWithContent(player,"脚本表单","PreventMonster.CloseWnd2()");
		local index = 3  --1是打开功能面板,index=2时打开领奖面板,3是经验值提示框
		lualib:ShowFormWithContent(player, "form文件表单", "PreventMonster#".. index .."#"..getExp);
		--lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip(".."\"完成封魔任务获得经验"..getExp.."\")");
		
	else
		local TABLE = 
		{
			{0, 0, 1, 2, 3, 4},
			{0, 500, 1100, 1800, 2600, 5000},
		}
		if vip_level < TABLE[1][index] then 
			lualib:ShowFormWithContent(player,"脚本表单","PreventMonster.msg(".. index .. ",".."'VIP等级不足'"..")");
			return ""
		end
		if lualib:Player_IsIngotEnough(player, TABLE[2][index], false) == false then
			lualib:ShowFormWithContent(player,"脚本表单","PreventMonster.YBMsg()") 
			return ""
		else
			if lualib:Player_SubIngot(player, TABLE[2][index], false, "封魔副本领取奖励", player) == false then
				return "扣除元宝失败"
			else
				local getTotalExp = getExp * index
				if not lualib:Player_AddExp(player, getTotalExp, "封魔副本领取奖励", "封魔副本领取奖励")  then
					lualib:Error("封魔副本领取奖励奖励经验出错！");
					return ""
				end
				--lualib:ShowFormWithContent(player,"脚本表单","PreventMonster.msg(".. index .. ",".."'领取成功'"..")");
				lualib:ShowFormWithContent(player,"脚本表单","PreventMonster.CloseWnd2()");
				local index = 3  --1是打开功能面板,index=2时打开领奖面板,3是经验值提示框
				lualib:ShowFormWithContent(player, "form文件表单", "PreventMonster#".. index .."#"..getTotalExp)
				--lualib:ShowFormWithContent(player, "脚本表单", "PreventMonsterChildWnd:bottom_msg_tip(".."'完成封魔任务获得经验'"..getTotalExp..")");
				
			end
		end
	end
	lualib:SetInt(player, "TotalOfMonster", 0);
	lualib:SetInt(player, "KillCount", 0);
	lualib:SetInt(player, "TotalOfExp", 0);
	lualib:SetInt(player, "exp", 0);
	return ""
end
