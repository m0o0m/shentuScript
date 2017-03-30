local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("item/���������Ʒ")

--Э�鶨��
--��һ�а�˳�������н�Ʒitem��KeyName���������ö��Ÿ��� �磺����[1],�̽�[1],����[1],�̵�[1],����[1]
--�ڶ������Ѿ����еĽ�Ʒ������������ �磺 3,2,4 ��ʾ��һ�γ��г������ڶ��γ��ж̽�...
--�зָ���Ϊ"\n"
--
--�Զ����������
--"�������_times"  ��ұ�����ĳ齱����
--"�������_Sel_1"  ��һ�γ��еĽ�Ʒ���к�
--"�������_Sel_2"  �ڶ��γ��еĽ�Ʒ���к�
--"�������_Sel_3"  �����γ��еĽ�Ʒ���к�
--"�������_CurGroupID"     ��ұ��εĳ齱�ķ���

function main(player_guid, item_guid)
    if lualib:Player_GetCustomVarInt(player_guid, "�������_HasAward") == 1 then
        lualib:SysMsg_SendWarnMsg(player_guid, "���ϴγ��еĽ�Ʒ��δ��ȡ��������ȡ��")
        notify_award(player_guid, 0)
        return false
    end
    
    -- �ж��Ƿ�����Կ
	--xxxx
	local item_bind_type = false
	if lualib:ItemCountByKey(player_guid, "�������", true, false, false, 0) <= 0 then
		if lualib:ItemCountByKey(player_guid, "�������", true, false, false, 1) <= 0 then
			lualib:SysMsg_SendWarnMsg(player_guid, "��û�����������")
			return false
		else
			item_bind_type = true
		end
	end
	
	if item_bind_type == false then
		if not lualib:DelItem(player_guid, "�������", 1, 0, "���������", "") then
			lualib:SysMsg_SendWarnMsg(player_guid, "��û�����������")
			return false
		else
			lualib:SetInt(player_guid, "item_bind_type", 0)
		end
	else
		if not lualib:DelItem(player_guid, "�������", 1, 1, "���������", "") then
			lualib:SysMsg_SendWarnMsg(player_guid, "��û�����������")
			return false
		else
			lualib:SetInt(player_guid, "item_bind_type", 1)
		end
	end
	--xxxxxx
	--[[
    if lualib:Player_GetItemCount(player_guid, "�������") <= 0 then
		lualib:SysMsg_SendWarnMsg(player_guid, "��û�����������")
        return false
    end
	
    lualib:Player_DestroyItem(player_guid, "�������", 1, "���������", "")]]
    if not lualib:Item_Destroy(player_guid, item_guid, "ɾ��Ʒ��ʹ���������齱", "�������") then
		lualib:SysMsg_SendWarnMsg(player_guid, "�۳�����ʧ��")
		return false
	end

    local i = 0
    i = lualib:GenRandom(1, table.getn(AwardGroup))
    lualib:Player_SetCustomVarInt(player_guid, "�������_CurGroupID", i)

    lualib:Player_SetCustomVarInt(player_guid, "�������_times", 0)
    local sel = GetRandomAward(player_guid)
    lualib:Player_SetCustomVarInt(player_guid, "�������_Sel_1", sel)
    lualib:Player_SetCustomVarInt(player_guid, "�������_times", 1)
    lualib:Player_SetCustomVarInt(player_guid, "�������_HasAward", 1)
    for n = 3, settings["ת�̴���"] do
        lualib:Player_SetCustomVarInt(player_guid, "�������_Sel_"..n, 0)
    end

    notify_award(player_guid, 1)
    return true
end
