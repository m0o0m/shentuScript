local ingot = {}
ingot[65505] = 1	--1Ԫ��
ingot[65506] = 2	--2Ԫ��
ingot[65507] = 5	--5Ԫ��
ingot[65508] = 10 	--10Ԫ��
ingot[65509] = 20	--20Ԫ��
ingot[65510] = 50	--50Ԫ��
ingot[65511] = 100	--100Ԫ��
ingot[65512] = 200	--200Ԫ��
ingot[65513] = 500	--500Ԫ��
ingot[65514] = 1000	--1000Ԫ��
ingot[65515] = 2000	--2000Ԫ��
ingot[65516] = 5000	--5000Ԫ��
ingot[65517] = 10000--10000Ԫ��
ingot[65532] = 6666 --6666Ԫ��
ingot[65399] = 18888 --18888Ԫ��

local ingot_bind = {}
ingot_bind[65518] = 1	 --1��Ԫ��
ingot_bind[65519] = 2	 --2��Ԫ��
ingot_bind[65520] = 5	 --5��Ԫ��
ingot_bind[65521] = 10	 --10��Ԫ��
ingot_bind[65522] = 20	 --20��Ԫ��
ingot_bind[65523] = 50	 --50��Ԫ��
ingot_bind[65524] = 100	 --100��Ԫ��
ingot_bind[65525] = 200	 --200��Ԫ��
ingot_bind[65526] = 500	 --500��Ԫ��
ingot_bind[65527] = 1000 --1000��Ԫ��
ingot_bind[65528] = 2000 --2000��Ԫ��
ingot_bind[65529] = 5000 --5000��Ԫ��
ingot_bind[65530] = 10000--10000��Ԫ��

--[[�Ӱ�Ԫ��]]
function main(player_guid, item_guid)

	local item_id = lualib:Item_GetID(player_guid, item_guid)
	if item_id == 0 then
		lualib:SysMsg_SendTipsMsg(player_guid, "���߲����ڣ�")
		lualib:SysMsg_SendWarnMsg(player_guid, "���߲����ڣ�")
		return false
		end

	if ingot[item_id] == nil and ingot_bind[item_id] == nil then
		lualib:SysMsg_SendTipsMsg(player_guid, "�������Ͳ����ϣ�")
		lualib:SysMsg_SendWarnMsg(player_guid, "�������Ͳ����ϣ�")
		return false
	end

	if ingot[item_id] ~= nil then
        if not lualib:Player_AddIngot(player_guid, ingot[item_id], false, "��Ԫ����ʹ��Ԫ������", player_guid) then
            lualib:SysMsg_SendTipsMsg(player_guid, "���Ԫ��ʧ�ܣ�")
			lualib:SysMsg_SendWarnMsg(player_guid, "���Ԫ��ʧ�ܣ�")
            return false
        end

	lualib:SysMsg_SendTipsMsg(player_guid, "�ѻ��"..ingot[item_id].."��Ԫ����")
	lualib:SysMsg_SendPromptMsg(player_guid, "�ѻ��"..ingot[item_id].."��Ԫ����")
	end

	if ingot_bind[item_id] ~= nil then
        if not lualib:Player_AddIngot(player_guid, ingot_bind[item_id], true, "�Ӱ�Ԫ����ʹ��Ԫ������", player_guid) then
            lualib:SysMsg_SendTipsMsg(player_guid, "��Ӱ�Ԫ��ʧ��, ����ϵGM@4��")
			lualib:SysMsg_SendWarnMsg(player_guid, "��Ӱ�Ԫ��ʧ��, ����ϵGM@4��")
			return false
        end

	lualib:SysMsg_SendTipsMsg(player_guid, "�ѻ��"..ingot_bind[item_id].."����Ԫ����")
	lualib:SysMsg_SendPromptMsg(player_guid, "�ѻ��"..ingot_bind[item_id].."����Ԫ����")
	end

	return true
end


function on_create(item)
	--lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	local item_keyanme = lualib:KeyName(item)
	
	if item_keyanme == "1Ԫ��" or item_keyanme == "2Ԫ��" then
		return
	end
	
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