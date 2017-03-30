local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("item/���������Ʒ")

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
    if lualib:Player_GetCustomVarInt(player, "�������_HasAward") == 1 then
        lualib:SysMsg_SendWarnMsg(player, "���ϴγ��еĽ�Ʒ��δ��ȡ��������ȡ��")
        notify_award(player, 0)
        return
    end
    
    local group = lualib:Player_GetCustomVarInt(player, "�������_CurGroupID")
    if group == 0 then
        return
    end

    --�жϱ������
    local times = lualib:Player_GetCustomVarInt(player, "�������_times")
    if times >= settings["ת�̴���"] then
        lualib:SysMsg_SendWarnMsg(player, "���Ѿ�ת��"..settings["ת�̴���"].."���ˡ�")
        notify_award(player, 0)
        return
    end

    -- �ж��Ƿ����������
    if lualib:Player_GetItemCount(player, "�������") <= 0 then
        lualib:SysMsg_SendWarnMsg(player, "��û����������ˡ�")
        notify_award(player, 0)
        return
    end

    local item_bind_type = false
	if lualib:ItemCountByKey(player, "�������", true, false, false, 0) <= 0 then
		if lualib:ItemCountByKey(player, "�������", true, false, false, 1) <= 0 then
			lualib:SysMsg_SendWarnMsg(player, "��û�����������")
			return false
		else
			item_bind_type = true
		end
	end
	
	if item_bind_type == false then
		if not lualib:DelItem(player, "�������", 1, 0, "���������", "") then
			lualib:SysMsg_SendWarnMsg(player, "��û�����������")
			return false
		else
			lualib:SetInt(player, "item_bind_type", 0)
		end
	else
		if not lualib:DelItem(player, "�������", 1, 1, "���������", "") then
			lualib:SysMsg_SendWarnMsg(player, "��û�����������")
			return false
		else
			lualib:SetInt(player, "item_bind_type", 1)
		end
	end


    local sel = GetRandomAward(player)
    times = times + 1
    lualib:Player_SetCustomVarInt(player, "�������_Sel_"..times, sel)
    lualib:Player_SetCustomVarInt(player, "�������_times", times)
    lualib:Player_SetCustomVarInt(player, "�������_HasAward", 1)
    notify_award(player, 1)
end


function RefreshAward(player)
    if lualib:Player_GetCustomVarInt(player, "�������_HasAward") == 1 then
        lualib:SysMsg_SendWarnMsg(player, "���ϴγ��еĽ�Ʒ��δ��ȡ��������ȡ��")
        notify_award(player, 0)
        return
    end
    
    -- �ж��Ƿ����������
    if lualib:Player_GetItemCount(player, "�������") <= 0 then
        lualib:SysMsg_SendWarnMsg(player, "��û����������ˡ�")
        notify_award(player, 0)
        return
    end

    lualib:Player_SetCustomVarInt(player, "�������_times", 0)
    for n = 1, settings["ת�̴���"] do
        lualib:Player_SetCustomVarInt(player, "�������_Sel_"..n, 0)
    end

    local i = lualib:GenRandom(1, table.getn(AwardGroup))
    lualib:Player_SetCustomVarInt(player, "�������_CurGroupID", i)

    Continue(player)
end


function GetAward(player)
    if lualib:Player_GetCustomVarInt(player, "�������_HasAward") == 0 then
        lualib:SysMsg_SendWarnMsg(player, "���ϴγ��еĽ�Ʒ�Ѿ���ȡ��")
        return
    end
    
    local times = lualib:Player_GetCustomVarInt(player, "�������_times")
    if times == 0 or times > settings["ת�̴���"] then
        return
    end

    local group = lualib:Player_GetCustomVarInt(player, "�������_CurGroupID")
    if group == 0 or group > table.getn(AwardGroup) then
        return
    end

    local var = "�������_Sel_"..times
    local sel = lualib:Player_GetCustomVarInt(player, var)
    if sel == 0 or sel > table.getn(AwardGroup[group]) then
        return
    end
	
	
	local item_bind_type = false
	
	if lualib:GetInt(player, "item_bind_type") == 0 then
		item_bind_type = false
	else
		item_bind_type = true
	end
	
	if lualib:AddItem(player, AwardGroup[group][sel][1], AwardGroup[group][sel][3], item_bind_type,"�������齱", "") then
    --if lualib:Player_GiveItemUnbind(player, AwardGroup[group][sel][1], AwardGroup[group][sel][3], "�������齱", "") then
        lualib:Player_SetCustomVarInt(player, "�������_HasAward", 0)
        lualib:Print("���"..lualib:Player_GetStrProp(player,   lua_role_user_name).."��ȡ��"..AwardGroup[group][sel][3].."��"..AwardGroup[group][sel][1])
        if AwardGroup[group][sel][4] ~= "" then
            lualib:SysMsg_SendBroadcastMsg("", string.format(AwardGroup[group][sel][4], lualib:Player_GetStrProp(player,   lua_role_user_name)))
        end
        return
    end

    lualib:Warn(string.format("������䣺���%s��ȡ%d[%d]��%sʧ�ܡ�", lualib:Player_GetStrProp(player, lua_role_user_name),
                              group, sel, AwardGroup[group][sel][1]))
    lualib:SysMsg_SendWarnMsg(player, "��ȡ����ʧ�ܣ��������")
    notify_award(player, 0)
end
