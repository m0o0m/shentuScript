local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


local talk_t = {"读书读书，越读越输！只有技能书才是王道！", "看啥，看啥，没见过哥这玉树临风的俊样吧，哥可是脑力劳动者，比起那膀大腰圆的铁匠，特有优越感。", "我是不是应该将珍藏的技能，埋在绝壁之下呢？这样就可以创造奇遇了！"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 21000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end


local castle_table = {"神歌城",}
function main(npc, player)
    local own_family = lualib:GetCastleOwnFamily(castle_table[1])
    local my_family = lualib:Player_GetStrProp(player,  lua_role_guild)
    local msg = ""
    if own_family == "" or own_family ~= my_family then
        msg = "我这里的书籍记录了一切精深实用的战技，这可全是前辈们在与妖魔的战斗中，在生死边缘体悟的技巧，希望你能将它们发扬光大！\n#COLORCOLOR_GREENG#您没有加入占领神歌城的行会，购物原价！#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#13 *01*「购买」>"
    else
        msg = "我这里的书籍记录了一切精深实用的战技，这可全是前辈们在与妖魔的战斗中，在生死边缘体悟的技巧，希望你能将它们发扬光大！\n#COLORCOLOR_RED#您的行会是占领神歌城的王者，购物八折！#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#20 *01*「购买」>"
    end
	msg = msg.."        #OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1>#<@SellItem#1 *01*「出售」>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n \n \n"
	msg = msg.."                                               #OFFSET<X:0,Y:-6>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@MapMoveXYA#巫山城#237#305#3 *01*回中心广场>"
	return msg
end


function OpenShop(npc, player, id)
    shopid = tonumber(id)
    lualib:AddShop(npc, shopid)
	lualib:OpenShop(npc, player, shopid)
	return ""
end


function SellItem(npc, player, id)
	lualib:ShowForm(player, "卖出物品表单")
	return ""
end

function MapMoveXYA(npc, player, map_key_name, x, y, r)
	local msg=""
	--gold = 0
	--if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "巫山城书店") then return "你的金币不足，不能传送！" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	return msg
end