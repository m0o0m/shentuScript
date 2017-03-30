local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {1017, "", "QuestAccomplish1017","", "*01*完成任务: 精炼"},
   {1018, "QuestAccept1018", "QuestAccomplish1018","01*任务: 精炼方法", "01*完成任务: 精炼方法"},
   {1019, "QuestAccept1019", "","01*任务: 师徒", ""}
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"如果你不满意装备的属性，可以进行精炼属性修改。", "解除封印可以使你的装备获得额外的属性能力。", "精炼装备和精炼转移可以使你的武器装备的威力更上一层。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 25000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    if lualib:KeyName(npc) ~= "装备大师" then 
        return main_ex(npc, player) 
    end
    local a = 0
    local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#欢迎光临装备精炼系统#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
    msg = msg.."　#COLORCOLOR_LIGHTBROWN#╔━━━━╗　╔━━━━╗　╔━━━━╗　╔━━━━╗#COLOREND#\n"
    msg = msg.."#COLORCOLOR_RED#●#COLOREND##COLORCOLOR_LIGHTBROWN#┃#COLOREND#<@InfoItemRefine *01*装备精炼>#OFFSET<X:-2,Y:0>##COLORCOLOR_LIGHTBROWN#┃#COLOREND##COLORCOLOR_RED#●#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#┃#COLOREND#<@FengYin *01*解除封印>#OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#┃#COLOREND##COLORCOLOR_RED#●#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#┃#COLOREND#<@jinglianzhuanyi *01*精炼转移>#OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#┃#COLOREND##COLORCOLOR_RED#●#COLOREND##COLOREND##COLORCOLOR_LIGHTBROWN#┃#COLOREND#<@jingliangaibian *01*精炼改变>#OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#┃#COLOREND##COLORCOLOR_RED#●#COLOREND#\n"
    msg = msg.."　#COLORCOLOR_LIGHTBROWN#╚━━━━╝　╚━━━━╝　╚━━━━╝　╚━━━━╝#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                a = 1
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">#IMAGE1902700017#<@jinglianjiesao *01*[精炼说明]>#IMAGE1902700017#<@fengyinjiesao *01*[封印说明]>#IMAGE1902700017#<@zhuanyijiesao *01*[转移说明]>#IMAGE<ID:1902700017>#<@gaibianjieshao *01*[改变说明]>\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                a = 1
                msg = msg.."#IMAGE1902700016#<@"..v[3].." "..v[5]..">#IMAGE1902700017#<@jinglianjiesao *01*[精炼说明]>#IMAGE1902700017#<@fengyinjiesao *01*[封印说明]>#IMAGE1902700017#<@zhuanyijiesao *01*[转移说明]>#IMAGE<ID:1902700017>#<@gaibianjieshao *01*[改变说明]>\n"
            end
        end
     end

    if a ~= 1 then
        msg = msg.."#OFFSET<X:0,Y:10>##IMAGE<ID:1902700017>#<@jinglianjiesao *01*[精炼说明]>  #IMAGE<ID:1902700017>#<@fengyinjiesao *01*[封印说明]>  #IMAGE<ID:1902700017>#<@zhuanyijiesao *01*[转移说明]>  #IMAGE<ID:1902700017>#<@gaibianjieshao *01*[改变说明]>\n"

	end
	return msg
end

function main_ex(npc, player)
    local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#欢迎光临装备精炼系统#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
    msg = msg.."　#COLORCOLOR_LIGHTBROWN#╔━━━━╗　╔━━━━╗　╔━━━━╗　╔━━━━╗#COLOREND#\n"
    msg = msg.."#COLORCOLOR_RED#●#COLOREND##COLORCOLOR_LIGHTBROWN#┃#COLOREND#<@InfoItemRefine *01*装备精炼>#OFFSET<X:-2,Y:0>##COLORCOLOR_LIGHTBROWN#┃#COLOREND##COLORCOLOR_RED#●#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#┃#COLOREND#<@FengYin *01*解除封印>#OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#┃#COLOREND##COLORCOLOR_RED#●#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#┃#COLOREND#<@jinglianzhuanyi *01*精炼转移>#OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#┃#COLOREND##COLORCOLOR_RED#●#COLOREND##COLOREND##COLORCOLOR_LIGHTBROWN#┃#COLOREND#<@jingliangaibian *01*精炼改变>#OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#┃#COLOREND##COLORCOLOR_RED#●#COLOREND#\n"
    msg = msg.."　#COLORCOLOR_LIGHTBROWN#╚━━━━╝　╚━━━━╝　╚━━━━╝　╚━━━━╝#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
    msg = msg.."　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700017>#<@jinglianjiesao *01*[精炼说明]>#IMAGE<ID:1902700017>#<@fengyinjiesao *01*[封印说明]>#IMAGE<ID:1902700017>#<@zhuanyijiesao *01*[转移说明]>#IMAGE<ID:1902700017>#<@gaibianjieshao *01*[改变说明]>\n"
    return msg
