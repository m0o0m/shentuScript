local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)
    local item_key = lualib:KeyName(item)
    local sd =  { 
        {"朱果",          4995, 0}, 
        {"经验丹",        9990, 0}, 
        {"圣诞礼袜(鞋)",  10000, 1}, 
                }
    local yd =  { 
        {"坐骑经验丹",      4290, 0}, 
        {"中型坐骑经验丹",  5150, 0}, 
        {"大型坐骑经验丹",  5580, 0}, 
        {"超级坐骑经验丹",  5670, 0}, 
        {"一块切糕",        9960, 0}, 
        {"一车切糕",        10000, 1}, 
                }
    

    if item_key == "圣诞礼袜" then
        local rnd = lualib:GenRandom(1, 10000)
		for _, v in pairs(sd) do
			if rnd <= v[2] then
				if not lualib:AddItem(player, v[1], 1, false, "圣诞礼袜", player) then
					lualib:SysMsg_SendWarnMsg(player,"打开圣诞礼袜给物品失败！")
					return false
				end
                if v[3] == 1 then
					lualib:SysMsg_SendBroadcastColor("["..lualib:Name(player).."]打开圣诞礼袜获得了"..v[1].."！！！", "", 1, 12)
                    lualib:SysMsg_SendCenterMsg(1, "["..lualib:Name(player).."]打开圣诞礼袜获得了"..v[1].."！！！", "")
                    return true
                end
				break
			end
		end
    elseif item_key =="元旦礼盒" then
        local rnd = lualib:GenRandom(1, 10000)
		for _, v in pairs(yd) do
			if rnd <= v[2] then
				if not lualib:AddItem(player, v[1], 1, false, "元旦礼盒", player) then
					lualib:SysMsg_SendWarnMsg(player,"打开元旦礼盒给物品失败！")
					return false
				end
                if v[3] == 1 then
					lualib:SysMsg_SendBroadcastColor("["..lualib:Name(player).."]打开元旦礼盒获得了"..v[1].."！！！", "", 1, 12)
                    lualib:SysMsg_SendCenterMsg(1, "["..lualib:Name(player).."]打开元旦礼盒获得了"..v[1].."！！！", "")
                    return true
                end
				break
			end
		end
    elseif item_key == "双蛋祝福" then
        if not lualib:AddBuff(player, "双蛋祝福", 3600) then return false end
    elseif item_key == "一块切糕" then
        local rnd_gold = lualib:GenRandom(1000,2000)
        local rnd_bind = lualib:GenRandom(0,1)
        local bind = nil
        if rnd_bind == 1 then 
            if lualib:Player_AddGold(player, rnd_gold, false, "使用切糕", player) == true then
                lualib:SysMsg_SendTriggerMsg(player, "你卖掉了一块切糕获得了"..rnd_gold.."绑定金币！") 
                return true
            end
        else
            if lualib:Player_AddGold(player, rnd_gold, true, "使用切糕", player) == true then
                lualib:SysMsg_SendTriggerMsg(player, "你卖掉了一块切糕获得了"..rnd_gold.."金币！") 
                return true
            end
        end
    elseif item_key == "一车切糕" then
        local rnd = lualib:GenRandom(1000,2000)
        local rnd_bind = lualib:GenRandom(0,1)
        local rnd_gold = rnd * 100
        if rnd_bind == 1 then 
            if lualib:Player_AddGold(player, rnd_gold, false, "使用切糕", player) == true then
            lualib:SysMsg_SendTriggerMsg(player, "你卖掉了一车切糕获得了"..rnd_gold.."绑定金币！")
            return true
            end
        else
            if lualib:Player_AddGold(player, rnd_gold, true, "使用切糕", player) == true then
            lualib:SysMsg_SendTriggerMsg(player, "你卖掉了一车切糕获得了"..rnd_gold.."金币！") 
            return true
            end
        end
    elseif item_key == "幸运彩蛋" then
        local caidan_table = 
        {   {"坐骑经验丹", 2860, 0}, 
            {"中型坐骑经验丹", 3430, 0}, 
            {"大型坐骑经验丹", 3715, 0}, 
            {"超级坐骑经验丹", 3765, 0}, 
            {"朱果", 6015, 0}, 
            {"经验丹", 8265, 0}, 
            {"暴击灵符1级", 8290, 1}, 
            {"幸运星", 8535, 1}, 
            {"鸿运星", 8540, 1}, 
            {"护炼符", 8780, 1}, 
            {"低级鉴定灵符", 9030, 1}, 
            {"中级鉴定灵符", 9060, 1}, 
            {"高级鉴定灵符", 9070, 1}, 
            {"循环魔咒", 9540, 1}, 
            {"时之沙砾", 9785, 1}, 
            {"金条", 9800, 1}, 
            {"圣诞时装(男)", 9900, 1}, 
            {"圣诞时装(女)", 10000, 1}, 
        }
        local rnd = lualib:GenRandom(1, 10000)
        for _, v in pairs(caidan_table) do
			if rnd <= v[2] then
                if lualib:BagFree(player, true, false, false) < 1 then 
					lualib:SysMsg_SendTriggerMsg(player, "包裹位置不够，请先清理！")
                    return false 
                end
				if not lualib:AddItem(player, v[1], 1, false, "幸运彩蛋", player) then
					lualib:SysMsg_SendTriggerMsg(player, "打开幸运彩蛋给物品失败！")
                    return false
				end
                if v[3] == 1 then
					lualib:SysMsg_SendBroadcastColor("["..lualib:Name(player).."]人品爆发了，打开幸运彩蛋获得了"..v[1].."！！！", "", 1, 12)
                    lualib:SysMsg_SendCenterMsg(1, "["..lualib:Name(player).."]人品爆发了，打开幸运彩蛋获得了"..v[1].."！！！", "")
                    return true
                end
				break
			end
		end
    end
	return true
end

function on_create(item)
    local item_key = lualib:KeyName(item)
    if item_key == "幸运彩蛋" then
        lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
    end
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "【"..item_name.."】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "【"..item_name.."】被→→→".."["..player_name.."]一个人品爆发打了出来，掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
            local s = "【"..item_name.."】掉落在"..item_map_name.."的["..item_map_x..":"..item_map_y.."]！！！"
			local s1 = "["..player_name.."]人品爆发了，在"..item_map_name.."["..item_map_x..":"..item_map_y.."]打出了一个".."【"..item_name.."】！！！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return false
	end
end