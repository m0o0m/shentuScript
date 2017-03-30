local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/征服系统")
require("system/综合功能")

function main(npc,player)

	haidizhengfudian = 6/100*lualib:GetInt(player,"haidizhengfu1")
				+6/100*lualib:GetInt(player,"haidizhengfu2")
				+6/100*lualib:GetInt(player,"haidizhengfu3")
				+6/100*lualib:GetInt(player,"haidizhengfu4")
				+6/100*lualib:GetInt(player,"haidizhengfu5")
				+6/100*lualib:GetInt(player,"haidizhengfu6")
				+6/100*lualib:GetInt(player,"haidizhengfu7")
				+6/100*lualib:GetInt(player,"haidizhengfu8")
				+6/100*lualib:GetInt(player,"haidizhengfu9")
				+6/12*lualib:GetInt(player,"haidizhengfu10")
				+10/1*lualib:GetInt(player,"haidizhengfu11")
				+10/1*lualib:GetInt(player,"haidizhengfu12")
				+10/40*lualib:GetInt(player,"haidizhengfu13")
				+10/1*lualib:GetInt(player,"haidizhengfu14")
				
	if haidizhengfudian >= 10 and string.len(tostring(haidizhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		haidizhengfudxs = string.sub(haidizhengfudian,1,5)
	elseif haidizhengfudian < 10 and string.len(tostring(haidizhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		haidizhengfudxs = string.sub(haidizhengfudian,1,4)
	else
		haidizhengfudxs = haidizhengfudian
	end


	local msg = "我们在这里发现了一艘古代的沉船,并遇上比已知的恶魔更加的强大的怪物!\n \n"
	msg = msg.."#COLORCOLOR_RED#在地图中探索冒险时会不知不觉增加对地图的征服度，征服可领取各种奖励。#COLOREND##COLORCOLOR_GREENG#秘境沉船#COLOREND##COLORCOLOR_BLUE#适合50-60级探险#COLOREND#\n \n"
	msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian5 *01*查看进度详情>   目前进度#COLORCOLOR_ORANGE#"..haidizhengfudxs.."%#COLOREND#\n \n \n"
	msg = msg.."<@likai *01*「离开」>\n"
	return msg
end

function likai(npc,player)
	return ""
end