local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"�弶�ɣ�ֻҪ�����ȴﵽ40�����ϣ��Ϳ��Ի��������Ľ�Ľ�����", "��Ʒ�������⣬����������⣡", "������һ���ﵽ50�����һ�����һ�ݵĽ���Ŷ��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 290000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "     Ϊ��ף�������ţ�����ֻҪ��ﵽ����ĵȼ��Ϳ�������ȡһ�ݷ��Ľ�Ʒ���������ޣ��ȵ��ȵ�Ӵ��\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_GREENG#�ȼ�                    ʣ������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_ORANGE#45��#COLOREND#    սʿ��"..lualib:IO_GetCustomVarInt("chongjizhanshi45").."        ��ʦ��"..lualib:IO_GetCustomVarInt("chongjifashi45").."       ��ʿ��"..lualib:IO_GetCustomVarInt("chongjidaoshi45").."\n"
	msg = msg .. "         #OFFSET<X:1,Y:2>##IMAGE1902700042##OFFSET<X:0,Y:-2>#<@chakanjiangp1 *01*[�鿴��Ʒ]>       #OFFSET<X:1,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@lingqu#45 *01*[��ȡ��Ʒ]>\n"
	msg = msg .. "#COLORCOLOR_ORANGE#50��#COLOREND#    սʿ��"..lualib:IO_GetCustomVarInt("chongjizhanshi50").."  #OFFSET<X:1,Y:0>#      #OFFSET<X:1,Y:0>#��ʦ��"..lualib:IO_GetCustomVarInt("chongjifashi50").."       #OFFSET<X:1,Y:0>##OFFSET<X:1,Y:0>#��ʿ��"..lualib:IO_GetCustomVarInt("chongjidaoshi50").."\n"
	msg = msg .. "         #OFFSET<X:1,Y:2>##IMAGE1902700042##OFFSET<X:0,Y:-2>#<@chakanjiangp2 *01*[�鿴��Ʒ]>       #OFFSET<X:1,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@lingqu#50 *01*[��ȡ��Ʒ]>\n"
	msg = msg .. "#COLORCOLOR_ORANGE#55��#COLOREND#    #OFFSET<X:1,Y:0>#սʿ��"..lualib:IO_GetCustomVarInt("chongjizhanshi55").."         #OFFSET<X:1,Y:0>#��ʦ��"..lualib:IO_GetCustomVarInt("chongjifashi55").."        #OFFSET<X:1,Y:0>#��ʿ��"..lualib:IO_GetCustomVarInt("chongjidaoshi55").."\n"
	msg = msg .. "         #OFFSET<X:1,Y:2>##IMAGE1902700042##OFFSET<X:0,Y:-2>#<@chakanjiangp3 *01*[�鿴��Ʒ]>       #OFFSET<X:1,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@lingqu#55 *01*[��ȡ��Ʒ]>\n"
	msg = msg .. "                                                       #OFFSET<X:0,Y:-8>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*[�뿪]>"
	return msg
end

function chakanjiangp1(npc,player)
	local msg = "#COLORCOLOR_GREENG#��ְҵ��1��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#45��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#�Ͽ�(��)#COLOREND#�����һ��ĩ�ռ����Ρ���ӡ������*20����Ԫ��*60\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#���(��)#COLOREND#�����һ��Ѫҹ�����Ρ���ӡ������*20����Ԫ��*60\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#�ɿ�(��)#COLOREND#�����һ����ټ����Ρ���ӡ������*20����Ԫ��*60\n \n \n \n"
	
	msg = msg .. "#COLORCOLOR_GREENG#��ְҵ��2~7��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#45��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#�Ͽ�(��)#COLOREND#�����һ��ĩ�ռ����Ρ���ӡ������*10����Ԫ��*60\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#���(��)#COLOREND#�����һ��Ѫҹ�����Ρ���ӡ������*10����Ԫ��*60\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#�ɿ�(��)#COLOREND#�����һ����ټ����Ρ���ӡ������*10����Ԫ��*60\n \n \n \n"

	msg = msg .. "#COLORCOLOR_GREENG#��ְҵ��8~20��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#45��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#�Ͽ�#COLOREND#����ӡ������*5����Ԫ��*60\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#���#COLOREND#����ӡ������*5����Ԫ��*60\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#�ɿ�#COLOREND#����ӡ������*5����Ԫ��*60\n \n \n \n"
	msg = msg .. "                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
	return msg
