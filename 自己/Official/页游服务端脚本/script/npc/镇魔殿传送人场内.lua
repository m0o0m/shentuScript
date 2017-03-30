local var_t =
{
	"gen_monster_flag_1",
	"gen_monster_flag_2",
	"gen_monster_flag_3",
}

local cur_var_ = "cur_step"
local var_award = "zmdfb_var_award"

function main(npc, player)
	local monster_count = lualib:Map_GetMonsterCount(lualib:MapGuid(player),  "", true, true)
	local msg = ""
	local dgn = lualib:Npc_GetCustomVar(npc, "var_dgn_guid")
	if dgn == "" then return "我不能在不适当的场合为你提供服务！\n \n<@Leave *01*离开>" end
	print(lualib:Map_GetCustomVarInt(dgn, "cur_step"))
	if lualib:Map_GetCustomVarInt(dgn, "cur_step") ~= 3 then
		msg = "    我是镇魔殿场内传送人！\n    打通当前关卡后才能继续下一关！\n \n"
		for k, v in pairs(var_t) do
			if lualib:Map_GetCustomVarInt(dgn, v) == 0 then
				msg = msg.."#IMAGE1902700018##OFFSET<X:0,Y:-1>#<@GenMonster#"..k.."#"..dgn.." *01*释放妖魔（第"..k.."波）>\n \n"
				break
			end
		end
	else
		if monster_count == 0 then
			msg = "你已消灭所有怪物！\n \n "
		else
			msg = "请消灭当前怪物！\n \n"
		end
	end
	--msg = msg.."#OFFSET<X:1,Y:0>##OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@award *01*领取奖励>\n"
    --msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700017#<@info *01*奖励介绍>\n \n"
	msg = msg.."                                          #OFFSET<X:3,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump *01*「销毁镇魔殿」>\n"

	return msg
end

function GenMonster(npc, player, count, dgn)
	count = tonumber(count)
	lualib:Map_SetCustomVarInt(dgn, cur_var_, count)
	return "开始刷新第"..count.."波小怪，击败光小怪后才能继续刷新第2波！\n \n \n \n \n \n \n \n                                           #OFFSET<X:-2,Y:4>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@leave *01*关闭>"
end

function leave(npc, player)
    return ""
end

function award(npc, player)
	if 0 == lualib:Player_GetCustomVarInt(player, var_award) then
		return "无奖励记录，无法领取！\n \n \n \n \n \n \n \n                                           #OFFSET<X:-2,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end

	local free_slot = lualib:Player_GetBagFree(player)
	if free_slot < 1 then return "背包已满，无法领取！\n \n \n \n \n \n \n \n                                           #OFFSET<X:-2,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

	local item = "天魔宝匣"
	if not lualib:Player_GiveItemUnbind(player, item, 1, "给物品：镇魔殿奖励", "镇魔殿传送人场内") then
		return "给物品失败，无法领取！\n \n \n \n \n \n \n \n                                           #OFFSET<X:-2,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end

	lualib:Player_SetCustomVarInt(player, var_award, 0)
	return "物品给予成功！\n \n \n \n \n \n \n \n                                           #OFFSET<X:-2,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
end

function info(npc, player)
	local 	msg = "#COLORCOLOR_RED#天魔宝匣#COLOREND#：开启天魔宝匣必定获得各种高级装备和物品，并且还有概率获得稀有的【极品】、【珍品】武器\n"
	msg = msg.."#COLORCOLOR_RED#【极品】30级武器#COLOREND#：审判(极)、忘机(极)、囚龙(极)\n"
	msg = msg.."#COLORCOLOR_RED#【极品】35级武器#COLOREND#：十杀(极)、龙渊(极)、天瀑(极)\n"
	msg = msg.."#COLORCOLOR_RED#【珍品】30级武器#COLOREND#：审判(珍)、忘机(珍)、囚龙(珍)\n"
	msg = msg.."#COLORCOLOR_RED#【珍品】35级武器#COLOREND#：十杀(珍)、龙渊(珍)、天瀑(珍)\n \n \n"
	msg = msg.."                                           #OFFSET<X:-2,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	return msg
end

function Leave(npc, player)
	return ""
end

function jump(npc, player)
	local 	msg = "销毁副本后，本次副本将结束，所有队员将被传送出去！\n \n #COLORCOLOR_RED#确定销毁吗？#COLOREND#\n \n"
    msg = msg.."  #OFFSET<X:-2,Y:4>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@xiaohui *01*「确定」>"
	return msg
end


function xiaohui(npc, player)
	lualib:Player_MapMoveXY(player, "龙城", 234, 223, 1)
	local map = lualib:MapGuid(npc)
	lualib:Map_DestroyDgn(map)

	return ""
end
