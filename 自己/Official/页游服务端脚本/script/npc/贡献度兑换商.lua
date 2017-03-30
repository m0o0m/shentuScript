
local item_table = {{"����ѩ˪��", 1, 1}, {"����ҩ��", 1, 1}, {"������ɫҩ��", 1, 1}, {"������ɫҩ��", 1, 1}}
function main(npc, player)
	local msg = "    û�и�����û�еõ����ɾ�Խ�ߣ�����Խ���ֵܣ���Ա��л���������������ô���������������һ���������ϡ��Ʒ��\n \n"
	msg = msg.."<@ExchangeInfo#1 *01*"..item_table[1][1]..">     "
    msg = msg.."<@ExchangeInfo#2 *01*"..item_table[2][1]..">     "
    msg = msg.."<@ExchangeInfo#3 *01*"..item_table[3][1]..">     "
    msg = msg.."<@ExchangeInfo#4 *01*"..item_table[4][1]..">     \n \n \n \n \n"
    msg = msg.."<@Leave *01*  ���뿪��>\n"
	return msg
end

function ExchangeInfo(npc, player, types)
    local msg = "���һ��� "..item_table[tonumber(types)][1].." ��Ҫ "..item_table[tonumber(types)][3].." �㹱�׶ȣ��㡸ȷ����Ҫ���һ���ô��\n \n"
    msg = msg.."<@ExchangeItem#"..types.." *01*��ȷ����>\n"
    msg = msg.."<@Leave *01*���뿪��>\n"
    return msg
end

function ExchangeItem(npc, player, types)
    local free_slot_count = lualib:Player_GetBagFree(player)
    if free_slot_count < item_table[tonumber(types)][2] then
        return "����������"
    end

    if lualib:Player_ReCalGuildCtrb(player, 0 - item_table[tonumber(types)][3]) == false then 
        return "���׶Ȳ��㣡" 
    end    

    if lualib:Player_GiveItemUnbind(player, item_table[tonumber(types)][1], 1, "����Ʒ�����׶ȡ��һ�����", player) == false then 
        return "���һ���ʧ��@2��" 
    end
    
    lualib:SysMsg_SendTriggerMsg(player, item_table[tonumber(types)][1].." ���һ����ɹ���")
    return item_table[tonumber(types)][1].." ���һ����ɹ���"
end

function Leave(npc, player)
    return ""
end