end

function chakanjiangp2(npc,player)
	local msg =  "#COLORCOLOR_GREENG#��ְҵ��1~2��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#50��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#����(��)#COLOREND#�����һ�����׼����Ρ��߼��﹥������*1\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#�к�(��)#COLOREND#�����һ�����鼶���Ρ��߼�ħ��������*1\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#�޳�(��)#COLOREND#�����һ�����Ｖ���Ρ��߼�����������*1\n \n \n \n"
	
	msg = msg .. "#COLORCOLOR_GREENG#��ְҵ��3~6��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#50��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#����(��)#COLOREND#�����һ�����׼����Ρ��߼��﹥������*1\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#�к�(��)#COLOREND#�����һ�����鼶���Ρ��߼�ħ��������*1\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#�޳�(��)#COLOREND#�����һ�����Ｖ���Ρ��߼�����������*1\n \n \n \n"

	msg = msg .. "#COLORCOLOR_GREENG#��ְҵ��7~15��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#50��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#����#COLOREND#���߼��﹥������*1\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#�к�#COLOREND#���߼�ħ��������*1\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#�޳�#COLOREND#���߼�����������*1\n \n \n \n"
	msg = msg .. "                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
	return msg
end

function chakanjiangp3(npc,player)
	local msg =  "#COLORCOLOR_GREENG#��ְҵ��1��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#55��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#ʮ������(��)#COLOREND#�����һ����ŭ�����Ρ��߼��﹥������*2\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#�߽ٸ���(��)#COLOREND#�����һ����Ԩ�����Ρ��߼�ħ��������*2\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#�����׵�(��)#COLOREND#�����һ���������Ρ��߼�����������*2\n \n \n \n"
	
	msg = msg .. "#COLORCOLOR_GREENG#��ְҵ��2~4��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#55��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#ʮ������(��)#COLOREND#�����һ����ŭ�����Ρ��߼��﹥������*2\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#�߽ٸ���(��)#COLOREND#�����һ����Ԩ�����Ρ��߼�ħ��������*2\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#�����׵�(��)#COLOREND#�����һ���������Ρ��߼�����������*2\n \n \n \n"

	msg = msg .. "#COLORCOLOR_GREENG#��ְҵ��5~10��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#55��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#ʮ������#COLOREND#���߼��﹥������*2\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#�߽ٸ���#COLOREND#���߼�ħ��������*2\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#�����׵�#COLOREND#���߼�����������*2\n \n \n \n"
	msg = msg .. "                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
	return msg
end


