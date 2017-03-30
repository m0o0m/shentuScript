treasure_map =
{
    --藏宝图的随机目标地图({keyname, name})
    dest_map_table =
    {
        ["初级藏宝图"] =
        {
            {"巫山城", "巫山城"},
            {"龙城", "龙城"},
            {"绝路谷", "绝路谷"},
            {"绝路岭", "绝路岭"},
            {"将军冢1", "将军冢"},
        },
        ["中级藏宝图"] =
        {
            {"废弃矿洞2", "废弃矿洞"},
            {"妖山暗穴1", "妖山暗穴"},
            {"天荒阵1", "天荒阵"},
            {"邪庙4", "天荒邪庙"},
            {"神歌城", "神歌城"},

        },
        ["高级藏宝图"] =
        {
            {"邪庙4", "天荒邪庙"},
            {"天魔石窟4", "天魔石窟"},
            {"海底1", "沉船秘境"},
            {"镇魔禁地2", "镇魔禁地"},
            {"赤炎部落1", "赤炎部落"},




        },
    },

    --藏宝图事件组详细
    event_detail_table =
    {
    ----------------------------------------------------------------------------
        ["初级藏宝图"] =
        {
            --获得经验
            ["exp_evt"] =
            {
                --获得经验概率
                ["rate"] = {10000}, --概率组
                --获得经验数值
                {
                    ["exp"] = 20000, --对应概率组的对象
                },
            },
            --------------------------------------------------------------------
            --获得金币
            ["gold_evt"] =
            {
                --金币概率
                ["rate"] = {5000, 10000},
                {
                    --获得金币数量
                    ["bind"] = 100000,
                    ["unbind"] = 0,
                },
                {
                    ["bind"] = 0,
                    ["unbind"] = 50000,
                },
            },
            --------------------------------------------------------------------
            ["item_evt"] =
            {
                --[概率] = {物品组} 如 1->20 21->40 41->60 61->80 81->100
                ["rate"] = {2000, 4000, 6000, 8000, 10000},
                {
                    --物品组 {物品名, 数量, 绑定类型}
                    ["items"] =
                    {
                        {"清心丹", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"巫山城传送石", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"龙城传送石", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"低级物攻精炼符", 1, 0},
                        {"低级魔攻精炼符", 1, 0},
                        {"低级道术精炼符", 1, 0},
                        {"低级物防精炼符", 1, 0},
                        {"低级魔防精炼符", 1, 0},
                        {"低级HP精炼符", 1, 0},
                        {"低级MP精炼符", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"中级藏宝图碎片", 1, 0},
                    },
                },
            },
            --------------------------------------------------------------------
            --刷怪
            ["monster_evt"] =
            {
                --[概率] 刷怪组
                ["rate"] = {10000},
                {
                    ["monsters"] =
                    {
                        {"鸡鸣者", 2},
                        {"狗盗者", 1},
                        {"鸡鸣狗盗者", 1},
                        {"偷鸡奶爸", 1},
                    },
                },
            },
        },
        ------------------------------------------------------------------------
        ["中级藏宝图"] =
        {
            --获得经验
            ["exp_evt"] =
            {
                --获得经验概率
                ["rate"] = {10000}, --概率组
                --获得经验数值
                {
                    ["exp"] = 120000, --对应概率组的对象
                },
            },
            --------------------------------------------------------------------
            --获得金币
            ["gold_evt"] =
            {
                --金币概率
                ["rate"] = {5000, 10000},
                {
                    --获得金币数量
                    ["bind"] = 200000,
                    ["unbind"] = 0,
                },
                {
                    ["bind"] = 0,
                    ["unbind"] = 100000,
                },
            },
            --------------------------------------------------------------------
            ["item_evt"] =
            {
                --[概率] = {物品组} 如 1->20 21->40 41->60 61->80 81->100
                ["rate"] = {2800, 4800, 6800, 8800, 10000},
                {
                    --物品组 {物品名, 数量, 绑定类型}
                    ["items"] =
                    {
                        {"清心丹", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"定位石", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"随机传送(50次)", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"中级物攻精炼符", 1, 0},
                        {"中级魔攻精炼符", 1, 0},
                        {"中级道术精炼符", 1, 0},
                        {"中级物防精炼符", 1, 0},
                        {"中级魔防精炼符", 1, 0},
                        {"中级HP精炼符", 1, 0},
                        {"中级MP精炼符", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"高级藏宝图碎片", 1, 0},
                    },
                },
            },
            --------------------------------------------------------------------
            --刷怪
            ["monster_evt"] =
            {
                --[概率] 刷怪组
                ["rate"] = {10000},
                {
                    ["monsters"] =
                    {
                        {"偷鸡奶爸", 2},
                        {"夜里盗矿", 1},
                        {"汉子也偷人", 1},
                        {"硬上弓的坏淫", 1},
                    },
                },
            },
        },
        ["高级藏宝图"] =
        {
            --获得经验
            ["exp_evt"] =
            {
                --获得经验概率
                ["rate"] = {10000}, --概率组
                --获得经验数值
                {
                    ["exp"] = 600000, --对应概率组的对象
                },
            },
            --------------------------------------------------------------------
            --获得金币
            ["gold_evt"] =
            {
                --金币概率
                ["rate"] = {5000, 10000},
                {
                    --获得金币数量
                    ["bind"] = 500000,
                    ["unbind"] = 0,
                },
                {
                    ["bind"] = 0,
                    ["unbind"] = 200000,
                },
            },
            --------------------------------------------------------------------
            ["item_evt"] =
            {
                --[概率] = {物品组} 如 1->20 21->40 41->60 61->80 81->100
                ["rate"] = {2500, 5000, 7500, 9875, 10000},
                {
                    --物品组 {物品名, 数量, 绑定类型}
                    ["items"] =
                    {
                        {"祝福神水", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"定位石(100次)", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"随机传送(500次)", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"高级物攻精炼符", 1, 0},
                        {"高级魔攻精炼符", 1, 0},
                        {"高级道术精炼符", 1, 0},
                        {"高级物防精炼符", 1, 0},
                        {"高级魔防精炼符", 1, 0},
                        {"高级HP精炼符", 1, 0},
                        {"高级MP精炼符", 1, 0},
                    },
                },
                {
                    ["items"] =
                    {
                        {"高级HP精炼符", 1, 0},
                    },
                },
            },
            --------------------------------------------------------------------
            --刷怪
            ["monster_evt"] =
            {
                --[概率] 刷怪组
                ["rate"] = {10000},
                {
                    ["monsters"] =
                    {
                        {"硬上弓的坏淫", 2},
                        {"窃玉偷香狂", 1},
                        {"曾是帅锅的贼", 1},
                        {"猥琐男", 1},
                    },
                },
            },
        },
    },
    --藏宝图事件组概率(事件名称 = {触发概率(10000=100%), 回调函数})
    event_table =
    {
        ["exp_evt"] =
        {
            ["rate"] = 10000,
            ["func"] = function(player, item_key)
                treasure_map:do_exp_evt(player, item_key)
            end
        },
        ["gold_evt"] =
        {
            ["rate"] = 10000,
            ["func"] = function(player, item_key)
                treasure_map:do_gold_evt(player, item_key)
            end
        },
        ["item_evt"] =
        {
            ["rate"] = 10000,
            ["func"] = function(player, item_key)
                treasure_map:do_item_evt(player, item_key)
            end
        },
        ["monster_evt"] =
        {
            ["rate"] = 3000,
            ["func"] = function(player, item_key)
                treasure_map:do_monster_evt(player, item_key)
            end
        },
    },
}

