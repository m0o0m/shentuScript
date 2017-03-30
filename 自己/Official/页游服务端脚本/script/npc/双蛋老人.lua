local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/level_gold_exp")
local player_var = "blm"



function main(npc,player)
    local msg = "#COLORCOLOR_BROWN#              ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."              圣诞都来了，元旦该不远了吧！为了赶这两个节日，你看我的腿都跑细了!\n"
    msg = msg.."#COLORCOLOR_BROWN#              ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."#OFFSET<X:200,Y:0>##IMAGE1902700031#<@jingyan *01*[领取双旦经验BUFF]>\n\n"
    msg = msg.."#OFFSET<X:130,Y:0>##IMAGE1902700031#<@shuangdan *01*[活动相关兑换]>"
    msg = msg.."#OFFSET<X:120,Y:0>##IMAGE1902700031#<@caidan *01*[购买幸运彩蛋]>\n"
    msg = msg.."#COLORCOLOR_BROWN#              ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."#OFFSET<X:430,Y:0>##IMAGE1902700034#<@likai *01*[离开]>\n"
	return msg
end

--40级以下领取双倍，40级及以上领取1.5倍
function jingyan(npc,player)
	local lv = lualib:Level(player)
    local cur_days = lualib:GetAllDays(0)
    local days = lualib:Player_GetCustomVarInt(player, player_var)

    if cur_days == days then
        return "你今天已经领取过双蛋经验BUFF！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    elseif cur_days < days then
        return "系统错误！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end
	
	
	if lv > 39 then
		if lualib:HasBuff(player, "双旦双倍经验") == true then
			return "              您已经拥有双蛋经验BUFF双倍效果，如果点击确定将替换为1.5倍经验BUFF，确定吗？\n \n \n \n \n \n#OFFSET<X:0,Y:-5>##IMAGE1902700033##OFFSET<X:0,Y:-2>#<@shuangbei *01*[确定]>\n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
		else
		lualib:AddBuff(player, "双旦1.5倍经验", 0)
		end
	else
		lualib:AddBuff(player, "双旦双倍经验", 0)
	end
	lualib:Player_SetCustomVarInt(player, player_var, cur_days)
	return "              领取双蛋经验BUFF成功！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
end

function shuangbei(npc, player)
    local cur_days = lualib:GetAllDays(0)
	
	lualib:DelBuff(player, "双旦双倍经验")
	lualib:AddBuff(player, "双旦1.5倍经验", 0)
	lualib:Player_SetCustomVarInt(player, player_var, cur_days)
	return "              领取双蛋经验BUFF成功！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
end

function likai(npc,player)
	return ""
end

function shuangdan(npc,player)
    local msg = "#COLORCOLOR_BROWN#              ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "              10个圣诞之星可以兑换一个圣诞礼袜！是否要兑换！\n"
    msg = msg .. "#COLORCOLOR_BROWN#              ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
    msg = msg .. "#OFFSET<X:90,Y:0>##IMAGE1902700031#<@duihuan#1#圣诞礼袜 *01*[兑换一个圣诞礼袜]> 需要10个圣诞之星\n"
    msg = msg .. "#OFFSET<X:90,Y:0>##IMAGE1902700031#<@duihuan#10#圣诞礼袜 *01*[兑换十个圣诞礼袜]> 需要100个圣诞之星\n"
    msg = msg .. "#OFFSET<X:90,Y:0>##IMAGE1902700031#<@duihuan#1#元旦礼盒 *01*[兑换一个元旦礼盒]> 需要10个元旦之星\n"
    msg = msg .. "#OFFSET<X:90,Y:0>##IMAGE1902700031#<@duihuan#10#元旦礼盒 *01*[兑换十个元旦礼盒]> 需要100个元旦之星\n"
    msg = msg .. "#OFFSET<X:90,Y:0>##IMAGE1902700031#<@duihuan#1#双蛋祝福 *01*[兑换双蛋祝福]>     需要10个圣诞之星和10个元旦之星\n"
    msg = msg .. "#COLORCOLOR_BROWN#              ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
    msg = msg .. "#OFFSET<X:400,Y:0>##IMAGE1902700019#<@main *01*[返回]>"
	return msg
end

local duihuan_table = 
--目标物品KEY = {材料table，数量table，绑定table，操作table}
{   ["圣诞礼袜"] = {{"圣诞之星"}, {10}, {2}, {1}}, 
    ["元旦礼盒"] = {{"元旦之星"}, {10}, {2}, {1}}, 
    ["双蛋祝福"] = {{"圣诞之星", "元旦之星"}, {10, 10}, {2, 2}, {1, 1}}, 
    }
    
function duihuan(npc, player, count, item_key)
    count = tonumber(count)
    item_key = tostring(item_key)
    print(count)
    local req_item_table = duihuan_table[item_key][1]
    local req_count_table = {}
    local req_bind_table = duihuan_table[item_key][3]
    local req_do_table = duihuan_table[item_key][4]
    for i = 1, #duihuan_table[item_key][1] do
        req_count_table[i] = duihuan_table[item_key][2][i] * count
    end
    if lualib:Player_ItemRequest(player, req_item_table, req_count_table, req_bind_table, req_do_table, "双蛋活动", player) == false then
        local msg = "你的物品不足！\n"
        for i = 1, #req_item_table do
            msg = msg .. "需要"..req_count_table[i].."个"..req_item_table[i].."！\n"
        end
        return msg
    end
    if not lualib:AddItem(player, item_key, count, true, "双蛋活动", player) then return "给物品失败！" end
    return "兑换成功！\n \n \n \n #IMAGE1902700019#<@shuangdan *01* [返回]>"
end

function caidan(npc, player)
    local msg = "#COLORCOLOR_BROWN#             ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
    msg = msg .. "#COLORCOLOR_GOLD#             在这个充满着幸福与幸运的日子里，彩蛋是增加气氛最好的礼品，那些\n             头顶着“圣诞”和“元旦”的怪物都会掉落彩蛋的。#COLOREND#"
    msg = msg .. "#COLORCOLOR_GOLD#当然我带的也有，\n             不过我千里迢迢的跑过来，这个路费嘛，嗯，你懂得！#COLOREND#\n"
    msg = msg .. "#COLORCOLOR_BROWN#             ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
    msg = msg .. "#COLORCOLOR_RED#             幸运彩蛋可以开出:暴击灵符1级、幸运星、鸿运星、护炼符、高级鉴定\n             灵符、循环魔咒等#COLOREND#\n"
    msg = msg .. "#COLORCOLOR_BROWN#             ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg .. "#OFFSET<X:100,Y:0>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@goumaicaidan *01*[我要购买彩蛋]>需要10万金币#OFFSET<X:80,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*[返回首页]>"
    return msg
end

function goumaicaidan(npc, player)
    local item = "幸运彩蛋"
    local req_gold = 100000
    local bagfree = 1
    if lualib:BagFree(player, true, false, false) < bagfree then return "你的包裹空间不足！请清理后再来！\n\n\n\n#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*[返回首页]>" end
    if lualib:Player_IsGoldEnough(player, req_gold, false) == false then return "你的金币不足!\n\n\n\n#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*[返回首页]>" end
    if lualib:Player_SubGold(player, req_gold, false, "购买彩蛋", player) == false then return "扣除金币失败！" end
    lualib:AddItem(player, item, 1, false, "购买彩蛋", player)
    local msg = "购买成功！祝你好运哦！\n\n\n\n"
    msg = msg .. "#IMAGE1902700031##OFFSET<X:0,Y:-2>#<@goumaicaidan *01*[继续购买]>"
    return msg
end