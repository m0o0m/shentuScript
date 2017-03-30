local gold_value = 1000000
local gold__ = 2000
local gold_ = "金条"

function on_create(npc_guid)
	lualib:AddTimer(npc_guid, 813, 180000, 1, "ssck_scnpc")
	lualib:AddTimer(npc_guid, 814, 1000, -1, "ssck_scnpcc")
end

function ssck_scnpc(npc_guid)
     lualib:Npc_Remove(npc_guid)
end

function ssck_scnpcc(npc_guid)
	local player_guid = lualib:GetStr(npc_guid, "vip6_player_guid")
	if not lualib:Player_IsOnline(player_guid) then
    lualib:Npc_Remove(npc_guid)
	end
end

function main(npc, player)
	local msg = ""
	local player_npc = lualib:GetStr(npc, "vip6_player_guid")
	if player_npc == player then
		msg = msg.."高贵的主人，请问有什么需要？#COLORCOLOR_RED#我每次出现时间为3分钟，请抓紧时间！#COLOREND#\n \n"
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		msg = msg.."#IMAGE1902700037#<@InfoWarehouse *01*打开仓库>\n"
		msg = msg.."#IMAGE1902700037#<@InfoWarehouseAdv *01*打开高级仓库>\n"
		msg = msg.."#OFFSET<X:0,Y:2>##IMAGE1902700037##OFFSET<X:0,Y:-2>#<@Jin_DH *01*金条金币自由兑换>"
		return msg
	else
		msg = msg.."您不是我的主人，我无法为您提供以下服务：\n#COLORCOLOR_DARKGREY#打开仓库\n打开高级仓库\n金条金币自由兑换#COLOREND#\n \n"
		msg = msg.."想要拥有和我一样的贴心助手？#COLOREND#\n \n你可以#IMAGE<ID:1902700037>#<@OpenShop#24 *01*点此打开老兵商店购买随身仓库或随身商店>\n"
		return msg
	end
end

function InfoWarehouse(npc, player)
	local ks = anquan(npc, player)
	if ks == true then
		lualib:OpenWarehouse(npc, player)
		--lualib:ShowForm(player, "仓库表单")
	else
		lualib:ShowForm(player, "账号安全")
		return "您设置了密码保护，请解锁后继续操作！"
	end
    return ""
end

function InfoWarehouseAdv(npc, player)
	local ks = anquan(npc, player)
	if ks == true then
		lualib:OpenWarehouseAdv(npc, player)
		--lualib:ShowForm(player, "高级仓库表单")
	else
		lualib:ShowForm(player, "账号安全")
		return "您设置了密码保护，请解锁后继续操作！"
	end
    return ""
end

--金币金条「兑换」

function Jin_DH(npc_guid, player_guid)
	local msg = "我可以将金币「兑换」成金条，或将金条「兑换」成金币（金条「兑换」金币需要扣除2000金币）。\n \n \n"
	msg = msg.."#OFFSET<X:0,Y:-4>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@ExchangeGold *01*将金币「兑换」成金条>\n "
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@ExchangeGoldEx *01*将金条「兑换」成金币>\n \n \n"
	msg = msg.."                                               #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	return msg
end

function ExchangeGold(npc_guid, player_guid)
    if not lualib:Player_IsGoldEnough(player_guid, gold_value, false) then
        return "金币不足"..gold_value.."\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end
	
	if lualib:Player_GetBagFree(player_guid) < 1 then return "背包满了！\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Jin_DH *01*「返回」>" end

    if not lualib:Player_SubGold(player_guid, gold_value, false, "扣金币：巫山城仓库将金币「兑换」成金条", player_guid) then
        return "扣除金币失败！"
    end

	local result = lualib:Player_GiveItemUnbind(player_guid, "金条", 1, "给物品：巫山城仓库", player_guid)
	if result == false then
		return "系统错误，请联系GM@3！"
	end

	lualib:SysMsg_SendTipsMsg(player_guid, "「兑换」金条成功")
	lualib:SysMsg_SendTriggerMsg(player_guid, "「兑换」金条成功")
	return "金币「兑换」金条成功！\n \n \n \n \n \n \n #OFFSET<X:0,Y:-4>##IMAGE1902700037#<@ExchangeGold *01*继续兑换>\n                                               #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Jin_DH *01*「返回」>"
