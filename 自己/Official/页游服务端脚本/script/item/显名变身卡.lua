local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local buff_table = 	{"白茅人变身卡", "木器人变身卡", "花蜘蛛变身卡", "顽猴变身卡", "蛟人变身卡", "铁齿战将变身卡", "飞芒变身卡", "邪魔人偶变身卡", "树妖变身卡", "噬灵妖花变身卡", "妖面监工变身卡", "鬼面监工变身卡", "妖刀侍卫变身卡", "赤面猴变身卡", "绝道白猿变身卡", "巨蛾变身卡", "野狼变身卡", "神兽变身卡", "红面牛魔变身卡", "牛魔将军变身卡", "巨蛇变身卡", "黑水蛇变身卡", "白狼变身卡", "刀奴变身卡", "散兵变身卡", "沙石魔变身卡", "风魔变身卡", "夜行僧变身卡", "黑暗刺客变身卡", "梵天僧变身卡", "天原死士变身卡", "血禅师变身卡", "骷髅王变身卡", "飞刀骷髅变身卡", "骷髅战将变身卡", "尸奴工头变身卡", "僵尸变身卡", "雷暴僵尸变身卡", "墓地蛆虫变身卡", "幽冥尸王变身卡", "鹿变身卡", "白茅怪人变身卡", "白茅邪人变身卡", "毒蜘蛛变身卡", "天狼蜘蛛变身卡", "泼猴变身卡", "凶暴猿猴变身卡", "猿猴变身卡", "飞蛾变身卡", "毒蛾变身卡", "苍狼变身卡", "青蛇变身卡", "红蛇变身卡", "白蛇变身卡", "蟒蛇变身卡", "蛇蛟变身卡", "古怪刀客变身卡", "鬼面刀手变身卡", "双刀侩子手变身卡", "魔兵变身卡", "蓝兽变身卡", "妖僧变身卡", "鬼面武者变身卡", "影刺变身卡", "骷髅战士变身卡", "单刀骷髅变身卡", "大斧骷髅变身卡", "飞萤变身卡", "魔萤变身卡", "邪翅变身卡", "食人花变身卡", "天原勇士变身卡", "天原猛士变身卡", "黑面牛魔变身卡", "牛魔勇士变身卡", "牛魔守卫变身卡", "爬尸变身卡", "尸卫变身卡", "腐尸变身卡", "掘铲尸奴变身卡", "铁镐尸奴变身卡", "尸奴变身卡", "骷髅宝宝变身卡", "老母猪变身卡", "小猪变身卡", "羊变身卡", "牛变身卡", "鸡变身卡", "饿鬼蛛变身卡", "剧毒蛛变身卡", "魔蛇变身卡", "魔狼变身卡", "魔猿变身卡", "巨石傀儡变身卡", "牛魔侍卫变身卡", "魔化蜥蜴变身卡", "魔化蝎子变身卡", "魔化沙虫变身卡", "天魔妖蟒变身卡", "恶战天魔变身卡", "天魔奴仆变身卡", "夜灵变身卡", "天魔统领变身卡", "天魔守卫变身卡", "天魔妖道变身卡", "天魔先锋变身卡", "天魔神变身卡", "深海巨螯怪变身卡", "石甲鱼变身卡", "秘境海妖变身卡", "巨钳蟹变身卡", "海魔侍从变身卡", "海魔护卫变身卡", "秘境歌妖变身卡", "铁棘鱼变身卡", "铁螯怪变身卡", "巨人药剂", "缩小药剂", "变怪显名"}
local avatar_table = {}
	avatar_table["白茅人变身卡"] = {1}
	avatar_table["木器人变身卡"] = {2}
	avatar_table["花蜘蛛变身卡"] = {3}
	avatar_table["顽猴变身卡"] = {4}
	avatar_table["蛟人变身卡"] = {5}
	avatar_table["铁齿战将变身卡"] = {6}
	avatar_table["飞芒变身卡"] = {7}
	avatar_table["邪魔人偶变身卡"] = {8}
	avatar_table["树妖变身卡"] = {9}
	avatar_table["噬灵妖花变身卡"] = {10}
	avatar_table["妖面监工变身卡"] = {11}
	avatar_table["鬼面监工变身卡"] = {12}
	avatar_table["妖刀侍卫变身卡"] = {13}
	avatar_table["赤面猴变身卡"] = {14}
	avatar_table["绝道白猿变身卡"] = {15}
	avatar_table["巨蛾变身卡"] = {16}
	avatar_table["野狼变身卡"] = {17}
	avatar_table["神兽变身卡"] = {18}
	avatar_table["红面牛魔变身卡"] = {19}
	avatar_table["牛魔将军变身卡"] = {20}
	avatar_table["巨蛇变身卡"] = {21}
	avatar_table["黑水蛇变身卡"] = {22}
	avatar_table["白狼变身卡"] = {23}
	avatar_table["刀奴变身卡"] = {24}
	avatar_table["散兵变身卡"] = {25}
	avatar_table["沙石魔变身卡"] = {26}
	avatar_table["风魔变身卡"] = {27}
	avatar_table["夜行僧变身卡"] = {28}
	avatar_table["黑暗刺客变身卡"] = {29}
	avatar_table["梵天僧变身卡"] = {30}
	avatar_table["天原死士变身卡"] = {31}
	avatar_table["血禅师变身卡"] = {32}
	avatar_table["骷髅王变身卡"] = {33}
	avatar_table["飞刀骷髅变身卡"] = {34}
	avatar_table["骷髅战将变身卡"] = {35}
	avatar_table["尸奴工头变身卡"] = {36}
	avatar_table["僵尸变身卡"] = {37}
	avatar_table["雷暴僵尸变身卡"] = {38}
	avatar_table["墓地蛆虫变身卡"] = {39}
	avatar_table["幽冥尸王变身卡"] = {40}
	avatar_table["鹿变身卡"] = {41}
	avatar_table["白茅怪人变身卡"] = {43}
	avatar_table["白茅邪人变身卡"] = {44}
	avatar_table["毒蜘蛛变身卡"] = {45}
	avatar_table["天狼蜘蛛变身卡"] = {46}
	avatar_table["泼猴变身卡"] = {47}
	avatar_table["凶暴猿猴变身卡"] = {48}
	avatar_table["猿猴变身卡"] = {49}
	avatar_table["飞蛾变身卡"] = {50}
	avatar_table["毒蛾变身卡"] = {51}
	avatar_table["苍狼变身卡"] = {52}
	avatar_table["青蛇变身卡"] = {53}
	avatar_table["红蛇变身卡"] = {54}
	avatar_table["白蛇变身卡"] = {55}
	avatar_table["蟒蛇变身卡"] = {56}
	avatar_table["蛇蛟变身卡"] = {57}
	avatar_table["古怪刀客变身卡"] = {58}
	avatar_table["鬼面刀手变身卡"] = {59}
	avatar_table["双刀侩子手变身卡"] = {60}
	avatar_table["魔兵变身卡"] = {61}
	avatar_table["蓝兽变身卡"] = {62}
	avatar_table["妖僧变身卡"] = {63}
	avatar_table["鬼面武者变身卡"] = {64}
	avatar_table["影刺变身卡"] = {65}
	avatar_table["骷髅战士变身卡"] = {66}
	avatar_table["单刀骷髅变身卡"] = {67}
	avatar_table["大斧骷髅变身卡"] = {68}
	avatar_table["飞萤变身卡"] = {69}
	avatar_table["魔萤变身卡"] = {70}
	avatar_table["邪翅变身卡"] = {71}
	avatar_table["食人花变身卡"] = {72}
	avatar_table["天原勇士变身卡"] = {73}
	avatar_table["天原猛士变身卡"] = {74}
	avatar_table["黑面牛魔变身卡"] = {75}
	avatar_table["牛魔勇士变身卡"] = {76}
	avatar_table["牛魔守卫变身卡"] = {77}
	avatar_table["爬尸变身卡"] = {78}
	avatar_table["尸卫变身卡"] = {79}
	avatar_table["腐尸变身卡"] = {80}
	avatar_table["掘铲尸奴变身卡"] = {81}
	avatar_table["铁镐尸奴变身卡"] = {82}
	avatar_table["尸奴变身卡"] = {83}
	avatar_table["骷髅战将变身卡"] = {84}
	avatar_table["老母猪变身卡"] = {85}
	avatar_table["小猪变身卡"] = {86}
	avatar_table["羊变身卡"] = {87}
	avatar_table["牛变身卡"] = {88}
	avatar_table["鸡变身卡"] = {90}
	avatar_table["饿鬼蛛变身卡"] = {93}
	avatar_table["剧毒蛛变身卡"] = {94}
	avatar_table["魔蛇变身卡"] = {95}
	avatar_table["魔狼变身卡"] = {96}
	avatar_table["魔猿变身卡"] = {97}
	avatar_table["巨石傀儡变身卡"] = {98}
	avatar_table["牛魔侍卫变身卡"] = {99}
	avatar_table["魔化蜥蜴变身卡"] = {100}
	avatar_table["魔化蝎子变身卡"] = {101}
	avatar_table["魔化沙虫变身卡"] = {102}
	avatar_table["天魔妖蟒变身卡"] = {103}
	avatar_table["恶战天魔变身卡"] = {104}
	avatar_table["天魔奴仆变身卡"] = {105}
	avatar_table["夜灵变身卡"] = {106}
	avatar_table["天魔统领变身卡"] = {107}
	avatar_table["天魔守卫变身卡"] = {108}
	avatar_table["天魔妖道变身卡"] = {109}
	avatar_table["天魔先锋变身卡"] = {110}
	avatar_table["天魔神变身卡"] = {111}
	avatar_table["深海巨螯怪变身卡"] = {119}
	avatar_table["石甲鱼变身卡"] = {120}
	avatar_table["秘境海妖变身卡"] = {121}
	avatar_table["巨钳蟹变身卡"] = {122}
	avatar_table["海魔侍从变身卡"] = {123}
	avatar_table["海魔护卫变身卡"] = {124}
	avatar_table["秘境歌妖变身卡"] = {125}
	avatar_table["铁棘鱼变身卡"] = {126}
	avatar_table["铁螯怪变身卡"] = {127}
	avatar_table["缩小药剂"] = {50000}
	avatar_table["巨人药剂"] = {50001}


function main(player, item)	
	local num = lualib:Item_GetAmount(player, item)
	local item_key = lualib:KeyName(item)
	if item_key == "" then
		lualib:SysMsg_SendWarnMsg(player, "道具名称获取失败！")
		return false
	end
	
	if avatar_table[item_key] == nil then
        lualib:SysMsg_SendWarnMsg(player_guid, "该道具暂时无法使用，请联系管理人员！")
        return false
    end
	
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
	lualib:AddAvataBuff(player, avatar_table[item_key][1], "变怪显名", "海魔砸晕", 0)
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