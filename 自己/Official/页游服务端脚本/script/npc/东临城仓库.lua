
local gold_value = 1000000
local gold__ = 2000
local gold_ = "金条"
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/装备大师")
local baoguo_table = {
                        {"麻布袋", 6786}, 
                        {"丝绸袋", 1696}, 
                        {"锦织袋", 754}, 
                        {"皮革囊", 424}, 
                        {"百珍囊", 271}, 
                        {"乾坤囊(10格)", 67}, 
                      }


local talk_t = {"战略物资流水般的来去，都快把我累坏了，什么时候能让我休息一下呢？", "我这儿有些乱，存取物品的时候请小心，别拌着了。", "作为一个仓库管理员，需要牛一般吃苦耐劳的精神。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 27000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    local msg = "    喔......你的包裹又满了吗？勇敢的战斗意味着丰厚的收获，这话果然一点没错呀！\n"
    msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg.."#OFFSET<X:40,Y:2>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@InfoWarehouse *01*「打开仓库」>#OFFSET<X:50,Y:1>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@InfoWarehouseAdv *01*「高级仓库」>\n#OFFSET<X:40,Y:1>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@Jin_DH *01*「金币兑换」>#OFFSET<X:50,Y:1>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@Bao_Pro *01*「包裹制作」>\n"
    msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg.."#OFFSET<X:40,Y:1>##IMAGE1902700037#<@zhanghaoanquan *01*账号安全>             #OFFSET<X:0,Y:0>#<@main_ex *01*精炼装备【装备大师】>\n"
    msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@MapMoveXYA#东临城#330#300#3 *01*回中心广场>"
	return msg
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
	local msg = "通过我可以实现金币与金条的相互兑换！\n \n \n"
	msg = msg.." #OFFSET<X:0,Y:-4>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@ExchangeGold *01*将金币「兑换」成金条（免费）>\n "
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@ExchangeGoldEx *01*将金条「兑换」成金币（手续费2000金币）>\n \n \n"
	msg = msg.."                                               #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	return msg
end

function ExchangeGold(npc_guid, player_guid)
    if not lualib:Player_IsGoldEnough(player_guid, gold_value, false) then
        return "金币不足"..gold_value.."\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

	if lualib:Player_GetBagFree(player_guid) < 1 then return "背包满了！\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Jin_DH *01*「返回」>" end

    if not lualib:Player_SubGold(player_guid, gold_value, false, "扣金币：巫山仓库将金币「兑换」成金条", "巫山仓库") then
        return "扣除金币失败！"
    end

	local result = lualib:Player_GiveItemUnbind(player_guid, "金条", 1, "给物品：金条兑换", "巫山仓库")
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
	if lualib:Player_ItemRequest(player, table_name, table_count, table_bind, table_remove, "事务操作：巫山仓库", player) == false then
		lualib:SysMsg_SendWarnMsg(player, "打造失败！")
		return "包裹打造失败，请确认材料是否足够，背包是否有剩余空格！"
	end

    if not lualib:Player_SubGold(player, table_bag[types][4], false, "扣金币：巫山仓库包裹打造花费", "巫山仓库") then
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
	if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "巫山仓库") then return "你的金币不足，不能传送！" end
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

function Bao_Pro(npc, player)
    local msg = "收集到足够的布料便可以在我这里进行包裹制作，制作的结果完全随机哦！\n"
    msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n "
    msg = msg .. "产物：#COLORCOLOR_BROWN#麻布袋、丝绸袋、锦织袋、皮革囊、百珍囊、乾坤囊(10格)#COLOREND#\n"
    msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n \n"
    msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@QueRen *01*「确认制作」>"
	return msg
end


function QueRen(npc, player)
    local sum = 0
    local rand = lualib:GenRandom(1, 10000)
    local itemcount = lualib:ItemCountByKey(player, "布料", true, false, false, 2)
    for i = 1, #baoguo_table do
        sum = sum + baoguo_table[i][2]
        if rand <= sum then
            item = baoguo_table[i][1] 
            break
        end
    end
    if lualib:BagFree(player, true, false, false) < 1 then
        return "你的包裹空间不足，至少要留有一个包裹空位！"
    elseif lualib:Player_GetItemCount(player, "布料") < 10 then
        return "你的布料不足10个！"
    elseif lualib:Player_DestroyItem(player, "布料", 10, "制作包裹", "巫山城仓库") == true and lualib:AddItem(player, item, 1, false, "制作包裹", "巫山城仓库") == true then
        return "制作成功，获得了一个"..item
    else 
        return "制作失败！"
    end
end