end

function zhuanyijiesao(npc, player)
   local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#欢迎光临装备精炼系统#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
    msg = msg.."#COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
    msg = msg.."玩家可以利用#COLORCOLOR_GOLD#转神石#COLOREND#将精炼属性转移到同类型装备上，#COLORCOLOR_GOLD#转神石#COLOREND#拥有多种级别，可以对应转移不同级别的精炼属性.\n"
    msg = msg.."玩家在游戏中可通过怪物掉落和活动的方式获得#COLORCOLOR_GOLD#转神石#COLOREND#！\n"
    msg = msg.."#COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."　　　　　　　　　　　　　　　　　            　　#OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01* [返回]>\n"
    return msg
end


function gaibianjieshao(npc, player)
   local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#欢迎光临装备精炼系统#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
    msg = msg.."#COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
    msg = msg.."玩家可以利用#COLORCOLOR_GOLD#灵元精粹#COLOREND#将精炼属性改变成此装备可精炼的其他类型属性。\n"
    msg = msg.."玩家在游戏中可通过活动的方式获得#COLORCOLOR_GOLD#灵元精粹#COLOREND#！\n"
    msg = msg.."#COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."　　　　　　　　　　　　　　　　　        　    　#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01* [返回]>\n"
    return msg
end


--[[       local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#欢迎光临装备精炼系统#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
    msg = msg.."#COLORCOLOR_ORANGE#¤#COLOREND##COLORCOLOR_GOLD#╭⌒╮ ╭⌒╮#COLOREND#                             #OFFSET<X:3,Y:0>##COLORCOLOR_BLUE#╬╬╬╬╬╬╬#COLOREND#\n"
    msg = msg.."#COLORCOLOR_GREENG#╱◥███◣#COLOREND##COLORCOLOR_GOLD#╭╭ ⌒╮#COLOREND# #OFFSET<X:2,Y:0>##COLORCOLOR_BLUE#╬╬╬╬╬╬╬╬╬╬╬#COLOREND##COLORCOLOR_BLUE#╬#COLOREND##COLORCOLOR_GOLD#╔══╗#COLOREND##COLORCOLOR_BLUE#╬#COLOREND#\n"
    msg = msg.."|#COLORCOLOR_ORANGE#田#COLOREND#|#COLORCOLOR_ORANGE#田田田#COLOREND#||#COLORCOLOR_PURPLE#╰-------------------------------#COLOREND##OFFSET<X:3,Y:0>##COLORCOLOR_BLUE#╬╬#COLOREND##COLORCOLOR_GOLD#║#COLOREND##COLORCOLOR_RED#装备#COLOREND##COLORCOLOR_GOLD#║#COLOREND##COLORCOLOR_BLUE#╬#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BLUE#╬╬╬╬╬╬╬╬╬#COLOREND##COLORCOLOR_ORANGE#请选择您需要了解的项目#COLOREND##OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#╬╬╬#COLOREND##COLORCOLOR_GOLD#║#COLOREND##COLORCOLOR_RED#精炼#COLOREND##COLORCOLOR_GOLD#║#COLOREND##COLORCOLOR_BLUE#╬#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BLUE#╬#COLOREND##COLORCOLOR_RED#╔╤╤╤╤╤╤╤╤╗　╔╤╤╤╤╤╤╤╤╗#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#╬#COLOREND##COLORCOLOR_GOLD#║#COLOREND##COLORCOLOR_RED#装备#COLOREND##COLORCOLOR_GOLD#║#COLOREND##COLORCOLOR_BLUE#╬#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BLUE#╬#COLOREND##COLORCOLOR_RED#╟#COLOREND#<@jinglianjiesao *01*㊣装备精炼介绍㊣>#OFFSET<X:-2,Y:0>##COLORCOLOR_RED#╢　╟#COLOREND#<@fengyinjiesao *01*㊣装备封印介绍㊣>#OFFSET<X:-1,Y:0>##COLORCOLOR_RED#╢#COLOREND##COLORCOLOR_BLUE#╬#COLOREND##COLORCOLOR_GOLD#║#COLOREND##COLORCOLOR_RED#封印#COLOREND##COLORCOLOR_GOLD#║#COLOREND##COLORCOLOR_BLUE#╬#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BLUE#╬#COLOREND##COLORCOLOR_RED#╚╧╧╧╧╧╧╧╧╝　╚╧╧╧╧╧╧╧╧╝#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#╬#COLOREND##COLORCOLOR_GOLD#╚══╝#COLOREND##COLORCOLOR_BLUE#╬#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BLUE#╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬#COLOREND##OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#╬╬╬╬╬╬#COLOREND#\n"
	return msg
	end
--]]

                                                                                                                                               

