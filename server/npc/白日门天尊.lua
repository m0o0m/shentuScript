

function main(npc, player)
	local msg = [[
	������˵��ʲô����ʲô��
	����лл�������Ĺ��ף�
	]]
	msg = msg.."\n"
	msg = msg.."��������������������������������������������#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@next_to *01*��������>\n"
	return msg	
end

function next_to(npc, player)
	local msg = [[
	�ڱ�����
	����������Ҫ�ҵġ�
	]]
	msg = msg.."\n"
	msg = msg.."��������������������������������������������#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
	return msg	
end
