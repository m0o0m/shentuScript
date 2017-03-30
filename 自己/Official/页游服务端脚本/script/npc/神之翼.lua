--翅膀兑换
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/魂力系统")

-- 翅膀
local chib =
{
    {"浩空翼(40级)", {"浩空翼Lv1", "浩空翼Lv2", "浩空翼Lv3"}}, 
	{"游光之翼(40级)", {"游光之翼Lv1", "游光之翼Lv2", "游光之翼Lv3"}}, 
	{"紫莺之翼(40级)", {"紫莺之翼Lv1", "紫莺之翼Lv2", "紫莺之翼Lv3"}}, 
	{"青鸾之翼(40级)", {"青鸾之翼Lv1", "青鸾之翼Lv2", "青鸾之翼Lv3"}}, 
	{"绽放之翼(40级)",{"绽放之翼Lv1", "绽放之翼Lv2", "绽放之翼Lv3"}}, 
	{"天藏之翼(40级)", {"天藏之翼Lv1", "天藏之翼Lv2", "天藏之翼Lv3"}}, 
    {"邪魔翼(40级)", {"邪魔翼Lv1", "邪魔翼Lv2", "邪魔翼Lv3"}}, 
    {"魔蝶之翼(40级)", {"魔蝶之翼Lv1", "魔蝶之翼Lv2", "魔蝶之翼Lv3"}}, 


}


local chibJob =
{
    ["浩空翼(40级)"] = " ------ 通用",
	["游光之翼(40级)"] = " ---- 通用",
	["紫莺之翼(40级)"] = " ---- 战士",
    ["青鸾之翼(40级)"] = " ---- 战士",
    ["绽放之翼(40级)"] = " ---- 法师",
    ["天藏之翼(40级)"] = " ---- 法师",
	["邪魔翼(40级)"] = " ------ 道士",
    ["魔蝶之翼(40级)"] = " ---- 道士",
}

-- 兑换翅膀需要的神羽数量
local chib_num =
{
	["浩空翼Lv1"]	= 50,       --通用
	["浩空翼Lv2"]   = 100,      --通用
	["浩空翼Lv3"]   = 250,      --通用
    ["绽放之翼Lv1"]	= 1500,     --道士
	["绽放之翼Lv2"] = 2250,     --道士
	["绽放之翼Lv3"] = 4500,     --道士
    ["邪魔翼Lv1"]	= 500,      --道士
	["邪魔翼Lv2"]   = 750,      --道士
	["邪魔翼Lv3"]   = 1500,     --道士
    ["游光之翼Lv1"]	= 100,      --通用
	["游光之翼Lv2"] = 200,      --通用
	["游光之翼Lv3"] = 500,      --通用
    ["天藏之翼Lv1"]	= 500,      --法师
	["天藏之翼Lv2"] = 750,      --法师
	["天藏之翼Lv3"] = 1500,     --法师
    ["魔蝶之翼Lv1"]	= 1500,     --法师
	["魔蝶之翼Lv2"] = 2250,     --法师
	["魔蝶之翼Lv3"] = 4500,     --法师
    ["紫莺之翼Lv1"]	= 500,      --战士
	["紫莺之翼Lv2"] = 750,      --战士
	["紫莺之翼Lv3"] = 1500,     --战士
    ["青鸾之翼Lv1"]	= 1500,     --战士
	["青鸾之翼Lv2"] = 2250,     --战士
	["青鸾之翼Lv3"] = 4500,     --战士
}
-- 翅膀兑换神羽可以获得神羽的数量
local chib_num_fan =
{
	["浩空翼Lv1"]	= 10,
	["浩空翼Lv2"] = 20,
	["浩空翼Lv3"] = 50, 
    ["绽放之翼Lv1"]	= 300,
	["绽放之翼Lv2"] = 450,
	["绽放之翼Lv3"] = 900, 
    ["邪魔翼Lv1"]	= 100,
	["邪魔翼Lv2"] = 150,
	["邪魔翼Lv3"] = 300, 
    ["游光之翼Lv1"]	= 20,
	["游光之翼Lv2"] = 40,
	["游光之翼Lv3"] = 100, 
    ["天藏之翼Lv1"]	= 100,
	["天藏之翼Lv2"] = 150,
	["天藏之翼Lv3"] = 300, 
    ["魔蝶之翼Lv1"]	= 300,
	["魔蝶之翼Lv2"] = 450,
	["魔蝶之翼Lv3"] = 900, 
    ["紫莺之翼Lv1"]	= 100,
	["紫莺之翼Lv2"] = 150,
	["紫莺之翼Lv3"] = 300, 
    ["青鸾之翼Lv1"]	= 300,
	["青鸾之翼Lv2"] = 450,
	["青鸾之翼Lv3"] = 900, 	
}