function jinglianjiesao(npc , player)
   local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#欢迎光临装备精炼系统#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_RED#●#COLOREND#　精炼一共分为15个等级，等级越高，精炼成功概率越低，灵\n \n"
	msg = msg.."#OFFSET<X:0,Y:-2>#　　元珠消耗也越大，小心哦，精炼失败可是会掉级的哦\n"
        msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@main *01*「上一页」>　　　　　　　　　　　　　      <@jinglianjiesao1 *01*「下一页」>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>##OFFSET<X:0,Y:-2>#\n"
	return msg
end

function jinglianjiesao1(npc , player)
   local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#欢迎光临装备精炼系统#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_RED#●#COLOREND#　不同部分装备所精炼的属性类型不同，但同时只能精炼一\n \n"
	msg = msg.."#OFFSET<X:0,Y:-2>#　　种属性\n"
        msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@jinglianjiesao *01*「上一页」>　　　　　　　　　　　　　      <@jinglianjiesao2 *01*「下一页」>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>##OFFSET<X:0,Y:-2>#\n"
	return msg
end

function jinglianjiesao2(npc , player)
   local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#欢迎光临装备精炼系统#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_RED#●#COLOREND#　玩家携带全套精炼+6、+9、+12、+15的装备会有附加属性！而\n \n"
	msg = msg.."#OFFSET<X:0,Y:-2>#　　且人物属性界面会显示精炼徽章！\n"
        msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@jinglianjiesao1 *01*「上一页」>　　　　　　　　　　　　　      <@jinglianjiesao3 *01*「下一页」>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>##OFFSET<X:0,Y:-2>#"
	return msg
end




function zbxiayiye(npc , player)
   local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#欢迎光临装备精炼系统#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-9>##COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#========================================================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n \n"
     msg = msg.."　　　 #OFFSET<X:0,Y:-5>##COLORCOLOR_BLUE#╔╦╦╦╦╦╦╦╗　　　╔╦╦╦╦╦╦╦╗#COLOREND#\n"
     msg = msg.."　　　 #OFFSET<X:0,Y:-4>##COLORCOLOR_BLUE#╠#COLOREND#<@shuxingduiying *01*装备对应的属性>#OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#╬╬╬╬╬#COLOREND#<@fujia *01*装备附加的属性>#OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#╣#COLOREND#\n"
     msg = msg.."　　　 #OFFSET<X:0,Y:-4>##COLORCOLOR_BLUE#╚╩╩╩╩╩╩╩╝　╬　╚╩╩╩╩╩╩╩╝#COLOREND#\n"
     msg = msg.."　　　　　 #OFFSET<X:0,Y:-3>##COLORCOLOR_RED#卍#COLOREND##COLORCOLOR_GOLD#═══════════════#COLOREND##COLORCOLOR_RED#卐#COLOREND#\n \n"

     msg = msg.."　#OFFSET<X:0,Y:-3>##IMAGE<ID:1902700038>#<@jinglianjiesao *01*「上一页」>　#OFFSET<X:1,Y:0>##COLORCOLOR_GOLD#　　　　　　　　　　　#COLOREND#　#IMAGE<ID:1902700019>#<@main *01*「返回首页」>\n\n"

	return msg
end