--[[

function chakanjiangp1(npc,player)
	local msg = "#COLORCOLOR_GREENG#��ְҵ��1��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#42��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#ʮɱ(��)#COLOREND#�����һ��ʥ�伶���Ρ���ӡ������*10����Ԫ��*30\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#����(��)#COLOREND#�����һ����ڤ�����Ρ���ӡ������*10����Ԫ��*30\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#��Ԩ(��)#COLOREND#�����һ���ɳ������Ρ���ӡ������*10����Ԫ��*30\n \n"
	
	msg = msg .. "#COLORCOLOR_GREENG#��ְҵ��2~7��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#42��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#ʮɱ(��)#COLOREND#�����һ��ʥ�伶���Ρ���ӡ������*10����Ԫ��*30\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#����(��)#COLOREND#�����һ����ڤ�����Ρ���ӡ������*10����Ԫ��*30\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#��Ԩ(��)#COLOREND#�����һ���ɳ������Ρ���ӡ������*10����Ԫ��*30\n \n"
	
	msg = msg .. "#COLORCOLOR_GREENG#��ְҵ��8~20��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#42��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#ʮɱ#COLOREND#����ӡ������*10����Ԫ��*30\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#����#COLOREND#����ӡ������*10����Ԫ��*30\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#��Ԩ#COLOREND#����ӡ������*10����Ԫ��*30\n \n"
	msg = msg .. "                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
	return msg
end

function chakanjiangp2(npc,player)
	local msg =  "#COLORCOLOR_GREENG#��ְҵ��1~2��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#47��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#�Ͽ�(��)#COLOREND#�����һ��ĩ�ռ����Ρ���ӡ������*20����Ԫ��*60\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#���(��)#COLOREND#�����һ��Ѫҹ�����Ρ���ӡ������*20����Ԫ��*60\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#�ɿ�(��)#COLOREND#�����һ����ټ����Ρ���ӡ������*20����Ԫ��*60\n \n \n \n"
	
	msg = msg .. "#COLORCOLOR_GREENG#��ְҵ��3~6��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#47��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#�Ͽ�(��)#COLOREND#�����һ��ĩ�ռ����Ρ���ӡ������*20����Ԫ��*60\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#���(��)#COLOREND#�����һ��Ѫҹ�����Ρ���ӡ������*20����Ԫ��*60\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#�ɿ�(��)#COLOREND#�����һ����ټ����Ρ���ӡ������*20����Ԫ��*60\n \n \n \n"

	msg = msg .. "#COLORCOLOR_GREENG#��ְҵ��7~15��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#47��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#�Ͽ�#COLOREND#����ӡ������*20����Ԫ��*60\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#���#COLOREND#����ӡ������*20����Ԫ��*60\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#�ɿ�#COLOREND#����ӡ������*20����Ԫ��*60\n \n \n \n"
	msg = msg .. "                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
	return msg
end

function chakanjiangp3(npc,player)
	local msg =  "#COLORCOLOR_GREENG#��ְҵ��1��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#52��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#����(��)#COLOREND#�����һ�����׼����Ρ��߼��﹥������*1\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#�к�(��)#COLOREND#�����һ�����鼶���Ρ��߼�ħ��������*1\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#�޳�(��)#COLOREND#�����һ�����Ｖ���Ρ��߼�����������*1\n \n \n \n"
	
	msg = msg .. "#COLORCOLOR_GREENG#��ְҵ��2~4��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#52��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#����(��)#COLOREND#�����һ�����׼����Ρ��߼��﹥������*1\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#�к�(��)#COLOREND#�����һ�����鼶���Ρ��߼�ħ��������*1\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#�޳�(��)#COLOREND#�����һ�����Ｖ���Ρ��߼�����������*1\n \n \n \n"

	msg = msg .. "#COLORCOLOR_GREENG#��ְҵ��5~10��#COLOREND#�ﵽ#COLORCOLOR_SKYBLUE#52��#COLOREND#��ҿ���ȡ���µ��ߡ�\n"
	msg = msg .. "սʿ����ȡ��#COLORCOLOR_ORANGE#����#COLOREND#���߼��﹥������*1\n"
	msg = msg .. "��ʦ����ȡ��#COLORCOLOR_ORANGE#�к�#COLOREND#���߼�ħ��������*1\n"
	msg = msg .. "��ʿ����ȡ��#COLORCOLOR_ORANGE#�޳�#COLOREND#���߼�����������*1\n \n \n \n"
	msg = msg .. "                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
	return msg
end
]]
function lingqu(npc,player,jishu)
	local ItemName = ""
	local jishu = tonumber(jishu)
	if lualib:GetInt(player,"chongjilingqu"..jishu) == 1 then 
		return "������ȡ�����������ظ���ȡ��\n \n \n \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
	end
	
	if lualib:Level(player) < jishu then
		return "�ȼ���������ȡʧ�ܣ�\n \n \n \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
	end
	
	if lualib:Player_GetIntProp(player,lua_role_job) == 1 and lualib:IO_GetCustomVarInt("chongjizhanshi"..jishu) > 0 then
		local shuliang = lualib:IO_GetCustomVarInt("chongjizhanshi"..jishu)
		if jishu == 45 then
			if shuliang >= 20 then
				ItemName = jishu.."���弶�������"
			elseif shuliang >= 14 then
				ItemName = jishu.."���弶�������"
			else
				ItemName = jishu.."���弶�����"
			end
		elseif jishu == 50 then			
			if shuliang >= 14 then
				ItemName = jishu.."���弶�������"
			elseif shuliang >= 10 then
				ItemName = jishu.."���弶�������"
			else
				ItemName = jishu.."���弶�����"
			end
			
		elseif jishu == 55 then			
			if shuliang >= 10 then
				ItemName = jishu.."���弶�������"
			elseif shuliang >= 7 then
				ItemName = jishu.."���弶�������"
			else
				ItemName = jishu.."���弶�����"
			end				
			
		end
		
		if lualib:Player_ItemRequest(player, {ItemName}, {1}, {0}, {0}, "�弶������ȡ", player) == true then
			lualib:IO_SetCustomVarInt("chongjizhanshi"..jishu,shuliang-1)
			lualib:SysMsg_SendCenterMsg(1, "��ϲ���"..lualib:Player_GetStrProp(player, lua_role_user_name).."��ȡ��"..jishu.."���弶�������"..jishu.."��սʿ�弶����ʣ�������"..shuliang-1 .."��", "")
			lualib:SetInt(player,"chongjilingqu"..jishu,1)
			return "��ȡ�ɹ�����ã�"..jishu.."���弶�����\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
		else
			return jishu.."���弶�����".."��ȡʧ�ܣ�������λ���㣡\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
		end
		
		
	elseif lualib:Player_GetIntProp(player,lua_role_job) == 2 and lualib:IO_GetCustomVarInt("chongjifashi"..jishu) > 0 then	
		local shuliang = lualib:IO_GetCustomVarInt("chongjifashi"..jishu)
		
		if jishu == 45 then
			if shuliang >= 20 then
				ItemName = jishu.."���弶�������"
			elseif shuliang >= 14 then
				ItemName = jishu.."���弶�������"
			else
				ItemName = jishu.."���弶�����"
			end
		elseif jishu == 50 then			
			if shuliang >= 14 then
				ItemName = jishu.."���弶�������"
			elseif shuliang >= 10 then
				ItemName = jishu.."���弶�������"
			else
				ItemName = jishu.."���弶�����"
			end
			
		elseif jishu == 55 then			
			if shuliang >= 10 then
				ItemName = jishu.."���弶�������"
			elseif shuliang >= 7 then
				ItemName = jishu.."���弶�������"
			else
				ItemName = jishu.."���弶�����"
			end				
			
		end

		if lualib:Player_ItemRequest(player, {ItemName}, {1}, {0}, {0}, "�弶������ȡ", player) == true then
			lualib:IO_SetCustomVarInt("chongjifashi"..jishu,lualib:IO_GetCustomVarInt("chongjifashi"..jishu)-1)
			lualib:SysMsg_SendCenterMsg(1, "��ϲ���"..lualib:Player_GetStrProp(player, lua_role_user_name).."��ȡ��"..jishu.."���弶�������"..jishu.."����ʦ�弶����ʣ�������"..shuliang-1 .."��", "")
			lualib:SetInt(player,"chongjilingqu"..jishu,1)
			return "��ȡ�ɹ�����ã�"..jishu.."���弶�����\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
		else
			return jishu.."���弶�����".."��ȡʧ�ܣ�������λ���㣡\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
		end
	elseif lualib:Player_GetIntProp(player,lua_role_job) == 3 and lualib:IO_GetCustomVarInt("chongjidaoshi"..jishu) > 0 then
		local shuliang = lualib:IO_GetCustomVarInt("chongjidaoshi"..jishu)
		
		if jishu == 45 then
			if shuliang >= 20 then
				ItemName = jishu.."���弶�������"
			elseif shuliang >= 14 then
				ItemName = jishu.."���弶�������"
			else
				ItemName = jishu.."���弶�����"
			end
		elseif jishu == 50 then			
			if shuliang >= 14 then
				ItemName = jishu.."���弶�������"
			elseif shuliang >= 10 then
				ItemName = jishu.."���弶�������"
			else
				ItemName = jishu.."���弶�����"
			end
			
		elseif jishu == 55 then			
			if shuliang >= 10 then
				ItemName = jishu.."���弶�������"
			elseif shuliang >= 7 then
				ItemName = jishu.."���弶�������"
			else
				ItemName = jishu.."���弶�����"
			end				
			
		end
		
		if lualib:Player_ItemRequest(player, {ItemName}, {1}, {0}, {0}, "�弶������ȡ", player) == true then
			lualib:IO_SetCustomVarInt("chongjidaoshi"..jishu,lualib:IO_GetCustomVarInt("chongjidaoshi"..jishu)-1)
			lualib:SysMsg_SendCenterMsg(1, "��ϲ���"..lualib:Player_GetStrProp(player, lua_role_user_name).."��ȡ��"..jishu.."���弶�������"..jishu.."����ʿ�弶����ʣ�������"..shuliang-1 .."��", "")
			lualib:SetInt(player,"chongjilingqu"..jishu,1)
			return "��ȡ�ɹ�����ã�"..jishu.."���弶�����\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
		else
			return jishu.."���弶�����".."��ȡʧ�ܣ�������λ���㣡\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
		end
	else
		return jishu.."���弶�����".."��ȡʧ�ܣ��Ѿ�û����ȡ�����ˣ�\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
	end
end

function likai()
	return ""
end