local CNpc =
{
    type =
    {
        ["深渊一层传送人"] = 1,
        ["深渊二层传送人"] = 2,
        ["深渊三层传送人"] = 3,
    },
    dest =
    {
        {["map"] = "烈焰深渊2", ["x"] = 40, ["y"] = 40, ["range"] = 5},             --对应type不要乱改
        {["map"] = "烈焰深渊3", ["x"] = 23, ["y"] = 28, ["range"] = 5},
        {["map"] = "东临城", ["x"] = 325, ["y"] = 300, ["range"] = 5},
    }
}

local CAward =
{
    gold = {["bind"] = 0, ["common"] = 0},           --金币
    ingot = {["bind"] = 0, ["common"] = 0},           --元宝
    items =
    {
        {["keyname"] = "魔王的宝藏", ["count"] = 1, ["bind"] = 1},
    }
}

function CNpc:Transmit(npc, player)
    local keyname = lualib:KeyName(npc)
    local type = self.type[keyname]
    if type == nil then return "NPC与脚本不匹配！<@No *01*离开>" end

    if type < 3 then
        if not lualib:Player_EnterDgn(player, self.dest[type].map, self.dest[type].x, self.dest[type].y, self.dest[type].range) then
            return "传送失败！<@No *01*离开>"
        else
            return "传送成功！<@No *01*离开>"
        end
    else
        if not lualib:Player_MapMoveXY(player, self.dest[type].map, self.dest[type].x, self.dest[type].y, self.dest[type].range) then
            return "传送失败！<@No *01*离开>"
        else
            return "传送成功！<@No *01*离开>"
        end
    end
end

function CNpc:Award(npc, player)
    if lualib:GetInt(npc, player) ~= 0 then return "你已经领取过奖励了！\n \n<@No *01*离开>" end
    lualib:SetInt(npc, player, 1)

    if not lualib:Player_AddGold(player, CAward.gold.bind, true, "烈焰深渊副本通关奖励", lualib:KeyName(npc)) then
        return "奖励金币失败！\n \n<@No *01*离开>"
    end

    if not lualib:Player_AddGold(player, CAward.gold.common, false, "烈焰深渊副本通关奖励", lualib:KeyName(npc)) then
        return "奖励金币失败！\n \n<@No *01*离开>"
    end

    if not lualib:Player_AddIngot(player, CAward.ingot.bind, true, "烈焰深渊副本通关奖励", lualib:KeyName(npc)) then
        return "奖励元宝失败！\n \n<@No *01*离开>"
    end

    if not lualib:Player_AddIngot(player, CAward.ingot.common, false, "烈焰深渊副本通关奖励", lualib:KeyName(npc)) then
        return "奖励元宝失败！\n \n<@No *01*离开>"
    end

    local keyname, count, bind, opt = {}, {}, {}, {}
    for i = 1, #CAward.items do
        keyname[i] = CAward.items[i].keyname
        count[i] = CAward.items[i].count
        bind[i] = CAward.items[i].bind
        opt[i] = 0
    end

    if not lualib:Player_ItemRequest(player, keyname, count, bind, opt, "烈焰深渊副本通关奖励", lualib:KeyName(npc)) then
        return "奖励道具失败！\n \n<@No *01*离开>"
    end

    return "奖励道具成功！\n \n<@No *01*离开>"
end

function main(npc, player)
	local keyname = lualib:KeyName(npc)
	local type = CNpc.type[keyname]

    local msg = "     勇士，你已经消灭了这一层的所有怪物，接下来你准备做什么？\n \n"

		if type ~= 3 then
			msg = msg.."<@Ok *01*传送去下一层>\n \n<@No *01*离开>\n"
		else
			msg = msg.."<@Award *01*领取奖励>\n \n<@Ok *01*回到东临城>"
		end

	return msg
end

function Ok(npc, player)
    return CNpc:Transmit(npc, player)
end

function Award(npc, player)
    return CNpc:Award(npc, player)
end

function No(npc, player)
    return ""
end