end

function ExchangeGoldEx(npc_guid, player_guid)
	local count = lualib:Player_GetItemCount(player_guid, gold_)
	if count < 1 then
		return "没有找到金条，无法「兑换」\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end

	local result = lualib:Player_DestroyItem(player_guid, gold_, 1, "删物品：巫山城仓库", player_guid)
	if result == false then
		return "系统错误，请联系GM@4！"
	end

    if not lualib:Player_AddGold(player_guid, gold_value - gold__, false, "巫山城仓库将金条「兑换」成金币", player_guid) then
        return "添加金币失败！"
    end

	lualib:SysMsg_SendTipsMsg(player_guid, "金币「兑换」成功，数量："..gold_value - gold__.."！")
	lualib:SysMsg_SendTriggerMsg(player_guid, "金币「兑换」成功，数量："..gold_value - gold__.."！")
	return "金条「兑换」金币成功！\n \n \n \n \n \n \n #OFFSET<X:0,Y:-4>##IMAGE1902700037#<@ExchangeGoldEx *01*继续兑换>\n                                               #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Jin_DH *01*「返回」>"
end
--金币金条「兑换」

--包裹制造

local table_bag = {}
table_bag["1"] = {"锦织袋", "布料", 10, 5000}
table_bag["2"] = {"皮革囊", "皮革", 10, 10000}
table_bag["3"] = {"百珍囊", "高级皮革", 10, 15000}





function GenItem(npc, player)
	local msg = "您想要定制哪种类型的包裹？\n \n"
	msg = msg.."<@GenBag#1 *01*锦织袋>\n"
	msg = msg.."<@GenBag#2 *01*皮革囊>\n"
	msg = msg.."<@GenBag#3 *01*百珍囊>\n \n"
	msg = msg.."<@Leave *01*「离开」>\n"
	return msg
end

function GenBag(npc, player, types)
	local msg = "打造 "..table_bag[types][1].." 需要 "..table_bag[types][3].." 个 "..table_bag[types][2].." ，"..table_bag[types][4].." 金币，你「确定」要制造吗？"
	msg = msg.."<@GenBagEx#"..types.." *01*「确定」>"
	msg = msg.."<@Leave *01*「离开」>"
	return msg
end

function GenBagEx(npc, player, types)
	if table_bag[types] == nil then return "系统错误@1！" end

    if not lualib:Player_IsGoldEnough(player, table_bag[types][4], false) then
        return "金钱不足"
    end

	local table_name = {table_bag[types][1], table_bag[types][2]}
	local table_count = {1, table_bag[types][3]}
	local table_bind = {0, 0}
	local table_remove = {0, 1}
	if lualib:Player_ItemRequest(player, table_name, table_count, table_bind, table_remove, "事务操作：巫山城仓库", player) == false then
		lualib:SysMsg_SendWarnMsg(player, "打造失败！")
		return "包裹打造失败，请确认材料是否足够，背包是否有剩余空格！"
	end

    if not lualib:Player_SubGold(player, table_bag[types][4], false, "扣金币：巫山城仓库包裹打造花费", player) then
        return "扣除金币失败！"
    end

	lualib:SysMsg_SendTriggerMsg(player, "物品 "..table_bag[types][1].." ，打造成功！")
	return "物品 "..table_bag[types][1].." ，打造成功！"
end

function Leave()
	return ""
end

function MapMoveXYA(npc, player, map_key_name, x, y, r)
	local msg=""
	gold = 0
	if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "巫山城仓库") then return "你的金币不足，不能传送！" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	return msg
end


function anquan(npc, player)
	local switch = lualib:GetInt(player, "set_lock_pwd")
	
	local player_code = lualib:GetStr(player, "_lock_pwd")
	if player_code ==  "" then
		lualib:SysMsg_SendPromptMsg(player, "你还未设置仓库二级密码，建议设置以提高您的财产安全！")
		return true
	end
	if switch == 1 then 
		return true
	end
	return false
end

function zhanghaoanquan(npc, player)
	lualib:ShowForm(player, "帐号安全")
	return ""
end