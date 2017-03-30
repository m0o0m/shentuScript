local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("form/С��ʿ")




function on_map_create(map_code)
	lualib:AddTrigger(map_code, lua_trigger_enter_map, "on_enter_map")

end

function on_map_destroy()
	local ret = lualib:Map_SetOffTimer(map_code,  lua_thxm1_map_bx_npc_timer)
	if ret == false then
		return
	end
end

function on_enter_map(player) 
	lualib:SysMsg_SendBoardMsg(player, "��ܰС��ʿ",  "\n#COLORCOLOR_GREENG##UILINK<WND:�ύ��,PARAM:С��ʿ;zmjd_ts;player,STR:����������ҡ�[��ܰС��ʿ]##COLOREND#", 10000)   

 
end


function on_leave_map(player)
end

function on_item_appear(item_guid, item_id, x, y)
end

function on_item_disappear(item_guid, item_id, x, y)
    
end

function on_monster_appear(monster_guid, monster_id, x, y)
    
end

function on_monster_disappear(monster_guid, monster_id, x, y)
    
end

function on_npc_appear(npc_guid, npc_id, x, y)
    
end

function on_npc_disappear(npc_guid, npc_id, x, y)
    
end

function on_monster_attack(monster, actor)
    
end

function on_monster_post_die(monster, killer)
    
end

