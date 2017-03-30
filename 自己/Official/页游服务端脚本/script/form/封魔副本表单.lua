local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
--require("form/MarsWnd_s")
require("map/��ħ����")
require("form/ActivityDegree_s")




function main(player)
	--lualib:SysPromptMsg(player, "main")
	local level = lualib:Level(player)
	if level < 66 then 
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonster.msg1('���ȼ�����,66�����ܲμӷ�ħ����')")
		return ''
	end
	local dayCounts = lualib:GetDayInt(player, "fengmo_count")
	local dayCounts = lualib:GetInt(player, "fengmo_count")
	if dayCounts >= 3 then 
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonster.msg1('����ɽ����������,����������')")
	else
		if lualib:Player_GetBagFree(player) < 1 then 
			lualib:ShowFormWithContent(player, "�ű���", "PreventMonster.msg1('��������,����������')")
			--lualib:SysPromptMsg(player, "��������,����������");
			--lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip('�����Ѿ�����,������հ���')");
			return ""
		end
		local dgnGuid = lualib:Map_CreateDgn("��ħ����", false, 21*60)
		--lualib:Map_JumpXY(dgnGuid, player, 55, 88, 10) --����������ӿ�,�ӵĽ��涼û��
		lualib:Player_SetDgnTicket(player, dgnGuid)
		lualib:Player_EnterDgn(player, "��ħ����", 6, 26, 5)
		lualib:SetDayInt(player, "fengmo_count", dayCounts + 1);
		lualib:SetInt(player, "fengmo_count", dayCounts + 1);
		if dayCounts >= 2 then 
			if lualib:HasQuest(player, 20000) then
				lualib:DropQuest(player, 20000);	
			end
		end
		----------------��Ծ�����--------------------------------------------
		local count = lualib:GetDayInt(player,"activityDgr_fm")
			if 0 == count then
				lualib:SetDayInt(player,"activityDgr_fm", 1)
				lualib:SetDayInt(player, "totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 10)
				ActivityDegree_setFlag(player)
			end
		----------------��Ծ�����END-----------------------------------------
		--lualib:SysPromptMsg(player, "fengmo_count="..lualib:GetDayInt(player, "fengmo_count"))
		lualib:ShowFormWithContent(player,"�ű���","PreventMonster:CloseWnd()")
	end
	return ""
end

function BeginGenMonster(player)
	FM_BeginGenMonster(player)
	return ""
end

function GenArrowGuarder(player)
	
	local num = lualib:ItemCount(player, "����������");
	if num <= 0 then 
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip('ȱ�ٵ���[��Ӫ����]')");
		return ""
	end
	local map = lualib:MapGuid(player)
	local keyname = lualib:KeyName(map);
	if keyname ~= "��ħ����" then 
		return ""
	end
	local count = lualib:GetInt(map, "guarderCount");
	if count >= 16 then 
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip('��ͼ�����������ܳ���16��')");
		return ""
	end
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local ranges = {1, x, y, 0, 0};
	local MONSTERS = lualib:Map_GetRegionMonstersCount(map, "������������", ranges, true, true);
	--lualib:SysPromptMsg(player, ''..MONSTERS);
	if MONSTERS > 0 then 
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip('����ط��Ѿ���������,�뻻���ط��ٻ�')");
		return ""
	end
	MONSTERS = lualib:Map_GetRegionMonstersCount(map, "����ħ������", ranges, true, true);
	if MONSTERS > 0 then 
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip('����ط��Ѿ���������,�뻻���ط��ٻ�')");
		return ""
	end
	local monster = lualib:Map_GenSingleMonster(map, x, y, 0, 1, "������������", false);
	if monster ~= "" then 
		
		lualib:SetCamp(monster, 2)                           --���ý�ɫ��Ӫ
		--local zheny = lualib:Camp(sw_guid[1]);
		--lualib:SysMsg_SendPromptMsg(player, "�ٻ����������ɹ�");
		lualib:DelItem(player, "����������", 1, 2, "ˢ������������", "��ħ����");
		num = num - 1;
		local monsterNum = lualib:GetInt(map, "guarderCount");
		local lastCount = 15 - monsterNum;
		local monsterNum_s = "\"�ٻ����������ɹ������θ��������ٻ�"..lastCount.."��\"";
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip("..monsterNum_s..");");
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:UpDataArrowNumble(".. num ..");");
		lualib:SetInt(map, "guarderCount", monsterNum + 1);
	end
	return ""
end

function GenMagicGuarder(player)
	local num = lualib:ItemCount(player, "��������");
	if num <= 0 then 
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip('ȱ�ٵ���[����Ӫ����]')");
		return ""
	end
	local map = lualib:MapGuid(player)
	local keyname = lualib:KeyName(map);
	if keyname ~= "��ħ����" then 
		return ""
	end
	local count = lualib:GetInt(map, "guarderCount");
	if count >= 16 then 
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip('��ͼ�����������ܳ���16��')");
		return ""
	end
	
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local ranges = {1, x, y, 0, 0};
	local MONSTERS = lualib:Map_GetRegionMonstersCount(map, "������������", ranges, true, true);
	if MONSTERS > 0 then 
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip('����ط��Ѿ���������,�뻻���ط��ٻ�')");
		return ""
	end
	MONSTERS = lualib:Map_GetRegionMonstersCount(map, "����ħ������", ranges, true, true);
	if MONSTERS > 0 then 
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip('����ط��Ѿ���������,�뻻���ط��ٻ�')");
		return ""
	end
	local monster = lualib:Map_GenSingleMonster(map, x, y, 0, 1, "����ħ������", false);
	--lualib:SysPromptMsg(player, monster);
	if monster ~= "" then 
		lualib:SetCamp(monster, 2)                           --���ý�ɫ��Ӫ
		--local zheny = lualib:Camp(sw_guid[1]);
		--lualib:SysMsg_SendPromptMsg(player, "�ٻ����������ɹ�");
		lualib:DelItem(player, "��������", 1, 2, "ˢ������������", "��ħ����");
		num = num - 1;
		local monsterNum = lualib:GetInt(map, "guarderCount");
		local lastCount = 15 - monsterNum;
		local monsterNum_s = "\"�ٻ����������ɹ������θ��������ٻ�"..lastCount.."��\"";
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip("..monsterNum_s..");");
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:UpDataMagicNumble(".. num ..");");
		lualib:SetInt(map, "guarderCount", monsterNum + 1);
	end
	return ""
end

function BuyArrow(player)
	--lualib:SysPromptMsg(player, "BuyArrow");
	if lualib:Player_GetBagFree(player) < 1 then 
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip('�����Ѿ�����,������հ���')");
		return ""
	end
	if lualib:Player_IsIngotEnough(player, 500, true) == false then
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip('��Ԫ������')");
		return ""
	else
		if lualib:Player_SubIngot(player, 500, true, "����������", player) == false then
			return "�۳���Ԫ��ʧ��"
		else
			lualib:AddItem(player,"����������", 1, true, "����������", player)
			local num = lualib:ItemCount(player, "����������");
			lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:UpDataArrowNumble(".. num ..")");
		end
	end
	return ""
end


function BuyMagic(player)
	--lualib:SysPromptMsg(player, "BuyMagic");
	if lualib:Player_GetBagFree(player) < 1 then 
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip('�����Ѿ�����,������հ���')");
		return ""
	end
	
	if lualib:Player_IsIngotEnough(player, 99, false) == false then
		lualib:ShowFormWithContent(player,"�ű���","PreventMonster.YBMsg()") 
		--lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip('Ԫ������')");
		return ""
	else
		if lualib:Player_SubIngot(player, 99, false, "��������ħ������", player) == false then
			return "�۳�Ԫ��ʧ��"
		else
			lualib:AddItem(player,"��������", 1, true, "����������", player)
			local num = lualib:ItemCount(player, "��������");
			lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:UpDataMagicNumble(".. num ..")");
		end
	end
	return ""
end

function AddBuff(player, index)
	--lualib:SysPromptMsg(player, "AddBuff"..index);
	if tonumber(index) == 1 then 
		lualib:AddBuff(player, "��ħ�����ֹ�Ȧ", 0);
	elseif tonumber(index) == 2 then
		lualib:AddBuff(player, "��ħ�����Ȧ", 0);
	end
	return ""
end

function DelBuff(player, index)
	--lualib:SysPromptMsg(player, "DelBuff"..index);
	if tonumber(index) == 1 then 
		lualib:DelBuff(player, "��ħ�����ֹ�Ȧ");
	elseif tonumber(index) == 2 then
		lualib:DelBuff(player, "��ħ�����Ȧ");
	end
	return ""
end

function Exit(player)
	--lualib:SysPromptMsg(player, "Exit");
	local map = lualib:MapGuid(player);
	local IsEnd = lualib:GetInt(map, "IsEnd");
	if IsEnd == 1 then 
		lualib:Player_MapMoveXY(player, "��ɽ��" , 161 , 207 , 3 );
	else
		lualib:ShowFormWithContent(player, "�ű���", "PreventMonster_c2.ConfirmDlg()");
	end
	return ""
end

function LeaveMap(player)
	lualib:Player_MapMoveXY(player, "��ɽ��" , 161 , 207 , 3 );
	return ""
end


function GoToGetAward(player)
	local ret = lualib:Player_MapMoveXY(player, "��ɽ��", 161, 207, 2)
    if ret ~= true then
        return "����ͼʧ��"
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
		local index = 2  --1�Ǵ򿪹������,index=2ʱ���콱���,3�Ǿ���ֵ��ʾ��
		local lostExp = lualib:GetInt(player, "lostExp");
		lualib:ShowFormWithContent(player, "form�ļ���", "PreventMonster#".. index .."#"..getExp.."#"..loseExp.."#"..grade)
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
			lualib:ShowFormWithContent(player,"�ű���","PreventMonster.msg(".. 6 .. ",".."'VIP�ȼ�����'"..")") 
			return ""
		end
		if lualib:Player_IsIngotEnough(player, 5000, false) == false then
			lualib:ShowFormWithContent(player,"�ű���","PreventMonster.YBMsg()") 
			return ""
		else
			local getTotalExp = getExp * 8
			if lualib:Player_SubIngot(player, 5000, false, "��ħ������ȡ����", player) == false then
				return "�۳�Ԫ��ʧ��"
			else
				if not lualib:Player_AddExp(player, getTotalExp, "��ħ������ȡ����", "��ħ������ȡ����")  then
					lualib:Error("��ħ������ȡ���������������");
					return ""
				end
			end
			--lualib:ShowFormWithContent(player,"�ű���","PreventMonster.msg(".. 6 .. ",".."'��ȡ�ɹ�'"..")");
			lualib:ShowFormWithContent(player,"�ű���","PreventMonster.CloseWnd2()");
			local index = 3  --1�Ǵ򿪹������,index=2ʱ���콱���,3�Ǿ���ֵ��ʾ��
			lualib:ShowFormWithContent(player, "form�ļ���", "PreventMonster#".. index .."#"..getTotalExp)
			--lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip(".."'��ɷ�ħ�����þ���'"..getTotalExp..")");
		end
	elseif index == 1 then 
		if not lualib:Player_AddExp(player, getExp, "��ħ������ȡ����", "��ħ������ȡ����")  then
			lualib:Error("��ħ������ȡ���������������");
			return ""
		end
		--lualib:ShowFormWithContent(player,"�ű���","PreventMonster.msg(".. 1 .. ",".."'��ȡ�ɹ�'"..")");
		lualib:ShowFormWithContent(player,"�ű���","PreventMonster.CloseWnd2()");
		local index = 3  --1�Ǵ򿪹������,index=2ʱ���콱���,3�Ǿ���ֵ��ʾ��
		lualib:ShowFormWithContent(player, "form�ļ���", "PreventMonster#".. index .."#"..getExp);
		--lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip(".."\"��ɷ�ħ�����þ���"..getExp.."\")");
		
	else
		local TABLE = 
		{
			{0, 0, 1, 2, 3, 4},
			{0, 500, 1100, 1800, 2600, 5000},
		}
		if vip_level < TABLE[1][index] then 
			lualib:ShowFormWithContent(player,"�ű���","PreventMonster.msg(".. index .. ",".."'VIP�ȼ�����'"..")");
			return ""
		end
		if lualib:Player_IsIngotEnough(player, TABLE[2][index], false) == false then
			lualib:ShowFormWithContent(player,"�ű���","PreventMonster.YBMsg()") 
			return ""
		else
			if lualib:Player_SubIngot(player, TABLE[2][index], false, "��ħ������ȡ����", player) == false then
				return "�۳�Ԫ��ʧ��"
			else
				local getTotalExp = getExp * index
				if not lualib:Player_AddExp(player, getTotalExp, "��ħ������ȡ����", "��ħ������ȡ����")  then
					lualib:Error("��ħ������ȡ���������������");
					return ""
				end
				--lualib:ShowFormWithContent(player,"�ű���","PreventMonster.msg(".. index .. ",".."'��ȡ�ɹ�'"..")");
				lualib:ShowFormWithContent(player,"�ű���","PreventMonster.CloseWnd2()");
				local index = 3  --1�Ǵ򿪹������,index=2ʱ���콱���,3�Ǿ���ֵ��ʾ��
				lualib:ShowFormWithContent(player, "form�ļ���", "PreventMonster#".. index .."#"..getTotalExp)
				--lualib:ShowFormWithContent(player, "�ű���", "PreventMonsterChildWnd:bottom_msg_tip(".."'��ɷ�ħ�����þ���'"..getTotalExp..")");
				
			end
		end
	end
	lualib:SetInt(player, "TotalOfMonster", 0);
	lualib:SetInt(player, "KillCount", 0);
	lualib:SetInt(player, "TotalOfExp", 0);
	lualib:SetInt(player, "exp", 0);
	return ""
end
