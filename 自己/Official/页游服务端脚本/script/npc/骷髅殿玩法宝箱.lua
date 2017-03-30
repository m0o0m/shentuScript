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
	msg = msg.."<@Lever *01*太紧张，手抖了>\n"
    return msg
end

function ExchangeItem(npc, player)
	--开始开启进度条
	if lualib:ProgressBarStart(player, 5000, "骷髅殿玩法宝箱", "progress_complete", "progress_abort", npc) == false then
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
	local item_group_probability = {5000, 100, 10000, 2678, 114, 1}

	--宝箱组：
	--金币：最少数量   最多数量
	--元宝：数量
	--物品：物品keyname	 数量	掉落概率起始点	掉落概率结束点	是否极品
	local item_group = {}
	item_group[1] = {3000, 10000}
	item_group[2] = {1}

	item_group[3] = {}
	item_group[3][1] = {"金创药(中)包", 1, 1, 1667, 0}
	item_group[3][2] = {"魔法药(中)包", 1, 1668, 3334, 0}
	item_group[3][3] = {"太阳水包", 1, 3335, 5001,0}
	item_group[3][4] = {"随机传送包", 1, 5002, 6668, 0}
	item_group[3][5] = {"地牢逃脱包", 1, 6669, 8334, 0}
	item_group[3][6] = {"回城卷包", 1, 8335, 10000, 0}

	item_group[4] = {}
	item_group[4][1] = { "牛皮鞋", 1, 1, 206, 0}
	item_group[4][2] = {"猛禽戒指", 1, 207, 412, 0}
	item_group[4][3] = {"蛇眼石戒指", 1, 413, 618, 0}
	item_group[4][4] = {"品德戒指", 1, 619, 824, 0}
	item_group[4][5] = {"斩魄刀", 1, 825, 1030, 0}
	item_group[4][6] = {"镇魔剑", 1, 1031, 1236, 0}
	item_group[4][7] = {"邀月法杖", 1, 1237, 1442, 0}
	item_group[4][8] = {"轻便铠甲(男)", 1, 1443, 1648, 0}
	item_group[4][9] = {"轻便铠甲(女)", 1, 1649, 1854, 0}
	item_group[4][10]= {"紫绸长袍(男)", 1, 1855, 2060, 0}
	item_group[4][11]= {"紫绸长袍(女)", 1, 2061, 2266, 0}
	item_group[4][12]= {"天心道衣(男)", 1, 2267, 2472, 0}
	item_group[4][13]= {"天心道衣(女)", 1, 2473, 2678, 0}


	item_group[5] = {}
	item_group[5][1] = {"蛮力冲锋", 1, 1, 38, 1}
	item_group[5][2] = {"雷霆极光", 1, 39, 76, 1}
	item_group[5][3] = {"锁妖咒", 1, 77, 114, 1}

	item_group[6] = {}
	item_group[6][1] = {"钱袋(1万)", 1, 1, 1667, 1}
	item_group[6][2] = {"钱袋(2万)", 1, 1667, 3334, 1}
	item_group[6][3] = {"钱袋(5万)", 1, 3335, 5001, 1}
	item_group[6][4] = {"钱袋(10万)", 1, 5002, 6668, 1}
	item_group[6][5] = {"钱袋(20万)", 1, 6669, 8334, 1}
	item_group[6][6] = {"钱袋(50万)", 1, 8335, 10000, 1}



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
        ret = lualib:Player_AddGold(player, gold_value, false, "加金币：骷髅殿玩法宝箱", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "系统错误，请联系GM@1！")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "恭喜你，开启骷髅殿密室宝箱获得"..gold_value.."金币！")
		end
	end

	--掉落元宝
	if really_group[2] == true then
        ret = lualib:Player_AddIngot(player, item_group[2][1], true, "加元宝：打开骷髅殿玩法宝箱", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "系统错误，请联系GM@2！")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "恭喜你，开启骷髅殿密室宝箱获得"..item_group[2][1].."绑定元宝！")
			lualib:SysMsg_SendCenterMsg(1, "玩家"..lualib:Player_GetStrProp(player,  lua_role_user_name).."开启骷髅殿密室宝箱获得"..item_group[2][1].."绑定元宝！", "")
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
					ret = lualib:Player_GiveItemUnbind(player, item_group[i][j][1], item_group[i][j][2], "给物品：骷髅殿玩法宝箱", player)
					if ret == false then
						lualib:SysMsg_SendWarnMsg(player, "系统错误，请联系GM@3！")
						lualib:Npc_Remove(npc)
						return
					end
					lualib:SysMsg_SendPromptMsg(player, "恭喜你，获得"..item_group[i][j][1].."！")
					if item_group[i][j][5] == 1 then
						lualib:SysMsg_SendCenterMsg(1, "玩家"..lualib:Player_GetStrProp(player,  lua_role_user_name).."开启骷髅殿密室宝箱获得"..item_group[i][j][1].."！", "")
					end
					break
				end
			end
		end
	end

	--移除NPC
	lualib:Npc_Remove(npc)
end

function progress_abort(player, npc)   --进度条失败
end
