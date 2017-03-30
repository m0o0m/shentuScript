local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local item_array_jl_jinbi = {}
item_array_jl_jinbi[10] = {"level_10_gold", 100}
item_array_jl_jinbi[15] = {"level_15_gold", 200}
item_array_jl_jinbi[20] = {"level_20_gold", 300}
item_array_jl_jinbi[25] = {"level_25_gold", 400}
item_array_jl_jinbi[30] = {"level_30_gold", 500}
item_array_jl_jinbi[35] = {"level_35_gold", 600}
item_array_jl_jinbi[40] = {"level_40_gold", 1000}
item_array_jl_jinbi[45] = {"level_45_gold", 2000}
item_array_jl_jinbi[50] = {"level_50_gold", 3000}


local talk_t = {"ÿ���弶���㶼���Ի��Ԫ������Ŷ��", "��˵��վ���������ʲô�ģ����Ƿ����ġ�", "���ߵĵȼ������ý�����Ψһ��ʽ��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 260000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    local msg = "#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."     #COLORCOLOR_GOLD#��10������ÿ��5���������Ե�����������ȡ������Ԫ����#COLOREND#\n \n"
	msg = msg.."     #COLORCOLOR_GOLD#�ȼ�Խ�ߣ���ȡ�Ľ���Խ�࣬���ͣ�#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	--msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700031>##OFFSET<X:0,Y:-1>#<@Shengjijiangli *01*[��ȡ��������]>\n \n"
        msg = msg.."                                                #OFFSET<X:0,Y:2>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@likai *01*���뿪��>\n"



	return msg
end


function Shengjijiangli(npc, player)
	local msg = "#COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�ȼ�Խ�ߣ���ȡ�Ľ�����Խ��Ŷ���ٶȼ��ͣ�#COLOREND#\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.." <@jiangli#10 *01*����ȡ10��������>   <@jiangli#15 *01*����ȡ15��������>   <@jiangli#20 *01*����ȡ20��������>\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.." <@jiangli#25 *01*����ȡ25��������>   <@jiangli#30 *01*����ȡ30��������>   <@jiangli#35 *01*����ȡ35��������>\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.." <@jiangli#40 *01*����ȡ40��������>   <@jiangli#45 *01*����ȡ45��������>   <@jiangli#50 *01*����ȡ50��������>\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."      ��������������������������������������#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
--	msg = msg.."#COLORCOLOR_BLUE#�X�j�[#COLOREND#����#COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�ȼ�Խ�ߣ���ȡ�Ľ�����Խ��Ŷ���ٶȼ��ͣ�#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_BLUE#�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_BLUE#�g���X�������������j�������������j�������������[#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_BLUE#�d�p�g����#COLOREND#<@jiangli#10 *01*��ȡ10������>#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#��#COLOREND#<@jiangli#15 *01*��ȡ15������>#COLORCOLOR_BLUE#��#COLOREND#<@jiangli#20 *01*��ȡ20������>#COLORCOLOR_BLUE#��#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_BLUE#�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_BLUE#�p�T�p�������������p�������������p�������������g#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_BLUE#�d�p�p�T�p#COLOREND#<@jiangli#25 *01*��ȡ25������>#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#��#COLOREND#<@jiangli#30 *01*��ȡ30������>#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#��#COLOREND#<@jiangli#35 *01*��ȡ35������>#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#��#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_BLUE#�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_BLUE#�p�T�p�������������p�������������p�������������g#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_BLUE#�d�p�g����#COLOREND#<@jiangli#40 *01*��ȡ40������>#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#��#COLOREND#<@jiangli#45 *01*��ȡ45������>#OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#��#COLOREND#<@jiangli#50 *01*��ȡ50������>#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#��#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_BLUE#�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_BLUE#�g���^�������������m�������������m�������������a#COLOREND#\n"
--	msg = msg.."      ��������������������������������������<@main *01*�����ء�>\n"

	return msg
end

function jiangli(npc, player, level)
		local msg = ""
		if lualib:Player_GetCustomVarInt(player, item_array_jl_jinbi[tonumber(level)][1]) == 1 then
			lualib:SysMsg_SendWarnMsg(player, level.."���Ľ������Ѿ���ȡ���ˣ�")
			msg = "�ܱ�Ǹ��"..level.."���Ľ������Ѿ���ȡ���ˣ�\n \n \n \n \n \n \n \n"
	                msg = msg.."    ��������������������������������������  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Shengjijiangli *01*�����ء�>\n"
			return msg
		end

		local role_level = lualib:Player_GetIntProp(player, lua_role_level)  --��ȡ�ȼ�
		if role_level >= tonumber(level) then
			if lualib:Player_AddIngot(player, item_array_jl_jinbi[tonumber(level)][2], true, "��Ԫ������������", player) then
				lualib:SysMsg_SendTriggerMsg(player, "��ϲ������ý�������Ԫ������"..item_array_jl_jinbi[tonumber(level)][2].."��")
				msg = "��ϲ������ý�������Ԫ������"..item_array_jl_jinbi[tonumber(level)][2].."��\n \n \n \n \n \n \n \n"
	                msg = msg.."    ��������������������������������������  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Shengjijiangli *01*�����ء�>\n"
				lualib:Player_SetCustomVarInt(player, item_array_jl_jinbi[tonumber(level)][1], 1)
			else
				msg = "���ź�������ʧ�ܣ�\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
			end
		else
			lualib:SysMsg_SendTriggerMsg(player, "���ĵȼ�δ�ﵽ������������@��Ŭ����")
			msg = "���ĵȼ�δ�ﵽ������������@��Ŭ����\n \n \n \n \n \n \n \n"
	                msg = msg.."    ��������������������������������������  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Shengjijiangli *01*�����ء�>\n"
		end
		return msg
end

function likai(npc, player)
	return""
end
