local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
	lualib:AddTrigger(map,  lua_trigger_pre_enter_jump, "on_pre_jump")
end

function on_map_destroy(map)
    lualib:ClearTrigger(map)
end

function on_pre_jump(player, from_map, to_map)
	local zmc_key = 5--镇魔城等级达到任务
	local tmsk_key = 5--天魔石窟等级达到任务
	if lualib:KeyName(to_map) == "镇魔城" then
		local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
		if zhenmocheng_Open < zmc_key then
			lualib:NPCTalk(player, "镇魔城还未被勇士开启，当大陆出现"..zmc_key.."位52级的勇士时，镇魔城的探险之路将会开启！")
			return false
		end
	elseif lualib:KeyName(to_map) == "天魔石窟1" then
		--local tianmo_Open = lualib:IO_GetCustomVarInt("tianmo_Open")
		if lualib:Level(player) < 40 then
			lualib:NPCTalk(player, "你还未达到40级，无法进入天魔石窟!")
			return false
		end
	end
	return true
end



