local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)
	msg = "开启礼包需要消耗100元宝，开启后获得1000绑定元宝。\n"
	msg = msg.."<@test#"..item.." *01*开启礼包>\n"
	lualib:NPCTalk(player, msg)
	return false
end

function test(player, item)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < 40 then
		return "您的等级不足，无法开启!"
	end

	if not lualib:Player_IsIngotEnough(player, 100, false) then
		return "你的元宝不足100,无法开启！"
	end
	if lualib:Player_GetBagFree(player) < 1 then
		return "背包满了！"
	end

	if not lualib:Player_SubIngot(player, 100, false, "扣元宝：新人卡礼包40级", "新人卡礼包") then
		return "扣元宝：开启礼包"
	end

	if not lualib:Player_GiveItemUnbind(player, "1000绑定元宝", 1, "给物品：新人卡礼包40级", "1000绑定元宝") then
		return "给物元宝道具失败！"
	end
	if not lualib:Item_Destroy(player, item, "删物品：****", "新人卡礼包(40级)") then
		return "扣除道具失败"
	end
	return ""
end
