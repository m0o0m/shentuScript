local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/征服系统")
require("system/综合功能")


function main(npc, player)

	tianmozhengfudian = 6/100*lualib:GetInt(player,"tianmozhengfu1")
				+6/100*lualib:GetInt(player,"tianmozhengfu2")
				+6/100*lualib:GetInt(player,"tianmozhengfu3")
				+6/100*lualib:GetInt(player,"tianmozhengfu4")
				+6/100*lualib:GetInt(player,"tianmozhengfu5")
				+6/100*lualib:GetInt(player,"tianmozhengfu6")
				+6/100*lualib:GetInt(player,"tianmozhengfu7")
				+6/100*lualib:GetInt(player,"tianmozhengfu8")
				+6/100*lualib:GetInt(player,"tianmozhengfu9")
				+6/12*lualib:GetInt(player,"tianmozhengfu10")
				+10/1*lualib:GetInt(player,"tianmozhengfu11")
				+10/1*lualib:GetInt(player,"tianmozhengfu12")
				+10/40*lualib:GetInt(player,"tianmozhengfu13")
				+10/1*lualib:GetInt(player,"tianmozhengfu14")
				
	if tianmozhengfudian >= 10 and string.len(tostring(tianmozhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		tianmozhengfudxs = string.sub(tianmozhengfudian,1,5)
	elseif tianmozhengfudian < 10 and string.len(tostring(tianmozhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		tianmozhengfudxs = string.sub(tianmozhengfudian,1,4)
	else
		tianmozhengfudxs = tianmozhengfudian
	end

	local msg = "天魔石窟的恶魔妄图攻占龙城！该如何是好啊！\n \n"
	msg = msg.."#COLORCOLOR_RED#在地图中探索冒险时会不知不觉增加对地图的征服度，征服可领取各种奖励。#COLOREND##COLORCOLOR_GREENG#天魔石窟#COLOREND##COLORCOLOR_BLUE#适合40-50级探险#COLOREND#\n \n"
	msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian4 *01*查看进度详情>   目前进度#COLORCOLOR_ORANGE#"..tianmozhengfudxs.."%#COLOREND#\n \n \n"
	msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@leave *01*[离开]>\n"
	return msg
end

function leave(player,npc)
	return ""
end