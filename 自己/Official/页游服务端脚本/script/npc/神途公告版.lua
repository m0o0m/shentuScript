function main(npc,player)
	local msg = "     ���ˣ��Ҷ������������ָ�ƣ����Ը�����һЩ��Ҫ���鱨�������������ˣ����а�������\n"
    msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:6>#        #IMAGE<ID:1902700017>#<@digong *01*���ع����ܡ�>            #IMAGE<ID:1902700017>#<@huodong *01*������ܡ�>\n \n"
	msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_RED#��#COLOREND#���ع�����Ϊ����̽�մ�ֵ�ͼ\n"
	msg = msg.."#COLORCOLOR_RED#��#COLOREND#�������Ϊ��Ϸ�и��ֻ�����ݺ͹����淨��\n"
    msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                                 #IMAGE<ID:1902700019>#<@likai *01*���뿪��>\n"
	return msg
end

function likai(npc,player)
	return ""
end

function digong(npc,player)
	local msg = "#COLORCOLOR_BROWN#������������������鿴����Ҫ�˽�ĵع�����������������#COLOREND#\n \n"
	msg = msg.." #OFFSET<X:0,Y:-8>##COLORCOLOR_SKYBLUE#���� �� ڣ��#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_ORANGE#�ʺϵȼ�15-20��̽��#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_ORANGE#���꣺��ɽ��[459:94#OFFSET<X:2,Y:0>#]#COLOREND#\n"
	msg = msg.." #COLORCOLOR_SKYBLUE#�������󶴡�#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_ORANGE#�ʺϵȼ�20-25��̽��#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_ORANGE#���꣺��ɽ��[ 19:91 ]#COLOREND#\n"
	msg = msg.." #COLORCOLOR_SKYBLUE#���� · �ǡ�#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_ORANGE#�ʺϵȼ�25-35��̽��#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_ORANGE#���꣺��·��[ 16:54 #OFFSET<X:-1,Y:0>#]#COLOREND#\n"
	msg = msg.." #COLORCOLOR_SKYBLUE#����ɽ��Ѩ��#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_ORANGE#�ʺϵȼ�25-35��̽��#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_ORANGE#���꣺������[ 30:47 #OFFSET<X:-2,Y:0>#]#COLOREND#\n"
	msg = msg.." #COLORCOLOR_SKYBLUE#���� �� ��#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_ORANGE#�ʺϵȼ�30-40��̽��#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_ORANGE#���꣺������[210:197]#COLOREND#\n"
	msg = msg.." #COLORCOLOR_SKYBLUE#�����а��#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_ORANGE#�ʺϵȼ�35-45��̽��#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_ORANGE#���꣺������[518:23 #OFFSET<X:-1,Y:0>#]#COLOREND#\n"
	msg = msg.."                             	                  #IMAGE<ID:1902700019>#<@main *01*�����ء�>\n"

return msg
end

function huodong(npc,player)
	local msg = "           #COLORCOLOR_BROWN#�d�d�d��#COLOREND##COLORCOLOR_RED#��ѡ������Ҫ�˽�Ļ#COLOREND##COLORCOLOR_BROWN#���d�d�d#COLOREND#\n \n"
        msg = msg.."#COLORCOLOR_RED#��#COLOREND#<@chuji *01*��  ��  ��  ��>    #COLORCOLOR_RED#��#COLOREND#<@piaoliu *01*�� Ư �� �� ��>    #COLORCOLOR_RED#��#COLOREND#<@yinling *01*�� �� �� �� ��>\n"
        msg = msg.."#COLORCOLOR_RED#��#COLOREND#<@suomo *01*�� �� ħ �� ��>    #COLORCOLOR_RED#��#COLOREND#<@fengmo *01*�� �� ħ �� ��>    #COLORCOLOR_RED#��#COLOREND#<@wudouchang *01*�� �� �� �� ��>\n"
        msg = msg.."#COLORCOLOR_RED#��#COLOREND#<@zhongji *01*�� �м����� ��>    #OFFSET<X:-1,Y:0>##COLORCOLOR_RED#��#COLOREND#<@kexing *01*�� ������ս ��>    #OFFSET<X:-1,Y:0##COLORCOLOR_RED#��#COLOREND#<@gumuduobao *01*�� ��Ĺ�ᱦ ��>\n"
        msg = msg.."#COLORCOLOR_RED#��#COLOREND#<@duobaoyingxiong *01*�� �ᱦӢ�� ��>    #OFFSET<X:-1,Y:0>##COLORCOLOR_RED#��#COLOREND#<@wangling *01*�� ������� ��>\n"
        msg = msg.."#COLORCOLOR_RED#��#COLOREND#<@tianxiadiyi *01*�����µ�һս��>    #OFFSET<X:-2,Y:0>##COLORCOLOR_RED#��#COLOREND#<@ditianchongtian *01*���������ض���>\n"
	msg = msg.."                             	                  #IMAGE<ID:1902700019>#<@main *01*�����ء�>\n"
	return msg
