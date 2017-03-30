local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("item/天机宝箱物品")

function main(player, action)
    if action == 1 then
        Continue(player)
    elseif action == 2 then
        RefreshAward(player)
    elseif action == 3 then
        GetAward(player)
    end

    return ""
end

function Continue(player)
    if lualib:Player_GetCustomVarInt(player, "天机宝箱_HasAward") == 1 then
        lualib:SysMsg_SendWarnMsg(player, "您上次抽中的奖品还未领取，请先领取。")
        notify_award(player, 0)
        return
    end
    
    local group = lualib:Player_GetCustomVarInt(player, "天机宝箱_CurGroupID")
    if group == 0 then
        return
    end

    --判断宝箱次数
    local times = lualib:Player_GetCustomVarInt(player, "天机宝箱_times")
    if times >= settings["转盘次数"] then
        lualib:SysMsg_SendWarnMsg(player, "你已经转过"..settings["转盘次数"].."次了。")
        notify_award(player, 0)
        return
    end

    -- 判断是否有天机密引
    if lualib:Player_GetItemCount(player, "天机密引") <= 0 then
        lualib:SysMsg_SendWarnMsg(player, "你没有天机密引了。")
        notify_award(player, 0)
        return
    end

    local item_bind_type = false
	if lualib:ItemCountByKey(player, "天机密引", true, false, false, 0) <= 0 then
		if lualib:ItemCountByKey(player, "天机密引", true, false, false, 1) <= 0 then
			lualib:SysMsg_SendWarnMsg(player, "您没有天机密引！")
			return false
		else
			item_bind_type = true
		end
	end
	
	if item_bind_type == false then
		if not lualib:DelItem(player, "天机密引", 1, 0, "打开天机宝箱", "") then
			lualib:SysMsg_SendWarnMsg(player, "您没有天机密引！")
			return false
		else
			lualib:SetInt(player, "item_bind_type", 0)
		end
	else
		if not lualib:DelItem(player, "天机密引", 1, 1, "打开天机宝箱", "") then
			lualib:SysMsg_SendWarnMsg(player, "您没有天机密引！")
			return false
		else
			lualib:SetInt(player, "item_bind_type", 1)
		end
	end


    local sel = GetRandomAward(player)
    times = times + 1
    lualib:Player_SetCustomVarInt(player, "天机宝箱_Sel_"..times, sel)
    lualib:Player_SetCustomVarInt(player, "天机宝箱_times", times)
    lualib:Player_SetCustomVarInt(player, "天机宝箱_HasAward", 1)
    notify_award(player, 1)
end


function RefreshAward(player)
    if lualib:Player_GetCustomVarInt(player, "天机宝箱_HasAward") == 1 then
        lualib:SysMsg_SendWarnMsg(player, "您上次抽中的奖品还未领取，请先领取。")
        notify_award(player, 0)
        return
    end
    
    -- 判断是否有天机密引
    if lualib:Player_GetItemCount(player, "天机密引") <= 0 then
        lualib:SysMsg_SendWarnMsg(player, "你没有天机密引了。")
        notify_award(player, 0)
        return
    end

    lualib:Player_SetCustomVarInt(player, "天机宝箱_times", 0)
    for n = 1, settings["转盘次数"] do
        lualib:Player_SetCustomVarInt(player, "天机宝箱_Sel_"..n, 0)
    end

    local i = lualib:GenRandom(1, table.getn(AwardGroup))
    lualib:Player_SetCustomVarInt(player, "天机宝箱_CurGroupID", i)

    Continue(player)
end


function GetAward(player)
    if lualib:Player_GetCustomVarInt(player, "天机宝箱_HasAward") == 0 then
        lualib:SysMsg_SendWarnMsg(player, "您上次抽中的奖品已经领取。")
        return
    end
    
    local times = lualib:Player_GetCustomVarInt(player, "天机宝箱_times")
    if times == 0 or times > settings["转盘次数"] then
        return
    end

    local group = lualib:Player_GetCustomVarInt(player, "天机宝箱_CurGroupID")
    if group == 0 or group > table.getn(AwardGroup) then
        return
    end

    local var = "天机宝箱_Sel_"..times
    local sel = lualib:Player_GetCustomVarInt(player, var)
    if sel == 0 or sel > table.getn(AwardGroup[group]) then
        return
    end
	
	
	local item_bind_type = false
	
	if lualib:GetInt(player, "item_bind_type") == 0 then
		item_bind_type = false
	else
		item_bind_type = true
	end
	
	if lualib:AddItem(player, AwardGroup[group][sel][1], AwardGroup[group][sel][3], item_bind_type,"天机宝箱抽奖", "") then
    --if lualib:Player_GiveItemUnbind(player, AwardGroup[group][sel][1], AwardGroup[group][sel][3], "天机宝箱抽奖", "") then
        lualib:Player_SetCustomVarInt(player, "天机宝箱_HasAward", 0)
        lualib:Print("玩家"..lualib:Player_GetStrProp(player,   lua_role_user_name).."领取了"..AwardGroup[group][sel][3].."个"..AwardGroup[group][sel][1])
        if AwardGroup[group][sel][4] ~= "" then
            lualib:SysMsg_SendBroadcastMsg("", string.format(AwardGroup[group][sel][4], lualib:Player_GetStrProp(player,   lua_role_user_name)))
        end
        return
    end

    lualib:Warn(string.format("天机宝箱：玩家%s领取%d[%d]的%s失败。", lualib:Player_GetStrProp(player, lua_role_user_name),
                              group, sel, AwardGroup[group][sel][1]))
    lualib:SysMsg_SendWarnMsg(player, "领取奖励失败，请检查包裹")
    notify_award(player, 0)
end
