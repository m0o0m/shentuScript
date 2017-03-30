--翅膀兑换
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/魂力系统")

local wing_table = 
    {
    {"神羽翅膀1级", "邪魔翼",   50,  0}, 
    {"神羽翅膀2级", "阴影之翼", 100, 1000000}, 
    {"神羽翅膀3级", "彩灵之翼", 200, 2000000}, 
    {"神羽翅膀4级", "天藏之翼", 400, 4000000}, 
    {"神羽翅膀5级", "火焰之翼", 800, 8000000}, 
    {"神羽翅膀6级", "游光之翼", 1600,16000000}, 
    {"神羽翅膀7级", "魔蝶之翼", 3200,32000000}, 
    }


local wing_to_shenyu = 
{
    ["邪魔翼"] = 
        {
        {"邪魔翼",    "神羽翅膀1级", 50}, 
        {"邪魔翼Lv1", "邪魔翼Lv1",   500}, 
        {"邪魔翼Lv2", "邪魔翼Lv2",   750}, 
        {"邪魔翼Lv3", "邪魔翼Lv3",   1500}, 
        }, 
    ["浩空翼"] = 
        {
        {"浩空翼Lv1", "浩空翼Lv1",   50}, 
        {"浩空翼Lv2", "浩空翼Lv2",   100}, 
        {"浩空翼Lv3", "浩空翼Lv3",   250}, 
        }, 
    ["绽放之翼"] = 
        {
        {"绽放之翼Lv1", "绽放之翼Lv1",   1500}, 
        {"绽放之翼Lv2", "绽放之翼Lv2",   2250}, 
        {"绽放之翼Lv3", "绽放之翼Lv3",   4500}, 
        }, 
    ["游光之翼"] = 
        {
        {"游光之翼",    "神羽翅膀6级",  1600}, 
        {"游光之翼Lv1", "游光之翼Lv1",   100}, 
        {"游光之翼Lv2", "游光之翼Lv2",   200}, 
        {"游光之翼Lv3", "游光之翼Lv3",   500}, 
        }, 
    ["天藏之翼"] = 
        {
        {"天藏之翼",    "神羽翅膀4级",   400}, 
        {"天藏之翼Lv1", "天藏之翼Lv1",   500}, 
        {"天藏之翼Lv2", "天藏之翼Lv2",   750}, 
        {"天藏之翼Lv3", "天藏之翼Lv3",   1500}, 
        }, 
    ["魔蝶之翼"] = 
        {
        {"魔蝶之翼",    "神羽翅膀7级",   3200}, 
        {"魔蝶之翼Lv1", "魔蝶之翼Lv1",   1500}, 
        {"魔蝶之翼Lv2", "魔蝶之翼Lv2",   2250}, 
        {"魔蝶之翼Lv3", "魔蝶之翼Lv3",   4500}, 
        }, 
    ["紫莺之翼"] = 
        {
        {"紫莺之翼Lv1", "紫莺之翼Lv1",   500}, 
        {"紫莺之翼Lv2", "紫莺之翼Lv2",   750}, 
        {"紫莺之翼Lv3", "紫莺之翼Lv3",   1500}, 
        }, 
    ["青鸾之翼"] = 
        {
        {"青鸾之翼Lv1", "青鸾之翼Lv1",   1500}, 
        {"青鸾之翼Lv2", "青鸾之翼Lv2",   2250}, 
        {"青鸾之翼Lv3", "青鸾之翼Lv3",   4500}, 
        }, 
    ["阴影之翼"] = 
        {
        {"阴影之翼", "神羽翅膀2级",   100}, 
        }, 
    ["彩灵之翼"] = 
        {
        {"彩灵之翼", "神羽翅膀3级",   200}, 
        }, 
    ["火焰之翼"] = 
        {
        {"火焰之翼", "神羽翅膀5级",   800}, 
        }, 
}

local wing_recover_table = 
{
    "邪魔翼  ", 
    "阴影之翼", 
    "彩灵之翼", 
    "天藏之翼", 
    "火焰之翼", 
    "游光之翼", 
    "魔蝶之翼", 
    "浩空翼", 
    "绽放之翼", 
    "紫莺之翼", 
    "青鸾之翼", 
    }


function main(npc,player)
    local msg = "    羡慕拥有翅膀的华丽与缤纷吗？这可是人类一直梦寐以求的喔！如果你渴望，那便去收集#COLORCOLOR_GOLD#神羽#COLOREND#吧，大部分怪物死亡时都会掉落哦\n"
    msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
    msg = msg.."  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@wing_exchange *01*「神羽兑换神翼」>\n \n"
    --msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@wing_recover *01*「翅膀回收」>\n"
    msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>\n"
    return msg
end

function leave(npc, player)
	return""
end

function wing_exchange(npc, player)
    local msg = ""
    msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:-5>#目前你可以在我这里利用神羽换取如下翅膀，请自行选择：\n"
	msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	for i = 1,#wing_table do
        if wing_table[i][2] == "邪魔翼" then
            msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan#"..wing_table[i][1].."#"..wing_table[i][2].."#"..wing_table[i][3].."#"..wing_table[i][4].." *01*"..wing_table[i][2]..">      需要 "..wing_table[i][3].."个神羽 和 "..wing_table[i][4].."金币！\n"
        else
            msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan#"..wing_table[i][1].."#"..wing_table[i][2].."#"..wing_table[i][3].."#"..wing_table[i][4].." *01*"..wing_table[i][2]..">    需要 "..wing_table[i][3].."个神羽 和 "..wing_table[i][4].."金币！\n"
        end
	end
	msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"

    return msg;
