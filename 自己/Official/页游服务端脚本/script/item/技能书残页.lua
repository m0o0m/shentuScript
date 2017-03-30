
award_table = {
            ["��������ҳ"] = "������",
            ["�ѵ�ն��ҳ"] = "�ѵ�ն",
            ["����ħ���ҳ"] = "����ħ��",
            ["����������ҳ"] = "��������",
            ["̫����������ҳ"] = "̫��������",
            ["ͨ��֮����ҳ"] = "ͨ��֮��"
            }
            

function main(player, item)
    local require_item = lualib:KeyName(item)
    local msg = "5��"..require_item.."���Ժϳ�"..award_table[require_item].."��\n"
	msg = msg.."<@jns#"..require_item.." *01*�ϳɼ�����>\n \n"
    msg = msg.."<@leave *01*��ȡ����>"
    lualib:NPCTalk(player, msg)
    return true
end

function leave(player)
    return ""
end

function jns(player, item)
    local item_count = lualib:ItemCountByKey(player, item, true, false, false, 2)
    local require_count = 5
    local award_item = award_table[item]
    local request_slots = 1
    
    if lualib:Player_GetBagFree(player) < request_slots then 
        lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻�㣡")
        return "�����ռ䲻�㣡"
    end
    
    if item_count >= 5  then
        if not lualib:DelItem(player, item, 5, 2, "�ϳɼ�����ɾ����ҳ", player) then
			return "�۳�����ʧ��"
		end
		
        lualib:AddItem(player, award_table[item], 1, false, "ʹ�ò�ҳ�ϳɼ�����", "")
        return "�ϳ�"..award_item.."�ɹ���"
    else
        return"���߲��㣬��Ҫ5��"..item.."��\n \n<@leave *01*���رա�>" 
    end


    
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
