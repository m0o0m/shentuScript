local CNpc =
{
    type =
    {
        ["��Ԩһ�㴫����"] = 1,
        ["��Ԩ���㴫����"] = 2,
        ["��Ԩ���㴫����"] = 3,
    },
    dest =
    {
        {["map"] = "������Ԩ2", ["x"] = 40, ["y"] = 40, ["range"] = 5},             --��Ӧtype��Ҫ�Ҹ�
        {["map"] = "������Ԩ3", ["x"] = 23, ["y"] = 28, ["range"] = 5},
        {["map"] = "���ٳ�", ["x"] = 325, ["y"] = 300, ["range"] = 5},
    }
}

local CAward =
{
    gold = {["bind"] = 0, ["common"] = 0},           --���
    ingot = {["bind"] = 0, ["common"] = 0},           --Ԫ��
    items =
    {
        {["keyname"] = "ħ���ı���", ["count"] = 1, ["bind"] = 1},
    }
}

function CNpc:Transmit(npc, player)
    local keyname = lualib:KeyName(npc)
    local type = self.type[keyname]
    if type == nil then return "NPC��ű���ƥ�䣡<@No *01*�뿪>" end

    if type < 3 then
        if not lualib:Player_EnterDgn(player, self.dest[type].map, self.dest[type].x, self.dest[type].y, self.dest[type].range) then
            return "����ʧ�ܣ�<@No *01*�뿪>"
        else
            return "���ͳɹ���<@No *01*�뿪>"
        end
    else
        if not lualib:Player_MapMoveXY(player, self.dest[type].map, self.dest[type].x, self.dest[type].y, self.dest[type].range) then
            return "����ʧ�ܣ�<@No *01*�뿪>"
        else
            return "���ͳɹ���<@No *01*�뿪>"
        end
    end
end

function CNpc:Award(npc, player)
    if lualib:GetInt(npc, player) ~= 0 then return "���Ѿ���ȡ�������ˣ�\n \n<@No *01*�뿪>" end
    lualib:SetInt(npc, player, 1)

    if not lualib:Player_AddGold(player, CAward.gold.bind, true, "������Ԩ����ͨ�ؽ���", lualib:KeyName(npc)) then
        return "�������ʧ�ܣ�\n \n<@No *01*�뿪>"
    end

    if not lualib:Player_AddGold(player, CAward.gold.common, false, "������Ԩ����ͨ�ؽ���", lualib:KeyName(npc)) then
        return "�������ʧ�ܣ�\n \n<@No *01*�뿪>"
    end

    if not lualib:Player_AddIngot(player, CAward.ingot.bind, true, "������Ԩ����ͨ�ؽ���", lualib:KeyName(npc)) then
        return "����Ԫ��ʧ�ܣ�\n \n<@No *01*�뿪>"
    end

    if not lualib:Player_AddIngot(player, CAward.ingot.common, false, "������Ԩ����ͨ�ؽ���", lualib:KeyName(npc)) then
        return "����Ԫ��ʧ�ܣ�\n \n<@No *01*�뿪>"
    end

    local keyname, count, bind, opt = {}, {}, {}, {}
    for i = 1, #CAward.items do
        keyname[i] = CAward.items[i].keyname
        count[i] = CAward.items[i].count
        bind[i] = CAward.items[i].bind
        opt[i] = 0
    end

    if not lualib:Player_ItemRequest(player, keyname, count, bind, opt, "������Ԩ����ͨ�ؽ���", lualib:KeyName(npc)) then
        return "��������ʧ�ܣ�\n \n<@No *01*�뿪>"
    end

    return "�������߳ɹ���\n \n<@No *01*�뿪>"
end

function main(npc, player)
	local keyname = lualib:KeyName(npc)
	local type = CNpc.type[keyname]

    local msg = "     ��ʿ�����Ѿ���������һ������й����������׼����ʲô��\n \n"

		if type ~= 3 then
			msg = msg.."<@Ok *01*����ȥ��һ��>\n \n<@No *01*�뿪>\n"
		else
			msg = msg.."<@Award *01*��ȡ����>\n \n<@Ok *01*�ص����ٳ�>"
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
