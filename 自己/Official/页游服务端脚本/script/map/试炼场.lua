local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


local timer_t = {{120000, 5}, {180000, 4}, {240000, 3}, {270000, 2}, {290000, 1}}
local tongzhi_t = {[5] = "3分钟", [4] = "2分钟", [3] = "1分钟", [2] = "30秒", [1] = "10秒"}

function on_map_create(map)
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map")
	
    local map_table = {["初级试炼场"] = {{"初级试炼兽", 20}}, ["中级试炼场"] = {{"中级试炼兽", 20}}, ["高级试炼场"] = {{"高级试炼兽", 20}}, ["超级试炼场"] = {{"超级试炼兽", 20}}}
    local map_name = lualib:Map_GetMapKeyName(map)
    if map_table[map_name] == nil then
        lualib:Error("试炼场地图keyname不配匹！")
        return
    end
    lualib:Debug(map_name.."地图建创回调！")
	
	local npc = lualib:Map_GenNpc(map, "试炼教头场内", 24, 26, 0, 3)
	if "" == npc then
		lualib:Error("试炼场副本刷新场内NPC失败！")
		return
	end
	lualib:Debug("试炼场副本刷新场内NPC成功！")

	for _, v in pairs(timer_t) do
		if not lualib:AddTimer(map, v[2], v[1], 1, "on_timer_close") then
			lualib:Error(map_name.."：关闭通知定时器失败！")
			return
		end
	end
    lualib:Debug(map_name.."：关闭通知定时器成功！")

    for i = 1, table.getn(map_table[map_name]) do
        if not lualib:Map_GenMonster(map, 24, 34, 5, 5, map_table[map_name][i][1], map_table[map_name][i][2], true) then
            lualib:Error(castle_name.."刷怪"..add_monster_table[castle_name][i][1].."出错！")
            return
        end
    end
    lualib:Debug(map_name.."：随机刷怪！")
end

function on_trigger_enter_map(player)
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n \n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.试炼场每天都可以进来打取试炼凭证，用来换取经验\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.试炼场每天都可以进来打取聚灵珠，用来存储经验!\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.要想升级快，聚灵珠可是少不了的哟^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)
    return true
end


function on_map_destroy(map)
	lualib:ClearTrigger(map)
    lualib:Debug("试炼场地图销毁！")
    return
end

function on_timer_close(map, timer_id)
    local map_name = lualib:Map_GetMapName(map)
    lualib:SysMsg_SendMapMsg(map, "试炼场将在"..tongzhi_t[timer_id].."后关闭！")
end
