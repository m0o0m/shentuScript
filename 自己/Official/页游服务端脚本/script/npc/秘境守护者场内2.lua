



function main(npc, player)
	local msg = ""
    msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."     ��л�ɾ�����ʿ�������ػ���ķ�ӡ���ƻ������Ѿ��������ƻ��Ĳ������ӣ������ð������#COLORCOLOR_RED#�ٻ�ʯ#COLOREND#���ٻ��ػ����ǰɣ�\n"
	msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700037#<@jieshao *01*��������>#OFFSET<X:210,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@level *01*�����Ի�>\n"
	return msg
end


function jieshao(npc, player)
	local msg = ""
    msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
    msg = msg.."#COLORCOLOR_BROWN#ʹ���ٻ�ʯ��ѡ��Ҫ�ٻ����ػ������ͣ��Ϳ����ٻ����ػ����������ƻ��غ���ӡ���ƻ��ߣ�(�ٻ��ػ�����Ҫ����#COLOREND##COLORCOLOR_RED#�ٻ�ʯ#COLOREND##COLORCOLOR_BROWN#)#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#�ƻ��߻�ֳɰ˲���ÿһ�����Ѷ��������������ƻ�������֮ǰ���ٻ��㹻���ػ��߽��з���#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#�����ڼ���н����ֳ��֣����侭����߻�������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#����BOSS������뵽��һ��NPC����ȡ���������˸�����ì�ܣ��ڸ�������һ�࣬��ȥ���Ұɣ�#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
    msg = msg.."#IMAGE1902700015#<@main *01*����>\n"
	return msg
end

function level(npc, player)
    return ""
end

