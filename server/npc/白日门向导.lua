

function main(npc, player)
	local msg = [[
	���������಻�ϵ�Ⱥɽ���������ޱ��޼ʵĴ󺣡�
	����������������ɭ�֣����������������Թ���
	���б�������ɭ�ֲ��Ĵ����Թ�������Ǳ�������޴�ı������
	��˵�ֲ��ĳ��¶�ħ������������
	]]
	msg = msg.."\n"
	msg = msg.."<@go_next *01* ����ȥ>\n"
	msg = msg.."��������������������������������������������#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*��ȷ����>\n"
	return msg		
end

function leave()
	return ""
end

function go_next(npc, player)
	local msg = [[
	�����Ÿ�����Σ�գ�
	�������ص���ȫ�ĵط���
	�ҿ��԰��㡣
	]]
	msg = msg.."\n"
	msg = msg.."<@move1 *01* �ص�����>\n"
	msg = msg.."��������������������������������������������#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
	return msg	
end

function move1(npc, player)
	local msg = [[
	�ƶ���������Ҫ���
	�����������ʹ��
	�����֧��2000���
	���뻨���Ǯ��
	]]
	msg = msg.."\n"
	msg = msg.."<@movemap *01* �ص�����>\n"
	msg = msg.."��������������������������������������������#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���˳���>\n"
	return msg	
end

function movemap(npc, player)
	if not lualib:SubGold(player, 2000, "�۽��:�������򵼴��ͷ�", "��������") then
		return "��û���㹻�Ľ������֧�����ǵķ������!\n ��Ŭ��׬ǮŶ:)\n ��������������������������������������������#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	else
		lualib:Player_MapMoveXY(player, "��ɽ��", 335, 291, 3)
	end

	return ""	
end
