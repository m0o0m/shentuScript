function main(npc, player)
    local msg = "ม�����İ����������𣿸Ͽ�浽��������ɣ������߽���֮�ˣ�����Ϊ��������������Ե�Ŷ��\n \n"
    msg = msg.."<@OpenWarehouse *01*�򿪲ֿ�>\n<@OpenWarehouseAdv *01*�򿪸߼��ֿ�>"
    return msg;
end

function OpenWarehouse(npc, player)
    lualib:OpenWarehouse(npc, player)
    return ""
end

function OpenWarehouseAdv(npc, player)
    lualib:OpenWarehouseAdv(npc, player)
    return ""
end