--判断物品是不是藏宝图
function treasure_map:is_treasure_map(item)
    return treasure_map.dest_map_table[lualib:KeyName(item)] ~= nil
end

--设置藏宝图的目标信息
function treasure_map:set_dest_info(item)
    local keyname = lualib:KeyName(item)
    if treasure_map.dest_map_table[keyname] == nil then
        lualib:Error("藏宝图：道具与脚本不匹配。")
        return false
    end

    local dest_map = treasure_map.dest_map_table[keyname]
        [lualib:GenRandom(1, #treasure_map.dest_map_table[keyname])]

    local pos = lualib:MapRndPos(dest_map[1])
    if pos == nil then
        lualib:Error("藏宝图：地图生成随机坐标失败。")
        return false
    end

    lualib:SetStr(item, "dest_map_key", dest_map[1])
    lualib:SetStr(item, "dest_map", dest_map[2])
    lualib:SetInt(item, "dest_x", pos.x)
    lualib:SetInt(item, "dest_y", pos.y)
    return true
end

--取得藏宝图的目标信息
function treasure_map:get_dest_info(item)
    return lualib:GetStr(item, "dest_map_key"),
           lualib:GetStr(item, "dest_map"),
           lualib:GetInt(item, "dest_x"),
           lualib:GetInt(item, "dest_y")
end

--使用藏宝图
function treasure_map:apply(player, itemkey)
    --先随机事件组
    local rnd_evt_table = {}
    for _, v in pairs(self.event_table) do
        local rnd = lualib:GenRandom(1, 10000)
        if rnd <= v.rate then
            table.insert(rnd_evt_table, v.func);
        end
    end

    if #rnd_evt_table == 0 then return false end

    --回调相应的事件函数
    for i = 1, #rnd_evt_table do
        rnd_evt_table[i](player, itemkey)
    end

    return true
end

--执行经验事件
function treasure_map:do_exp_evt(player, itemkey)
    local rnd = lualib:GenRandom(1, 10000)
    local exp_evt_t = self.event_detail_table[itemkey].exp_evt
    for i = 1, #exp_evt_t.rate do
        if rnd <= exp_evt_t.rate[i] then
            return lualib:Player_AddExp(player,exp_evt_t[i].exp,
                                        "加经验：使用藏宝图", "藏宝图")
        end
    end
end

--执行金币事件
function treasure_map:do_gold_evt(player, itemkey)
    local rnd = lualib:GenRandom(1, 10000)
    local gold_evt_t = self.event_detail_table[itemkey].gold_evt
    for i = 1, #gold_evt_t.rate do
        if rnd <= gold_evt_t.rate[i] then
            if not lualib:Player_AddGold(player, gold_evt_t[i].bind, true,
                                        "加金币：使用藏宝图", "藏宝图") then return false end
            return lualib:Player_AddGold(player, gold_evt_t[i].unbind, false,
                                        "加金币：使用藏宝图", "藏宝图")
        end
    end
end

--执行物品事件
function treasure_map:do_item_evt(player, itemkey)
    local rnd = lualib:GenRandom(1, 10000)
    local item_evt_t = self.event_detail_table[itemkey].item_evt

    for i = 1, #item_evt_t.rate do
        if rnd <= item_evt_t.rate[i] then
            local cur_item = item_evt_t[i].items[lualib:GenRandom(1, #item_evt_t[i].items)]
            local bind_type = false
            if cur_item[3] ~= 0 then bind_type = true end
            return lualib:AddItem(player, cur_item[1], cur_item[2], bind_type,
                "给物品：使用藏宝图", "藏宝图")
        end
    end

    return true
end

--执行刷怪事件
function treasure_map:do_monster_evt(player, itemkey)
    local rnd = lualib:GenRandom(1, 10000)
    local monster_evt_t = self.event_detail_table[itemkey].monster_evt
    for i = 1, #monster_evt_t.rate do
        if rnd <= monster_evt_t.rate[i] then
            local map, x, y = lualib:MapGuid(player), lualib:X(player), lualib:Y(player)
            for _, v in pairs(monster_evt_t[i].monsters) do
                if not lualib:Map_GenMonster(map, x, y, 5, lualib:GenRandom(0, 7),
                                      v[1], v[2], false) then return false end
                --return true
            end
        end
    end
	lualib:SysMsg_SendBroadcastColor("妖魔降世！"..lualib:Name(player).."在"..
                           lualib:Name(lualib:MapGuid(player))..
                           "使用了藏宝图，触动了妖魔的封印，一股妖气冲天而出！", "", 1, 12)
    return true
end

--------------------------------------------------------------------------------

function on_create(item)
    if not treasure_map:set_dest_info(item) then
        lualib:Error("藏宝图：on_create调用失败。")
    end
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
end

function main(player, item)
    if not treasure_map:is_treasure_map(item) then
        lualib:NPCTalk(player, "藏宝图：道具与脚本不匹配。\n \n<@leave *01*离开>")
        return false
    end

    local map = lualib:MapGuid(player)
    local mapkey = lualib:KeyName(map)
    if mapkey == nil then
        lualib:NPCTalk(player, "获取角色所处地图信息失败。\n \n<@leave *01*离开>")
        return false
    end

    local x = lualib:X(player)
    local y = lualib:Y(player)
    local dest_map_key, dest_map, dest_x, dest_y = treasure_map:get_dest_info(item)
    if dest_map_key ~= mapkey or x ~= dest_x or y ~= dest_y then
        lualib:NPCTalk(player, "宝藏藏在#COLORCOLOR_RED#"..
                       dest_map.."#COLOREND#的#COLORCOLOR_RED#【"..dest_x.."，"..
                       dest_y.."】#COLOREND#，你需要到那里使用藏宝图才能获得宝藏。\n \n<@leave *01*离开>")
        return false
    end

    if not treasure_map:apply(player, lualib:KeyName(item)) then
        lualib:NPCTalk(player, "使用藏宝图失败。\n \n<@leave *01*离开>")
        return false
    end

    if not lualib:Item_Destroy(player, item, "删道具：使用藏宝图", "藏宝图") then
		lualib:NPCTalk(player, "扣除道具失败")
		return false
	end
	
    return true
end

function leave(player, item)
    return ""
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