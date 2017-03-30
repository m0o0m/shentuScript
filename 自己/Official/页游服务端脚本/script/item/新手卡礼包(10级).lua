local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--[[使用道具创建物品示例]]
function main(player_guid, item_guid)

local request_slots = 6
	local item_array_man   = {"1.5倍经验卷轴", "强效金创药包", "强效魔法药包", "绑钱袋(1万)", "新手20级礼包"}
	local item_array_woman = {"1.5倍经验卷轴", "强效金创药包", "强效魔法药包", "绑钱袋(1万)", "新手20级礼包"}
	local item_count = {			1, 	 			1,			 1, 			1,					1}

	--[[判断包包空格数]]
	if lualib:Player_GetBagFree(player_guid) < request_slots then
	    lualib:SysMsg_SendTriggerMsg(player_guid, "背包空间不够，需要6个格子！")
	    return false
	end


		local level = lualib:Player_GetIntProp(player_guid,  lua_role_level)
	if level < 12 then
		return false
	end

	--[[添加物品到包裹]]
	--给随机
	--local item_id = item_array[math.random(10)]
	local role_gender = lualib:Player_GetIntProp(player_guid,  lua_role_gender)  --获取性别
		if role_gender == 1 then
			for element in pairs(item_array_man) do
				local result = lualib:Player_GiveItemBind(player_guid, item_array_man[element], item_count[element], "给物品：新手卡礼包(10级)", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "添加道具失败！")
					return false
				end
			end
		else
			for element in pairs(item_array_woman) do
				local result = lualib:Player_GiveItemBind(player_guid, item_array_woman[element], item_count[element], "给物品：新手卡礼包(10级)", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "添加道具失败！")
					return false
				end
			end
		end




	return true
end
