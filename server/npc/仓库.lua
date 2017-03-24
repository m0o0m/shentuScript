function main(npc, player)
    local msg = "喔……你的包裹又满了吗？赶快存到我这儿来吧，咱行走江湖之人，诚信为本，绝不会监守自盗哦！\n \n"
    msg = msg.."<@OpenWarehouse *01*打开仓库>\n<@OpenWarehouseAdv *01*打开高级仓库>"
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

