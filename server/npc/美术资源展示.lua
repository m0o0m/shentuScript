local ye = 12
local weapon_t = {--�����б�
	{"˫����(����Ч)","˫����","������","��������","����ս��","��Ѫ֮��","ŭ���","ħ�����",},--սʿ����
	{"������","�ֻط���","������2","������3","��Ѫ����","������1",},--��ʦ����
	{"������","��Ȫ��","���ǽ�","�������","��Ѫ����","����ҹ��","������","�ֻص���",},--��ʿ����
	{"�⽣","�⽣2","����˫��","���Ƴ�ǹ","�����","���컭�","�������ë��","��������","�𹿰�","��ɮ����","ߦ����","˫�ڹ�","��ͷ","�˵�","���","���",},--ͨ������
}
local armor_t = {
	{"���ս��(Ů)","���ս��(��)","����ս��(Ů)","����ս��(��)","����ս��(��)","����ս��(Ů)","��Ѫ����(��)","��Ѫ����(Ů)","����ս��(��)","����ս��(Ů)","��ħս��(��)","��ħս��(Ů)","����ս��(��)","����ս��(Ů)","�Ż�ս��(��)","�Ż�ս��(Ů)","�׹�����(��)","�׹�����(Ů)","����ս��","ս������","ս������","ս������","����ս��(��)","����ս��(��)"},--սʿ�·�
	{"ʥ�鷨��(Ů)","ʥ�鷨��(��)","��������(Ů)","��������(��)","�����(��)","�����(Ů)","������(��)","������(Ů)","�����·�(Ů)","�����·�(��)","��������(��)","��������(Ů)","�������(��)","�������(Ů)","������(��)","������(Ů)","����֮��(Ů)","����֮��(��)"},--��ʦ
	{"�ǳ�����","�ǳ�����","̫������(Ů)","̫������(��)","��������(Ů)","��������(��)","�������(Ů)","�������(��)","��������(��)","��������(Ů)","�޼�����(��)","�޼�����(Ů)","׷�����(��)","׷�����(Ů)","Ȫ�����(��)","Ȫ�����(Ů)"},--��ʿ
	{"ħ�����(Ů)","ħ�����(��)","����","����(ͷ��)","����","����(ͷ��)","������װ","������װ","������װ","�����װ","�������װ","�������װ","��ɮ��װ","����֮��","����ͷ��","ħ�ʳ���","ħ��ͷ��","����ȹ","����ͷ��","����װ"},--����
}



local talk_t = {"��Ҫ�������µ������շ���Դ������ң�"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 23000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)

		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ����������������������������������#COLOREND##COLORCOLOR_SKYBLUE#�������³����Դչʾ��#COLOREND##COLORCOLOR_YELLOW#����������������������������������#COLOREND#\n\n"
	msg = msg.."#COLORCOLOR_RED#     ��������Կ������µ����������Դ����ע���Լ��İ����ռ�\n�Ƿ��㹻��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������#COLOREND#\n\n"
	msg = msg.."        #COLORCOLOR_YELLOW##OFFSET<X:0,Y:0>##IMAGE1902700037#<@zhuangbei *01*��װ����   >  #IMAGE1902700036#<@chibang *01*�����   >  #IMAGE1902700036#<@guaiwu *01*�����   >  #IMAGE1902700036#<@qita *01*��������   >#COLOREND#\n\n"
	msg = msg .. "#OFFSET<X:150,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@qingli *01*һ�����������Ʒ>    #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@baoguo *01*�������>\n"
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������#COLOREND#\n\n"
	msg = msg.."#OFFSET<X:500,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:0>#<@leave *01*���뿪��>\n"
	return msg
end


function zhuangbei(npc, player)
	msg = "\n#COLORCOLOR_GREENG#     ���������ȡ����װ�������Σ�#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������#COLOREND#\n\n"
	msg = msg.."               #IMAGE1902700036#<@armor#1 *01*����װ��   >        #IMAGE1902700036#<@shoushi *01*�����Ρ�   >        #IMAGE1902700036#<@dunpai *01*�����ơ�   >#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:500,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    return msg
end

function weapon(npc,player,t)
	local msg = "\n#COLORCOLOR_YELLOW#    ����������������������������������#COLOREND##COLORCOLOR_SKYBLUE#������Դ����չʾ��#COLOREND##COLORCOLOR_YELLOW#����������������������������������#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     ���������ȡ����������������⼴����ȡ������������������սʿ������������ȡ���е�\nսʿ��������ȡǰ����ע������ռ��Ƿ��㹻��#COLOREND#\n\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������Щ������������������Щ������������������Щ�������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��   #COLOREND##OFFSET<X:-2,Y:0>#<@ww#1 *01*��սʿ������>   #COLORCOLOR_BROWN#��  #COLOREND# <@ww#2 *01*����ʦ������>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND# <@ww#3 *01*����ʿ������>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND# <@ww#4 *01*������������>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	local yt = 0
	for i = (t - 1) * ye + 1 , ye * t do 
		local y = 135 + yt * 30
		msg = msg .."#POS<X:36>##POS<Y:"..y+8 ..">##COLORCOLOR_BROWN#��                  ��                  ��                  ��                  ��"
		if i ~= ye * t then
			msg = msg .."#POS<X:36>##POS<Y:"..y+23 ..">##COLORCOLOR_BROWN#���������������������੤�����������������੤�����������������੤������������������"
		end
		yt = yt + 1
		for j = 1 , #weapon_t do 
			local x = 36 + 120 * j
			if j ~= 4 then
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			else
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			end
			if i <= #weapon_t[j] then
				x = 78 + 120 * ( j - 1 )
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#<@get_weapon#"..weapon_t[j][i].."#"..t.." *01*"..weapon_t[j][i]..">"
			end
		end
	end
	msg = msg.."\n#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n\n"   
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:200,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@weaponAg#"..t.." *01*����һҳ��>       #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@weaponNe#"..t.." *01*����һҳ��>      <@zhuangbei *01*�����ء�>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,600)
    return ""
end

function weaponAg(npc,player,t)
	t = tonumber(t) - 1
	if t < 1 then
		t = 1
	end
	return weapon(npc,player,t)
end

function weaponNe(npc,player,t)
	t = tonumber(t)
	local k = t * ye + 1
	if weapon_t[1][k] ~= nil or weapon_t[2][k] ~= nil or weapon_t[3][k] ~= nil or weapon_t[4][k] ~= nil then
		t = t + 1
	end
	return weapon(npc,player,t)
end

function get_weapon(npc,player,key,t)
	lualib:AddItem(player,key,1,false,"����","����")
	return weapon(npc,player,t)
end

function armor(npc, player,t)
	msg = "\n#COLORCOLOR_YELLOW#    ����������������������������������#COLOREND##COLORCOLOR_SKYBLUE#������Դ��װչʾ��#COLOREND##COLORCOLOR_YELLOW#����������������������������������#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     ���������ȡ���ַ�װ��������⼴����ȡ������������������սʿ��װ��������ȡ���е�\nսʿ��װ��#COLOREND#\n\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������Щ������������������Щ������������������Щ�������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��   #COLOREND#<@fuf#1 *01*��սʿ��װ��>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND#  #OFFSET<X:-2,Y:0>#<@fuf#2 *01*����ʦ��װ��>  #COLORCOLOR_BROWN#��  #COLOREND# <@fuf#3 *01*����ʿ��װ��>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND# <@fuf#4 *01*��ͨ�÷�װ��>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	local yt = 0
	for i = (t - 1) * ye + 1 , ye * t do 
		local y = 135 + yt * 30
		msg = msg .."#POS<X:36>##POS<Y:"..y+8 ..">##COLORCOLOR_BROWN#��                  ��                  ��                  ��                  ��"
		if i ~= ye * t then
			msg = msg .."#POS<X:36>##POS<Y:"..y+23 ..">##COLORCOLOR_BROWN#���������������������੤�����������������੤�����������������੤������������������"
		end
		yt = yt + 1
		for j = 1 , #armor_t do 
			local x = 36 + 120 * j
			if j ~= 4 then
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			else
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			end
			if i <= #armor_t[j] then
				x = 78 + 120 * ( j - 1 )
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#<@get_armor#"..armor_t[j][i].."#"..t.." *01*"..armor_t[j][i]..">"
			end
		end
	end
	msg = msg.."\n#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n"    
	msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:200,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@armorAg#"..t.." *01*����һҳ��>       #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@armorNe#"..t.." *01*����һҳ��>      <@zhuangbei *01*�����ء�>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,600)
	return ""
