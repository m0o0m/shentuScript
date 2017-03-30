local ingot = {}
ingot[65505] = 1	--1元宝
ingot[65506] = 2	--2元宝
ingot[65507] = 5	--5元宝
ingot[65508] = 10 	--10元宝
ingot[65509] = 20	--20元宝
ingot[65510] = 50	--50元宝
ingot[65511] = 100	--100元宝
ingot[65512] = 200	--200元宝
ingot[65513] = 500	--500元宝
ingot[65514] = 1000	--1000元宝
ingot[65515] = 2000	--2000元宝
ingot[65516] = 5000	--5000元宝
ingot[65517] = 10000--10000元宝
ingot[65532] = 6666 --6666元宝
ingot[65399] = 18888 --18888元宝

local ingot_bind = {}
ingot_bind[65518] = 1	 --1绑定元宝
ingot_bind[65519] = 2	 --2绑定元宝
ingot_bind[65520] = 5	 --5绑定元宝
ingot_bind[65521] = 10	 --10绑定元宝
ingot_bind[65522] = 20	 --20绑定元宝
ingot_bind[65523] = 50	 --50绑定元宝
ingot_bind[65524] = 100	 --100绑定元宝
ingot_bind[65525] = 200	 --200绑定元宝
ingot_bind[65526] = 500	 --500绑定元宝
ingot_bind[65527] = 1000 --1000绑定元宝
ingot_bind[65528] = 2000 --2000绑定元宝
ingot_bind[65529] = 5000 --5000绑定元宝
ingot_bind[65530] = 10000--10000绑定元宝

--[[加绑定元宝]]
function main(player_guid, item_guid)

	local item_id = lualib:Item_GetID(player_guid, item_guid)
	if item_id == 0 then
		lualib:SysMsg_SendTipsMsg(player_guid, "道具不存在！")
		lualib:SysMsg_SendWarnMsg(player_guid, "道具不存在！")
		return false
		end

	if ingot[item_id] == nil and ingot_bind[item_id] == nil then
		lualib:SysMsg_SendTipsMsg(player_guid, "道具类型不符合！")
		lualib:SysMsg_SendWarnMsg(player_guid, "道具类型不符合！")
		return false
	end

	if ingot[item_id] ~= nil then
        if not lualib:Player_AddIngot(player_guid, ingot[item_id], false, "加元宝：使用元宝道具", player_guid) then
            lualib:SysMsg_SendTipsMsg(player_guid, "添加元宝失败！")
			lualib:SysMsg_SendWarnMsg(player_guid, "添加元宝失败！")
            return false
        end

	lualib:SysMsg_SendTipsMsg(player_guid, "已获得"..ingot[item_id].."个元宝！")
	lualib:SysMsg_SendPromptMsg(player_guid, "已获得"..ingot[item_id].."个元宝！")
	end

	if ingot_bind[item_id] ~= nil then
        if not lualib:Player_AddIngot(player_guid, ingot_bind[item_id], true, "加绑定元宝：使用元宝道具", player_guid) then
            lualib:SysMsg_SendTipsMsg(player_guid, "添加绑定元宝失败, 请联系GM@4！")
			lualib:SysMsg_SendWarnMsg(player_guid, "添加绑定元宝失败, 请联系GM@4！")
			return false
        end

	lualib:SysMsg_SendTipsMsg(player_guid, "已获得"..ingot_bind[item_id].."个绑定元宝！")
	lualib:SysMsg_SendPromptMsg(player_guid, "已获得"..ingot_bind[item_id].."个绑定元宝！")
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
	
	if item_keyanme == "1元宝" or item_keyanme == "2元宝" then
		return
	end
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "【"..item_name.."】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "【"..item_name.."】被→→→".."["..player_name.."]一个人品爆发打了出来，掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
            local s = "【"..item_name.."】掉落在"..item_map_name.."的["..item_map_x..":"..item_map_y.."]！！！"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#的["..item_map_x..":"..item_map_y.."]！！！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end