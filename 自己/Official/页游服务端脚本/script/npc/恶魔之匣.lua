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

    local msg = player_name.."…… 恶魔之匣在呼唤着你的名字，说不出的诡异！\n \n"
	msg = msg.."<@ExchangeItem *01*开启恶魔之匣>\n \n"
	msg = msg.."<@Lever *01*太紧张，手抖了>\n"
    return msg
end

function ExchangeItem(npc, player)
	--开始开启进度条
	if lualib:ProgressBarStart(player, 40000, "恶魔之匣", "progress_complete", "progress_abort", npc) == false then
		return "出错了，请联系GM@2！"
	end

	return ""
end

function Lever(npc, player)
	return ""
end

function progress_complete(player, npc)		--进度条成功
	if lualib:Npc_IsExist(npc) == false then
		lualib:SysMsg_SendWarnMsg(player, "恶魔之匣不存在！")
		return
	end

	--恶魔之匣组的概率
	local item_group_probability = {0, 0, 10000, 3333}

	--恶魔之匣组：
	--金币：最少数量   最多数量
	--元宝：数量
	--物品：物品keyname	 数量	掉落概率起始点	掉落概率结束点	是否极品
	local item_group = {}
	item_group[1] = {2500, 10000}
	item_group[2] = {100}

	item_group[3] = {}
	item_group[3][1] = {"月弧弯刀", 1, 1, 900, 1}
	item_group[3][2] = {"流光护盾", 1, 901, 1800, 1}
	item_group[3][3] = {"雷霆极光", 1801, 2700, 69, 1}
	item_group[3][4] = {"锁妖咒", 1,2701, 3600, 1}
	item_group[3][5] = {"杀生术", 1, 3600, 4500, 1}
	item_group[3][6] = {"回春咒", 1, 4501, 5400, 1}
	item_group[3][7] = {"天庭之唤", 1, 5401, 6300, 1}
	item_group[3][8] = {"烈焰斩", 1, 6301, 7200, 1}
	item_group[3][9] = {"冰爆漩涡", 1, 7201, 8100, 1}
    
    item_group[4] = {}
    item_group[4][1] = {"1.5倍经验卷轴", 1, 0, 0, 1}
    item_group[4][2] = {"双倍经验卷轴", 1, 0, 0, 1}
    item_group[4][3] = {"3倍经验卷轴", 1, 0, 0, 1}
    item_group[4][4] = {"宠物双倍经验卷轴", 1, 1, 175, 1}
    item_group[4][5] = {"聚灵珠(小)", 1, 176, 1929, 1}
    item_group[4][6] = {"聚灵珠(中)", 1, 1930, 2806, 1}
    item_group[4][7] = {"聚灵珠(大)", 1, 2807, 3156, 1}
    item_group[4][8] = {"释灵珠", 1, 3157, 3333, 1}
    
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
        ret = lualib:Player_AddGold(player, gold_value, false, "加金币：恶魔之匣", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "系统错误，请联系GM@1！")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "恭喜你，开启恶魔之匣获得"..gold_value.."金币！")
		end
	end

	--掉落元宝
	if really_group[2] == true then
        ret = lualib:Player_AddIngot(player, item_group[2][1], true, "加元宝：打开恶魔之匣", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "系统错误，请联系GM@2！")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "恭喜你，开启恶魔之匣获得"..item_group[2][1].."绑定元宝！")
			lualib:SysMsg_SendCenterMsg(1, "玩家"..lualib:Player_GetStrProp(player,  lua_role_user_name).."开启恶魔之匣获得"..item_group[2][1].."绑定元宝！", "")
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
						lualib:Npc_Remove(npc)
						return
					end
					ret = lualib:Player_GiveItemUnbind(player, item_group[i][j][1], item_group[i][j][2], "给物品：恶魔之匣", player)
					if ret == false then
						lualib:SysMsg_SendWarnMsg(player, "系统错误，请联系GM@3！")
						lualib:Npc_Remove(npc)
						return
					end
						lualib:SysMsg_SendPromptMsg(player, "恭喜你，获得"..item_group[i][j][1].."！")
						if item_group[i][j][5] == 1 then
							lualib:SysMsg_SendCenterMsg(1, "玩家"..lualib:Player_GetStrProp(player,  lua_role_user_name).."开启恶魔之匣获得"..item_group[i][j][1].."！", "")
						end
					break
				end
			end
		end
	end

	--移除NPC
	lualib:Npc_Remove(npc)
    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
--    if lualib:Map_GenNpcRnd(map, "恶魔之匣") then
--        lualib:Print("恶魔之匣刷新成功！")
--        return
--    end
--    lualib:Print("恶魔之匣刷新失败！")
	if lualib:Map_GenMonster(map, 47,64,3,1,"恶魔督军",1,false) then
		lualib:SysMsg_SendMapMsg(map,"恶魔出现在[47:64]位置，请速度去剿灭！")
		lualib:Print("恶魔督军刷新成功")
	end
		lualib:Print("恶魔督军刷新失败")
end

function progress_abort(player, npc)   --进度条失败
end
