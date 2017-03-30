local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("npc/����ת����Ʒ")
require("npc/ÿ��ǩ����Ʒ")
require("system/ÿ��ǩ��")

function main(player, action)
    if action == 1 then
        Continue(player)
    elseif action == 2 then
        RefreshAward(player)
    elseif action == 3 then
        GetAward(player)
    end

    return ""
end

function Continue(player)
	if lualib:GetStr(player, "zhuanpanleixing") == "����ת��" then
		if lualib:Player_GetCustomVarInt(player, "����ת��_HasAward") == 1 then
			lualib:SysMsg_SendWarnMsg(player, "���ϴγ��еĽ�Ʒ��δ��ȡ��������ȡ��")
			notify_award(player, 0)
			return
		end
		
		local group = lualib:Player_GetCustomVarInt(player, "����ת��_CurGroupID")
		if group == 0 then
			return
		end

		--�жϱ������
		local times = lualib:Player_GetCustomVarInt(player, "����ת��_times")
		if times >= settings["ת�̴���"] then
			lualib:SysMsg_SendWarnMsg(player, "���Ѿ�ת��"..settings["ת�̴���"].."���ˡ�")
			notify_award(player, 0)
			return
		end

		-- �ж��Ƿ���Ԫ��
		if lualib:Player_SubIngot(player, settings["����Ԫ��"], false, "����ת��", "") == false then
			local msg = "���Ԫ�����㣬�Ƿ�������ֵ����ȡ�İ��ı��\n \n"
			msg = msg.."#IMAGE1902700017#<@chouqu *01*��ֵ>"
			lualib:NPCTalk(player, msg)
			lualib:SysMsg_SendWarnMsg(player, "���Ԫ�����㡣")
			notify_award(player, 0)
			return
		end

		local sel = GetRandomAward(player)
		times = times + 1
		lualib:Player_SetCustomVarInt(player, "����ת��_Sel_"..times, sel)
		lualib:Player_SetCustomVarInt(player, "����ת��_times", times)
		lualib:Player_SetCustomVarInt(player, "����ת��_HasAward", 1)
		notify_award(player, 1)
	elseif lualib:GetStr(player, "zhuanpanleixing") == "ÿ��ǩ��" then
		if lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_HasAward") == 1 then
			lualib:SysMsg_SendWarnMsg(player, "���ϴγ��еĽ�Ʒ��δ��ȡ��������ȡ��")
		--	notify_award1(player, 0)
			return
		end
		
		local group = lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_CurGroupID")
		if group == 0 then
			return
		end
		
		--�жϱ������
		local times = lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_times")
		if times >= settings1["ת�̴���"] then
			lualib:SysMsg_SendWarnMsg(player, "ÿ��ת��ֻ�ܲ�"..settings1["ת�̴���"].."�Ρ�")
		--	notify_award1(player, 0)
			return
		end

		local sel = GetRandomAward(player)
		times = times + 1
		lualib:Player_SetCustomVarInt(player, "ÿ��ǩ��_Sel_"..times, sel)
		lualib:Player_SetCustomVarInt(player, "ÿ��ǩ��_times", times)
		lualib:Player_SetCustomVarInt(player, "ÿ��ǩ��_HasAward", 1)
		notify_award1(player, 1)
	end
end

function chouqu(player)
	local name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local userid = lualib:Player_GetAccountID(player)
    local grpid = lualib:GetGroupId()
    local msg = "http://pay.hzyotoy.com/index.do?mod=pay&groupid=" .. grpid
    lualib:SysMsg_SendWebPage(player, msg)
    return ""
end

function RefreshAward(player)
	if lualib:GetStr(player, "zhuanpanleixing") == "����ת��" then
		if lualib:Player_GetCustomVarInt(player, "����ת��_HasAward") == 1 then
			lualib:SysMsg_SendWarnMsg(player, "���ϴγ��еĽ�Ʒ��δ��ȡ��������ȡ��")
			notify_award(player, 0)
			return
		end
		-- �ж��Ƿ���Ԫ��
		if lualib:Player_IsIngotEnough(player, settings["����Ԫ��"], false) == false then
			lualib:SysMsg_SendWarnMsg(player, "���Ԫ�����㡣")
			notify_award(player, 0)
			return
		end

		lualib:Player_SetCustomVarInt(player, "����ת��_times", 0)
		for n = 1, settings["ת�̴���"] do
			lualib:Player_SetCustomVarInt(player, "����ת��_Sel_"..n, 0)
		end

		local i = lualib:GenRandom(1, table.getn(AwardGroup))
		lualib:Player_SetCustomVarInt(player, "����ת��_CurGroupID", i)

		Continue(player)
	elseif lualib:GetStr(player, "zhuanpanleixing") == "ÿ��ǩ��" then
		if lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_HasAward") == 1 then
			lualib:SysMsg_SendWarnMsg(player, "���ϴγ��еĽ�Ʒ��δ��ȡ��������ȡ��")
		--	notify_award1(player, 0)
			return
		end

		local player_count = lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_times")
		local level = lualib:Player_GetIntProp(player, lua_role_level)
		if level < settings1["�ȼ�����"] then
			local msg = "��ĵȼ�������"..settings1["�ȼ�����"].."������ʹ�ô˹���Ӵ��"
			lualib:NPCTalk(player,msg)
			return ""
		end
		
		for n = 1, settings1["ת�̴���"] do
			lualib:Player_SetCustomVarInt(player, "ÿ��ǩ��_Sel_"..n, 0)
		end

		lualib:Player_SetCustomVarInt(player, "ÿ��ǩ��_CurGroupID", 1)
		Continue(player)
	end
