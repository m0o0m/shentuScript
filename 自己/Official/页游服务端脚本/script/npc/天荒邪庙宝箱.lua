local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local max_probability = 10000
function main(npc, player)
	local distance = lualib:Map_GetDistance(lualib:Player_GetPosX(player), lualib:Player_GetPosY(player), lualib:Npc_GetPosX(npc), lualib:Npc_GetPosY(npc))
	if distance > 2 then return "你点不到我，你点不到我。。。" end

	local player_name = lualib:Player_GetStrProp(player,  lua_role_user_name)
	if player_name == "" then return "出错了，请联系GM@1！" end

    local msg = player_name.."，在你面前的可是远古遗留下来的神秘宝箱哦……\n \n"
	msg = msg.."<@ExchangeItem *01*开启神秘宝箱>\n \n"
	msg = msg.."<@Lever *01*太紧张，手抖了>\n "
    return msg
end

function ExchangeItem(npc, player)
	--开始开启进度条
	if lualib:ProgressBarStart(player, 5000, "天荒邪庙宝箱", "progress_complete", "progress_abort", npc) == false then
		return "出错了，请联系GM@2！"
	end

	return ""
end

function Lever(npc, player)
	return ""
end

function progress_complete(player, npc)		--进度条成功
	if lualib:Npc_IsExist(npc) == false then
		lualib:SysMsg_SendWarnMsg(player, "宝箱不存在！")
		return
	end

	--宝箱组的概率
	local item_group_probability = {0, 100, 7000, 0, 0, 0}

	--宝箱组：
	--金币：最少数量   最多数量
	--元宝：数量
	--物品：物品keyname	 数量	掉落概率起始点	掉落概率结束点	是否极品
	local item_group = {}
	item_group[1] = {8000, 25000}
	item_group[2] = {100}

	item_group[3] = {}
	item_group[3][1] = {"钱袋(1万)",  1, 1,     3742,  1}
	item_group[3][2] = {"钱袋(2万)",  1, 3743,  5614,  1}
    item_group[3][3] = {"钱袋(5万)",  1, 5615,  6362,  1}
	item_group[3][4] = {"钱袋(10万)",  1, 6363, 6736,  1}
    item_group[3][5] = {"钱袋(20万)",  1, 6737, 6923,  1}
	item_group[3][6] = {"钱袋(50万)",  1, 6924, 7000,  1}

	item_group[4] = {}
	item_group[4][1] = {"召唤石", 5,  1,    2365,  0}
	item_group[4][2] = {"召唤石", 6,  2366, 4335,  0}
	item_group[4][3] = {"召唤石", 7,  4336, 6024,  0}
	item_group[4][4] = {"召唤石", 8,  6025, 7502,  0}
	item_group[4][5] = {"召唤石", 9,  7503, 8815,  0}
	item_group[4][6] = {"召唤石", 10, 8816, 10000, 0}

	item_group[5] = {}
	item_group[5][1] = {"回春咒", 1, 1, 1725, 1}
	item_group[5][2] = {"杀生术", 1, 1726, 3450, 1}
	item_group[5][3] = {"月弧弯刀", 1, 3451, 5175, 1}
    item_group[5][4] = {"冰爆漩涡", 1, 5176, 6900, 1}
    item_group[5][5] = {"蛮力冲锋", 1, 6901, 7760, 1}
    item_group[5][6] = {"流光护盾", 1, 7761, 8620, 1}
    item_group[5][7] = {"烈焰斩", 1, 8621, 9310, 1}
    item_group[5][8] = {"天庭之唤", 1, 9311, 10000, 1}

	item_group[6] = {}
	item_group[6][1] = {"钱袋(1万)", 1, 1, 3000, 1}
	item_group[6][2] = {"钱袋(2万)", 1, 3001, 5500, 1}
	item_group[6][3] = {"钱袋(5万)", 1, 5501, 7500, 1}
	item_group[6][4] = {"钱袋(10万)", 1, 7501, 9000, 1}
	item_group[6][5] = {"钱袋(20万)", 1, 9001, 9800, 1}
	item_group[6][6] = {"钱袋(50万)", 1, 9801, 10000, 1}

	--实际的掉落组
	local really_group = {}
	for i = 1, table.getn(item_group_probability) do
		if lualib:GenRandom(1, max_probability) <= item_group_probability[i] then
			really_group[i] = true
		else
			really_group[i] = false
		end
	end

	local ret = false
	--掉落金币
	if really_group[1] == true then
		local gold_value = lualib:GenRandom(item_group[1][1], item_group[1][2])
        ret = lualib:Player_AddGold(player, gold_value, false, "", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "系统错误，请联系GM@1！")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "恭喜你，开启天荒邪庙宝箱获得"..gold_value.."金币！")
		end
	end

	--掉落元宝
	if really_group[2] == true then
        ret = lualib:Player_AddIngot(player, item_group[2][1], true, "加元宝：打开天荒邪庙宝箱", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "系统错误，请联系GM@2！")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "恭喜你，开启天荒邪庙宝箱获得"..item_group[2][1].."绑定元宝！")
			lualib:SysMsg_SendCenterMsg(1, "玩家"..lualib:Player_GetStrProp(player,  lua_role_user_name).."开启天荒邪庙宝箱获得"..item_group[2][1].."绑定元宝！", "")
		end
	end

	--根据掉落组产生掉落物品
	for i = 3, table.getn(item_group) do
		if really_group[i] == true then
			local probability_value = lualib:GenRandom(1, item_group_probability[i])
			for j = 1, table.getn(item_group[i]) do
				if probability_value >= item_group[i][j][3] and probability_value <= item_group[i][j][4] then
					local free_site = lualib:Player_GetBagFree(player)
					if free_site < 1 then
						lualib:SysMsg_SendWarnMsg(player, "背包空间不足")
						--lualib:Npc_Remove(npc)
						--return
					end
					ret = lualib:Player_GiveItemUnbind(player, item_group[i][j][1], item_group[i][j][2], "给物品：天荒邪庙宝箱", player)
					if ret == false then
						lualib:SysMsg_SendWarnMsg(player, "系统错误，请联系GM@3！")
						lualib:Npc_Remove(npc)
						return
					end
					lualib:SysMsg_SendPromptMsg(player, "恭喜你，获得"..item_group[i][j][1].."！")
					if item_group[i][j][5] == 1 then
						lualib:SysMsg_SendCenterMsg(1, "玩家"..lualib:Player_GetStrProp(player,  lua_role_user_name).."开启天荒邪庙宝箱获得"..item_group[i][j][1].."*"..item_group[i][j][2], "")
						lualib:SysMsg_SendBroadcastColor("玩家#COLORCOLOR_BROWN#["..lualib:Player_GetStrProp(player,  lua_role_user_name).."] #COLORCOLOR_YELLOW#开启天荒邪庙宝箱获得#COLORCOLOR_BROWN#"..item_group[i][j][1].."*"..item_group[i][j][2], "", 1, 12)

					end
					break
				end
			end
		end
	end

	--移除NPC
	lualib:Npc_Remove(npc)
end

function progress_abort(player, params)   --进度条失败
end
