local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local coustom_pos_tone_map = "coustom_pos_tone_map"   --定位石所定位的地图
local coustom_pos_tone_x   = "coustom_pos_tone_x"     --定位石所定位的地图X坐标 
local coustom_pos_tone_y   = "coustom_pos_tone_y"     --定位石所定位的地图Y坐标
local coustom_pos_tone_map_key = "coustom_pos_tone_map_key"--定位石所定位的地图keyname

local disallow_map = {}
	disallow_map["精英竞技场-16进8"] = 1
	disallow_map["精英竞技场-4进2"] = 1
	disallow_map["精英竞技场-8进4"] = 1
	disallow_map["精英竞技场-冠亚军赛"] = 1
	disallow_map["精英竞技场-季军赛"] = 1
	disallow_map["精英竞技场-群雄逐鹿"] = 1
	disallow_map["精英竞技场-休息间"] = 1
	disallow_map["精英竞技场-组队赛"] = 1
	disallow_map["赤炎禁地"] = 1
	disallow_map["神歌城皇宫"] = 1
	disallow_map["镇魔大殿"] = 1
	disallow_map["神歌城密道"] = 1
	disallow_map["木人巷"] = 1
	disallow_map["木人巷2"] = 1
	disallow_map["木人巷3"] = 1
	disallow_map["挑战场1"] = 1
	disallow_map["挑战场2"] = 1
	disallow_map["挑战场3"] = 1
	disallow_map["富商的藏金屋"] = 1
	disallow_map["烈焰深渊1"] = 1
	disallow_map["烈焰深渊2"] = 1
	disallow_map["烈焰深渊3"] = 1
	disallow_map["古墓"] = 1
	disallow_map["擂台"] = 1
	disallow_map["秘海封印"] = 1
	disallow_map["休息室"] = 1
	disallow_map["修炼场"] = 1
	disallow_map["妖山暗穴5"] = 1
	disallow_map["妖山暗穴8"] = 1
	disallow_map["妖山暗穴boss"] = 1
	disallow_map["异兽栏"] = 1
	disallow_map["引灵寺"] = 1
	disallow_map["玉完天幻境"] = 1
	disallow_map["珍宝洞"] = 1
	disallow_map["中级试炼场"] = 1
	disallow_map["尸王大殿"] = 1
	disallow_map["克星挑战场1"] = 1
	disallow_map["克星挑战场2"] = 1
	disallow_map["克星挑战场3"] = 1
	disallow_map["漂流岛"] = 1
	disallow_map["天荒阵6"] = 1
	disallow_map["天荒阵7-1"] = 1
	disallow_map["天荒阵7-2"] = 1
	disallow_map["天荒阵7-3"] = 1
	disallow_map["天荒阵7-4"] = 1
	disallow_map["天荒阵7-5"] = 1
	disallow_map["天荒阵7-6"] = 1
	disallow_map["天荒阵7-7"] = 1
	disallow_map["天荒阵7-8"] = 1
	disallow_map["天荒阵7-9"] = 1
	disallow_map["天荒阵boss"] = 1
	disallow_map["锁魔宫"] = 1
	disallow_map["天荒古阵"] = 1
	disallow_map["天魔石窟4"] = 1
	disallow_map["天下第一战场"] = 1
	disallow_map["亡灵禁地"] = 1
	disallow_map["邪庙7-1"] = 1
	disallow_map["邪庙7-2"] = 1
	disallow_map["邪庙7-3"] = 1
	disallow_map["邪庙boss"] = 1
	disallow_map["高级试炼场"] = 1
	disallow_map["封魔阵"] = 1
	disallow_map["初级试炼场"] = 1
	disallow_map["第三重天秘洞"] = 1
	disallow_map["百草堂"] = 1
	disallow_map["藏经楼"] = 1
	disallow_map["超级试炼场"] = 1
	disallow_map["灵山"] = 1
	disallow_map["灵元秘境1"] = 1
	disallow_map["灵元秘境2"] = 1
	disallow_map["灵元秘境3"] = 1
	disallow_map["海底4"] = 1
	disallow_map["将军冢boss"] = 1
	disallow_map["将军冢密室"] = 1
	disallow_map["绝路城boss"] = 1
	disallow_map["海底4野外"] = 1
	disallow_map["海底5"] = 1
	disallow_map["海底3野外"] = 1
	disallow_map["海底3"] = 1
	disallow_map["赤炎部落1"] = 1
	disallow_map["赤炎部落2"] = 1
	disallow_map["赤炎部落3"] = 1
	disallow_map["赤炎部落入口"] = 1
	disallow_map["废弃矿洞4"] = 1
	disallow_map["废弃矿洞5"] = 1
	disallow_map["废弃矿洞6"] = 1
	disallow_map["镇魔秘道1"] = 1
	disallow_map["镇魔秘道2"] = 1
	disallow_map["镇魔禁地10"] = 1
	disallow_map["镇魔禁地11"] = 1
	disallow_map["镇魔禁地12"] = 1
	disallow_map["神歌城"] = 1
	disallow_map["千幻阵"] = 1
	disallow_map["守护副本"] = 1
	disallow_map["绝路城3"] = 1
	disallow_map["天魔石窟3"] = 1
	disallow_map["天魔石窟boss"] = 1
	disallow_map["武斗场"] = 1
	disallow_map["邪庙6-1"] = 1
	disallow_map["邪庙6-10"] = 1
	disallow_map["邪庙6-11"] = 1
	disallow_map["邪庙6-12"] = 1
	disallow_map["邪庙6-13"] = 1
	disallow_map["邪庙6-14"] = 1
	disallow_map["邪庙6-15"] = 1
	disallow_map["邪庙6-16"] = 1
	disallow_map["邪庙6-2"] = 1
	disallow_map["邪庙6-3"] = 1
	disallow_map["邪庙6-4"] = 1
	disallow_map["邪庙6-5"] = 1
	disallow_map["邪庙6-6"] = 1
	disallow_map["邪庙6-7"] = 1
	disallow_map["邪庙6-8"] = 1
	disallow_map["邪庙6-9"] = 1
	disallow_map["封魔台"] = 1
	disallow_map["夺宝大厅"] = 1
	disallow_map["地下城"] = 1
	disallow_map["海底3船舱1"] = 1
	disallow_map["海底1船舱1"] = 1
	disallow_map["海底1船舱2"] = 1
	disallow_map["海底1船舱3"] = 1
	disallow_map["海底1船舱4"] = 1
	disallow_map["海底1船舱5"] = 1
	disallow_map["海底1船舱6"] = 1
	disallow_map["海底1船舱7"] = 1
	disallow_map["海底2"] = 1
	disallow_map["海底2船舱1"] = 1
	disallow_map["海底2船舱2"] = 1
	disallow_map["海底2船舱3"] = 1
	disallow_map["海底2船舱4"] = 1
	disallow_map["海底2船舱5"] = 1
	disallow_map["海底2船舱6"] = 1
	disallow_map["将军冢3"] = 1
	disallow_map["海底4船舱1"] = 1
	disallow_map["海底4船舱2"] = 1
	disallow_map["灵韵阁"] = 1
	disallow_map["镇魔殿"] = 1
	disallow_map["战斗副本"] = 1
	
