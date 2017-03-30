local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


item_t = {
    ["武器"] = {
                    {"罡风怒破(未辨识)", "辨识卷轴(武)", "罡风怒破"}, 
                    {"长空瓣轮(未辨识)", "辨识卷轴(武)", "长空瓣轮"}, 
                    {"苍天梢月(未辨识)", "辨识卷轴(武)", "苍天梢月"}, 
                }, 
    ["衣服"] = {
                    {"流萤暮影(未辨识)", "辨识卷轴(衣)", "流萤暮影"}, 
                    {"流萤暮露(未辨识)", "辨识卷轴(衣)", "流萤暮露"}, 
                    {"鹤流瑶羽(未辨识)", "辨识卷轴(衣)", "鹤流瑶羽"}, 
                    {"鹤流瑶纱(未辨识)", "辨识卷轴(衣)", "鹤流瑶纱"}, 
                    {"无痕天饮(未辨识)", "辨识卷轴(衣)", "无痕天饮"}, 
                    {"无痕天曲(未辨识)", "辨识卷轴(衣)", "无痕天曲"}, 
                }, 
    ["帽子"] = {
                    {"逐光头冠(未辨识)", "辨识卷轴(帽)", "逐光头冠"}, 
                    {"战龙头盔(未辨识)", "辨识卷轴(帽)", "战龙头盔"}, 
                    {"逍遥道冠(未辨识)", "辨识卷轴(帽)", "逍遥道冠"}, 
                }, 
    ["项链"] = {
                    {"逐光项链(未辨识)", "辨识卷轴(链)", "逐光项链"}, 
                    {"战龙项链(未辨识)", "辨识卷轴(链)", "战龙项链"}, 
                    {"逍遥项链(未辨识)", "辨识卷轴(链)", "逍遥项链"}, 
                }, 
    ["护腕"] = {
                    {"逐光护腕(未辨识)", "辨识卷轴(手)", "逐光护腕"}, 
                    {"战龙护腕(未辨识)", "辨识卷轴(手)", "战龙护腕"}, 
                    {"逍遥手镯(未辨识)", "辨识卷轴(手)", "逍遥手镯"}, 
                }, 
    ["戒指"] = {
                    {"逐光戒指(未辨识)", "辨识卷轴(戒)", "逐光戒指"}, 
                    {"战龙戒指(未辨识)", "辨识卷轴(戒)", "战龙戒指"}, 
                    {"逍遥戒指(未辨识)", "辨识卷轴(戒)", "逍遥戒指"}, 
                }, 
    ["鞋子"] = {
                    {"逐光霞履(未辨识)", "辨识卷轴(鞋)", "逐光霞履"}, 
                    {"飞龙战靴(未辨识)", "辨识卷轴(鞋)", "飞龙战靴"}, 
                    {"逍遥游梦(未辨识)", "辨识卷轴(鞋)", "逍遥游梦"}, 
                }, 
    }
item_type_t = {"武器", "衣服", "帽子", "项链", "护腕", "戒指", "鞋子", }
item_type_t2 = {"武", "衣", "帽", "链", "手", "戒", "鞋", }
    
function main(npc,player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#装备辨识#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
    for i = 1, #item_type_t do
        msg = msg.."         辨识 #COLORCOLOR_BROWN#"..item_type_t[i].."#COLOREND# 需要 #COLORCOLOR_BROWN#辨识卷轴("..item_type_t2[i]..")#COLOREND# #OFFSET<X:10,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@bianshi#"..i.."# *01*我要辨识"..item_type_t[i]..">\n"
    end
	msg = msg .. "                                                   #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*[关闭]>\n"
	return msg
end

function bianshi(npc, player, type)
    local type = tonumber(type)
    
	local msg = "\n\n"
    for i = 1, #item_t[item_type_t[type]] do
        msg = msg.."辨识 #COLORCOLOR_BROWN#"..item_t[item_type_t[type]][i][1].."#COLOREND# 需要 #COLORCOLOR_BROWN#"..item_t[item_type_t[type]][i][2].."#COLOREND#".."#OFFSET<X:10,Y:0>##IMAGE1902700042##OFFSET<X:-5,Y:-1>#<@bianshiEx".."#"..i.."#"..type.."# *01* 我要辨识>\n"
    end
    msg = msg .. "\n\n#OFFSET<X:270,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	return msg
end

function bianshiEx(npc, player, index, type)
    local index = tonumber(index)
    local type = tonumber(type)
    local name = lualib:Name(player)
    local msg = "\n\n\n"
    local del_item_table = {item_t[item_type_t[type]][index][1], item_t[item_type_t[type]][index][2]}
    for i = 1, #del_item_table do
        if lualib:ItemCountByKey(player, del_item_table[i], true, false, false, 2) < 1 then
            msg = msg.."你没有"..del_item_table[i].."，无法进行此操作！\n"
            return msg
        end
        
    end
    
    if lualib:Player_ItemRequest(player, del_item_table, {1, 1}, {2, 2}, {1, 1}, "辨识装备", player) == false then
        msg = "删除物品失败！"
        return msg 
    end
    
    if lualib:AddItem(player, item_t[item_type_t[type]][index][3], 1, false, "辨识装备", player) == true then
        lualib:SysMsg_SendBroadcastMsg("["..name.."]在NPC装备辨识官处辨识出了上古神器:"..item_t[item_type_t[type]][index][3], "")
        lualib:SysMsg_SendCenterMsg(1, "["..name.."]在NPC装备辨识官处辨识出了上古神器:"..item_t[item_type_t[type]][index][3], "")
        return "装备辨识成功，获得了"..item_t[item_type_t[type]][index][3].."!!!" 
    end
    
end