local castle_item = 
{
    castle_name = "����",
    dest_map = "����",
    dest_x = 533,
    dest_y = 247,
};

function castle_item:is_castle_war_start()
    return lualib:IsCastleWarStart(self.castle_name);
end

function castle_item:is_castle_war_owner(player)
	local lluFamily = lualib:GuildGuid(player);
	if lluFamily == "" then
		return false;
	end
	
	local strFamily = lualib:Name(lluFamily);
	if strFamily == "" then
		return false;
	end
	
    return lualib:GetCastleOwnFamily(self.castle_name)== strFamily or 
		   lualib:GetCastleTempFamily(self.castle_name) == strFamily;
end

function castle_item:apply(player)
    return lualib:Player_MapMoveXY(player, self.dest_map, self.dest_x, self.dest_y, 6);
end

function main(player, item)
	if castle_item:is_castle_war_start() then 
        lualib:NPCTalk(player, castle_item.castle_name.."�����ڹ���ս�У��޷����иò�����\n \n<@Leave *01*��ȷ����>")
        return false
    end
	
    if not castle_item:is_castle_war_owner(player) then
        lualib:NPCTalk(player, "�����л᲻��"..castle_item.castle_name.."��ӵ���ߣ��޷����иò�����\n \n<@Leave *01*��ȷ����>")
        return false
    end

    if not castle_item:apply(player) then
        lualib:NPCTalk(player, castle_item.castle_name.."�سǾ���ʹ��ʧ�ܣ�\n \n<@Leave *01*��ȷ����>")
        return false
    end

    return true
end

function Leave(player, item)
    return ""
end