end

function armorAg(npc,player,t)
	t = tonumber(t) - 1
	if t < 1 then
		t = 1
	end
	return armor(npc,player,t)
end

function armorNe(npc,player,t)
	t = tonumber(t)
	local k = t * ye + 1
	if armor_t[1][k] ~= nil or armor_t[2][k] ~= nil or armor_t[3][k] ~= nil or armor_t[4][k] ~= nil then
		t = t + 1
	end
	return armor(npc,player,t)
end

function get_armor(npc,player,key,t)
	lualib:AddItem(player,key,1,false,"����","����")
	return armor(npc,player,t)
end
  
function shoushi(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ����������������������������������#COLOREND##COLORCOLOR_SKYBLUE#������Դ����չʾ��#COLOREND##COLORCOLOR_YELLOW#����������������������������������#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     ������Գ�����ȡ�������Σ�#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������Щ������������������Щ������������������Щ�������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��    #COLOREND#<@ss#1 *01*����������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#  #OFFSET<X:-2,Y:0>#<@ss#2 *01*��Ѫ������>   #COLORCOLOR_BROWN#��   #COLOREND# <@ss#3 *01*����������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND# <@ss#4 *01*���������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��    #COLOREND#<@ss#5 *01*�Ͼ�������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#  #OFFSET<X:-2,Y:0>#<@ss#6 *01*����������>   #COLORCOLOR_BROWN#��   #COLOREND# <@ss#7 *01*����������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND# <@ss#8 *01*����������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��    #COLOREND#<@ss#9 *01*��ħ������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#  #OFFSET<X:-2,Y:0>#<@ss#10 *01*����������>   #COLORCOLOR_BROWN#��   #COLOREND# <@ss#11 *01*ľ��������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND# <@ss#12 *01*ˮ��������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��    #COLOREND#<@ss#13 *01*����������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#  #OFFSET<X:-2,Y:0>#<@ss#14 *01*ͭ��������>   #COLORCOLOR_BROWN#��   #COLOREND# <@ss#15 *01*����������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND# <@ss#16 *01*����������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��    #COLOREND#<@ss#17 *01*����������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND# <@ss#18 *01*�챦ʯ������>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND# <@ss#19 *01*�̱�ʯ������>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND# <@ss#20 *01*����������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��    #COLOREND#<@ss#21 *01*����������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#  #OFFSET<X:-2,Y:0>#<@ss#22 *01*����������>   #COLORCOLOR_BROWN#��   #COLOREND# <@ss#23 *01*��ʥ������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#<@ss#24 *01*ħ��������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��    #COLOREND#<@ss#25 *01*ڤ��������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#  #OFFSET<X:-2,Y:0>#<@ss#26 *01*����������>   #COLORCOLOR_BROWN#��   #COLOREND# <@ss#27 *01*���������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#<@ss#28 *01*��ҫ������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��    #COLOREND#<@ss#29 *01*���������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#  #OFFSET<X:-2,Y:0>#<@ss#30 *01*ʥӰ������>   #COLORCOLOR_BROWN#��   #COLOREND#<@ss#31 *01*����ͨ��������> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#<@ss#32 *01*����սʿ������> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��   #COLOREND#<@ss#33 *01*�����ʿ������> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#�� #COLOREND# #OFFSET<X:-2,Y:0>#<@ss#34 *01*���귨ʦ������>  #COLORCOLOR_BROWN#�� #COLOREND#<@ss#35 *01*���˽�ͨ��������> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#<@ss#36 *01*����սʿ������> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��   #COLOREND#<@ss#37 *01*����ʦ������> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#�� #COLOREND# #OFFSET<X:-2,Y:0>#<@ss#38 *01*�����ʿ������>  #COLORCOLOR_BROWN#�� #COLOREND#<@ss#39 *01*ħ��սʿ������>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#<@ss#40 *01*ħ����ʦ������> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��   #COLOREND#<@ss#41 *01*ħ����ʿ������> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#�� #COLOREND##OFFSET<X:-2,Y:0>#<@ss#42  *01*    Ԫ��������>   #COLORCOLOR_BROWN#�� #COLOREND#<@ss#43 *01*   ����������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#<@ss#44 *01*  ͨ��������>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��   #COLOREND#<@ss#45 *01* ����������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#�� #COLOREND# #OFFSET<X:-2,Y:0>#<@ss#46  *01*   ��Ѫͷ����>   #COLORCOLOR_BROWN#�� #COLOREND#                 #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��   #COLOREND#               #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��   #COLOREND#<@ss#47 *01*����������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#�� #COLOREND##OFFSET<X:-2,Y:0>#<@ss#48  *01*  ����������>    #COLORCOLOR_BROWN# �� #COLOREND#<@ss#49 *01*  ����������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># ��   #COLOREND#<@ss#50 *01*   ����������>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n\n"  
	msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������������#COLOREND#\n\n"
	msg = msg .. "#OFFSET<X:400,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@zhuangbei *01*��������һҳ��>  <@main *01*�����ء�>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,350)
	return ""
end

function dunpai(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ����������������������������������#COLOREND##COLORCOLOR_SKYBLUE#������Դ����չʾ��#COLOREND##COLORCOLOR_YELLOW#����������������������������������#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     ���������ȡ���ֶ��ƣ�#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������Щ������������������Щ������������������Щ�������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@dp#1 *01*���޶���>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#  ��   #COLOREND#  #OFFSET<X:-2,Y:0>#<@dp#2 *01*�������>  #COLORCOLOR_BROWN#   ��    #COLOREND# <@dp#3 *01*�ǳ�����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND# <@dp#4 *01*���Ķ���>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@dp#5 *01*�������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#  #OFFSET<X:-2,Y:0>#<@dp#6 *01*��������>     #COLORCOLOR_BROWN#��     #COLOREND# <@dp#7 *01*���Ͷ���>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND# <@dp#8 *01*���Ƕ���>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@dp#9 *01*ս������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#  #OFFSET<X:-2,Y:0>#<@dp#10 *01*��������>    #COLORCOLOR_BROWN# ��      #COLOREND#            #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># ��      #COLOREND#            #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n"   
	msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:450,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,350)
	return ""
end

function chibang(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ����������������������������������#COLOREND##COLORCOLOR_SKYBLUE#������Դ���չʾ��#COLOREND##COLORCOLOR_YELLOW#����������������������������������#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     ���������ȡ���ֳ��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������Щ������������������Щ������������������Щ�������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#1 *01*������  >     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># ��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#2 *01*������ >     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0># ��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#3 *01*������ >     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># ��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#4 *01*��˪�� >     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># ��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#5 *01*����� >      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># ��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#6 *01*������ >     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0># ��  #COLOREND##OFFSET<X:0,Y:0>#  <@cb#7 *01*�ɴϴ����>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># ��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#8 *01*������ >     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># ��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#9 *01*�³��9>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># ��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#10 *01*�³��10>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#11 *01*�³��11>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#12 *01*�³��12>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#13 *01*�³��13>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#14 *01*�³�� 1>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#15 *01*����֮��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#16 *01*��ʹ֮��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#17 *01*����֮��>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#18 *01*�ٹ�֮��>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#19 *01*ʥս֮��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#�� #COLOREND##OFFSET<X:0,Y:0>#   <@cb#20 *01*���������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#  <@cb#21 *01*������޳�>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#  <@cb#22 *01*��â��ʹ��>    #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#23 *01*��֮����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#24 *01*�������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ��  #COLOREND##OFFSET<X:0,Y:0>#  <@cb#25 *01*��������>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#�� #COLOREND##OFFSET<X:0,Y:0>#  <@cb#26 *01*ʥս֮����>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0># <@cb#27 *01*�ٹ�֮����>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0># <@cb#28 *01*����֮����>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:0>#  <@cb#29 *01*���֮����>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND##OFFSET<X:0,Y:0>#  <@cb#30 *01*ħ������(����)>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND##OFFSET<X:0,Y:0>#  <@cb#31 *01*ħ������(�߼�)>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND##OFFSET<X:0,Y:0>#  <@cb#32 *01*��������(����)>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ��#COLOREND##OFFSET<X:0,Y:0>#  <@cb#33 *01*��������(�߼�)>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND##OFFSET<X:0,Y:0>#  <@cb#34 *01*߱��֮��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND##OFFSET<X:0,Y:0>#  <@cb#35 *01*����֮��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND##OFFSET<X:0,Y:0>#  <@cb#36 *01*��֮����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#37 *01*��Ӱ֮��>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#38 *01*ʥ������>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#39 *01*��â����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#40 *01*���֮��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#41 *01*��˫֮��>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#42 *01*����֮��>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#43 *01*���֮��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#44 *01*����֮��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ��#COLOREND##OFFSET<X:0,Y:0>#  <@cb#45 *01*����ħ��(�߼�)>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND##OFFSET<X:0,Y:0>#  <@cb#46 *01*����ħ��(����)>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#47 *01*���֮��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#48 *01*����֮��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#49 *01*����֮��>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#�� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#50 *01*��â֮��>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#51 *01*�ǳ�֮��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#52 *01*ç��֮��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#  <@cb#53 *01*����������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#�� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#54 *01*��ħ���>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#55 *01*��Ѫħ��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#56 *01*�������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#57 *01*����ս��>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#�� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#58 *01*��ڤ����>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#  <@cb#59 *01*����������>    #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#60 *01*˫����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#61 *01*����֮��>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#62 *01*����֮��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#63 *01*���֮��>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n"   
	msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#64 *01*����֮��>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#65 *01*Ѫɫ����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#66 *01*��Ұ�ɳ�>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n" 
	msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#67 *01*����֮��>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#68 *01*��ѩ֮��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#69 *01*��˿ħ��>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n" 
	msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#70 *01*��Ȼ֮��>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#71 *01*��������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#72 *01*ʥ��֮��>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n" 

	msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#77 *01*���֮��>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#78 *01*�³��1>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#79 *01*�³��2>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n" 
 	msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#80 *01*�³��3>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#81 *01*�³��4>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#82 *01*�³��5>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n" 
 	msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#83 *01*�³��6>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#84 *01*�³��7>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#85 *01*�³��8>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n" 
   	


	msg = msg.."#COLORCOLOR_BROWN#      �� #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#73 *01*ʥ��֮��>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#74 *01*�Ϲ�֮��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#75 *01*���֮��>#COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#76 *01*����֮��>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n" 
	msg = msg .. "#OFFSET<X:400,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@acb#18 *01*һ����ȡ���г��>\n"
	msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:450,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,400)
	return ""
end

function zuoqi(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ����������������������������������#COLOREND##COLORCOLOR_SKYBLUE#������Դ����չʾ��#COLOREND##COLORCOLOR_YELLOW#����������������������������������#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     ���������ȡ�������#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������Щ������������������Щ������������������Щ�������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��       #COLOREND#<@zq#1 *01*����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND#  #OFFSET<X:-2,Y:0>#<@zq#2 *01*����>      #COLORCOLOR_BROWN#��    #COLOREND# <@zq#3 *01*��Ѫ����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND# <@zq#4 *01*�߲���>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@zq#5 *01*���״���1>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#  #OFFSET<X:-2,Y:0>#<@zq#6 *01*���״���2>    #COLORCOLOR_BROWN#��     #COLOREND# <@zq#7 *01*�����>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND# <@zq#8 *01*����Ϭţ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@zq#9 *01*��ɫʨ��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#  #OFFSET<X:-2,Y:0>#<@zq#10 *01*��ɫʨ��>     #COLORCOLOR_BROWN#��      #COLOREND# <@zq#11 *01*��¹>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND# <@zq#12 *01*�ڱ�>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��       #COLOREND#<@zq#13 *01*�Ա�>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND#  #OFFSET<X:-2,Y:0>#<@zq#14 *01*����>      #COLORCOLOR_BROWN#��    #COLOREND# <@zq#15 *01*�������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND# <@zq#16 *01*����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@zq#17 *01*����Ϭţ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#<@zq#18 *01*��β��(��)>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#<@zq#19 *01*��β��(��)>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND# <@zq#20 *01*�������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��    #COLOREND# <@zq#21 *01*��˪����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��       #COLOREND#<@zq#22 *01*����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND#<@zq#23 *01*������>      #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��    #COLOREND# <@zq#24 *01*����>         #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n"   
	msg = msg .. "#OFFSET<X:400,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@azq#18 *01*һ����ȡ��������>\n"
	msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:450,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,350)
	return ""
end

function guaiwu(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ����������������������������������#COLOREND##COLORCOLOR_SKYBLUE#������Դ����չʾ��#COLOREND##COLORCOLOR_YELLOW#����������������������������������#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     ��������������ˢ�¸��ֹ��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������Щ������������������Щ������������������Щ�������������������#COLOREND#\n"																					  
	msg = msg.."#COLORCOLOR_BROWN#      ��       #COLOREND#<@gw#1 *01*��ǧ��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��       #COLOREND#<@gw#2 *01*ǿ��>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#3 *01*ǿ��ͷĿ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#4 *01*а�񽣿�>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"	
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��       #COLOREND#<@gw#5 *01*ɽ��>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#    #OFFSET<X:-2,Y:0>#<@gw#6 *01*�Ѿ�>      #COLORCOLOR_BROWN#��     #COLOREND# <@gw#7 *01*�����>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND# <@gw#8 *01*������>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#9 *01*����Ϭţ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#10 *01*�����>     #COLORCOLOR_BROWN#��    #COLOREND# <@gw#11 *01*���״���1>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND# <@gw#12 *01*���״���2>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��      #COLOREND#<@gw#13 *01*�߲���>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#14 *01*��Ѫ����>    #COLORCOLOR_BROWN#��      #COLOREND# <@gw#15 *01*����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND# <@gw#16 *01*����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��       #COLOREND#<@gw#17 *01*��¹>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#18 *01*����Ϭţ>    #COLORCOLOR_BROWN#��      #COLOREND# <@gw#19 *01*Ϭţ>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND# <@gw#20 *01*���Ҷ���>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#21 *01*�Ŵ���ʬ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#22 *01*��ʬ����>    #COLORCOLOR_BROWN#��    #COLOREND# <@gw#23 *01*��Ѫ��ʬ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND# <@gw#24 *01*����֩��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��    #COLOREND#<@gw#25 *01*�����ٻ���>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#26 *01*��������>    #COLORCOLOR_BROWN#��    #COLOREND# <@gw#27 *01*���Ҿ���>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND# <@gw#28 *01*����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#29 *01*��ħа��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#30 *01*�ɻ�����>    #COLORCOLOR_BROWN#��    #COLOREND# <@gw#31 *01*��������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND# <@gw#32 *01*��������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#33 *01*�綾����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#34 *01*��ʥ����>    #COLORCOLOR_BROWN#��      #COLOREND# <@gw#35 *01*����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND# <@gw#36 *01*�������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#37 *01*Ѫɫ����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#38 *01*ѩ���Գ>    #COLORCOLOR_BROWN#��    #COLOREND#<@gw#39 *01*����ǯ����>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND# <@gw#40 *01*��ԭ��ʦ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#41 *01*��������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#42 *01*��ԭ����>    #COLORCOLOR_BROWN#��    #COLOREND#<@gw#43 *01*��β��(��)>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#  <@gw#44 *01*��β��(��)>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#45 *01*ѩ��ħŮ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#46 *01*ѩ�����>    #COLORCOLOR_BROWN#��    #COLOREND#<@gw#47 *01*ѩ��ʳ����>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND# <@gw#48 *01*ѩ���Գ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��    #COLOREND#<@gw#49 *01*��β��(��)>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#50 *01*������>     #COLORCOLOR_BROWN#��     #COLOREND#<@gw#51 *01*��Ǽ���>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND# <@gw#52 *01*�������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#53 *01*��˪����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#54 *01*����ͳ��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#<@gw#55 *01*ͨ����ͳ��>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#56 *01*����ħ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#57 *01*���귨ʦ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#  <@gw#58 *01*ɳ��>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#59 *01*�෢��ɮ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#60 *01*����ɮ>     #COLORCOLOR_BROWN#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��       #COLOREND#<@gw#61 *01*ɳ��>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND#  <@gw#62 *01*ɳ��������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND#<@gw#63 *01*ɳ����>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#64 *01*������ɮ>    #COLORCOLOR_BROWN#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#65 *01*������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��       #COLOREND#<@gw#66 *01*����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#67 *01*����ʯ��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#68 *01*��è��ʿ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#69 *01*¹������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��       #COLOREND#<@gw#70 *01*���>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#71 *01*�زƵ�ū>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#72 *01*ͨ������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��       #COLOREND#<@gw#73 *01*����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��       #COLOREND#<@gw#74 *01*����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#75 *01*�ر�Ů��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#76 *01*����ʬ��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#77 *01*��ü����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#78 *01*�򱦴�>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND#<@gw#79 *01*����ʿ>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��       #COLOREND#<@gw#80 *01*ħӤ>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#81 *01*����ͺӥ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��       #COLOREND#<@gw#82 *01*����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��       #COLOREND#<@gw#83 *01*����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��       #COLOREND#<@gw#84 *01*����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#85 *01*��Ѫ�޳�>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#86 *01*��������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#87 *01*ʳ��ҹ��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND#<@gw#88 *01*ʳʬ��>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#89 *01*����а��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#90 *01*�ǿ�ʯ��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#91 *01*��­��ħ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND#<@gw#92 *01*�ػ���>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#93 *01*�ɻ�ħŮ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#94 *01*�ǿ�����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#95 *01*�ǿ�����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#96 *01*ʳʬ����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#97 *01*�ǿ�ս��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND#<@gw#98 *01*Ѫ�޺�>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#99 *01*��Ѫս��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#100 *01*�ǿ�ս��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#101 *01*ɳĮ����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#102 *01*��ѪҰ��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#103 *01*��Ѫ����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#104 *01*ͨ����ħ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#105 *01*ɳĮ��ʿ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#106 *01*�ǿ�����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#107 *01*�ǿ�����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#108 *01*ľ����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#109 *01*��ԭҰ����>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#110 *01*��������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#111 *01*��ԭ����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#112 *01*�Ŵ�ľ����>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n" 
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#113 *01*���鷨ʦ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#114 *01*�������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#115 *01*�綾�׳�>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#116 *01*������ʿ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#117 *01*��Ѫ������>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#118 *01*Զ��Ů��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#119 *01*Զ��ɳ��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#120 *01*Զ������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#121 *01*Զ�Ŷ���>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#122 *01*Զ������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#123 *01*�ع���>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#124 *01*��������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n" 
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#125 *01*��������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#126 *01*����ս��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#127 *01*����ħ��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#<@gw#128 *01*����а�鷨ʦ>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n" 
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#129 *01*�Ƴ�>         #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#130 *01*��Ѫ����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#131 *01*��ɳ��>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#132 *01*��ɳ�ʳ�>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#133 *01*����๤>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#134 *01*�����͹�>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#135 *01*���깭����>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#136 *01*���궽��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n" 
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#137 *01*˫ͷ��ħ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#138 *01*����ͳ��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#139 *01*��Ѫ���>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#<@gw#140 *01*��Ѫ��ͽ>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#141 *01*��ѪͻϮ��>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#142 *01*��ѪѲ��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND#<@gw#143 *01*��Ѫ����>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND# <@gw#144 *01*����>        #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#145 *01*��ɫʨ��>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#146 *01*��ɫʨ��>    #COLORCOLOR_BROWN#��      #COLOREND# <@gw#147 *01*����>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND# <@gw#148 *01*�������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@gw#149 *01*���׾�ħ>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#150 *01*����>      #COLORCOLOR_BROWN#��      #COLOREND# <@gw#151 *01*ħ��>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#    <@gw#152 *01*����>    #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#   ��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n"  
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:450,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,500)
	return ""
end

function qita(npc,player)
		msg = "\n#COLORCOLOR_GREENG#     �������������#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������#COLOREND#\n\n"
	msg = msg.."            #COLORCOLOR_YELLOW##OFFSET<X:0,Y:0>##IMAGE1902700037#<@jineng *01*���¼��ܡ�   >            #IMAGE1902700036#<@waiguan *01*�������Ч��   >            #IMAGE1902700036#<@fabao *01*��������   >#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:500,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    return msg
end

function fabao(npc,player)
		msg = "\n#COLORCOLOR_YELLOW#    ����������������������������������#COLOREND##COLORCOLOR_SKYBLUE#������Դ����չʾ��#COLOREND##COLORCOLOR_YELLOW#����������������������������������#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     ���������ȡ���ַ�����#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������Щ������������������Щ������������������Щ�������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��    #COLOREND#<@fb#1 *01*��ɽ���ͼ>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#<@fb#2 *01*���������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#<@fb#3 *01*���������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#<@fb#4 *01*���Ͻ��«>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"	
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��     #COLOREND#<@fb#5 *01*�������>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND#   #OFFSET<X:-2,Y:0>#<@fb#6 *01*����׮>      #COLORCOLOR_BROWN#��     #COLOREND# <@fb#7 *01*�����>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND# <@fb#8 *01*�ֻ���>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��      #COLOREND#<@fb#9 *01*Ǭ����>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��    #COLOREND#  #OFFSET<X:-2,Y:0>#<@fb#10 *01*��ѻ��>      #COLORCOLOR_BROWN#��     #COLOREND# <@fb#11 *01*��ũ��>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��     #COLOREND# <@fb#12 *01*��Ԫɡ>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n"   
	msg = msg .. "#OFFSET<X:400,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@afb#18 *01*һ����ȡ���з���>\n"
	msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:450,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,350)
	return ""