function main(player, item)
    local msg = ""
    local map   = lualib:Item_GetCustomVarStr(player, item, coustom_pos_tone_map)
    local map_x = lualib:Item_GetCustomVarStr(player, item, coustom_pos_tone_x)
    local map_y = lualib:Item_GetCustomVarStr(player, item, coustom_pos_tone_y)
    local map_key = lualib:Item_GetCustomVarStr(player, item, coustom_pos_tone_map_key)

    if map == "" or map_x == "" or map_y == 0 or map_key == "" then
        msg = msg.."您还没有进行过定位操作！\n \n"
        msg = msg.."<@SetPos#"..item.." *01*定位>\n"
    else
        msg = msg.."您上次定位的位置：["..map.."] 坐标（"..map_x.."，"..map_y.."）！\n \n"
        msg = msg.."请选择传送或定位：\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."              <@SetPos#"..item.." *01*「定位」>              <@JumpPos#"..item.."#"..map_key.."#"..map_x.."#"..map_y.." *01*「传送」>\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    end

    lualib:NPCTalk(player, msg)
    return false
end

function SetPos(player, item)
	if disallow_map[map_key] == 1 then
		lualib:SysPromptMsg(player, "此地图禁止定位")	
		return ""
	end
	
    if lualib:IsBanItem(item, lualib:MapGuid(player)) then
        return "当前地图禁止使用该道具！"
    end

    local map = lualib:Player_GetStrProp(player,  lua_role_current_map)
    if map == "" then return "定位失败！" end

    local map_x = lualib:Player_GetPosX(player)
    local map_y = lualib:Player_GetPosY(player)
    if map_x == -1 or map_y == -1 then return "定位失败！" end

    local map_key = lualib:Player_GetStrProp(player,  lua_role_current_map_key)
    if map_key == "" then return "定位失败！" end

    local ret = lualib:Item_SetCustomVarStr(player, item, coustom_pos_tone_map, map)
    ret = lualib:Item_SetCustomVarStr(player, item, coustom_pos_tone_x, tostring(map_x))
    ret = lualib:Item_SetCustomVarStr(player, item, coustom_pos_tone_y, tostring(map_y))
    ret = lualib:Item_SetCustomVarStr(player, item, coustom_pos_tone_map_key, map_key)
    if ret == false then return "定位失败！" end
    
    return "定位成功！"
end

function JumpPos(player, item, map_key, x, y)
	if disallow_map[map_key] == 1 then
		lualib:SysPromptMsg(player, "此地图禁止传送")	
		return ""
	end
	
	local itemname	= lualib:Name(item)
	local itemkeyname = lualib:KeyName(item)
	local item_num = lualib:ItemCountByKey(player, itemkeyname, true, false, false, 2)

	if item_num < 1 then
		lualib:SysTriggerMsg(player, "你是不是把["..itemname.."]给放别处了？")
		return ""
	end
	
	
    if lualib:IsBanItem(item, lualib:MapGuid(player)) then
        return "当前地图禁止使用该道具！"
    end

    local count = lualib:Item_GetUsesCount(player, item)
    if count == -1 then return "传送失败！" end

    local _count = count - 1
    if lualib:Item_SetUsesCount(player, item, _count) == false then return "传送失败！" end

    if lualib:Player_MapMoveXY(player, map_key, tonumber(x), tonumber(y), 8) == false then return "传送失败！" end
    return ""
end


function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
    if item_name == "定位石(1次)" or item_name == "定位石(2次)" or item_name == "定位石(3次)" or item_name == "定位石(5次)" then
        return
    end
    
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
		return
	end
end
