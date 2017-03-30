local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/refine")

local gongzi_item_tb = {"疗伤药包", "疗伤药包", "疗伤药包", "疗伤药包", "疗伤药包", "封印鉴定符", "灵元珠", "小喇叭"}

function main(player, vipLevel)
	local msg = ""
	local vip7_gongzhi_day1 = lualib:GetAllDays(0)
	local vip7_gongzhi_day2 = lualib:Player_GetCustomVarInt(player, "vip7_gongzhi_day2")
	local a = 0
	if vip7_gongzhi_day1 == vip7_gongzhi_day2 then
		lualib:NPCTalk(player, "今天的工资你已经领取过了！")
		return ""
	end

	for p = 1, table.getn(gongzi_item_tb) do
		a = a + 1
	end
	if lualib:Player_GetBagFree(player) < a then
		msg = msg.."包裹空格不够，领取当前工资需要"..a.."个空格！\n \n"
		lualib:NPCTalk(player, msg)
		return ""
	end
	for i = 1, table.getn(gongzi_item_tb) do
		if lualib:Player_GiveItemBind(player, gongzi_item_tb[i], 1, "给物品：会员工资发放", player) == false then
			lualib:NPCTalk(player, "给予物品失败！")
			return ""
		end
	end
	lualib:Player_SetCustomVarInt(player, "vip7_gongzhi_day2", vip7_gongzhi_day1)
	lualib:NPCTalk(player, "工资领取成功！\n \n<@main *01*「返回」>\n")
	return ""
end