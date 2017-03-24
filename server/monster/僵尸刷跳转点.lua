local map_jump = {
					["��ʬ���ʬ"] = {"ʬ����", 15, 16},
					["ʯĹʬ��8"] = {"�þ�7��", 199, 211},
					["ʯĹʬ��"] = {"��԰֮��", 252, 279},
					["ʯĹʬ��9"] = {"���߽���", 252, 279},
				}


function on_create(monster)
--lualib:SysMapMsg(lualib:MapGuid(monster), "11")	
local m_name = lualib:KeyName(monster)
	if map_jump[m_name] ~= nil then
		lualib:AddTrigger(monster,  lua_trigger_move, "on_trigger_move")
	end
end

function on_trigger_move(monster)
	local m_name = lualib:KeyName(monster)
	local x = lualib:X(monster)
	local y = lualib:Y(monster)
	local map = lualib:MapGuid(monster)
	if map_jump[m_name] ~= nil then
		local to_map = lualib:Map_GetMapGuid(map_jump[m_name][1])
		if lualib:Map_AddJumpPoint(map, to_map, x, y, map_jump[m_name][2], map_jump[m_name][3]) == true then
			lualib:ClearTrigger(monster)
			local time_id = lualib:GenTimerId(map)
			lualib:AddTimerEx(map, time_id, 120000, 1, "remove_time", map_jump[m_name][2].."#"..map_jump[m_name][3])
		end
	end
end

function remove_time(map, id, x, y)
	local t = string.solit(parma)
	lualib:Map_DelJumpPoint(map, x, y)
end