end


function GetAward(player)
	if lualib:BagFree(player, true, false, false) < 1 then
		lualib:SysMsg_SendWarnMsg(player, "������λ���㣡�������Ժ����ԣ�")
		return
	end
	
	if lualib:GetStr(player, "zhuanpanleixing") == "����ת��" then
		if lualib:Player_GetCustomVarInt(player, "����ת��_HasAward") == 0 then
			lualib:SysMsg_SendWarnMsg(player, "���ϴγ��еĽ�Ʒ�Ѿ���ȡ��")
			return
		end
		
		local times = lualib:Player_GetCustomVarInt(player, "����ת��_times")
		if times == 0 or times > settings["ת�̴���"] then
			return
		end

		local group = lualib:Player_GetCustomVarInt(player, "����ת��_CurGroupID")
		if group == 0 or group > table.getn(AwardGroup) then
			return
		end

		local var = "����ת��_Sel_"..times
		local sel = lualib:Player_GetCustomVarInt(player, var)
		if sel == 0 or sel > table.getn(AwardGroup[group]) then
			return
		end

		if lualib:Player_GiveItemUnbind(player, AwardGroup[group][sel][1], AwardGroup[group][sel][3], "����ת�̳齱", "") then
			lualib:Player_SetCustomVarInt(player, "����ת��_HasAward", 0)
			lualib:Print("���"..lualib:Player_GetStrProp(player,  lua_role_user_name).."��ȡ��"..AwardGroup[group][sel][3].."��"..AwardGroup[group][sel][1])
			if AwardGroup[group][sel][4] ~= "" then
				lualib:SysMsg_SendBroadcastMsg("", string.format(AwardGroup[group][sel][4], lualib:Player_GetStrProp(player,  lua_role_user_name)))
			end
			
			return
		end

		lualib:Warn(string.format("����ת�̣����%s��ȡ%d[%d]��%sʧ�ܡ�", lualib:Player_GetStrProp(player, lua_role_user_name),
								  group, sel, AwardGroup[group][sel][1]))
		lualib:SysMsg_SendWarnMsg(player, "��ȡ����ʧ�ܣ��������")
		notify_award(player, 0)
	elseif lualib:GetStr(player, "zhuanpanleixing") == "ÿ��ǩ��" then
		if lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_HasAward") == 0 then
			lualib:SysMsg_SendWarnMsg(player, "���ϴγ��еĽ�Ʒ�Ѿ���ȡ��")
			return
		end
		
		local times = lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_times")
		if times == 0 or times > settings1["ת�̴���"] then
			return
		end

		local group = lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_CurGroupID")
		if group == 0 or group > table.getn(AwardGroup1) then
			return
		end

		local var = "ÿ��ǩ��_Sel_"..times
		local sel = lualib:Player_GetCustomVarInt(player, var)

		if sel == 0 or sel > table.getn(AwardGroup1[group]) then
			return
		end

		if lualib:AddItem(player, lualib:Player_GetCustomVarStr(player, "ÿ��ǩ��_ItmeName"), AwardGroup1[group][sel][3],true, "ÿ��ǩ���齱", "") == true then
			lualib:Player_SetCustomVarInt(player, "ÿ��ǩ��_HasAward", 0)
			lualib:Print("���"..lualib:Player_GetStrProp(player, lua_role_user_name).."��ȡ��"..AwardGroup1[group][sel][3].."��"..lualib:Player_GetCustomVarStr(player, "ÿ��ǩ��_ItmeName"))
			if AwardGroup1[group][sel][4] ~= "" then
				lualib:SysMsg_SendBroadcastMsg("", string.format(AwardGroup1[group][sel][4], lualib:Player_GetStrProp(player, lua_role_user_name)))
			end
			meiriqiandao(player) --����ÿ����ȡǩ���Ի���
			return
		else
			lualib:SysMsg_SendWarnMsg(player, "��ȡ����ʧ�ܣ��������")
			notify_award1(player, 0)
		end
	end
end
