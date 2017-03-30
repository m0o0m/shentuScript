local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function main(player, item)
	local player_name = lualib:Name(player)
	local map = lualib:MapGuid(player)
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local player_table = lualib:Map_GetRegionPlayers(map, x, y, 5, true)

	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[百变卡]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905000>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→小蜜\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>##COLORCOLOR_BROWN#点击[变]可将附近的玩家变身哦~#COLOREND#\n#OFFSET<X:0,Y:5>#"  
	for k, v in pairs(player_table) do
		local p_t_name = lualib:Name(v)
		local map_name = lualib:Name(lualib:MapGuid(v))
		msg = msg .. "#IMAGE<ID:1902700015>#".."#OFFSET<X:-22,Y:-1>#<@bianshen".."#"..p_t_name.."#"..v.."#"..item.. " *01* 变>".."→#COLORCOLOR_GREENG#["..p_t_name.."]#COLOREND# \n"
	end
	
	lualib:NPCTalkDetail(player, msg, 265, 550)
	return true
end






function bianshen(player, p_t_name, v, item)
	local avatar_table = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 90, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 119, 120, 121, 122, 123, 124, 125, 126, 127}
	local item_table = {"百变卡(500次)", "百变卡(100次)", "百变卡(50次)", "百变卡(10次)", "百变卡(2次)"}
	local i = lualib:GenRandom(1, #avatar_table)
	local avatar = avatar_table[i]
	local num = lualib:Item_GetUsesCount(player, item)
	local hashorse = lualib:Attr(v, 200)
	local itemname	= lualib:Name(item)
	local itemkeyname = lualib:KeyName(item)
	local item_num = lualib:ItemCountByKey(player, itemkeyname, true, false, false, 2)
	local playername = lualib:Name(player)
	if item_num < 1 then
		lualib:SysTriggerMsg(player, "你是不是把["..itemname.."]给放别处了？")
		return ""
	end
	
	if hashorse == 1 then
		lualib:MsgBox(v, "你要变身的对象现在在乘骑状态，无法变身！！")
	else
		lualib:AddAvataBuff(v, avatar, "变怪显名", "海魔砸晕", 180)
		lualib:SysMsg_SendTriggerMsg(player, "变身成功")
		lualib:SysMsg_SendTriggerMsg(v, "你被["..playername.."]变身了！")
		lualib:Item_SetUsesCount(player, item, num-1)
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
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#的["..item_map_x..":"..item_map_y.."]！！！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end