local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/征服系统")
require("system/综合功能")

gQuestMap =
{
   {2010, "QuestAccept2010", "","*01*任务: 清剿尸奴", ""},
   {2011, "QuestAccept2011", "","*01*任务: 清剿鬼面监工", ""},
   {2012, "QuestAccept2012", "","*01*任务: 清剿妖面监工", ""},
   {2013, "QuestAccept2013", "","*01*任务: 清剿掘铲尸奴", ""}
}
gQuestNum = table.getn(gQuestMap)


function main(npc, player)
	yaoshanzhengfudian = 4/30*lualib:GetInt(player,"yaoshanzhengfu1")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu2")
				+6/30*lualib:GetInt(player,"yaoshanzhengfu3")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu4")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu5")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu6")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu7")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu8")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu9")
				+10/3*lualib:GetInt(player,"yaoshanzhengfu10")
				+10/1*lualib:GetInt(player,"yaoshanzhengfu11")
				--+6/2*lualib:GetInt(player,"yaoshanzhengfu12")
				+10/10*lualib:GetInt(player,"yaoshanzhengfu13")
				+10/1*lualib:GetInt(player,"yaoshanzhengfu14")
				
	if yaoshanzhengfudian >= 10 and string.len(tostring(yaoshanzhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,5)
	elseif yaoshanzhengfudian < 10 and string.len(tostring(yaoshanzhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,4)
	else
		yaoshanzhengfudxs = yaoshanzhengfudian
	end

	local msg = "为什么这里会突然出现这么多妖魔！\n \n"
	msg = msg.."#COLORCOLOR_RED#在地图中探索冒险时会不知不觉增加对地图的征服度，征服可领取各种奖励。#COLOREND##COLORCOLOR_GREENG#妖山暗穴#COLOREND##COLORCOLOR_BLUE#适合25-30级探险#COLOREND#\n \n"
	msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian1 *01*查看进度详情>   目前进度#COLORCOLOR_ORANGE#"..yaoshanzhengfudxs.."%#COLOREND#\n \n \n"
	msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@leave *01*[离开]>\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[3].." "..v[5]..">\n"
            end
        end
    end

	return msg
end

function leave(player,npc)
	return ""
end

function jump(npc, player, map_name, x, y, r)
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	if not lualib:Player_MapMoveXY(player, map_name, x, y, r) then return "跳地图失败！\n \n<@main *01*返回>" end
	return ""
end


---2010接
function QuestAccept2010(npc,player)
    msg = "妖山暗穴最近突然冒出了许多怪物，帮我去消灭20只尸奴！\n \n"
	msg = msg.."<@Accept2010 *01* 接受任务>\n"
	return msg
end


function Accept2010(npc, player)
    if lualib:AcceptQuest(player, 2010) == true then
        return "妖山暗穴现在十分危险，请务必小心！"
    else
        return "到29级再来找我吧"
    end
end


---2011接
function QuestAccept2011(npc,player)
    msg = "妖山暗穴最近突然冒出了许多怪物，帮我去消灭20只鬼面监工！\n \n"
	msg = msg.."<@Accept2011 *01* 接受任务>\n"
	return msg
end


function Accept2011(npc, player)
    if lualib:AcceptQuest(player, 2011) == true then
        return "妖山暗穴现在十分危险，请务必小心！"
    else
        return "到29级再来找我吧"
    end
end



---2012接
function QuestAccept2012(npc,player)
    msg = "妖山暗穴最近突然冒出了许多怪物，帮我去消灭20只妖面监工。\n \n"
	msg = msg.."<@Accept2012 *01* 接受任务>\n"
	return msg
end


function Accept2012(npc, player)
    if lualib:AcceptQuest(player, 2012) == true then
        return "妖山暗穴现在十分危险，请务必小心！"
    else
        return "到29级再来找我吧"
    end
end


---2013接
function QuestAccept2013(npc,player)
    msg = "妖山暗穴最近突然冒出了许多怪物，帮我去消灭20只掘铲尸奴。\n \n"
	msg = msg.."<@Accept2013 *01* 接受任务>\n"
	return msg
end


function Accept2013(npc, player)
    if lualib:AcceptQuest(player, 2013) == true then
        return "妖山暗穴现在十分危险，请务必小心！"
    else
        return "到29级再来找我吧"
    end
end