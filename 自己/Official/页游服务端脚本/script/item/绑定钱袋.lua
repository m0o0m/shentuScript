
local golds = {}
golds[65405] = 10000	--1���
golds[65404] = 20000	--2���
golds[65403] = 50000	--5���
golds[65402] = 100000	--10���
golds[65401] = 200000	--20���
golds[65400] = 500000	--50���

--[[�ӽ��]]
function main(player_guid, item_guid)

	local item_id = lualib:Item_GetID(player_guid, item_guid)
	if item_id == 0 then
		lualib:SysMsg_SendTipsMsg(player_guid, "���߲����ڣ�")
		lualib:SysMsg_SendWarnMsg(player_guid, "���߲����ڣ�")
		return false
	end

	if golds[item_id] == nil then
		lualib:SysMsg_SendTipsMsg(player_guid, "�������Ͳ����ϣ�")
		lualib:SysMsg_SendWarnMsg(player_guid, "�������Ͳ����ϣ�")
		return false
	end

	if golds[item_id] ~= nil then
        if not lualib:Player_AddGold(player_guid, golds[item_id], true, "�ӽ�ң�ʹ�ð�Ǯ������", player_guid) then
			lualib:SysMsg_SendTipsMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
			lualib:SysMsg_SendWarnMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
			return false
        end

	lualib:SysMsg_SendTipsMsg(player_guid, "�ѻ��"..golds[item_id].."���󶨽�ң�")
	lualib:SysMsg_SendPromptMsg(player_guid, "�ѻ��"..golds[item_id].."���󶨽�ң�")
	end

	return true
end
