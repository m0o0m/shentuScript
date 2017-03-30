gQuestMap =
{
   {1013, "", "QuestAccomplish1013","", "*01*完成任务: 包裹和高级仓库扩充"},
   {1014, "QuestAccept1014", "","01*任务: 去巫山城", ""}
}
gQuestNum = table.getn(gQuestMap)

local gold_value = 1000000
local gold__ = 2000
local gold_ = "金条"
local yao = {"太阳水","强效太阳水","万年雪霜","疗伤药"}

function main(npc, player)
    local msg = "喔……你的包裹又满了吗？赶快存到我这儿来吧，咱行走江湖之人，诚信为本，绝不会监守自盗哦！\n \n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">\n \n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[3].." "..v[5]..">\n \n"
            end
        end
    end
	msg = msg.."#IMAGE1902700030#<@InfoWarehouse *01*打开仓库>\n"
	msg = msg.."#IMAGE1902700030#<@InfoWarehouseAdv *01*打开高级仓库>\n"
	msg = msg.."#IMAGE1902700030#<@Jin_DH *01*金条金币自由兑换>\n"
	msg = msg.."#IMAGE1902700037#<@zhanghaoanquan *01*账号安全>"
	--msg = msg.."#COLORCOLOR_GOLD# ____________________________________________#COLOREND#\n"
	--msg = msg.."#COLORCOLOR_BLUE#〖#COLOREND#".."<@KunYao *01*药水打捆>".."#COLORCOLOR_BLUE#〗#COLOREND#"
	--msg = msg.."<@GenItem *01*制作包裹>\n"

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

function KunYao(npc,player)
	local msg = ""
	msg = msg.."<@KunYao1 *01*药水打捆>\n"
	return msg
end

function KunYao1(npc,player)
	local msg = ""
	msg = msg.."<@huishenshui *01*回神水>\n"
	--msg = msg.."<@qxhsh *01*强效回神水>\n"
	--msg = msg.."<@wnxs *01*万年玄参>\n"
	--msg = msg.."<@lsy *01*疗伤药>\n"
	return msg
end


function KunYao(npc, player)
	local msg = ""
	msg = msg.."<@huishenshui *01*回阳水>\n"
	msg = msg.."<@qxhuishenshui *01*强效回阳水>\n"
	msg = msg.."<@wnxs *01*万年玄参>\n"
	msg = msg.."<@lsy *01*疗伤药>\n"
	return msg
end


--太阳水

function huishenshui(npc_guid,player_guid)
	--lualib:Player_DestroyItemUnbind(player_guid, "太阳水", 6, "删物品：装备精炼", player_guid)
		local tyscount = lualib:Player_GetItemCount(player_guid, "太阳水")
		local dkscount = lualib:Player_GetItemCount(player_guid, "打捆绳")
	if tyscount < 6 then
		return  "回阳水不足6瓶，无法打捆"
	end

	if dkscount < 1 then
		return  "没有打捆绳，无法打捆"
	end



	local result1 = lualib:Player_DestroyItem(player_guid, "太阳水", 6, "删物品：天桑村仓库", player_guid)
	local result2 = lualib:Player_DestroyItem(player_guid, "打捆绳", 1, "删物品：天桑村仓库", player_guid)
	if result1 == false then
		return "系统错误，请联系GM@4！"
		else

		if result2 == false then
		return "系统错误，请联系GM@4！"

		end
		lualib:Player_GiveItemUnbind(player_guid, "太阳水包", 1, "给物品：天桑村仓库", player_guid)
	end


	return "打捆成功"
end

--强效太阳水

function qxhuishenshui(npc_guid,player_guid)
	--lualib:Player_DestroyItemUnbind(player_guid, "太阳水", 6, "删物品：装备精炼", player_guid)
		local tyscount = lualib:Player_GetItemCount(player_guid, "强效太阳水")
		local dkscount = lualib:Player_GetItemCount(player_guid, "打捆绳")
	if tyscount < 6 then
		return  "强效回阳水不足6瓶，无法打捆"
	end

	if dkscount < 1 then
		return  "没有打捆绳，无法打捆"
	end



	local result1 = lualib:Player_DestroyItem(player_guid, "强效太阳水", 6, "删物品：天桑村仓库", player_guid)
	local result2 = lualib:Player_DestroyItem(player_guid, "打捆绳", 1, "删物品：天桑村仓库", player_guid)
	if result1 == false then
		return "系统错误，请联系GM@4！"
		else

		if result2 == false then
		return "系统错误，请联系GM@4！"

		end
		lualib:Player_GiveItemUnbind(player_guid, "强效太阳水包", 1, "给物品：天桑村仓库", player_guid)
	end


	return "打捆成功"
