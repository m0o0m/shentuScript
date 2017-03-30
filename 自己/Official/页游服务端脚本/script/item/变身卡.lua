local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


function main(player, item)
	local buff_table = {"白茅人变身卡", "木器人变身卡", "花蜘蛛变身卡", "顽猴变身卡", "蛟人变身卡", "铁齿战将变身卡", "飞芒变身卡", "邪魔人偶变身卡", "树妖变身卡", "噬灵妖花变身卡", "妖面监工变身卡", "鬼面监工变身卡", "妖刀侍卫变身卡", "赤面猴变身卡", "绝道白猿变身卡", "巨蛾变身卡", "野狼变身卡", "神兽变身卡", "红面牛魔变身卡", "牛魔将军变身卡", "巨蛇变身卡", "黑水蛇变身卡", "白狼变身卡", "刀奴变身卡", "散兵变身卡", "沙石魔变身卡", "风魔变身卡", "夜行僧变身卡", "黑暗刺客变身卡", "梵天僧变身卡", "天原死士变身卡", "血禅师变身卡", "骷髅王变身卡", "飞刀骷髅变身卡", "骷髅战将变身卡", "尸奴工头变身卡", "僵尸变身卡", "雷暴僵尸变身卡", "墓地蛆虫变身卡", "幽冥尸王变身卡", "鹿变身卡", "千年树魔变身卡", "白茅怪人变身卡", "白茅邪人变身卡", "毒蜘蛛变身卡", "天狼蜘蛛变身卡", "泼猴变身卡", "凶暴猿猴变身卡", "猿猴变身卡", "飞蛾变身卡", "毒蛾变身卡", "苍狼变身卡", "青蛇变身卡", "红蛇变身卡", "白蛇变身卡", "蟒蛇变身卡", "蛇蛟变身卡", "古怪刀客变身卡", "鬼面刀手变身卡", "双刀侩子手变身卡", "魔兵变身卡", "蓝兽变身卡", "妖僧变身卡", "鬼面武者变身卡", "影刺变身卡", "骷髅战士变身卡", "单刀骷髅变身卡", "大斧骷髅变身卡", "飞萤变身卡", "魔萤变身卡", "邪翅变身卡", "食人花变身卡", "天原勇士变身卡", "天原猛士变身卡", "黑面牛魔变身卡", "牛魔勇士变身卡", "牛魔守卫变身卡", "爬尸变身卡", "尸卫变身卡", "腐尸变身卡", "掘铲尸奴变身卡", "铁镐尸奴变身卡", "尸奴变身卡", "骷髅宝宝变身卡", "老母猪变身卡", "小猪变身卡", "羊变身卡", "牛变身卡", "鸡变身卡", "饿鬼蛛变身卡", "剧毒蛛变身卡", "魔蛇变身卡", "魔狼变身卡", "魔猿变身卡", "巨石傀儡变身卡", "牛魔侍卫变身卡", "魔化蜥蜴变身卡", "魔化蝎子变身卡", "魔化沙虫变身卡", "天魔妖蟒变身卡", "恶战天魔变身卡", "天魔奴仆变身卡", "夜灵变身卡", "天魔统领变身卡", "天魔守卫变身卡", "天魔妖道变身卡", "天魔先锋变身卡", "天魔神变身卡", "深海巨螯怪变身卡", "石甲鱼变身卡", "秘境海妖变身卡", "巨钳蟹变身卡", "海魔侍从变身卡", "海魔护卫变身卡", "秘境歌妖变身卡", "铁棘鱼变身卡", "铁螯怪变身卡", "巨人药剂", "缩小药剂"}
	local num = lualib:Item_GetAmount(player, item)
	local item_key = lualib:KeyName(item)
	local hashorse = lualib:Attr(player, 200)
	
	if hashorse == 1 then
		lualib:MsgBox(player, "你现在在乘骑状态，无法变身！！")
		return true
	end
	
	for i = 1, #buff_table do
		if lualib:HasBuff(player, buff_table[i]) == true then
			qingqiu(player, item_key, item, num)
			return false
		end
	end
	ok(player, item_key, item, num)
	return false
end

function qingqiu(player, item_key, item, num)
	local msg = "你现在已经有变身BUFF，是否替换变身BUFF\n"
	msg = msg.."<@ok#"..item_key.."#"..item.."#"..num.." *01*确定>\n"
	msg = msg.."<@likai *01*取消>"
	lualib:NPCTalk(player, msg)
end

function ok(player, item_key, item, num)
	lualib:Item_SetAmount(player, item, num - 1)
	lualib:AddBuff(player, item_key, 0)
	lualib:SysMsg_SendTriggerMsg(player, "变身成功!!!")
	return ""
end

function likai(player)
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
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#的["..item_map_x..":"..item_map_y.."]！！！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end