function jinglianjiesao3(npc , player)
   local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#欢迎光临装备精炼系统#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_RED#装备可精炼的属性#COLOREND#\n"
	    msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_GOLD#【   武器、戒指　 #OFFSET<X:2,Y:0>#】#COLOREND##COLORCOLOR_RED#→→→#COLOREND##COLORCOLOR_ORANGE#物攻上限、魔攻上限、道术上限#COLOREND#\n"
	    msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_GOLD#【衣服、头盔、鞋子】#COLOREND##COLORCOLOR_RED#→→→#COLOREND##COLORCOLOR_ORANGE#物防上限、魔防上限#COLOREND#\n"
	    msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_GOLD#【项链、手镯、坐骑】#COLOREND##COLORCOLOR_RED#→→→#COLOREND##COLORCOLOR_ORANGE#HP上限、MP上限#COLOREND#\n"
	    msg = msg.."#OFFSET<X:0,Y:-1>##COLORCOLOR_BLUE#以上属性都为百分比，能整体提升自身属性。#COLOREND#\n"
	    msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	    msg = msg.."#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@jinglianjiesao2 *01*「上一页」>　　　　　　　　　　　　　      <@jinglianjiesao4 *01*「下一页」>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>##OFFSET<X:0,Y:-2>#\n \n"
	return msg
end

function jinglianjiesao4(npc , player)
   local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#欢迎光临装备精炼系统#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:2>#佩戴全套+6装备属性：\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#●#COLOREND#物防上限　提升　百分之三　#COLORCOLOR_RED#●#COLOREND#物攻上限　提升　百分之三\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#●#COLOREND#魔防上限　提升　百分之三　#COLORCOLOR_RED#●#COLOREND#魔攻上限　提升　百分之三\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#●#COLOREND#*HP*上限　#OFFSET<X:1,Y:0>#提升　百分之三　#COLORCOLOR_RED#●#COLOREND#道术上限　提升　百分之三\n"
        msg = msg.."#OFFSET<X:0,Y:-1>##COLORCOLOR_RED#●#COLOREND#*MP*上限　#OFFSET<X:1,Y:0>#提升　#OFFSET<X:1,Y:0>#百分之三\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:-3>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@jinglianjiesao3 *01*「上一页」>　　　　　　　　　　　　　      <@jinglianjiesao5 *01*「下一页」>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>##OFFSET<X:0,Y:-2>#\n"
	return msg
end

function jinglianjiesao5(npc , player)
   local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#欢迎光临装备精炼系统#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:2>#佩戴全套+9装备属性：\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#●#COLOREND#物防上限　提升　百分之六　#COLORCOLOR_RED#●#COLOREND#物攻上限　提升　百分之六\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#●#COLOREND#魔防上限　提升　百分之六　#COLORCOLOR_RED#●#COLOREND#魔攻上限　提升　百分之六\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#●#COLOREND#*HP*上限　#OFFSET<X:1,Y:0>#提升　百分之六　#COLORCOLOR_RED#●#COLOREND#道术上限　提升　百分之六\n"
        msg = msg.."#OFFSET<X:0,Y:-1>##COLORCOLOR_RED#●#COLOREND#*MP*上限　#OFFSET<X:1,Y:0>#提升　#OFFSET<X:1,Y:0>#百分之六\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:-3>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@jinglianjiesao4 *01*「上一页」>　　　　　　　　　　　　　      <@jinglianjiesao6 *01*「下一页」>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>##OFFSET<X:0,Y:-2>#\n"
	return msg
end

function jinglianjiesao6(npc , player)
   local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#欢迎光临装备精炼系统#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:2>#佩戴全套+12装备属性：\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#●#COLOREND#物防上限　提升百分之十　#COLORCOLOR_RED#●#COLOREND#物攻上限　提升百分之十\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#●#COLOREND#魔防上限　提升百分之十　#COLORCOLOR_RED#●#COLOREND#魔攻上限　提升百分之十\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#●#COLOREND#*HP*上限　#OFFSET<X:1,Y:0>#提升百分之十　#COLORCOLOR_RED#●#COLOREND#道术上限　提升百分之十\n"
        msg = msg.."#OFFSET<X:0,Y:-1>##COLORCOLOR_RED#●#COLOREND#*MP*上限　#OFFSET<X:1,Y:0>#提升百分之十\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:-3>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@jinglianjiesao5 *01*「上一页」>　　　　　　　　　　　　　      <@jinglianjiesao7 *01*「下一页」>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>##OFFSET<X:0,Y:-2>#\n"
	return msg
end