local all_wings =
{
        --第一个必须配神羽
        --Keyname               Rate         需要的神羽数        是否可兑换      反向兑换成神羽
        {    "神羽",              9800,        0,                  0,               0},
        {    "浩空翼Lv1",          50,          60,                 1,               12},
        {    "浩空翼Lv2",          3,           150,                 1,               30},
        {    "浩空翼Lv3",          2,           500,                1,               100},
        {    "游光之翼Lv1",       50,          100,                 1,               20},
        {    "游光之翼Lv2",       3,           250,                 1,               50},
        {    "游光之翼Lv3",       2,           800,                1,               160},		
        {    "天藏之翼Lv1",       50,          200,                 1,               40},
        {    "天藏之翼Lv2",       3,           500,                 1,               100},
        {    "天藏之翼Lv3",       2,           1500,                1,               300},			
};

local talk_t = {"翅膀需要无数的神羽来合成。", "你也可以把翅膀分解成神羽哦。", "翅膀不但美观，还拥有非同一般的属性哦。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 270000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc,player)
    local keyname = lualib:Player_GetCustomVarStr(player, "神翼抽取_未领物品")
    if keyname ~= "" then
        msg = "<@get_wing *01*领取上次奖励>\n"
        return msg
    end

       local msg = "    羡慕拥有翅膀的华丽与缤纷吗？这可是人类一直梦寐以求的喔！如果你渴望，那便去收集#COLORCOLOR_GOLD#神羽#COLOREND#吧，大部分怪物死亡时都会掉落哦\n"
        msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
        msg = msg.."  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@convert_prompt *01*「神羽兑换神翼」>               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@convert_back_prompt *01*「神翼兑换神羽」>\n"
        msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
		msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>\n"
	-- #OFFSET<X:0,Y:9>#<@search_prompt *01*「了解神翼探索」> 
    return msg
end

function search_prompt(npc, player)
	local spirit = lualib:Player_GetCustomVarInt(player, "魂力系统_魂力")
       local msg = "#COLORCOLOR_RED#⑴：#COLOREND#系统会为玩家每天自动补充80点魂力值\n"
	msg = msg.."#COLORCOLOR_RED#⑵：#COLOREND#30级以上的玩家，每在线一小时系统自动补充10点魂力值\n"
	msg = msg.."#COLORCOLOR_RED#⑶：#COLOREND#利用魂力值可以在我这里抽取翅膀哦\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."你当前魂力为【"..spirit.."】点\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."  <@search_wing *01*「开始神翼探索」>   #COLORCOLOR_RED#提示：#COLOREND#探索一次需要消耗80点魂力值\n"
        msg = msg.."                                                   <@main *01*「返回」>\n"

    return msg
end

function search_wing(npc, player)
    --判断魂力是否足够
    local spirit = lualib:Player_GetCustomVarInt(player, "魂力系统_魂力")
    if spirit < 80 then
        msg = "你的魂力不够，是否使用元宝自动补充\n \n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."你当前魂力为【"..spirit.."】点      #COLORCOLOR_GOLD#每100元宝可补充10点魂力#COLOREND#\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."<@recover_spirit_by_yb *01*【一次补充到300点】>    <@recover_spirit_by_100yb *01*【一次补充10点】>\n"

        return msg
    end

    --开始抽取
    local v = {};
    local max = 0;
    for i = 1, table.getn(all_wings) do
        max = all_wings[i][2] + max
        v[i] = max
    end

    local r = lualib:GenRandom(1, max)
    local sel = table.getn(all_wings)
    for i = 1,table.getn(v) do
        if r < v[i] then
            sel = i
            break
        end
    end

    --扣取魂力
    lualib:Player_SetCustomVarInt(player, "魂力系统_魂力", spirit - 80)
    lualib:Player_SetCustomVarStr(player, "神翼抽取_未领物品", all_wings[sel][1])
    msg = "您抽取到的是【"..all_wings[sel][1].."】\n"

    if all_wings[sel][4] == 1 then
        local bmsg = lualib:Player_GetStrProp(player,  lua_role_user_name)
        bmsg = bmsg.."玩家否极泰来，探索到了"..all_wings[sel][1]
        lualib:SysMsg_SendCenterMsg(1, bmsg, "")
    else
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."这次你没有探索到翅膀，很遗憾，但你收集到一定量的[神羽]就能到我这里来免费换取一个哦！\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    end

    if lualib:Player_GiveItemUnbind(player, all_wings[sel][1], 1, "神翼抽奖", "") then
        lualib:Player_SetCustomVarStr(player, "神翼抽取_未领物品", "")
        msg = msg.."                                                   <@search_prompt *01*「返回」>\n"
        return msg
    end

    msg = msg.."你的包裹空间不足，请整理后再来领取。\n\n"
    msg = msg.."<@get_wing *01*「领取」>   \n"
    return msg
end

function get_wing(npc, player)
    local keyname = lualib:Player_GetCustomVarStr(player, "神翼抽取_未领物品")
    if keyname == "" then
        return "你没有未领的物品。n\n".."<@main *01*「返回」>   \n"
    end

    if lualib:Player_GiveItemUnbind(player, keyname, 1, "神翼抽奖", "") then
        lualib:Player_SetCustomVarStr(player, "神翼抽取_未领物品", "")
        return "领取成功。\n".."<@main *01*「返回」>   \n"
    end

    msg = "领取奖励失败，请检查包裹及负重。\n\n"
    msg = msg.."<@get_wing *01*「领取」>   \n\n".."<@main *01*「返回」>   \n"
    return msg
end


function convert_prompt(npc, player)
       local msg = "收集到一定量的神羽就可以来我这里换取传说中的翅膀哦！加油收集吧！\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."目前你可以在我这里利用神羽换取如下翅膀\n"
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		for i = 1,#chib do
			msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan#"..i.." *01*"..chib[i][1]..chibJob[chib[i][1]]..">\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"

    return msg;
end

function duihuan(npc, player, k)
	local k = tonumber(k)
	local msg = "请选择需要兑换的翅膀\n"
		  msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		for k1, v1 in pairs(chib[k][2]) do
				msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan1#"..v1.." *01*["..v1.."]>\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@convert_prompt *01*「返回」>\n"

	return msg
end


function duihuan1(npc, player,  v1)
	local msg = ""
	
		for k2, v2 in pairs(chib_num) do
				if v1 == k2 then
					msg = msg.."兑换#COLORCOLOR_YELLOW#"..v1.."#COLOREND#需要#COLORCOLOR_RED#"..v2.."#COLOREND#个，确定兑换吗？\n \n \n \n \n"
					msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700033>##OFFSET<X:0,Y:-2>#<@duihuan2#"..v1.."#"..v2.." *01*[确定兑换]>\n \n \n \n"
					
				end
		end
		msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"

	return msg
end

function duihuan2(npc, player,v1, v2)
	local msg = ""
	local num = lualib:ItemCount(player, "神羽")
	local bagfree = lualib:Player_GetBagFree(player)
	if bagfree < 1 then
		return "你的包裹不足1格，请空出一格包裹再来兑换！\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@convert_prompt *01*「返回」>"
	end
	v2 = tonumber(v2)
	if num < v2 then
		return "你的数量"..v2.."不足，不能兑换！ \n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	else
		if lualib:DelItem(player, "神羽", v2, 2, "兑换翅膀成功删除神羽", player) == true then
			if not lualib:AddItem(player, v1, 1, false, "兑换翅膀成功！", player) then
				return "扣除道具失败"
			end
			return "兑换成功！\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		else
			return "删除道具失败，请重新试试！\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		end
	end
	
	return msg
end



function convert_back_prompt(npc, player)
       local msg = "如果你有多余的神翼，也可以到我这里兑换成神羽在兑换更高级的神翼！\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."目前你可以在我这里用下列神翼兑换神羽\n"
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		
		for i = 1, #chib do
			msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@duihuan_fan#"..i.." *01*"..chib[i][1]..">\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"

    return msg;
end

function duihuan_fan(npc, player, k)
	local k = tonumber(k)
	local msg = "选择需要兑换神羽的神翼\n"
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	
		for k1, v1 in pairs(chib[k][2]) do
				msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan_fan1#"..v1.." *01*["..v1.."]>\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@convert_back_prompt *01*「返回」>\n"

	return msg
end


function duihuan_fan1(npc, player,  v1)
	local msg = ""
	
		for k2, v2 in pairs(chib_num_fan) do
				if v1 == k2 then
					msg = msg..v1.."可以兑换到：#COLORCOLOR_RED#"..v2.."#COLOREND#个神羽，确定兑换吗？\n \n \n \n \n"
					msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan_fan2#"..v1.."#"..v2.." *01*「兑换」>\n \n \n \n"
					
				end
		end
		msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"

	return msg
end

function duihuan_fan2(npc, player, v1, v2)
	v2 = tonumber(v2)
	local chibang = lualib:ItemCountByKey(player, v1, true, false, false, 0)
	local msg = ""
	local bagfree = lualib:Player_GetBagFree(player)
	if bagfree < 1 then
		return "你的包裹不足1格，请空出一格包裹再来兑换！\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@duihuan_fan *01*「返回」>"
	else
		if chibang < 1 then
			return "你没有翅膀，不能兑换\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			
		else
			if lualib:DelItem(player, v1, 1, 2, "反向兑换成神羽删除翅膀", player) == true then
				lualib:AddItem(player, "神羽", v2, false, "兑换翅膀成功！", player)
				return "兑换成功！\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			else
				return "删除道具失败，请重新试试！\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			end
		end
	end

	return msg
end





function recover_spirit_by_yb(npc, player)
    local spirit = lualib:Player_GetCustomVarInt(player, "魂力系统_魂力")
    for i = 1,300 do
        if lualib:Player_SubIngot(player, 10, false, "用元宝补充魂力", "") then
            spirit_add(player, 1)
            spirit = lualib:Player_GetCustomVarInt(player, "魂力系统_魂力")
            if spirit >= 300 then
                return "你的魂力已经补满!\n\n".."<@search_prompt *01*「返回神翼探索」>   \n"
            end
        else
            spirit = lualib:Player_GetCustomVarInt(player, "魂力系统_魂力")
            return "元宝不足，只能将魂力补充到"..spirit.."点"
        end
    end
end

function recover_spirit_by_100yb(npc, player)
	if lualib:Player_IsIngotEnough(player,100,false) == true then
		if lualib:Player_SubIngot(player, 100, false, "用元宝补充魂力", "") == true then
			spirit_add(player, 10)
			spirit = lualib:Player_GetCustomVarInt(player, "魂力系统_魂力")
			return "你的魂力已经补充10点!\n\n".."<@search_prompt *01*「返回神翼探索」>   \n"
		else
			return "元宝不足!\n\n".."<@search_prompt *01*「返回神翼探索」>   \n"
		end
	end
end

function leave(npc, player)
	return""
end
