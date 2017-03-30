local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/征服系统")
require("system/综合功能")

gQuestMap =
{
   {2020, "QuestAccept2020", "","*01*任务: 清剿天原猛士", ""},
   {2021, "QuestAccept2021", "","*01*任务: 清剿夜行僧", ""},
   {2022, "QuestAccept2022", "","*01*任务: 清剿天原勇士", ""},
   {2023, "QuestAccept2023", "","*01*任务: 清剿鬼面武者", ""},
   {2024, "QuestAccept2024", "","*01*任务: 清剿天原死士", ""}
}
gQuestNum = table.getn(gQuestMap)


function main(npc, player)

	xiemiaozhengfudian = 4/100*lualib:GetInt(player,"xiemiaozhengfu1")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu2")
				+6/100*lualib:GetInt(player,"xiemiaozhengfu3")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu4")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu5")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu6")
				+8/100*lualib:GetInt(player,"xiemiaozhengfu7")
				+8/100*lualib:GetInt(player,"xiemiaozhengfu8")
				+8/12*lualib:GetInt(player,"xiemiaozhengfu9")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu10")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu11")
				--+5/8*lualib:GetInt(player,"xiemiaozhengfu12")
				+10/40*lualib:GetInt(player,"xiemiaozhengfu13")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu14")
				
	if xiemiaozhengfudian >= 10 and string.len(tostring(xiemiaozhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,5)
	elseif xiemiaozhengfudian < 10 and string.len(tostring(xiemiaozhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,4)
	else
		xiemiaozhengfudxs = xiemiaozhengfudian
	end

	local msg = "天荒邪庙里邪教徒肆虐，该如何是好啊。\n \n"
	msg = msg.."#COLORCOLOR_RED#在地图中探索冒险时会不知不觉增加对地图的征服度，征服可领取各种奖励。#COLOREND##COLORCOLOR_GREENG#天荒邪庙#COLOREND##COLORCOLOR_BLUE#适合35-45级探险#COLOREND#\n \n"
	msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian3 *01*查看进度详情>   目前进度#COLORCOLOR_ORANGE#"..xiemiaozhengfudxs.."%#COLOREND#\n \n \n"
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


---2020接
function QuestAccept2020(npc,player)
    msg = "天荒邪庙最近出现一群邪教徒，帮我去消灭20个天原猛士！\n \n"
	msg = msg.."<@Accept2020 *01* 接受任务>\n"
	return msg
end


function Accept2020(npc, player)
    if lualib:AcceptQuest(player, 2020) == true then
        return "天荒邪庙现在十分危险，请务必小心！"
    else
        return "到35级再来找我吧"
    end
end


---2021接
function QuestAccept2021(npc,player)
    msg = "天荒邪庙最近出现一群邪教徒，帮我去消灭20个夜行僧！\n \n"
	msg = msg.."<@Accept2021 *01* 接受任务>\n"
	return msg
end


function Accept2021(npc, player)
    if lualib:AcceptQuest(player, 2021) == true then
        return "天荒邪庙现在十分危险，请务必小心！"
    else
        return "到35级再来找我吧"
    end
end



---2022接
function QuestAccept2022(npc,player)
    msg = "天荒邪庙最近出现一群邪教徒，帮我去消灭20个天原勇士。\n \n"
	msg = msg.."<@Accept2022 *01* 接受任务>\n"
	return msg
end


function Accept2022(npc, player)
    if lualib:AcceptQuest(player, 2022) == true then
        return "天荒邪庙现在十分危险，请务必小心！"
    else
        return "到35级再来找我吧"
    end
end


---2023接
function QuestAccept2023(npc,player)
    msg = "天荒邪庙最近出现一群邪教徒，帮我去消灭20个鬼面武者。\n \n"
	msg = msg.."<@Accept2023 *01* 接受任务>\n"
	return msg
end


function Accept2023(npc, player)
    if lualib:AcceptQuest(player, 2023) == true then
        return "天荒邪庙现在十分危险，请务必小心！"
    else
        return "到35级再来找我吧"
    end
end


---2024接
function QuestAccept2024(npc,player)
    msg = "天荒邪庙最近出现一群邪教徒，帮我去消灭20个天原死士。\n \n"
	msg = msg.."<@Accept2024 *01* 接受任务>\n"
	return msg
end


function Accept2024(npc, player)
    if lualib:AcceptQuest(player, 2024) == true then
        return "天荒邪庙现在十分危险，请务必小心！"
    else
        return "到35级再来找我吧"
    end
end