end


function jiangjunzhong(npc,player)
	local msg = "#COLORCOLOR_BROWN# ������������������������������ڣ����������������������#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_GOLD#�X���������������[#COLOREND#��������#COLORCOLOR_ORANGE#��·���졡��;ңң#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#��#COLOREND#����������ڣ��#COLORCOLOR_GOLD#��#COLOREND#��������#COLORCOLOR_ORANGE#��ش�½  �������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#�^���������������a#COLOREND#��������#COLORCOLOR_ORANGE#�������ѡ���Ѱ���#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BLUE#�����������������ש�����������������������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND# #COLORCOLOR_GREENG#��#COLOREND##COLORCOLOR_GOLD#�ʺϵȼ�#COLOREND##COLORCOLOR_GREENG#��#COLOREND# #COLORCOLOR_BLUE#��#COLOREND#       #COLORCOLOR_GOLD#����15-20�����̽��#COLOREND#          #COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�ǩ��������������贈����������������������������������\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND# #COLORCOLOR_GREENG#��#COLOREND##COLORCOLOR_GOLD#��������#COLOREND##COLORCOLOR_GREENG#��#COLOREND# #COLORCOLOR_BLUE#��#COLOREND#       #COLORCOLOR_GOLD#�ɴ���ɽ��[459:94]����#COLOREND#       #COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�����������������ߩ�����������������������������������#COLOREND#\n"
	msg = msg.."                                             #IMAGE<ID:1902700019>#<@digong *01*�����ء�>\n"
	return msg
end

function jiangshimu(npc,player)
       local msg = "#COLORCOLOR_GOLD#�X���������������������[#COLOREND#����#COLORCOLOR_ORANGE#��·���졡��;ңң#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�g�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�g�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�g�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�g#COLOREND#����#COLORCOLOR_ORANGE#��ش�½  �������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#�^���������������������a#COLOREND#����#COLORCOLOR_ORANGE#�������ѡ���Ѱ���#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�����������������ש�����������������������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND# #COLORCOLOR_GREENG#��#COLOREND##COLORCOLOR_GOLD#�ʺϵȼ�#COLOREND##COLORCOLOR_GREENG#��#COLOREND# #COLORCOLOR_BLUE#��#COLOREND#       #COLORCOLOR_GOLD#����20-25�����̽��#COLOREND#          #COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�ǩ��������������贈����������������������������������\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND# #COLORCOLOR_GREENG#��#COLOREND##COLORCOLOR_GOLD#��������#COLOREND##COLORCOLOR_GREENG#��#COLOREND# #COLORCOLOR_BLUE#��#COLOREND#       #COLORCOLOR_GOLD#�ɴ���ɽ��[19:91]����#COLOREND#         #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�����������������ߩ�����������������������������������#COLOREND#\n"
	msg = msg.."                                            #IMAGE<ID:1902700019>#<@digong *01*�����ء�>\n"
	return msg
end

function yaoshan(npc,player)
       local msg = "#COLORCOLOR_GOLD#�X���������������������[#COLOREND#����#COLORCOLOR_ORANGE#��·���졡��;ңң#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�g�d#COLOREND##COLORCOLOR_RED#ɽ#COLOREND##COLORCOLOR_GOLD#�g�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�g�d#COLOREND##COLORCOLOR_RED#Ѩ#COLOREND##COLORCOLOR_GOLD#�g#COLOREND#����#COLORCOLOR_ORANGE#��ش�½  �������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#�^���������������������a#COLOREND#����#COLORCOLOR_ORANGE#�������ѡ���Ѱ���#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�����������������ש�����������������������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND# #COLORCOLOR_GREENG#��#COLOREND##COLORCOLOR_GOLD#�ʺϵȼ�#COLOREND##COLORCOLOR_GREENG#��#COLOREND# #COLORCOLOR_BLUE#��#COLOREND#       #COLORCOLOR_GOLD#����25-35�����̽��#COLOREND#          #COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�ǩ��������������贈����������������������������������\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND# #COLORCOLOR_GREENG#��#COLOREND##COLORCOLOR_GOLD#��������#COLOREND##COLORCOLOR_GREENG#��#COLOREND# #COLORCOLOR_BLUE#��#COLOREND#       #COLORCOLOR_GOLD#�ɴ�����[30:47]����#COLOREND#          #OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�����������������ߩ�����������������������������������#COLOREND#\n"
	msg = msg.."                                             #IMAGE<ID:1902700019>#<@digong *01*�����ء�>\n"
	return msg
