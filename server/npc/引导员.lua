function main(npc, player)
    local msg = "����һֻСС�񡭡������������ţ���ӭ������;�����磡���ò�˵����Ϊǰ�����ң��������㣬����������ң���ν֪ʶ�����������\n \n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@wupin *01*��Ʒʹ��ָ��    >"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@caozuo *01*����ָ��        >"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@zhandou *01*ս��ָ��        >"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@kuaijiejian *01*��ݼ�ָ��      >"
	msg = msg.."#OFFSET<X:1,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@mingling *01*����ָ��        >"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@jineng *01*����ָ��        >"
	msg = msg.."<@web *01*                                      �ٷ���ҳ: www.173uu.com>\n"
    return msg
end

function wupin(npc, player)
   local msg = "���ȣ�����F9���������ڣ���F10������������壩�򿪶�Ӧ��塣\nֱ��˫����Ʒ����Ϳ��Խ�װ��������ȥ������������Ĺ��ܵ��ߣ�˫����ʹ�øõ��ߣ�\n�����ƶ�������������������ٵ������\n \n \n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
   return msg
end

function caozuo(npc, player)
   local msg = "������ : ��Ϊ�ű����ж����ƶ����������ƶ���Ʒ�ȡ�\n����Ҽ� : ����Ϸ�����ڵ���Ҽ������ܲ�\nShift+���:ǿ�й���\nCTRL+�Ҽ� : CTRL+�Ҽ������ҿ��Բ鿴�Է���Ϣ\nAlt+��� : ��ȡ����ʬ����Ի����Ʒ\n���˫�����Ҽ����� : ʹ����Ʒ��Я��װ��\n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
   return msg
end

function zhandou(npc, player)
   local msg = "��������˵���㶼����������������й���������㲻�ܽ��й���������԰�סShift+�����ǿ�й���\n ������Щ��ȥ��¹�����ȣ�����������ǵ�ʬ���ϲɼ������Ӧ��Ʒ��\n \n \n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
   return msg
end

function mingling(npc, player)
   local msg = "�������� : ��������������ַ��ͺ�Ϊ��������\n˽�� : ������Ҽ����Ŀ��ͷ��ѡ��˽��ѡ�������/ + �������Ʒ���˽��\n���� : ��!��ͷ�������ַ��ͺ�Ϊ��������Ϣ��ɫ�ǻ�ɫ�ģ�����ʱ�����ƣ�\n��ӷ��� : ��!!��ͷ�������ַ��ͺ�Ϊֻ���͸���ӳ�Ա\n�лᷢ�� : ��!~��ͷ�������ַ��ͺ�Ϊֻ���͸��л��Ա\n���ȷ��� : ѡ����������Ⱥ��������ͺ�������Ƶ����ʾ����ÿ����Ҫ����һ��С����\n"
   msg = msg.."                                                   #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
   return msg
end

function jineng(npc, player)
   local msg = "ÿ��ְҵ�ܹ�ѧϰ���ܵĵȼ�Ҫ����7����սʿ����ѧϰ����������������ʦ����ѧϰ��������������ʿ����ѧϰ������������\n��Щ�鶼�����ڸ��ص�������򵽵ģ��ȼ�����֮�󣬻�����ѧϰ�������߼��ļ��ܡ�\n \n����Щ���޷�������򵽣���ֻ��ͨ�����ܹ����ã�\n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
   return msg
end

