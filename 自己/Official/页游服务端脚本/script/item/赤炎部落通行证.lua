local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

-- 地图黑名单keyname（黑名单内的地图不能被传送）


function main(player, item)
	local player_name = lualib:Name(player)
	local player_team = lualib:Player_GetTeamList(player)

	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[赤炎部落通行证]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905000>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→小蜜\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#1.赤炎部落会掉落最高级别的装备和珍惜道具!#COLOREND#\n \n"  
	msg = msg .. "#COLORCOLOR_BROWN#2.但是由于受到邪火的诅咒，在里面死亡会掉1%的经验!#COLOREND#\n \n"  
	msg = msg .. "#COLORCOLOR_BROWN#3.盈亏由你,风险自负,确定要进去吗？#COLOREND#\n \n"  
    msg = msg .. "#OFFSET<X:80,Y:0>##IMAGE<ID:1900000034>#"  
	msg = msg .. "#OFFSET<X:-50,Y:-11>#<@chuansong".."#"..item.."#".." *01* 确定>"  
	lualib:NPCTalkDetail(player, msg, 265, 350)
	return true
end

function chuansong(player,item)
	local playername = lualib:Name(player)
	local itemname	= lualib:Name(item)
	local itemkeyname = lualib:KeyName(item)
	local item_num = lualib:ItemCountByKey(player, itemkeyname, true, false, false, 2)

	if item_num < 1 then
		lualib:SysTriggerMsg(player, "你是不是把["..itemname.."]给放别处了？")
		return ""
	end

	
	if not lualib:DelItem(player, lualib:KeyName(item), 1, 2, "队员传送扣除", player) then
		
	end
	
	local mapkeyname = "赤炎部落1"
	local x = 42
	local y = 446
	
	if lualib:Player_MapMoveXY(player, mapkeyname, x, y, 3) == false then
		lualib:SysTriggerMsg(player, "跳转失败")
		return ""
	end
	
	
	return ""
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
			local s = "【"..item_name.."】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "【"..item_name.."】被→→→".."["..player_name.."]一个人品爆发打了出来，掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
            local s = "【"..item_name.."】掉落在"..item_map_name.."的["..item_map_x..":"..item_map_y.."]！！！"
			local s1 = "["..player_name.."]人品爆发了，在"..item_map_name.."["..item_map_x..":"..item_map_y.."]打出了一个".."【"..item_name.."】！！！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end
