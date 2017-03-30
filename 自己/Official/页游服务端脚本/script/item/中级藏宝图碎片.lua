
function main(player, item)
    local msg = ""
	msg = msg.."<@key *01*�ϳ��м��ر�ͼ>\n \n"
    msg = msg.."<@leave *01*��ȡ����>"
    lualib:NPCTalk(player, msg)
    return false
end

function leave(player, item)
    return ""
end

function key(player, item)
    local require_count = 5
    local require_item = "�м��ر�ͼ��Ƭ"
    local award_item = "�м��ر�ͼ"

    local cur_count = lualib:Player_GetItemCount(player, require_item)
    if cur_count < require_count then return "���߲��㣬��Ҫ"..require_count.."��"..require_item.."��\n \n<@leave *01*���رա�>" end

    if not lualib:Player_DestroyItem(player, require_item, 5, "����Ʒ�����ϳɡ��м��ر�ͼ", "") then
        return "���ϳɡ�ʧ�ܣ�\n \n<@leave *01���رա�>"
    end

    if not lualib:Player_GiveSingleItem(player, award_item, 0, "����Ʒ�����ϳɡ��м��ر�ͼ", "") then
        return "���ϳɡ�ʧ�ܣ�\n \n<@leave *01*���رա�>"
    end

    return "���ϳɡ��ɹ���\n \n<@key *01*�������ϳɡ�>"
end


function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "��"..item_name.."��������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "��"..item_name.."����������".."["..player_name.."]һ����Ʒ�������˳�����������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
            local s = "��"..item_name.."��������"..item_map_name.."��["..item_map_x..":"..item_map_y.."]������"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#������#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#��["..item_map_x..":"..item_map_y.."]������"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end