function kuaijiejian(npc, player)
   local msg = "#COLORCOLOR_YELLOW#0~9#COLOREND#   #OFFSET<X:2,Y:0>#����������������Է��ü��ܺ͸������ߣ�\n#COLORCOLOR_YELLOW#F1~F8#COLOREND# #OFFSET<X:3,Y:0>#�����ܰ󶨰����������趨Ϊ���ܿ�ݼ���\n#COLORCOLOR_YELLOW#F9#COLOREND#    #OFFSET<X:3,Y:0>#���򿪰�������#COLORCOLOR_YELLOW#\nF10#COLOREND#   #OFFSET<X:4,Y:0>#���򿪽�ɫ����\n#COLORCOLOR_YELLOW#F11#COLOREND#   #OFFSET<X:5,Y:0>#���򿪼��ܽ���\n#COLORCOLOR_YELLOW#F12#COLOREND#   #OFFSET<X:4,Y:0>#������Ϸ������\n#COLORCOLOR_YELLOW#~#COLOREND#     #OFFSET<X:2,Y:0>#�����ʰȡ��Ʒ\n#COLORCOLOR_YELLOW#TAB#COLOREND#   #OFFSET<X:2,Y:0>#������/�رմ��ͼ����\n#COLORCOLOR_YELLOW#PAUSE#COLOREND# #OFFSET<X:1,Y:0>#����������\n#COLORCOLOR_YELLOW#SHIFT#COLOREND# #OFFSET<X:2,Y:0>#����סǿ�ƹ���Ŀ��\n#COLORCOLOR_YELLOW#ALT#COLOREND#   #OFFSET<X:1,Y:0>#����ס��ʾ���ϵ���Ʒ\n#COLORCOLOR_YELLOW#Enter#COLOREND# #OFFSET<X:2,Y:0>#���������촰��\n#COLORCOLOR_YELLOW#�ո�#COLOREND#  #OFFSET<X:1,Y:0>#���������촰��\n#COLORCOLOR_YELLOW#/#COLOREND#     #OFFSET<X:3,Y:0>#������˽��Ƶ��\n#COLORCOLOR_YELLOW#ESC#COLOREND#   #OFFSET<X:3,Y:0>#���رյ�ǰ����\n#COLORCOLOR_YELLOW#CTRL+Q#COLOREND##OFFSET<X:1,Y:0>#����������\n#COLORCOLOR_YELLOW#CTRL+S#COLOREND##OFFSET<X:1,Y:0>#���л���ǰĿ�겢������Ŀ��\n#COLORCOLOR_YELLOW#CTRL+Z#COLOREND##OFFSET<X:1,Y:0>#��������Χ��������Һ͹���\n#COLORCOLOR_YELLOW#CTRL+B#COLOREND##OFFSET<X:1,Y:0>#����/�رա��̳ǡ�����\n#COLORCOLOR_YELLOW#CTRL+A#COLOREND#���л�����AIģʽ����Ϣ��������\n#COLORCOLOR_YELLOW#CTRL+H#COLOREND#���л�����ģʽ\n#COLORCOLOR_YELLOW#CTRL+T#COLOREND##OFFSET<X:1,Y:0>#������������촰��\n#COLORCOLOR_YELLOW#CTRL+D#COLOREND##OFFSET<X:1,Y:0>#����/�رա����顱����\n#COLORCOLOR_YELLOW#CTRL+F#COLOREND##OFFSET<X:1,Y:0>#����/�رա��罻������\n#COLORCOLOR_YELLOW#CTRL+G#COLOREND#����/�رա��лᡱ����\n#COLORCOLOR_YELLOW#CTRL+Y#COLOREND##OFFSET<X:1,Y:0>#����/�رա��ɾ͡�����\n#COLORCOLOR_YELLOW#CTRL+R#COLOREND#����/�رա����񡱽���\n#COLORCOLOR_YELLOW#CTRL+N#COLOREND#����/�رա������������\n#COLORCOLOR_YELLOW#CTRL+����Ҽ�#COLOREND#���鿴Ŀ���ɫ����\n#COLORCOLOR_YELLOW#CTRL+������#COLOREND#��ѡ��Ŀ��\n#COLORCOLOR_YELLOW#ALT+~#COLOREND# ���������촰�ڹ���\n#COLORCOLOR_YELLOW#ALT+S#COLOREND# #OFFSET<X:1,Y:0>#�������ָ���Ŀ���ɫ��������б�\n#COLORCOLOR_YELLOW#ALT+E#COLOREND# #OFFSET<X:1,Y:0>#�������ָ���Ŀ���ɫ�Ӷ������Ƴ�\n#COLORCOLOR_YELLOW#ALT+F#COLOREND# #OFFSET<X:1,Y:0>#�������ָ���Ŀ���Ϊ����\n#COLORCOLOR_YELLOW#ALT+T#COLOREND# #OFFSET<X:1,Y:0>#�������ָ���Ŀ���ɫ������������\n#COLORCOLOR_YELLOW#ALT+W#COLOREND# #OFFSET<X:1,Y:0>#�������ָ���Ŀ���ɫ�����������\n#COLORCOLOR_YELLOW#ALT+Z#COLOREND# #OFFSET<X:1,Y:0>#������/�ر��Զ����̶�\n#COLORCOLOR_YELLOW#ALT+X#COLOREND# #OFFSET<X:1,Y:0>#���˻ؽ�ɫѡ�����\n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
   return msg
end


function web(npc, player)
    local msg = "http://www.173uu.com"
    lualib:SysMsg_SendWebPage(player, msg)
    return ""
end