end


--万年雪霜
function wnxs(npc_guid,player_guid)
	--lualib:Player_DestroyItemUnbind(player_guid, "太阳水", 6, "删物品：装备精炼", player_guid)
		local tyscount = lualib:Player_GetItemCount(player_guid, "万年雪霜")
		local dkscount = lualib:Player_GetItemCount(player_guid, "打捆绳")
	if tyscount < 6 then
		return  "万年玄参不足6个，无法打捆"
	end

	if dkscount < 1 then
		return  "没有打捆绳，无法打捆"
	end



	local result1 = lualib:Player_DestroyItem(player_guid, "万年雪霜", 6, "删物品：天桑村仓库", player_guid)
	local result2 = lualib:Player_DestroyItem(player_guid, "打捆绳", 1, "删物品：天桑村仓库", player_guid)
	if result1 == false then
		return "系统错误，请联系GM@4！"
		else

		if result2 == false then
		return "系统错误，请联系GM@4！"

		end
		lualib:Player_GiveItemUnbind(player_guid, "万年雪霜包", 1, "给物品：天桑村仓库", player_guid)
	end


	return "打捆成功"
end

--疗伤药
function lsy(npc_guid,player_guid)
	--lualib:Player_DestroyItemUnbind(player_guid, "太阳水", 6, "删物品：装备精炼", player_guid)
		local tyscount = lualib:Player_GetItemCount(player_guid, "疗伤药")
		local dkscount = lualib:Player_GetItemCount(player_guid, "打捆绳")
	if tyscount < 6 then
		return  "疗伤药不足6瓶，无法打捆"
	end

	if dkscount < 1 then
		return  "没有打捆绳，无法打捆"
	end



	local result1 = lualib:Player_DestroyItem(player_guid, "疗伤药", 6, "删物品：天桑村仓库", player_guid)
	local result2 = lualib:Player_DestroyItem(player_guid, "打捆绳", 1, "删物品：天桑村仓库", player_guid)
	if result1 == false then
		return "系统错误，请联系GM@4！"
		else

		if result2 == false then
		return "系统错误，请联系GM@4！"

		end
		lualib:Player_GiveItemUnbind(player_guid, "疗伤药包", 1, "给物品：天桑村仓库", player_guid)
	end


	return "打捆成功"
end





--金币金条「兑换」

function Jin_DH(npc_guid, player_guid)
	local msg = "我可以将金币「兑换」成金条，或将金条「兑换」成金币（金条「兑换」金币需要扣除2000金币）。\n \n \n \n"
	msg = msg.."#IMAGE1902700030#<@ExchangeGold *01*将金币「兑换」成金条>\n \n"
	msg = msg.."#IMAGE1902700030#<@ExchangeGoldEx *01*将金条「兑换」成金币>\n"
	return msg
end

function ExchangeGold(npc_guid, player_guid)
    if not lualib:Player_IsGoldEnough(player_guid, gold_value, false) then
        return "金币不足"..gold_value
    end
	
	if lualib:Player_GetBagFree(player_guid) < 1 then return "背包满了！" end

    if not lualib:Player_SubGold(player_guid, gold_value, false, "扣金币：天桑村仓库将金币「兑换」成金条", "天桑村仓库") then
        return "扣除金币失败！"
    end

	local result = lualib:Player_GiveItemUnbind(player_guid, "金条", 1, "给物品：天桑村仓库", player_guid)
	if result == false then
		return "系统错误，请联系GM@3！"
	end

	lualib:SysMsg_SendTipsMsg(player_guid, "「兑换」金条成功")
	lualib:SysMsg_SendTriggerMsg(player_guid, "「兑换」金条成功")
	return "「兑换」金条成功！"
end

function ExchangeGoldEx(npc_guid, player_guid)
	local count = lualib:Player_GetItemCount(player_guid, gold_)
	if count < 1 then
		return "没有找到金条，无法「兑换」。"
	end

	local result = lualib:Player_DestroyItem(player_guid, gold_, 1, "删物品：天桑村仓库", player_guid)
	if result == false then
		return "系统错误，请联系GM@4！"
	end

    if not lualib:Player_AddGold(player_guid, gold_value - gold__, false, "加金币：天桑村仓库将金条「兑换」成金币", player_guid) then
        return "给予金币失败！"
    end

	lualib:SysMsg_SendTipsMsg(player_guid, "金币「兑换」成功，数量："..gold_value - gold__.."！")
	lualib:SysMsg_SendTriggerMsg(player_guid, "金币「兑换」成功，数量："..gold_value - gold__.."！")
	return "金币「兑换」成功！"
