
function main(player, item)
    local item_table = {
						"��Ԫ��",
						"��Ԫ��",
						"��Ԫ��",
						"��Ԫ��",
						"��Ԫ��",
						"��Ԫ��",
						"��Ԫ��",
						"˫���������",
						"˫���������",
						"˫���������",
						"˫���������",
						"˫���������",
						"3���������",
						"3���������",
						"3���������",
						"��֯��",
						"Ƥ����",
						"������",
						"��ɽ�Ǵ���ʯ",
						"���Ǵ���ʯ",
						"��λʯ",
						"ף����ˮ",
						"������",
						"�Ž�",
						"�޸���ˮ"
                    }

    local bag_free = lualib:Player_GetBagFree(player)
    if bag_free < 1 then
        lualib:SysMsg_SendWarnMsg(player, "����������")
        return false
    end

    local index = lualib:GenRandom(1, table.getn(item_table))
    if not lualib:Player_GiveItemUnbind(player, item_table[index], 1, "����Ʒ����;���", player) then
        lualib:SysMsg_SendWarnMsg(player, "������Ʒʧ�ܣ�")
        return false
    end

    return true
end
