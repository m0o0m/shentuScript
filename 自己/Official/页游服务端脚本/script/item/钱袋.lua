
local golds = {}
golds[65503] = 10000	--1���
golds[65502] = 20000	--2���
golds[65501] = 50000	--5���
golds[65500] = 100000	--10���
golds[65499] = 200000	--20���
golds[65498] = 500000	--50���

--[[�ӽ��]]
function main(player_guid, item_guid)
	
	local item_id = lualib:Item_GetID(player_guid, item_guid)
	if item_id == 0 then
		lualib:SysMsg_SendTipsMsg(player_guid, "���߲����ڣ�")
		lualib:SysMsg_SendWarnMsg(player_guid, "���߲����ڣ�")
		return false 
	end
	
	if golds[item_id] == nil then
		lualib:SysMsg_SendTipsMsg(player_guid, "�������Ͳ����ϣ�")
		lualib:SysMsg_SendWarnMsg(player_guid, "�������Ͳ����ϣ�")
		return false 
	end
	
	
	local bindType = lualib:Item_IsBind(player_guid, item_guid)
	if golds[item_id] ~= nil then
        if not lualib:Player_AddGold(player_guid, golds[item_id], bindType, "�ӽ�ң�ʹ��Ǯ������", player_guid) then
			lualib:SysMsg_SendTipsMsg(player_guid, "��ӽ��ʧ�ܣ�")
			lualib:SysMsg_SendWarnMsg(player_guid, "��ӽ��ʧ�ܣ�")
			return false            
        end		
	lualib:SysMsg_SendTipsMsg(player_guid, "�ѻ��"..golds[item_id].."����ң�")
	lualib:SysMsg_SendPromptMsg(player_guid, "�ѻ��"..golds[item_id].."����ң�")
	end
	
	return true
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
