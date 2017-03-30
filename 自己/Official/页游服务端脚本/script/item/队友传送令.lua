local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

-- 地图黑名单keyname（黑名单内的地图不能被传送）
local map_hei =
{
	"将军冢密室", 
	"天荒古阵", 
	"第三重天秘洞", 
	"天下第一战场", 
	"漂流岛", 
	"初级试炼场", 
	"中级试炼场", 
	"高级试炼场", 
	"克星挑战场1", 
	"克星挑战场2", 
	"克星挑战场3", 
	"引灵寺", 
	"亡灵禁地", 
	"玉完天幻境", 
	"封魔阵", 
	"古墓", 
	"夺宝大厅", 
	"地下城", 
	"武斗场", 
	"灵韵阁", 
	"封魔台", 
	"镇魔殿",
	"烈焰深渊1", 
	"烈焰深渊2",
	"烈焰深渊3",
	"千幻阵",
	"休息室",
	"擂台",
	"秘海封印",
	"超级试炼场",
	"海角秘境",
	"精英竞技场-群雄逐鹿",
	"精英竞技场-16进8",
	"精英竞技场-8进4",
	"精英竞技场-4进2",
	"精英竞技场-季军赛",
	"精英竞技场-冠亚军赛",
	"精英竞技场-休息间",
	"精英竞技场-组队赛",
	"挑战场1",
	"挑战场2",
	"挑战场3",
	"富商的藏金屋",
	"任务临时副本",
	"废弃矿洞4",
	"废弃矿洞5",
	"废弃矿洞6",
	"将军冢3",
	"将军冢boss",
	"妖山暗穴5",
	"妖山暗穴6",
	"妖山暗穴7",
	"妖山暗穴8",
	"妖山暗穴boss",
	"邪庙6-1",
	"邪庙6-2",
	"邪庙6-3",
	"邪庙6-4",
	"邪庙6-5",
	"邪庙6-6",
	"邪庙6-7",
	"邪庙6-8",
	"邪庙6-9",
	"邪庙6-10",
	"邪庙6-11",
	"邪庙6-12",
	"邪庙6-13",
	"邪庙6-14",
	"邪庙6-15",
	"邪庙6-16",
	"邪庙7-1",
	"邪庙7-2",
	"邪庙7-3",
	"邪庙boss",
	"天荒阵6",
	"天荒阵7-1",
	"天荒阵7-2",
	"天荒阵7-3",
	"天荒阵7-4",
	"天荒阵7-5",
	"天荒阵7-6",
	"天荒阵7-7",
	"天荒阵7-8",
	"天荒阵7-9",
	"天荒阵boss",
	"绝路城3",
	"绝路城boss",
	"天魔石窟3",
	"天魔石窟4",
	"天魔石窟boss",
	"海底2",
	"海底3",
	"海底3野外",
	"海底4",
	"海底4野外",
	"海底5",
	"海底1船舱1",
	"海底1船舱2",
	"海底1船舱3",
	"海底1船舱4",
	"海底1船舱5",
	"海底1船舱6",
	"海底1船舱7",
	"海底2船舱1",
	"海底2船舱2",
	"海底2船舱3",
	"海底2船舱4",
	"海底2船舱5",
	"海底2船舱6",
	"海底3船舱1",
	"海底4船舱1",
	"海底4船舱2",
	"镇魔禁地10",
	"镇魔禁地11",
	"镇魔禁地12",
	"镇魔大殿",
	"镇魔秘道1",
	"镇魔秘道2",
	"神歌城皇宫",
	"神歌城",
	"神歌城密道",
	"尸王大殿",
	"锁魔宫",
	"灵山",
	"修炼场",
	"藏经楼",
	"异兽栏",
	"珍宝洞",
	"百草堂",
	"木人巷",
	"木人巷2",
	"木人巷3",
	"灵元秘境1",
	"灵元秘境2",
	"灵元秘境3",
	"赤炎部落入口",
	"赤炎部落1",
	"赤炎部落2",
	"赤炎部落3",
	"赤炎禁地",
}

function main(player, item)
	local player_name = lualib:Name(player)
	local player_team = lualib:Player_GetTeamList(player)

	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[队友传送令]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905000>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→小蜜\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>##COLORCOLOR_BROWN#点击#IMAGE<ID:1902700015>#可传送到队友身旁哦：#COLOREND#\n#OFFSET<X:0,Y:5>#"  

    
	for k, v in pairs(player_team) do
		local duiyou_name = lualib:Name(v)
		local map_name = lualib:Name(lualib:MapGuid(v))
		msg = msg .. "#IMAGE<ID:1902700015>#".."#OFFSET<X:-22,Y:-1>#<@chuansong".."#"..duiyou_name.."#"..v.."#"..item.."#"..map_name.. " *01* 传>".."→#COLORCOLOR_GREENG#["..duiyou_name.."]#COLOREND# 在["..map_name.."]\n"
	end
	
	lualib:NPCTalkDetail(player, msg, 265, 350)
	return true
end

function chuansong(player, duiyou_name, v, item, map_name)
	local playername = lualib:Name(player)
	local map_keyname = lualib:KeyName(lualib:MapGuid(v))
	local itemname	= lualib:Name(item)
	local itemkeyname = lualib:KeyName(item)
	local item_num = lualib:ItemCountByKey(player, itemkeyname, true, false, false, 2)
	local map = lualib:MapGuid(v)
	local x = tonumber(lualib:X(v))
	local y = tonumber(lualib:Y(v))

	if item_num < 1 then
		lualib:SysTriggerMsg(player, "你是不是把["..itemname.."]给放别处了？")
		return ""
	end
	
	if playername == duiyou_name then
		lualib:SysTriggerMsg(player, "不能传送到自己身边！")
		return ""
	end
	
	for i = 1, #map_hei do
		if map_keyname == map_hei[i] then
			lualib:SysTriggerMsg(player, duiyou_name.."所在["..map_name.."]地图被禁止传送！")
			return ""
		end
	end
	if not lualib:DelItem(player, lualib:KeyName(item), 1, 2, "队员传送扣除", player) then
		lualib:SysTriggerMsg(player, "扣除道具失败")
		return ""
	end
	
	lualib:Player_JumpToRole(player, duiyou_name)
	lualib:RunClientScript(map, "mapeffect", "texiao", "100001261#"..x.."#"..y.."#0#0")

	
	
	
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
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "【"..item_name.."】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "【"..item_name.."】被→→→".."["..player_name.."]一个人品爆发打了出来，掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
            local s = "【"..item_name.."】掉落在"..item_map_name.."的["..item_map_x..":"..item_map_y.."]！！！"
			local s1 = "#COLORCOLOR_BROWN#【"..item_name.."】#COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#的["..item_map_x..":"..item_map_y.."]！！！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end
