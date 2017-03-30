local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/道具合成")
require("system/serializer")

function daoju_hecheng(player, ye, param)
    local t = { "翅膀神翼", "鉴定辨识", "包裹其它", "日常消耗"}
    local key = t[tonumber(ye)]
    local content = serialize(item_table[key])
    lualib:ShowFormWithContent(player, "道具合成内容表单", param..content)

	return ""
end

function querenhecheng(player, sub_specie, focus_item, item_pos)
    if tonumber(sub_specie) < 1 or tonumber(sub_specie) > 4 then return "物品类型错误！" end
    --t存储此武器(衣服)下此品阶(极珍绝神)的所有装备table
    local keys = { "翅膀神翼", "鉴定辨识", "包裹其它", "日常消耗"}
    local t = item_table[keys[tonumber(sub_specie)]]

    --t1是根据目标装备，将各种条件全部集中的一行
    local t1 = {}
    for k, v in pairs(t) do
        if v[4] == focus_item then
            t1 = v
        break end
    end
    
    if nil == t1 then
        return "请先选择要合成的装备！" 
    end
    
    --将需要的材料以及数量转移到t2中来
    local t2 = {}
    for i =5, #t1 do
        table.insert(t2, t1[i])
    end
    --t3存储客户端发来的物品所在包裹位置
    local t3 = deserialize(item_pos)
    if #t3 ~= #t2 then return "物品位置不正确！" end
    
    
    --t4存储根据t3获取到的item的guid
    --t5存储根据t4获取到的item的KeyName
    --t6存储根据t3获取到的item的数量
    --t7存储根据t3获取到的item的绑定类型
    local t4 = {}
    local t5 = {}
    local t6 = {}
    local t7 = {}
    for i = 1, #t3 do
        t4[i] = lualib:Player_GetItemGuid(player, t3[i])
        t5[i] = lualib:KeyName(t4[i])
        t6[i] = lualib:Item_GetAmount(player, t4[i])
        t7[i] = lualib:Item_IsBind(player, t4[i])
    end
    
    --判断物品与其他所消耗道具(金币元宝以及数量等)是否与table内一致
    for i = 1, #t2 do
        if t2[i][1] ~= t5[i] then 
            return "放入物品不正确！" 
        end
    end

    for i = 1, #t2 do
        if t2[i][2] > t6[i] then return "物品数量不足！"  end
    end
    
    if lualib:Player_IsGoldEnough(player, t1[2], false) == false then return "金币不足！" end
    if lualib:Player_IsIngotEnough(player, t1[3], false) == false then return "元宝不足！" end

    --删除需求道具
    for i = 1, #t4 do
        if lualib:Item_SetAmount(player, t4[i], lualib:Item_GetAmount(player, t4[i]) - t2[i][2]) == false then
            return "删除物品失败！"
        end
    end
	
    if lualib:Player_SubGold(player, t1[2], false, "装备合成非绑金币", "装备合成") == false then
		return "扣除金币失败"
	end
	
    if lualib:Player_SubIngot(player, t1[3], false, "装备合成非绑元宝", "装备合成") == false then
		return "扣除元宝失败"
	end
	
    --给物品
    for i = 1, #t7 do
        if t7[i] == true 
            then bind_type = true
            break
        else
            bind_type = false
        end
    end
    lualib:AddItem(player, t1[4], 1, bind_type, "装备合成", "装备合成")
    
    return "[道具合成成功！]"
end