end	

function waiguan(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ����������������������������������#COLOREND##COLORCOLOR_SKYBLUE#������Դ���չʾ��#COLOREND##COLORCOLOR_YELLOW#��������������������������������#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     �����������������ʾ�����Ч��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������Щ������������������Щ������������������Щ�������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��       #COLOREND#<@texiao#1 *01*8453>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND#  #OFFSET<X:-2,Y:0>#<@texiao#2 *01*8454>      #COLORCOLOR_BROWN#��      #COLOREND# <@texiao#3 *01*8455>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND# <@texiao#4 *01*8456>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��       #COLOREND#<@texiao#5 *01*8457>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND#  #OFFSET<X:-2,Y:0>#<@texiao#6 *01*8458>      #COLORCOLOR_BROWN#��      #COLOREND# <@texiao#7 *01*8459>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND# <@texiao#8 *01*8460>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��       #COLOREND#<@texiao#9 *01*8461>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND#  #OFFSET<X:-2,Y:0>#<@texiao#10 *01*8462>      #COLORCOLOR_BROWN#��      #COLOREND# <@texiao#11 *01*8463>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��      #COLOREND# <@texiao#12 *01*8464>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n"   
	msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:400,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2># <@xiaote *01*��������Ч��>  <@main *01*�����ء�>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,500)
	return ""
end

function fb(npc, player,key)
	key= tonumber(key)
	local fbao = {
					{"��ɽ���ͼ"},
					{"���������"},
					{"���������"},
					{"���Ͻ��«"},
					{"�������"},
					{"����׮"},
					{"�����"},
					{"�ֻ���"},
					{"Ǭ����"},
					{"��ѻ��"},
					{"��ũ��"},
					{"��Ԫɡ"},
}
	for i = 1, #fbao[key] do
		 if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ�������")
		else
			lualib:AddItem(player, fbao[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..fbao[key][1].."!")
			return "������["..fbao[key][1].."]!\n  \n<@fabao *01*����>\n"
		end
	end
end	

function afb(npc, player,key)
	local fbao = {
					"��ɽ���ͼ",
					"���������",
					"���������",
					"���Ͻ��«",
					"�������",
					"����׮",
					"�����",
					"�ֻ���",
					"Ǭ����",
					"��ѻ��",
					"��ũ��",
					"��Ԫɡ",
					
}
	tempstr =""
	for i = 1, #fbao do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ�������")
		else
			lualib:AddItem(player, fbao[i], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..fbao[i].."!")
			tempstr = tempstr .. ",[" .. fbao[i] .. "]"
		end
	end
	return "������" .. tempstr .. "!\n  \n<@fabao *01*����>\n"
end

function zw(npc, player,key)
	key= tonumber(key)
	local zwuqi = {
					{"˫����"},
					{"������"},
					{"��������"},
					{"����ս��"},
					{"��Ѫ֮��"},
					{"ŭ���"},
					{"ħ�����"},

}
	for i = 1, #zwuqi[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ�������")
		else
		lualib:AddItem(player, zwuqi[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..zwuqi[key][1].."!")
			return "������["..zwuqi[key][1].."]!\n  \n<@wuqi1 *01*����>\n"
		end
	end
end

function fw(npc, player,key)
	key= tonumber(key)
	local fwuqi = {
					{"������"},
					{"�ֻط���"},
					{"������2"},
					{"������3"},
					{"��Ѫ����"},
					{"������1"},
					
}
	for i = 1, #fwuqi[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ�������")
		else
		lualib:AddItem(player, fwuqi[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..fwuqi[key][1].."!")
			return "������["..fwuqi[key][1].."]!\n  \n<@wuqi1 *01*����>\n"
		end
	end
end

function dw(npc, player,key)
	key= tonumber(key)
	local dwuqi = {
					{"������"},
					{"��Ȫ��"},
					{"���ǽ�"},
					{"�������"},
					{"��Ѫ����"},
					{"����ҹ��"},
					{"������"},
					{"�ֻص���"},					
}
	for i = 1, #dwuqi[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ�������")
		else
		lualib:AddItem(player, dwuqi[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..dwuqi[key][1].."!")
			return "������["..dwuqi[key][1].."]!\n  \n<@wuqi1 *01*����>\n"
		end
	end
end

function lw(npc, player,key)
	key= tonumber(key)
	local lwuqi = {
					{"�⽣"},
					{"�⽣2"},
					{"����˫��"},
					{"���Ƴ�ǹ"},
					{"�����"},
					{"���컭�"},
					{"�������ë��"},
					{"��������"},
					{"�𹿰�"},
					{"��ɮ����"},
					{"ߦ����"},
					{"˫�ڹ�"},
					{"��ͷ"},
					{"�˵�"},
					{"���"},
					{"���"},
}
	for i = 1, #lwuqi[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ�������")
		else
		lualib:AddItem(player, lwuqi[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..lwuqi[key][1].."!")
			return "������["..lwuqi[key][1].."]!\n  \n<@wuqi1 *01*����>\n"
		end
	end
end

function ww(npc, player,key)
	key= tonumber(key)
	tempstr =""
	for i = 1, #weapon_t[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ���������")
		else
			lualib:AddItem(player, weapon_t[key][i], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..weapon_t[key][i].."!")
			tempstr = tempstr .. ",[" .. weapon_t[key][i] .. "]"
		end
	end
	return "������" .. tempstr .. "!\n  \n<@weapon#1 *01*����>\n"
end

function zf(npc, player,key)
	key= tonumber(key)
	local fuz = {
					{"���ս��(Ů)��"},
					{"���ս��(��)��"},
					{"����ս��(Ů)"},
					{"����ս��(��)"},
					{"����ս��(��)"},
					{"����ս��(Ů)"},
					{"��Ѫ����(��)"},
					{"��Ѫ����(Ů)"},
					{"����ս��(��)"},
					{"����ս��(Ů)"},
					{"��ħս��(��)"},
					{"��ħս��(Ů)"},
					{"����ս��(��)"},
					{"����ս��(Ů)"},
					{"�Ż�ս��(��)"},
					{"�Ż�ս��(Ů)"},
					{"�׹�����(��)"},
					{"�׹�����(Ů)"},
					{"����ս��"},
					{"ս������"},
					{"ս������"},
					{"ս������"},
					{"����ս��(��)"},
					{"����ս��(��)"},
}
	for i = 1, #fuz[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ���������")
		else
		lualib:AddItem(player, fuz[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..fuz[key][1].."!")
			return "������["..fuz[key][1].."]!\n  \n<@fuzhuang *01*����>\n"
		end
	end
end

function ff(npc, player,key)
	key= tonumber(key)
	local fuz = {
					{"ʥ�鷨��(Ů)��"},
					{"ʥ�鷨��(��)��"},
					{"��������(Ů)"},
					{"��������(��)"},
					{"�����(��)"},
					{"�����(Ů)"},
					{"������(��)"},
					{"������(Ů)"},
					{"�����·�(Ů)"},
					{"�����·�(��)"},
					{"��������(��)"},
					{"��������(Ů)"},
					{"�������(��)"},
					{"�������(Ů)"},
					{"������(��)"},
					{"������(Ů)"},
					{"����֮��(Ů)"},
					{"����֮��(��)"},
					
}
	for i = 1, #fuz[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ���������")
		else
		lualib:AddItem(player, fuz[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..fuz[key][1].."!")
			return "������["..fuz[key][1].."]!\n  \n<@fuzhuang *01*����>\n"
		end
	end
end

function df(npc, player,key)
	key= tonumber(key)
	local fuz = {
					{"̫������(Ů)��"},
					{"̫������(��)��"},
					{"��������(Ů)"},
					{"��������(��)"},
					{"�������(Ů)"},
					{"�������(��)"},
					{"�������(��)"},
					{"�������(Ů)"},
					{"�޼�����(��)"},
					{"�޼�����(Ů)"},
					{"׷�����(��)"},
					{"׷�����(Ů)"},
					{"Ȫ�����(��)"},
					{"Ȫ�����(Ů)"},
}
	for i = 1, #fuz[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ���������")
		else
		lualib:AddItem(player, fuz[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..fuz[key][1].."!")
			return "������["..fuz[key][1].."]!\n  \n<@fuzhuang *01*����>\n"
		end
	end
end

function lf(npc, player,key)
	key= tonumber(key)
	local fuz = {
					{"ħ�����(Ů)"},
					{"ħ�����(��)"},
					{"����"},
					{"����(ͷ��)"},
					{"����"},
					{"����(ͷ��)"},
					{"������װ"},
					{"������װ"},
					{"������װ"},
					{"�����װ"},
					{"�������װ"},
					{"�������װ"},
					{"��ɮ��װ"},
					{"����֮��"},
					{"����ͷ��"},
					{"ħ�ʳ���"},
					{"ħ��ͷ��"},
					{"����ȹ"},
					{"����ͷ��"},
					{"����װ"},
}
	for i = 1, #fuz[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ���������")
		else
		lualib:AddItem(player, fuz[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..fuz[key][1].."!")
			return "������["..fuz[key][1].."]!\n  \n<@fuzhuang *01*����>\n"
		end
	end
end

function fuf(npc, player,key)
	key= tonumber(key)
	tempstr =""
	for i = 1, #armor_t[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ���������")
		else
			lualib:AddItem(player, armor_t[key][i], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..armor_t[key][i].."!")
			tempstr = tempstr .. ",[" .. armor_t[key][i] .. "]"
		end
	end
	return "������" .. tempstr .. "!\n  \n<@armor#1 *01*����>\n"
end

function ss(npc, player,key)
	key= tonumber(key)
	local shous = {
					{"����֮ѥ","��������","��������","��������","����֮��","��������","������ָ","������ָ"},
					{"��Ѫ��ѥ","��Ѫ����","��Ѫ����","��Ѫ����","��Ѫ����","��Ѫ��ָ","��Ѫ��ָ"},
					{"�������","������ѥ","�������","��������","��������","�������","�������","��������"},
					{"���ͷ��","���֮ѥ","�������","��ջ���","��ջ���","��ս�ָ","��ս�ָ","�������"},
					{"�Ͼ�ͷ��","�Ͼ�֮ѥ","�Ͼ�����","�Ͼ�����","�Ͼ�����","�Ͼ���ָ","�Ͼ���ָ","�Ͼ�����","����ͷ��"},
					{"����֮ѥ","��������","��������","��������","������ָ","������ָ","��������"},
					{"����֮��","����֮ѥ","����֮��","����֮��","����֮��","����֮��","����֮ͫ","����֮ͫ"},
					{"����֮��","����֮ѥ","��������","������ָ","������ָ","��������","��������"},
					{"��ħ֮��","��ħ֮ѥ","��ħ����","��ħ��ָ","��ħ��ָ","��ħ����","��ħ����","��ħ����"},
					{"����֮��","����֮ѥ","��������","������ָ","������ָ","��������","��������","��������"},
					{"ľ��֮��","ľ��֮ѥ","ľ������","ľ���ָ","ľ���ָ","ľ����","ľ����","ľ������"},
					{"ˮ��֮��","ˮ��֮ѥ","ˮ������","ˮ���ָ","ˮ���ָ","ˮ����","ˮ����","ˮ������"},
					{"����֮��","����֮ѥ","��������","�����ָ","�����ָ","������","������","��������"},
					{"ͭ��֮��","ͭ��֮ѥ","ͭ������","ͭ���ָ","ͭ���ָ","ͭ����","ͭ����","ͭ������"},
					{"����֮��","����֮ѥ","��������","�����ָ","�����ָ","������","������","��������"},
					{"����֮��","����֮ѥ","��������","�����ָ","�����ָ","������","������","��������"},
					{"����֮��","����֮ѥ","��������","�����ָ","�����ָ","������","������","��������"},
					{"�챦ʯ֮��","�챦ʯ����","�챦ʯ֮ѥ","�챦ʯ����","�챦ʯ����","�챦ʯ֮��","�챦ʯ֮��","�챦ʯ����"},
					{"�̱�ʯ֮��","�̱�ʯ����","�̱�ʯ֮ѥ","�̱�ʯ����","�̱�ʯ����","�̱�ʯ֮��","�̱�ʯ֮��","�̱�ʯ����"},
					{"����֮��","����֮ѥ","��������","����֮��","����֮��","���ǻ���","���ǻ���","��������"},
					{"����֮��","����֮ѥ","��������","����֮��","����֮��","���Ȼ���","���Ȼ���","��������"},
					{"����֮��","����֮ѥ","��������","����֮��","����֮��","��������","��������","��������"},
					{"��ʥ֮��","��ʥ֮ѥ","��ʥ����","��ʥ֮��","��ʥ֮��","��ʥ֮��","��ʥ֮��","��ʥ����"},
					{"ħ��֮��","ħ��֮ѥ","ħ������","ħ���ָ","ħ���ָ","ħ����","ħ����","ħ������","ħ��ѫ��"},
					{"ڤ������","ڤ���ָ","ڤ���ָ","ڤ�绤��","ڤ�绤��","ڤ������","ڤ��ѥ��","ڤ��ѫ��","ڤ��֮��"},
					{"��������","�����ָ","�����ָ","������","������","��������","����ѥ��","����ѫ��","����֮��"},
					{"�������","����ָ","����ָ","��廤��","��廤��","�������","���ѥ��","���ѫ��","���֮��"},
					{"��ҫ����","��ҫ��ָ","��ҫ��ָ","��ҫ����","��ҫ����","��ҫ����","��ҫѥ��","��ҫѫ��","��ҫ֮��"},
					{"�������","�����ָ","�����ָ","�������","�������","�������","���ѥ��","���ѫ��","���֮��"},
					{"ʥӰ����","ʥӰ��ָ","ʥӰ��ָ","ʥӰ����","ʥӰ����","ʥӰ����","ʥӰѥ��","ʥӰѫ��","ʥӰ֮��"},
					{"����ͨ��ͷ��","����ͨ������","����ͨ�ý�ָ","����ͨ�ý�ָ","����ͨ�û���","����ͨ�û���","����ͨ������","����ͨ��ѥ��","����ͨ��ѫ��"},
					{"����սʿͷ��","����սʿ����","����սʿ��ָ","����սʿ��ָ","����սʿ����","����սʿ����","����սʿ����","����սʿѥ��","����սʿѫ��"},
					{"�����ʿͷ��","�����ʿ����","�����ʿ��ָ","�����ʿ��ָ","�����ʿ����","�����ʿ����","�����ʿ����","�����ʿѥ��","�����ʿѫ��"},
					{"���귨ʦͷ��","���귨ʦ����","���귨ʦ��ָ","���귨ʦ��ָ","���귨ʦ����","���귨ʦ����","���귨ʦ����","���귨ʦѥ��","���귨ʦѫ��"},
					{"���˽�ͷ��","���˽�����","���˽ڽ�ָ","���˽ڽ�ָ","���˽ڻ���","���˽ڻ���","���˽�����","���˽�ѥ��","���˽�ѫ��"},
					{"����սʿͷ��","����սʿ����","����սʿ��ָ","����սʿ��ָ","����սʿ����","����սʿ����","����սʿ����","����սʿѫ��","����սʿѥ��"},
					{"����ʦͷ��","����ʦ����","����ʦ��ָ","����ʦ��ָ","����ʦ����","����ʦ����","����ʦ����","����ʦѥ��","����ʦѫ��"},
					{"�����ʿͷ��","�����ʿ����","�����ʿ��ָ","�����ʿ��ָ","�����ʿ����","�����ʿ����","�����ʿ����","�����ʿѥ��","�����ʿѫ��"},
					{"ħ��սʿͷ��","ħ��սʿ����","ħ��սʿ��ָ","ħ��սʿ��ָ","ħ��սʿ����","ħ��սʿ����","ħ��սʿ����","ħ��սʿѥ��","ħ��սʿѫ��"},
					{"ħ����ʦͷ��","ħ����ʦ����","ħ����ʦ��ָ","ħ����ʦ��ָ","ħ����ʦ����","ħ����ʦ����","ħ����ʦ����","ħ����ʦѥ��","ħ����ʦѫ��"},
					{"ħ����ʿͷ��","ħ����ʿ����","ħ����ʿ��ָ","ħ����ʿ��ָ","ħ����ʿ����","ħ����ʿ����","ħ����ʿ����","ħ����ʿѥ��","ħ����ʿѫ��"},
					{"Ԫ��ͷ��","Ԫ������","Ԫ���ָ","Ԫ���ָ","Ԫ�黤��","Ԫ�黤��","Ԫ������","Ԫ��ѥ��","Ԫ��ѫ��"},
					{"����ͷ��","��������","�����ָ","�����ָ","���黤��","���黤��","��������","����ѥ��","����ѫ��"},
					{"ͨ��ͷ��","ͨ������","ͨ���ָ","ͨ���ָ","ͨ�黤��","ͨ�黤��","ͨ������","ͨ��ѥ��","ͨ��ѫ��"},
					{"����ͷ��","��������","���ǽ�ָ","���ǽ�ָ","���ǻ���","���ǻ���","��������","����ѥ��","����ѫ��"},
					{"��Ѫͷ��(��)","��Ѫͷ��(Ů)"},
					{"����ͷ��","��������","���ǽ�ָ","���ǽ�ָ","���ǻ���","���ǻ���","��������","����Ь��"},
					{"����ͷ��","��������","�����ָ","�����ָ","���軤��","���軤��","��������","����ѥ��"},
					{"����ͷ��","��������","�����ָ","�����ָ","���滤��","���滤��","��������","����ѥ��"},
					{"����ͷ��","��������","������ָ","������ָ","��������","��������","��������","����ѥ��"},
}
	tempstr =""
	for i = 1, #shous[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ���������")
		else
			lualib:AddItem(player, shous[key][i], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..shous[key][i].."!")
			tempstr = tempstr .. ",[" .. shous[key][i] .. "]"
		end
	end
	return "������" .. tempstr .. "!\n  \n<@shoushi *01*����>\n"
end

function dp(npc, player,key)
	key= tonumber(key)
	local dunp = {
					{"���޶���"},
					{"�������"},
					{"�ǳ�����"},
					{"���Ķ���"},
					{"�������"},
					{"��������"},
					{"���Ͷ���"},
					{"���Ƕ���"},
					{"ս������"},
					{"��������"},
}
	for i = 1, #dunp[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ�������")
		else
		lualib:AddItem(player, dunp[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..dunp[key][1].."!")
			return "������["..dunp[key][1].."]!\n  \n<@dunpai *01*����>\n"
		end
	end
end

function cb(npc, player,key)
	key= tonumber(key)
	local chib = {{"������"},
	{"������"},
	{"������"},
	{"��˪��"},
	{"�����"},
	{"������"},
	{"�ɴϴ����"},
	{"������"},
					{"�³��9"},
					{"�³��10"},
					{"�³��11"},
					{"�³��12"},	
					{"�³��13"},	
					{"�³��1"},
					{"����֮��"},
					{"��ħ֮��"},
					{"����֮��"},
					{"��ʹ֮��"},
					{"����֮��"},
					{"�ٹ�֮��"},
					{"ʥս֮��"},
					{"���������"},
					{"������޳�"},
					{"��â��ʹ��"},
					{"��֮����"},
					{"�������"},
					{"��������"},
					{"ʥս֮����"},
					{"�ٹ�֮����"},
					{"����֮����"},
					{"���֮����"},
					{"ħ������(����)"},
					{"ħ������(�߼�)"},
					{"��������(����)"},
					{"��������(�߼�)"},
					{"߱��֮��"},
					{"����֮��"},
					{"��֮����"},
					{"��Ӱ֮��"},
					{"ʥ������"},
					{"��â����"},
					{"���֮��"},
					{"��˫֮��"},
					{"����֮��"},
					{"���֮��"},
					{"����֮��"},
					{"����ħ��(�߼�)"},
					{"����ħ��(����)"},
					{"���֮��"},
					{"����֮��"},
					{"����֮��"},
					{"��â֮��"},
					{"�ǳ�֮��"},
					{"ç��֮��"},
					{"����������"},
					{"��ħ���"},
					{"��Ѫħ��"},
					{"�������"},
					{"����ս��"},
					{"��ڤ����"},
					{"����������"},
					{"˫����"},
					{"����֮��"},
					{"����֮��"},
					{"���֮��"},
					{"����֮��"},
					{"Ѫɫ����"},
					{"��Ұ�ɳ�"},
					{"����֮��"},
					{"��ѩ֮��"},
					{"��˿ħ��"},
					{"��Ȼ֮��"},
					{"��������"},
					{"ʥ��֮��"},
					{"ʥ��֮��"},
					{"�Ϲ�֮��"},
					{"���֮��"},
					{"����֮��"},
					{"���֮����Ч��"},
					{"�³��2"},
					{"�³��3"},
					{"�³��4"},
					{"�³��5"},
					{"�³��6"},
					{"�³��7"},
					{"�³��8"},

}
	for i = 1, #chib[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ�������")
		else
		lualib:AddItem(player, chib[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..chib[key][1].."!")
			return "������["..chib[key][1].."]!\n  \n<@chibang *01*����>\n"
		end
	end
end

function acb(npc, player,key)
	local chib = {"������",
	"������",
	"������",
	"��˪��",
	"�����",
	"������",
	"�ɴϴ����",
	"������",
	                "���֮����Ч��",
	                "�³��1",
					"�³��2",
					"�³��3",
					"�³��4",
					"�³��5",
					"�³��6",
					"�³��7",
					"�³��8",
					"�³��9",
					"�³��10",
					"�³��11",
					"�³��12",
					"����֮��",
					"Ѫɫ����",
					"��Ұ�ɳ�",
					"����֮��",
					"��ѩ֮��",
					"��˿ħ��",
					"��Ȼ֮��",
					"��������",
					"ʥ��֮��",
					"ʥ��֮��",
					"�Ϲ�֮��",
					"���֮��",
					"����֮��",
					"��ħ֮��",
					"����֮��",
					"��ʹ֮��",
					"����֮��",
					"�ٹ�֮��",
					"ʥս֮��",
					"���������",
					"������޳�",
					"��â��ʹ��",
					"��֮����",
					"�������",
					"��������",
					"ʥս֮����",
					"�ٹ�֮����",
					"����֮����",
					"���֮����",
					"ħ������(����)",
					"ħ������(�߼�)",
					"��������(����)",
					"��������(�߼�)",
					"߱��֮��",
					"����֮��",
					"��֮����",
					"��Ӱ֮��",
					"ʥ������",
					"��â����",
					"���֮��",
					"��˫֮��",
					"����֮��",
					"���֮��",
					"����֮��",
					"����ħ��(�߼�)",
					"����ħ��(����)",
					"���֮��",
					"����֮��",
					"����֮��",
					"��â֮��",
					"�ǳ�֮��",
					"ç��֮��",
					"����������",
					"��ħ���",
					"��Ѫħ��",
					"�������",
					"����ս��",
					"��ڤ����",
					"����������",
					"˫����",
					"����֮��",
					"����֮��",
					"���֮��",
					"����֮��",
}
	tempstr =""
	for i = 1, #chib do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ�������")
		else
			lualib:AddItem(player, chib[i], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..chib[i].."!")
			tempstr = tempstr .. ",[" .. chib[i] .. "]"
		end
	end
	return "������" .. tempstr .. "!\n  \n<@chibang *01*����>\n"
end

function zq(npc, player,key)
	key= tonumber(key)
	local zuoq = {
					{"����"},
					{"����"},
					{"��Ѫ����"},
					{"�߲���"},
					{"���״���1"},
					{"���״���2"},
					{"�����"},
					{"����Ϭţ"},
					{"��ɫʨ��"},
					{"��ɫʨ��"},
					{"��¹"},
					{"�ڱ�"},
					{"�Ա�"},
					{"����"},
					{"�������"},
					{"����"},
					{"����Ϭţ"},
					{"��β��(��)"},
					{"��β��(��)"},
					{"�������"},
					{"��˪����"},
					{"����"},
					{"������"},
					{"����"},
}
	for i = 1, #zuoq[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ�������")
		else
		lualib:AddItem(player, zuoq[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..zuoq[key][1].."!")
			return "������["..zuoq[key][1].."]!\n  \n<@zuoqi *01*����>\n"
		end
	end
end

function azq(npc, player,key)
	local zuoq = {
					"����",
					"����",
					"��Ѫ����",
					"�߲���",
					"���״���1",
					"���״���2",
					"�����",
					"����Ϭţ",
					"��ɫʨ��",
					"��ɫʨ��",
					"��¹",
					"�ڱ�",
					"�Ա�",
					"����",
					"�������",
					"����",
					"����Ϭţ",
					"��β��(��)",
					"��β��(��)",
					"�������",
					"��˪����",
					"����",
}
	tempstr =""
	for i = 1, #zuoq do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ�������")
		else
			lualib:AddItem(player, zuoq[i], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..zuoq[i].."!")
			tempstr = tempstr .. ",[" .. zuoq[i] .. "]"
		end
	end
	return "������" .. tempstr .. "!\n  \n<@zuoqi *01*����>\n"
end

function gw(npc, player,key)
	key= tonumber(key)
	local guaiw = {
					
					{"��ǧ��"},
					{"ǿ��"},
					{"ǿ��ͷĿ"},
					{"а�񽣿�"},
					{"ɽ��"},
					{"�Ѿ�"},
					{"�����"},
					{"������"},
					{"����Ϭţ"},
					{"�����"},
					{"���״���1"},
					{"���״���2"},
					{"�߲���"},
					{"��Ѫ����"},
					{"����"},
					{"����"},
					{"��¹"},
					{"����Ϭţ"},
					{"Ϭţ"},
					{"���Ҷ���"},
					{"�Ŵ���ʬ"},
					{"��ʬ����"},
					{"��Ѫ��ʬ"},
					{"����֩��"},
					{"�����ٻ���"},
					{"��������"},
					{"���Ҿ���"},
					{"����"},
					{"��ħа��"},
					{"�ɻ�����"},
					{"��������"},
					{"��������"},
					{"�綾����"},
					{"��ʥ����"},
					{"����"},
					{"�������"},
					{"Ѫɫ����"},
					{"ѩ���Գ"},
					{"����ǯ����"},
					{"��ԭ��ʦ"},
					{"��������"},
					{"��ԭ����"},
					{"��β��(��)"},
					{"��β��(��)"},
					{"ѩ��ħŮ"},
					{"ѩ�����"},
					{"ѩ��ʳ����"},
					{"ѩ���Գ"},
					{"��β��(��)"},
					{"������"},
					{"��Ǽ���"},
					{"�������"},
					{"��˪����"},
					{"����ͳ��"},
					{"ͨ����ͳ��"},
					{"����ħ"},
					{"���귨ʦ"},
					{"ɳ��"},
					{"�෢��ɮ"},
					{"����ɮ"},
					{"ɳ��"},
					{"ɳ��������"},
					{"ɳ����"},
					{"������ɮ"},
					{"������"},
					{"����"},
					{"����ʯ��"},
					{"��è��ʿ"},
					{"¹������"},
					{"���"},
					{"�زƵ�ū"},
					{"ͨ������"},
					{"����"},
					{"����"},
					{"�ر�Ů��"},
					{"����ʬ��"},
					{"��ü����"},
					{"�򱦴�"},
					{"����ʿ"},
					{"ħӤ"},
					{"����ͺӥ"},
					{"����"},
					{"����"},
					{"����"},
					{"��Ѫ�޳�"},
					{"��������"},
					{"ʳ��ҹ��"},
					{"ʳʬ��"},
					{"����а��"},
					{"�ǿ�ʯ��"},
					{"��­��ħ"},
					{"�ػ���"},
					{"�ɻ�ħŮ"},
					{"�ǿ�����"},
					{"�ǿ�����"},
					{"ʳʬ����"},
					{"�ǿ�ս��"},
					{"Ѫ�޺�"},
					{"��Ѫս��"},
					{"�ǿ�ս��"},
					{"ɳĮ����"},
					{"��ѪҰ��"},
					{"��Ѫ����"},
					{"ͨ����ħ"},
					{"ɳĮ��ʿ"},
					{"�ǿ�����"},
					{"�ǿ�����"},
					{"ľ����"},
					{"��ԭҰ����"},
					{"��������"},
					{"��ԭ����"},
					{"���鷨ʦ"},
					{"�������"},
					{"�綾�׳�"},
					{"�Ŵ�ľ����"},
					{"������ʿ"},
					{"��Ѫ������"},
					{"Զ��Ů��"},
					{"Զ��ɳ��"},
					{"Զ������"},
					{"Զ�Ŷ���"},
					{"Զ������"},
					{"�ع���"},
					{"��������"},
					{"��������"},
					{"����ս��"},
					{"����ħ��"},
					{"����а�鷨ʦ"},
					{"�Ƴ�"},
					{"��Ѫ����"},
					{"��ɳ��"},
					{"��ɳ�ʳ�"},
					{"����๤"},
					{"�����͹�"},
					{"���깭����"},
					{"���궽��"},
					{"˫ͷ��ħ"},
					{"����ͳ��"},
					{"��Ѫ���"},
					{"��Ѫ��ͽ"},
					{"��ѪͻϮ��"},
					{"��ѪѲ��"},
					{"��Ѫ����"},
					{"����"},
					{"��ɫʨ��"},
					{"��ɫʨ��"},
					{"����"},
					{"�������"},
					{"���׾�ħ"},
					{"����"},
					{"ħ��"},
					{"����"},					
}
	for i = 1, #guaiw[key] do
		local x, y, strMap = lualib:X(player), lualib:Y(player), lualib:MapGuid(player);
		local servant = lualib:Map_GenSingleMonster(strMap, x, y, 2, lualib:GenRandom(0, 7), guaiw[key][1], false);
		assert(servant ~= "", "ϵͳ����:ˢ��ʧ��,�Ƿ����û�г�����?");
		lualib:AddTimer(servant, 1, 30000, -1, "del_monster")
		lualib:SysWarnMsg(player, "�������ˢ���ˡ�".. guaiw[key][1] .."��!������30�����ʧ��")
	end
	return ""
end

function del_monster(servant)
	if servant ~= "" then
		lualib:Monster_Remove(servant)
	end
end

function qingli(npc, player)
	if lualib:ClearBag(player, false, true, false, false, "����Ʒ", "������") == true then
		lualib:SysWarnMsg(player, "����������ϵİ�����")
	end
	return ""
end

function baoguo(npc, player)
	if lualib:GetBagFree(player) < 1 then
		lualib:SysWarnMsg(player, "��İ�������")
	else
	lualib:AddItem(player, "Ǭ����(40��)", 1, false, "", player)
		lualib:SysWarnMsg(player, "������".."Ǭ����(40��)".."!")
		return "������[".."Ǭ����(40��)".."]!\n  \n<@main *01*����>\n"
	end
end

function jineng(npc,player)
	local jineng1 = {
				"����ն1��",
				"����׵�1��",
				"����һ��1��",
				"��������1��",
				"����ŭ��ն1��",
				"��������1��",
				"�������1��",
				"�������1��",
				"ŭ������1��",
				"����ն1��",
				"������1��",
				"���з���1��",
				"˲��ն1��",
				"������1��",
				"�����1��",
				"����1��",
				"������1��",
				"׷�ս���",
	}
	for i = 1, #jineng1 do
		if lualib:HasSkill(player,jineng1[i],true) == true then
			lualib:SysWarnMsg(player, "���Ѿ�ӵ�С�"..jineng1[i].."��������ܣ��޷��ٴ�ѧϰ��")
		else
		lualib:AddSkill(player,jineng1[i])
			lualib:SysWarnMsg(player, "��ѧ���˼��ܣ�"..jineng1[i])
		end
	end
end

function texiao(npc,player,leixing)
	leixing = tonumber(leixing)
	local texiao1 = {
					8453,
					8454,
					8455,
					8456,
					8457,
					8458,
					8459,
					8460,
					8461,
					8462,
					8463,
					8464,
}
--	for i = 1, #texiao1 do
		lualib:Player_AddEffect(player,2, texiao1[leixing])
		lualib:SysWarnMsg(player, "������"..texiao1[leixing].."��������Ч!")
--	end
     return ""
end

function xiaote(npc,player,leixing)
	lualib:Player_AddEffect(player,2,0)
	lualib:SysWarnMsg(player, "����������ϵ������Ч!")
end