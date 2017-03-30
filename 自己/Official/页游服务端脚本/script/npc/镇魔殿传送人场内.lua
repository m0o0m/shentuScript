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
	if dgn == "" then return "�Ҳ����ڲ��ʵ��ĳ���Ϊ���ṩ����\n \n<@Leave *01*�뿪>" end
	print(lualib:Map_GetCustomVarInt(dgn, "cur_step"))
	if lualib:Map_GetCustomVarInt(dgn, "cur_step") ~= 3 then
		msg = "    ������ħ��ڴ����ˣ�\n    ��ͨ��ǰ�ؿ�����ܼ�����һ�أ�\n \n"
		for k, v in pairs(var_t) do
			if lualib:Map_GetCustomVarInt(dgn, v) == 0 then
				msg = msg.."#IMAGE1902700018##OFFSET<X:0,Y:-1>#<@GenMonster#"..k.."#"..dgn.." *01*�ͷ���ħ����"..k.."����>\n \n"
				break
			end
		end
	else
		if monster_count == 0 then
			msg = "�����������й��\n \n "
		else
			msg = "������ǰ���\n \n"
		end
	end
	--msg = msg.."#OFFSET<X:1,Y:0>##OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@award *01*��ȡ����>\n"
    --msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700017#<@info *01*��������>\n \n"
	msg = msg.."                                          #OFFSET<X:3,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump *01*��������ħ�>\n"

	return msg
end

function GenMonster(npc, player, count, dgn)
	count = tonumber(count)
	lualib:Map_SetCustomVarInt(dgn, cur_var_, count)
	return "��ʼˢ�µ�"..count.."��С�֣����ܹ�С�ֺ���ܼ���ˢ�µ�2����\n \n \n \n \n \n \n \n                                           #OFFSET<X:-2,Y:4>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@leave *01*�ر�>"
end

function leave(npc, player)
    return ""
end

function award(npc, player)
	if 0 == lualib:Player_GetCustomVarInt(player, var_award) then
		return "�޽�����¼���޷���ȡ��\n \n \n \n \n \n \n \n                                           #OFFSET<X:-2,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	end

	local free_slot = lualib:Player_GetBagFree(player)
	if free_slot < 1 then return "�����������޷���ȡ��\n \n \n \n \n \n \n \n                                           #OFFSET<X:-2,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

	local item = "��ħ��ϻ"
	if not lualib:Player_GiveItemUnbind(player, item, 1, "����Ʒ����ħ���", "��ħ����˳���") then
		return "����Ʒʧ�ܣ��޷���ȡ��\n \n \n \n \n \n \n \n                                           #OFFSET<X:-2,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	end

	lualib:Player_SetCustomVarInt(player, var_award, 0)
	return "��Ʒ����ɹ���\n \n \n \n \n \n \n \n                                           #OFFSET<X:-2,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
end

function info(npc, player)
	local 	msg = "#COLORCOLOR_RED#��ħ��ϻ#COLOREND#��������ħ��ϻ�ض���ø��ָ߼�װ������Ʒ�����һ��и��ʻ��ϡ�еġ���Ʒ��������Ʒ������\n"
	msg = msg.."#COLORCOLOR_RED#����Ʒ��30������#COLOREND#������(��)������(��)������(��)\n"
	msg = msg.."#COLORCOLOR_RED#����Ʒ��35������#COLOREND#��ʮɱ(��)����Ԩ(��)������(��)\n"
	msg = msg.."#COLORCOLOR_RED#����Ʒ��30������#COLOREND#������(��)������(��)������(��)\n"
	msg = msg.."#COLORCOLOR_RED#����Ʒ��35������#COLOREND#��ʮɱ(��)����Ԩ(��)������(��)\n \n \n"
	msg = msg.."                                           #OFFSET<X:-2,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end

function Leave(npc, player)
	return ""
end

function jump(npc, player)
	local 	msg = "���ٸ����󣬱��θ��������������ж�Ա�������ͳ�ȥ��\n \n #COLORCOLOR_RED#ȷ��������#COLOREND#\n \n"
    msg = msg.."  #OFFSET<X:-2,Y:4>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@xiaohui *01*��ȷ����>"
	return msg
end


function xiaohui(npc, player)
	lualib:Player_MapMoveXY(player, "����", 234, 223, 1)
	local map = lualib:MapGuid(npc)
	lualib:Map_DestroyDgn(map)

	return ""
end
