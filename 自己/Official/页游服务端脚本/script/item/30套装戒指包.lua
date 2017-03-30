local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--[[使用道具创建物品示例]]
function main(player_guid, item_guid)
	local lua_job = lualib:Player_GetIntProp(player_guid,  lua_role_job)  --获取职业
	local request_slots = 1
	local item_zs = {"御战戒指"}
	local item_fs = {"御魔戒指"}
	local item_ds = {"御道戒指"}
	local item_count = {1}

	--[[判断包包空格数]]
	if lualib:Player_GetBagFree(player_guid) < request_slots then
	    lualib:SysMsg_SendTriggerMsg(player_guid, "背包空间不够，需要1个格子！")
	    return false
	end




	--[[添加物品到包裹]]
	--给随机
	--local item_id = item_array[math.random(10)]
		if lua_job == 1 then
			for element in pairs(item_zs) do
				local result = lualib:Player_GiveItemBind(player_guid, item_zs[element], item_count[element], "给物品：30套装戒指包", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "添加道具失败！")
					return false
				end
			end
		else
		if lua_job == 2 then
			for element in pairs(item_fs) do
				local result = lualib:Player_GiveItemBind(player_guid, item_fs[element], item_count[element], "给物品：30套装戒指包", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "添加道具失败！")
					return false
				end
			end
		else
			for element in pairs(item_ds) do
				local result = lualib:Player_GiveItemBind(player_guid, item_ds[element], item_count[element], "给物品：30套装戒指包", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "添加道具失败！")
					return false
				end
			end
		end
	end	
	return true
end