end

function juelucheng(npc,player)
       local msg = "#COLORCOLOR_GOLD#�X���������������[#COLOREND#��������#COLORCOLOR_ORANGE#��·���졡��;ңң#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�g�d#COLOREND##COLORCOLOR_RED#·#COLOREND##COLORCOLOR_GOLD#�g�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�g#COLOREND#��������#COLORCOLOR_ORANGE#��ش�½  �������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#�^���������������a#COLOREND#��������#COLORCOLOR_ORANGE#�������ѡ���Ѱ���#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�����������������ש�����������������������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND# #COLORCOLOR_GREENG#��#COLOREND##COLORCOLOR_GOLD#�ʺϵȼ�#COLOREND##COLORCOLOR_GREENG#��#COLOREND# #COLORCOLOR_BLUE#��#COLOREND#       #COLORCOLOR_GOLD#����25-35�����̽��#COLOREND#          #COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�ǩ��������������贈����������������������������������\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND# #COLORCOLOR_GREENG#��#COLOREND##COLORCOLOR_GOLD#��������#COLOREND##COLORCOLOR_GREENG#��#COLOREND# #COLORCOLOR_BLUE#��#COLOREND#       #COLORCOLOR_GOLD#�ɴӾ�·��[16:54]����#COLOREND#        #OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�����������������ߩ�����������������������������������#COLOREND#\n"
	msg = msg.."                                             #IMAGE<ID:1902700019>#<@digong *01*�����ء�>\n"
	return msg
end

function tianhuangzhen(npc,player)
       local msg = "#COLORCOLOR_GOLD#�X���������������[#COLOREND#��������#COLORCOLOR_ORANGE#��·���졡��;ңң#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�g�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�g�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�g#COLOREND#��������#COLORCOLOR_ORANGE#��ش�½  �������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#�^���������������a#COLOREND#��������#COLORCOLOR_ORANGE#�������ѡ���Ѱ���#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�����������������ש�����������������������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND# #COLORCOLOR_GREENG#��#COLOREND##COLORCOLOR_GOLD#�ʺϵȼ�#COLOREND##COLORCOLOR_GREENG#��#COLOREND# #COLORCOLOR_BLUE#��#COLOREND#       #COLORCOLOR_GOLD#����30-40�����̽��#COLOREND#          #OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�ǩ��������������贈����������������������������������\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND# #COLORCOLOR_GREENG#��#COLOREND##COLORCOLOR_GOLD#��������#COLOREND##COLORCOLOR_GREENG#��#COLOREND# #COLORCOLOR_BLUE#��#COLOREND#       #COLORCOLOR_GOLD#�ɴ�����[210:197]����#COLOREND#         #COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�����������������ߩ�����������������������������������#COLOREND#\n"
	msg = msg.."                                             #IMAGE<ID:1902700019>#<@digong *01*�����ء�>\n"
	return msg
end

function xiemiao(npc,player)
       local msg = "#COLORCOLOR_GOLD#�X���������������������[#COLOREND#����#COLORCOLOR_ORANGE#��·���졡��;ңң#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�g�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�g�d#COLOREND##COLORCOLOR_RED#а#COLOREND##COLORCOLOR_GOLD#�g�d#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#�g#COLOREND#����#COLORCOLOR_ORANGE#��ش�½  �������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#�^���������������������a#COLOREND#����#COLORCOLOR_ORANGE#�������ѡ���Ѱ���#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�����������������ש�����������������������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND# #COLORCOLOR_GREENG#��#COLOREND##COLORCOLOR_GOLD#�ʺϵȼ�#COLOREND##COLORCOLOR_GREENG#��#COLOREND# #COLORCOLOR_BLUE#��#COLOREND#       #COLORCOLOR_GOLD#����35-45�����̽��#COLOREND#          #OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�ǩ��������������贈����������������������������������\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND# #COLORCOLOR_GREENG#��#COLOREND##COLORCOLOR_GOLD#��������#COLOREND##COLORCOLOR_GREENG#��#COLOREND# #COLORCOLOR_BLUE#��#COLOREND#       #COLORCOLOR_GOLD#�ɴ�����[518:23]����#COLOREND#         #OFFSET<X:4,Y:0>##COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�����������������ߩ�����������������������������������#COLOREND#\n"
	msg = msg.."                                             #IMAGE<ID:1902700019>#<@digong *01*�����ء�>\n"
	return msg
end

function tianxiadiyi(npc,player)
	local msg = "#COLORCOLOR_BROWN#�������������������������ϸ���ܩ���������������������#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#���µ�һս:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#��һ��������ɽ�Ƕ���ٰ�һ���������Ӷ��������ǿʵ����\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#���֣�����ͨ����ɽ��[330:270]-��ݽ�ͷ������\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*�����ء�>\n"
	return msg
