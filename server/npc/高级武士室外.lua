
function main(npc, player)
	local my_quest = lualib:GetInt(player, "my_quest")
	local msg = ""
	if my_quest == 3 then	
		msg = [[����ʲô��?��ɽ���������ϰ�?
		����ô֪���ҵĵ���?�������˵Щʲô?
		�������沼,����,����Ϸ,��Ӯ���Ҿ����㽲.
		
		<@jiandao *01*����>������<@shitou *01*ʯͷ>������<@bu *01*��>]]
		return msg
	end
	
	if my_quest == 4 then 
		msg = [[��˵������ҵĵ���-��ɽ���������ϰ�?
		��û����úܺ�?��ֲ��Ǻܺ�,
		���Ǿ�ƾ���Ǹ�����,�ҾͰ���������߽���,����,��Ҳû˵����,���������Ķ���ʲô?
		
		<@talk_one *01*��������ɽ��������������>
		<@talk_two *01*��Ҫ˵���ֻ�,�����ҽ���.>]]
		return msg
	end
	
	if my_quest == 5 then
		msg = [[����?��ʵ��Ҳû��������.
		������Ϊ����,���봫����һ������,
		���������ƾ�����ǲ�����,��Ҫ���������ε�ʧ��,
		��ʧ���еõ�����,�������,����Ϊ��������Ӧ�ÿ������õ�.
		��������������,�벻������.\n�ټ�������������ʱ,ħ�����������,
		����һ��Ϊ����������,�ҷ�����,�������ǳ���,\n��������̫ǿ����,���ǲ�������ô����.
		��ô��,���ܰ��Ҵ�������ħ����?
		
		<@accept *01*����>          <@Leave *01*�ܾ�>]]
		return msg
	end
	
	if my_quest == 6 then
		msg = [[��,���������ħ���ǿ��,
		��������׼���˾͸����Ұ�,
		�����û׼���þ�׼����װ���Ͳ���Ʒ����!
		<@start *01*׼������>          <@Leave *01*����׼��׼������>]]
		return msg
	end
	
	if my_quest == 7 then 
		lualib:AddItem(player, "����֮��", 1, true, "����֮������", player)
		lualib:SetInt(player, "my_quest", 8)
		msg = [[Ŷ,������������ʿ,�ܰ�ħ�������.
		����̫��������,û�뵽���з��������һ�찡,
		��,�Ұ��Ȿ�����,�����Ұ���������ɽ���������ϰ�
		���������ҵ���˼��.
		
		<@Leave *01*�رնԻ�>]]
		return msg
	end
	msg = "�Ҳ���ʶ��,����ʲô���ö���˵��?\n \n"
	msg = msg.."<@Leave *01*�رնԻ�>"
	return msg
end

function start (npc, player)
	local msg = ""
	local map = lualib:Map_GetMapGuid("����С��")
	if lualib:Map_GetPlayerCount(map, true) == 0 then
		lualib:Player_MapMove(player, "����С��")
		lualib:Map_ClearMonster(map, 24, 33, 100, "", true, true)
		lualib:Map_GenMonster(map, 73, 64, 50, 4, "��������", 30, false)
		return ""
	else
		msg = "�����������ں�ħ��ս��.\n�㻹�ǵ�һ��������!\n \n "
		msg = msg.."<@Leave *01*�رնԻ�>"
		return msg
	end
end

function accept (npc, player)
	lualib:SetInt(player, "my_quest", 6)
	local msg = "��,���������ħ���ǿ��,��������׼���˾͸����Ұ�! \n"
	msg = msg.."<@start *01*׼������>       <@Leave *01*����׼��׼������>"
	return msg
end

function answer_two (npc, player)
	lualib:SetInt(player, "my_quest", 0)	
	local msg = "��˵ʲô?���ں��Ҽƽ���?\n����˵ʲô��˵ʲô!!!\n�����ں���������˵����.\n���ȥ��!!!\n<@Leave *01*�رնԻ�>"
	return msg
end

function talk_one(npc, player)
	lualib:SetInt(player, "my_quest", 0)
	return "����?û��Ϣ�Ķ�������֪����,��������Ի�ȥ��!"
end

function talk_two(npc, player)
	local msg = "�������˵ʲô?\n \n"
	msg = msg.."<@answer *01*��ʵ��ɽ���������ϰ�Ҳ������ʦ��>\n"
	msg = msg.."<@answer_two *01*Ϊʲô������������ӵ���˵����ô����?>"
	return msg
end

function answer (npc, player)
	lualib:SetInt(player, "my_quest", 5)
	local msg = "����?��ʵ��Ҳû����������\n \n<@main *01*�����Ի�>"
	return msg
end

function jiandao (npc, player)
	local sz = lualib:GenRandom (1, 5)
	if sz == 3 then
		lualib:SetInt(player, "my_quest", 4)
		return "�ҳ��˲�,��ȻӮ����?\n����,��������������Ҫ˵ʲô?\n \n \n<@main *01*�����Ի�>"
	else
		lualib:SetInt(player, "my_quest", 0)
		return "�ҳ���ʯͷ,��Ӯ��,���߰�!\n \n \n<@Leave *01*�رնԻ�>"
	end
end

function shitou (npc, player)
	local sz = lualib:GenRandom (1, 5)
	if sz == 3 then
		lualib:SetInt(player, "my_quest", 4)
		return "�ҳ��˼���,��ȻӮ����?\n����,��������������Ҫ˵ʲô?\n \n \n<@main *01*�����Ի�>"
	else
		lualib:SetInt(player, "my_quest", 0)
		return "�ҳ��˲�,��Ӯ��,���߰�!\n \n \n<@Leave *01*�رնԻ�>"
	end
end

function bu (npc, player)
	local sz = lualib:GenRandom (1, 5)
	if sz == 3 then
		lualib:SetInt(player, "my_quest", 4)
		return "�ҳ���ʯͷ,��ȻӮ����?\n����,��������������Ҫ˵ʲô?\n \n \n<@main *01*�����Ի�>"
	else
		lualib:SetInt(player, "my_quest", 0)
		return "�ҳ��˼���,��Ӯ��,���߰�!\n \n \n<@Leave *01*�رնԻ�>"
	end
end

function Leave (npc, player)
	return ""
end
