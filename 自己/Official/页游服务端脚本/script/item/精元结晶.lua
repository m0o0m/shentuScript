
function main(player, item)
	local tbl_item = {"Ұ�޾�Ԫ","���þ�Ԫ","��ʬ��Ԫ","ţħ��Ԫ","������Ԫ","���ܾ�Ԫ","ħ�˾�Ԫ"}

	local bag_free = lualib:Player_GetBagFree(player)
    if bag_free < 1 then
        lualib:SysMsg_SendWarnMsg(player, "����������")
        return false
    end
	
	local lua_suiji = lualib:GenRandom(1, table.getn(tbl_item))
	if not lualib:Player_GiveItemUnbind(player, tbl_item[lua_suiji], 1, "����Ʒ����Ԫ�ᾧ", player) then
        lualib:SysMsg_SendWarnMsg(player, "������Ʒʧ�ܣ�")
        return false
    end

    return true
end