end

function piaoliu(npc,player)
	local msg = "#COLORCOLOR_BROWN#�������������������������ϸ���ܩ���������������������#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#Ư �� ��:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#ÿ��13:00:00��19:00:00��21:00:00���������ͨ������[240:220]\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#ͨ��ʦ������ÿ�λ������Сʱ��\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*�����ء�>\n"

	return msg
end

function chuji(npc,player)
	local msg = "#COLORCOLOR_BROWN#�������������������������ϸ���ܩ���������������������#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#��  ��:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#16-45�������ÿ����Բ���3���������񣬵�1����ѽ��룬֮\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#����Ҫ����һ��������ͨ��֤�ſɽ��룬�ɴ�����[232:215]-\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#������ͷ���롣\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                           #OFFSET<X:0,Y:-4>##IMAGE<ID:1902700019># <@huodong *01*�����ء�>\n"

	return msg
end

function zhongji(npc,player)
	local msg = "#COLORCOLOR_BROWN#�������������������������ϸ���ܩ���������������������#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#�м�����:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#26-35�������ÿ����Բ���һ���������񣬿ɴ�����[228:219]\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#�м�������ͷ���롣\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*�����ء�>\n"

	return msg
end



function ditianchongtian(npc,player)
	local msg = "#COLORCOLOR_BROWN#�������������������������ϸ���ܩ���������������������#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#���������ض�:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#ÿ��15:00:00��16:30:00��22:00:00��23:30:00��������ɴ�����\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#[237:215]-��ͯ��С�����롣\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*�����ء�>\n"

	return msg
end


function kexing(npc,player)
	local msg = "#COLORCOLOR_BROWN#�������������������������ϸ���ܩ���������������������#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#������ս:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#���ÿ����Բ���һ�ο�����ս���ɴ�����[227:216]���������\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#սNPC���롣\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*�����ء�>\n"

	return msg
end
-----
function wangling(npc,player)
	local msg = "#COLORCOLOR_BROWN#�������������������������ϸ���ܩ���������������������#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#�������:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#�������ÿ��14:30~15:00��20:00~20:30���ţ���ҿɴ�����\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#[239:216]Ѱ�ҽ���ʹ�߲�����\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*�����ء�>\n"

	return msg
end

function fengmo(npc,player)
	local msg = "#COLORCOLOR_BROWN#�������������������������ϸ���ܩ���������������������#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#�� ħ ��:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#ÿ����Բ���3�η�ħ�󣬿ɴ�����[231:239]Ѱ�ҷ�ħ����·��\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#���룬�������ұ���ǼǴ��ڵ���25��������һ����ħ���ơ�\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*�����ء�>\n"

	return msg
end

function yinling(npc,player)
	local msg = "#COLORCOLOR_BROWN#�������������������������ϸ���ܩ���������������������#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#�� �� ��:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#ÿ��14:00~14:30��20:30~21:00��������ɴ�������������\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#[242:224]�����ͼ��\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*�����ء�>\n"

	return msg
end

function suomo(npc,player)
	local msg = "#COLORCOLOR_BROWN#�������������������������ϸ���ܩ���������������������#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#�� ħ ��:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#ȫ�쿪�ţ��ɴ�������ħ��������[228:239]�����ͼ̽�գ�����\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#ÿ����Ҫ����50000��ҡ�\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*�����ء�>\n"

	return msg
end

function gumuduobao(npc,player)
	local msg = "#COLORCOLOR_BROWN#�������������������������ϸ���ܩ���������������������#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#��Ĺ�ᱦ:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#ÿ�ܶ������ġ�����  17:00~17:30��21:30~22:00��������ɴ�\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#���ǹ�Ĺ����[222:224]�����ͼ̽�ա�\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*�����ء�>\n"

	return msg
end

function duobaoyingxiong(npc,player)
	local msg = "#COLORCOLOR_BROWN#�������������������������ϸ���ܩ���������������������#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#�ᱦӢ��:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#ÿ��һ������������ 17:00~17:30��21:30~22:00��������ɴ���\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#�ǶᱦӢ��[234:238]�����ͼ̽�ա�\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*�����ء�>\n"

	return msg
end

function wudouchang(npc,player)
	local msg = "#COLORCOLOR_BROWN#�������������������������ϸ���ܩ���������������������#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#�� �� ��:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#ÿ�� 13:30��15:30��16:30��19:30��21:00:00�������35��������\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#��ͨ����ɽ���䶷��ʹ��[242,309]�����ͼ������ϵͳ��ʾ����\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#��ֱ�ӽ���!\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                          #OFFSET<X:0,Y:-4># #IMAGE<ID:1902700019># <@huodong *01*�����ء�>\n"

	return msg
end