end
--金币金条「兑换」

--包裹制造

local table_bag = {}
table_bag["1"] = {"锦织袋", "布料", 10, 5000}
table_bag["2"] = {"皮革囊", "皮革", 10, 10000}
table_bag["3"] = {"百珍囊", "高级皮革", 10, 15000}





function GenItem(npc, player)
	local msg = "您想要定制哪种类型的包裹？\n\n\n\n"
	msg = msg.."<@GenBag#1 *01*锦织袋>\n"
	msg = msg.."<@GenBag#2 *01*皮革囊>\n"
	msg = msg.."<@GenBag#3 *01*百珍囊>\n"
	msg = msg.."<@Leave *01*「离开」>\n"
	return msg
end

function GenBag(npc, player, types)
	local msg = "打造 "..table_bag[types][1].." 需要 "..table_bag[types][3].." 个 "..table_bag[types][2].." ，"..table_bag[types][4].." 金币，你「确定」要制造吗？\n\n\n\n"
	msg = msg.."<@GenBagEx#"..types.." *01*「确定」>\n"
	msg = msg.."<@Leave *01*「离开」>\n"
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
	if lualib:Player_ItemRequest(player, table_name, table_count, table_bind, table_remove, "事务操作：天桑村仓库", player) == false then
		lualib:SysMsg_SendWarnMsg(player, "打造失败！")
		return "包裹打造失败，请确认材料是否足够，背包是否有剩余空格！"
	end

    if not lualib:Player_SubGold(player, table_bag[types][4], false, "扣金币：天桑村仓库包裹打造花费", "天桑村仓库") then
        return "扣除金币失败"
    end

	lualib:SysMsg_SendTriggerMsg(player, "物品 "..table_bag[types][1].." ，打造成功！")
	return "物品 "..table_bag[types][1].." ，打造成功！"
end

function Leave()
	return ""
end


-------1013交
function QuestAccomplish1013(npc, player)
    msg = "近日怪物围困，俺这储物柜是越来越少，就这么些格子，你看……你若是想存储更多货物，可去找一些扩充包裹和高级仓库的道具。我这正好有一个，你双击使用看看。\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1013a *01* 包裹和高级仓库可扩充>\n"
    return msg
end

function Accomplish1013a(npc, player)
    msg = "东西您可是收了！那我就有所求了！\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1013b *01* 呃……请说。>\n"
    return msg
end

function Accomplish1013b(npc, player)
    if lualib:AccomplishQuest(player, 1013, 0) == true then
        msg = "怪物围困，我们都无法走出村，外面的人估计也回不来了。您是村里唯一的希望，大伙都指望着您去巫山城里搬救兵，解救我们出此困境！\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1014 *01* 我考虑一下>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

-------1014接

function QuestAccept1014(npc,player)
    msg = "老朽给您下跪了，请少侠务必帮这个忙！\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1014a *01* 好吧，我帮你去巫山城走一趟>\n"
	return msg
end

function Accept1014a(npc,player)
    msg = "到了城里，您可以先找天机老人，他神通广大，定能想出万全之策！\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1014b *01* 好的，我这就出发>\n"
	return msg
end

function Accept1014b(npc, player)
    if lualib:AcceptQuest(player, 1014) == true then
		local keyname = lualib:KeyName(npc)
	
		if lualib:Player_GetCustomVarInt(player, "汗血宝马(24小时)") == 1 then
				lualib:SysMsg_SendWarnMsg(player, "汗血宝马(24小时)您已经领取过了！")
				return "汗血宝马(24小时)您已经领取过了！！\n \n \n \n \n \n \n"
		else		
			 lualib:Player_SetCustomVarInt(player, "汗血宝马(24小时)", 1)
			local hanxue_shixiao = lualib:AddSingleItem(player, "汗血宝马(24小时)", 1, 1, "任务给物品", keyname)
			if hanxue_shixiao =="" then
				return "给予汗血宝马失败"
			end
			local att_name = 109
			local att_value = lualib:GenRandom(5, 10)
			local setatt = lualib:Equip_SetExtProp(player, hanxue_shixiao, 0, att_name, att_value)
			lualib:Item_NotifyUpdate(player, hanxue_shixiao)
				return "仓库管理员赠送了你一匹汗血宝马，快骑上它去巫山城找#COLORCOLOR_GREENG# #NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#求救。"
		end
    else
        return "任务接取失败"
    end
end

function Lever(npc,player)
	return ""
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
