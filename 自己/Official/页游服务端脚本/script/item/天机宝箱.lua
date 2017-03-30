local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("item/天机宝箱物品")

--协议定义
--第一行按顺序发送所有奖品item的KeyName和数量，用逗号隔开 如：长剑[1],短剑[1],长刀[1],短刀[1],盔甲[1]
--第二行是已经抽中的奖品，按次序排列 如： 3,2,4 表示第一次抽中长刀，第二次抽中短剑...
--行分隔符为"\n"
--
--自定义变量定义
--"天机宝箱_times"  玩家本宝箱的抽奖次数
--"天机宝箱_Sel_1"  第一次抽中的奖品序列号
--"天机宝箱_Sel_2"  第二次抽中的奖品序列号
--"天机宝箱_Sel_3"  第三次抽中的奖品序列号
--"天机宝箱_CurGroupID"     玩家本次的抽奖的分组

function main(player_guid, item_guid)
    if lualib:Player_GetCustomVarInt(player_guid, "天机宝箱_HasAward") == 1 then
        lualib:SysMsg_SendWarnMsg(player_guid, "您上次抽中的奖品还未领取，请先领取。")
        notify_award(player_guid, 0)
        return false
    end
    
    -- 判断是否有神钥
	--xxxx
	local item_bind_type = false
	if lualib:ItemCountByKey(player_guid, "天机密引", true, false, false, 0) <= 0 then
		if lualib:ItemCountByKey(player_guid, "天机密引", true, false, false, 1) <= 0 then
			lualib:SysMsg_SendWarnMsg(player_guid, "您没有天机密引！")
			return false
		else
			item_bind_type = true
		end
	end
	
	if item_bind_type == false then
		if not lualib:DelItem(player_guid, "天机密引", 1, 0, "打开天机宝箱", "") then
			lualib:SysMsg_SendWarnMsg(player_guid, "您没有天机密引！")
			return false
		else
			lualib:SetInt(player_guid, "item_bind_type", 0)
		end
	else
		if not lualib:DelItem(player_guid, "天机密引", 1, 1, "打开天机宝箱", "") then
			lualib:SysMsg_SendWarnMsg(player_guid, "您没有天机密引！")
			return false
		else
			lualib:SetInt(player_guid, "item_bind_type", 1)
		end
	end
	--xxxxxx
	--[[
    if lualib:Player_GetItemCount(player_guid, "天机密引") <= 0 then
		lualib:SysMsg_SendWarnMsg(player_guid, "您没有天机密引！")
        return false
    end
	
    lualib:Player_DestroyItem(player_guid, "天机密引", 1, "打开天机宝箱", "")]]
    if not lualib:Item_Destroy(player_guid, item_guid, "删物品：使用天机宝箱抽奖", "天机宝箱") then
		lualib:SysMsg_SendWarnMsg(player_guid, "扣除道具失败")
		return false
	end

    local i = 0
    i = lualib:GenRandom(1, table.getn(AwardGroup))
    lualib:Player_SetCustomVarInt(player_guid, "天机宝箱_CurGroupID", i)

    lualib:Player_SetCustomVarInt(player_guid, "天机宝箱_times", 0)
    local sel = GetRandomAward(player_guid)
    lualib:Player_SetCustomVarInt(player_guid, "天机宝箱_Sel_1", sel)
    lualib:Player_SetCustomVarInt(player_guid, "天机宝箱_times", 1)
    lualib:Player_SetCustomVarInt(player_guid, "天机宝箱_HasAward", 1)
    for n = 3, settings["转盘次数"] do
        lualib:Player_SetCustomVarInt(player_guid, "天机宝箱_Sel_"..n, 0)
    end

    notify_award(player_guid, 1)
    return true
end
