local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/装备大师")

function main(npc, player)
    lualib:AddShop(npc, 13)
	msg = "     想老夫我当年也是一界风云人物，凭借自身高超的武艺，走遍天藏大陆，收得不少秘集，哎~~如今老也，秘籍也留得无用，便卖于你们后生，但愿能将此些秘籍发扬光大。\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."<@OpenShop#13 *01*「购买」>      <@SellItem#1 *01*「出售」>\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."                     <@main_ex *01*精炼装备【装备大师】>\n"
     msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                               <@MapMoveXYA#东临城#330#300#3 *01*回中心广场>"
	return msg
end


function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "卖出物品表单")
	return ""
end

function MapMoveXYA(npc, player, map_key_name, x, y, r)
	local msg=""
	gold = 0
	if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "巫山城书店") then return "你的金币不足，不能传送！" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	return msg
end
