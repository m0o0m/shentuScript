
local gold_value = 1000000
local gold__ = 2000
local gold_ = "����"
function main(npc_guid, player_guid)
	local msg = "�ҿ��Խ���ҡ��һ����ɽ������򽫽������һ����ɽ�ң����һ���������Ҫ�۳�2000��ң���\n \n"
	msg = msg.."<@ExchangeGold *01*����ҡ��һ����ɽ���>\n"
	msg = msg.."<@ExchangeGoldEx *01*���������һ����ɽ��>\n"
	return msg
end

function ExchangeGold(npc_guid, player_guid)
    if not lualib:Player_IsGoldEnough(player_guid, gold_value, false) then
        return "��Ҳ���"..gold_value
    end

    if not lualib:Player_SubGold(player_guid, gold_value, false, "�۽�ң��������һ�������ҡ��һ����ɽ���", player_guid) then
        return "�۳����ʧ�ܣ�"
    end
	
	result = lualib:Player_GiveItemUnbind(player_guid, "����", 1, "����Ʒ���������һ���", player)
	if result == false then
		return "ϵͳ��������ϵGM@3��"
	end
	
	lualib:SysMsg_SendTipsMsg(player_guid, "���һ��������ɹ�")
	lualib:SysMsg_SendTriggerMsg(player_guid, "���һ��������ɹ�")
	return "���һ��������ɹ���"
end

function ExchangeGoldEx(npc_guid, player_guid)
	local count = lualib:Player_GetItemCount(player_guid, gold_)
	if count < 1 then
		return "û���ҵ��������޷����һ�����"
	end
	
	local result = lualib:Player_DestroyItem(player_guid, gold_, 1, "ɾ��Ʒ���������һ���", player)
	if result == false then 
		return "ϵͳ��������ϵGM@4��"
	end
	
    if not lualib:Player_AddGold(player_guid, gold_value - gold__, false, "�ӽ�ң��������һ������������һ����ɽ��", player_guid) then
        return "������ʧ�ܣ�"
    end
	
	lualib:SysMsg_SendTipsMsg(player_guid, "��ҡ��һ����ɹ���������"..gold_value - gold__.."��")
	lualib:SysMsg_SendTriggerMsg(player_guid, "��ҡ��һ����ɹ���������"..gold_value - gold__.."��")
	return "��ҡ��һ����ɹ���"
end