end

function duihuan(npc, player, wing_keyname, wing_name, shenyu_request, gold_request)
    local msg = ""
	msg = msg .. "#POS<X:0>##POS<Y:0>#兑换道具：\n"
	msg = msg .. "#POS<X:0>##POS<Y:60>#需要道具：\n"
    msg = msg .. "#POS<X:150>##POS<Y:70>##IMAGE<ID:1902700037>#<@duihuan_Ex#"..wing_keyname.."#"..shenyu_request.."#"..gold_request.." *01* 确定兑换>\n\n\n\n  #OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* 返回首页>"
	msg = msg .. "#POS<X:40>##POS<Y:100>##COLORCOLOR_GREENG# * "..shenyu_request.."#COLOREND#\n\n需要金币：#COLORCOLOR_GREENG#"..gold_request.."#COLOREND#"
	local str = "<form default_parent=NpcTalk,Container>"
	str = str .. "<itemctrl id=兑换道具 x=0 y=20 w=35 h=35 init_item="..wing_keyname.." count=1 is_bound=false use_back=true/>"
	str = str .. "<itemctrl id=需要道具 x=0 y=80 w=35 h=35 init_item=神羽 count=1 is_bound=false use_back=true/>"
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
	return msg
end

function duihuan_Ex(npc, player, wing_keyname, shenyu_request, gold_request)
    local shenyu_request, gold_request = tonumber(shenyu_request), tonumber(gold_request)
    local shenyu_count = lualib:ItemCountByKey(player, "神羽", true, false, false, 2)
    if wing_keyname == "" or wing_keyname == nil then
        return "请选择需要兑换的翅膀！"
    end
    
    if shenyu_count < shenyu_request then
        return "神羽数量不足！无法兑换！\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* 返回首页>"
    end
    if lualib:Player_IsGoldEnough(player, gold_request, false) == false then
        return "金币不足，无法兑换！需要"..gold_request.."金币！\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* 返回首页>"
    end
    if lualib:Player_SubGold(player, gold_request, false, "神羽兑换翅膀", player) == false then
        return "删除金币失败，请确认！\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* 返回首页>"
    end
    
	if lualib:DelItem(player, "神羽", shenyu_request, 2, "神羽兑换神翼", player) == false then
        return "删除物品失败，请确认！\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* 返回首页>"
    end
    local item_guid = lualib:AddSingleItem(player, wing_keyname, 1, 0, "神羽兑换神翼", player)
    if item_guid == nil or item_guid == "" then
        return "添加物品失败！\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* 返回首页>"
    end
    
    return "兑换成功！\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* 返回首页>"
end

function wing_recover(npc, player)
    local msg = "已经兑换的神翼可以在我这里兑换回神羽，数量与原来相同！\n#COLORCOLOR_RED#已经绝版的神翼也可兑换回神羽！#COLOREND#\n"
    msg = msg .. "请选择要回收的翅膀！\n"
    for i = 1, #wing_recover_table do
        if i % 2 == 0 then
            msg = msg .. "#OFFSET<X:100,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@wing_recover_Ex#"..wing_recover_table[i].." *01* "..wing_recover_table[i]..">\n"
        else
            msg = msg .. "#OFFSET<X:50,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@wing_recover_Ex#"..wing_recover_table[i].." *01* "..wing_recover_table[i]..">"
        end
    end
    msg = msg .. "\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* 返回首页>"
	return msg
end

function wing_recover_Ex(npc, player, key)
    local msg = "请选择要回收的翅膀！\n\n\n"
    for i = 1, #wing_to_shenyu[key] do
        msg = msg .. "#IMAGE<ID:1902700037>#<@wing_recover_Ex2#"..wing_to_shenyu[key][i][1].."#"..wing_to_shenyu[key][i][2].."#"..wing_to_shenyu[key][i][3].." *01* "..wing_to_shenyu[key][i][1]..">\n"
    end
	return msg
end

function wing_recover_Ex2(npc, player, wing_name, wing_keyname, shenyu_count)
    local msg = "回收#COLORCOLOR_BROWN#"..wing_name.."#COLOREND#可以得到#COLORCOLOR_RED#"..shenyu_count.."#COLOREND#个神羽！\n\n\n\n"
    msg = msg .. "#IMAGE<ID:1902700037>#<@wing_recover_Ex3#"..wing_name.."#"..wing_keyname.."#"..shenyu_count.." *01* 确定回收>\n\n\n\n"
    msg = msg .. "#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* 返回首页>"
	return msg
end

function wing_recover_Ex3(npc, player, wing_name, wing_keyname, shenyu_count)
    if wing_keyname == nil or wing_keyname == "" then
        return "请确认你要回收的翅膀！\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* 返回首页>"
    end
    if lualib:DelItem(player, wing_keyname, 1, 0, "回收翅膀", player) == false then
        return "回收翅膀失败，请重新选择包裹内有的翅膀！\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* 返回首页>"
    end
    if lualib:AddItem(player, "神羽", tonumber(shenyu_count), false, "回收翅膀", player) == true then
        return "回收"..wing_name.."成功，获得了"..shenyu_count.."个神羽！\n\n\n\n\n\n\n#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「关闭」>"
    end
end