function jinglianjiesao7(npc , player)
   local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#欢迎光临装备精炼系统#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:2>#佩戴全套+15装备属性：\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#●#COLOREND#物防上限　提升百分之十五　#COLORCOLOR_RED#●#COLOREND#物攻上限　提升百分之十五\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#●#COLOREND#魔防上限　提升百分之十五　#COLORCOLOR_RED#●#COLOREND#魔攻上限　提升百分之十五\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#●#COLOREND#*HP*上限　#OFFSET<X:1,Y:0>#提升百分之十五　#COLORCOLOR_RED#●#COLOREND#道术上限　提升百分之十五\n"
        msg = msg.."#OFFSET<X:0,Y:-1>##COLORCOLOR_RED#●#COLOREND#*MP*上限　#OFFSET<X:1,Y:0>#提升百分之十五\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:-3>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@jinglianjiesao7 *01*「上一页」>　　　　　　　　　　　　       #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*返回首页>\n"
	return msg
end


function fengyinjiesao(npc , player)
   local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#欢迎光临装备精炼系统#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"

	msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_RED#㈠：#COLOREND##COLORCOLOR_ORANGE#封印解除可以让装备得到意想不到的属性！#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#㈡：#COLOREND##COLORCOLOR_ORANGE#封印鉴定时最高可获得3条属性，鉴定后右机率获得暴击、吸血等稀有属性！#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#㈢：#COLOREND##COLORCOLOR_ORANGE#可以重置封印属性，但重置后获得什么属性就看你运气咯！#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
    msg = msg.."　　　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01* [返回]>\n"
	return msg

end

function InfoItemRefine(npc, player)
    lualib:ShowForm(player, "精炼表单2")

    return ""
end

function FengYin(npc, player)
	local msg = ""
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times)

	local time_cha = times - StartServerTime_int
	
	if time_cha < 86400 * 5 then 	--(5天) 
		msg = msg .. "#OFFSET<X:0,Y:2>##COLORCOLOR_GREENG#封印鉴定系统将在开服5天后开启，请5天后再来！~\n"
		msg = msg.."　　　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01* [返回]>\n"
		return msg
	end
	
   lualib:ShowForm(player, "鉴定表单")

    return ""
end

function jinglianzhuanyi(npc, player)
   lualib:ShowForm(player, "精炼转移表单")

    return ""
end

function jingliangaibian(npc, player)
   lualib:ShowForm(player, "精炼改变表单")

    return ""
end
--------1017交

function QuestAccomplish1017(npc, player)
    msg = "装备精炼时，你可以选择为你的装备附加提升某项属性百分比的选项！\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1017 *01* 精炼可以提升装备属性>\n"
    return msg
end


function Accomplish1017(npc, player)
    if lualib:AccomplishQuest(player, 1017, 0) == true then
        msg = "提升是按照全身属性的百分比提升的哦！\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccept1018 *01* 知道了，接取任务：精炼方法>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

--------1018接

function QuestAccept1018(npc,player)
    msg = "在你精炼前我需要提醒你：\n装备精炼：需要灵元珠才可精炼\n额外提醒：装备精炼后属性大增。\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1018 *01* 我了解了>\n"
	return msg
end

function Accept1018(npc, player)
    if lualib:AcceptQuest(player, 1018) == true then
		msg = "点击#COLORCOLOR_GREENG# #NPCLINK<STR:装备大师,NPCID:1004>##COLOREND#完成任务！\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccomplish1018 *01* 完成任务>\n"
        return msg
    else
        return "任务接取失败"
    end
end

--------1018交

function QuestAccomplish1018(npc, player)
    msg = "灵元珠在活动里产出较多，多去关注一下活动吧。另外头目怪和BOSS怪也有几率爆灵元珠\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1018 *01* 再与装备大师对话，接取新的任务>\n"
    return msg
end


function Accomplish1018(npc, player)
    if lualib:AccomplishQuest(player, 1018, 0) == true then
		lua_job = lualib:Player_GetIntProp(player, lua_role_job)
		lua_item = {"蛮荒长刀","夜叉矛","上弦"}
		lualib:Player_GiveItemBind(player, lua_item[lua_job], 1, "给物品：装备精炼", player)
        msg = "去找师徒管理员，在游戏里找个师父会让你玩的更加轻松愉快！\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept1019 *01* 好的，我这就去找师徒管理员>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

---1019接
function QuestAccept1019(npc,player)
    msg = "去找师徒管理员了解一下师徒功能吧，在游戏里找个师父，他会帮助你了解更多的神途世界！\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1019 *01* 谢谢>\n"
	return msg
end

function Accept1019(npc, player)
    if lualib:AcceptQuest(player, 1019) == true then
        return "找#COLORCOLOR_GREENG# #NPCLINK<STR:师徒管理员,NPCID:1005>##COLOREND#了解师徒系统"
    else
        return "任务接取失败"
    end
end



function Lever(npc,player)
	return ""
end
