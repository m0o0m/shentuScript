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
	local zmc_key = 5--��ħ�ǵȼ��ﵽ����
	local tmsk_key = 5--��ħʯ�ߵȼ��ﵽ����
	if lualib:KeyName(to_map) == "��ħ��" then
		local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
		if zhenmocheng_Open < zmc_key then
			lualib:NPCTalk(player, "��ħ�ǻ�δ����ʿ����������½����"..zmc_key.."λ52������ʿʱ����ħ�ǵ�̽��֮·���Ὺ����")
			return false
		end
	elseif lualib:KeyName(to_map) == "��ħʯ��1" then
		--local tianmo_Open = lualib:IO_GetCustomVarInt("tianmo_Open")
		if lualib:Level(player) < 40 then
			lualib:NPCTalk(player, "�㻹δ�ﵽ40�����޷�������ħʯ��!")
			return false
		end
	end
	return true
end



