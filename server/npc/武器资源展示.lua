local ye = 12
local jewelry_t = {--װ���б�  --Ҫ�����µĵ��ߣ�����ǰ�濪ʼ�� 
	{"���﷨��","����ս��","������","�������","����ս��","��������","ŭն","����֮��","Ѫ��","���ƽ�","����Ȩ��","�þ�֮��","ħ��","����","��֮��","��˪","��ħ","����","��ڤ����","����˫��(����)","����˫��(�м�)","����˫��(�߼�)","���ֳ���","����Ȩ��","����Ȩ��","��������","ڤ��֮��","���֮��",},--����
	{"������","ŭ��","���·���","���콣","��Ȫ��","���ǽ�","������","������","�ֻط���","������","˫����","˫����(����Ч)","��Ѫ֮��","��Ѫ����","��Ѫ����","������1","������2","������3","����","����","����","�˻�","��ͭ��","�̽�","����","ľ��","�Ȼ귨��","����","��ң��","����","�������","��������","�����з�","������Ӱ","��ڤ����","�㺮����","����","��ʤ����","������","������",},--����
	{"��ȸ����","����","�����","�⽣","����","�����","·��","����","����","����","ƽ�׹�","��ͷ","˫�ڹ�","��ͷ","���","�˵�","���","ߦ����",},--����
	{"����˫��","���Ƴ�ǹ","�����","��������","�𹿰�","��ɮ����","����","��Ѫ����","˫�渫","������","����֮��","Ѫħ��","���뷨��","��ħ��","����֮��","��ͷ��","ͨ�����","Ȩ��","���","��������","����ҹ��","������",},--����
	{"��ħ֮��","��Ѫ����","������","����֮��","�׻�֮��","����֮��","���·���","��â����","���Ƿ���","���귨��","�߲��з�","��������","�ֻص���","ذ��","��ľ��","��ͭ��","���","�ƻ�","ն��","����","������","�޼���",},--����
	{"�ɵ��콣","����","��˵���","���׵���","�߲��е�","�����Ӣ","������","��������","�������ë��","�ƽ������","�ƽ�����","�ƽ���","����","��Ѫħ��","��ɲ","����","�⽣","���컭�","�߲���ս","��ս��","��Ԩ��","����֮��",},--����
	{"ĩ��","��Ӱ��","�ƽ���Ӱ��","�ƽ������","��������","߱��ն��","߱��ն��","��������","����˫��","����֮׶","��֮��Ӱ","��������","���Ƿ���","����","�������","��������","�򽣹���","ʱ�յ���","���","����","������","��������",},--����
	{"Ѫ������","�����þ�","��������","����֮ն","�������","���ݸֵ�","�ƽ���","������","������","������","ﳽ�ն��","��������","������ն","ŭħ����","����ħ��","����ħ��","����ħ��","��������","����ľ��","����","ŭ���","ħ�����",},--����
}

function main(npc, player)
	msg = "\n#COLORCOLOR_GREENG#     ���������ȡ�����Σ�#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ��������������������������������������������������������������������������������������#COLOREND#\n\n"
	msg = msg.."                       #COLORCOLOR_YELLOW##OFFSET<X:0,Y:0>##IMAGE1902700037#<@jewelry#1 *01*���¸���װ����   >  #COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ��������������������������������������������������������������������������������������#COLOREND#\n"
--	msg = msg .. "#OFFSET<X:500,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    return msg
end

function jewelry(npc,player,t)
	local msg = "\n#COLORCOLOR_YELLOW#        ��������������������������������������������������#COLOREND##COLORCOLOR_SKYBLUE#������Դ����չʾ��#COLOREND##COLORCOLOR_YELLOW#����������������������������������������������#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#    ���������ȡ����װ������ߣ�������⼴����ȡװ������������װ���ࡹ������ȡ���е�װ������ȡǰ����ע������ռ��Ƿ��㹻��#COLOREND#\n\n\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������Щ������������Щ������������Щ������������Щ������������Щ������������Щ������������Щ�������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#1 *01*��������> #COLORCOLOR_BROWN# ��#COLOREND# <@ww#2 *01*��������> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#  �� #COLOREND# <@ww#3 *01*��������>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#�� #COLOREND# <@ww#4 *01*��������>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#5 *01*��������>  #COLORCOLOR_BROWN#��  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#6 *01*��������> #COLORCOLOR_BROWN# ��  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#7 *01*��������> #COLORCOLOR_BROWN# ��  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#7 *01*��������> #COLORCOLOR_BROWN##OFFSET<X:-	2,Y:0># ��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������੤�����������੤�����������੤�����������੤�����������੤�����������੤�����������੤������������#COLOREND#\n"
	local yt = 0
	for i = (t - 1) * ye + 1 , ye * t do 
		local y = 135 + yt * 30
		msg = msg .."#POS<X:36>##POS<Y:"..y+8 ..">##COLORCOLOR_BROWN#��            ��            ��            ��            ��            ��            ��            ��            ��"
		if i ~= ye * t then
			msg = msg .."#POS<X:36>##POS<Y:"..y+23 ..">##COLORCOLOR_BROWN#���������������੤�����������੤�����������੤�����������੤�����������੤�����������੤�����������੤������������"
		end
		yt = yt + 1
		for j = 1 , #jewelry_t do 
			local x = 16 + 90 * j
			if j ~= 8 then
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			else
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			end
			if i <= #jewelry_t[j] then
				x = 65 + 83 * ( j - 1 )
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#<@get_jewelry#"..jewelry_t[j][i].."#"..t.." *01*"..jewelry_t[j][i]..">"
			end
		end
	end
	msg = msg.."\n#COLORCOLOR_BROWN#      ���������������ة������������ة������������ة������������ة������������ة������������ة������������������������ة�#COLOREND#\n\n"   
    msg = msg.."#COLORCOLOR_BROWN#      ������������������������������������������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:200,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@jewelryAg#"..t.." *01*����һҳ��>       #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@jewelryNe#"..t.." *01*����һҳ��>      <@main *01*�����ء�>"
	lualib:NPCTalkDetailEx(npc,player,msg,818,800)
    return ""
end

function jewelryAg(npc,player,t)
	t = tonumber(t) - 1
	if t < 1 then
		t = 1
	end
	return jewelry(npc,player,t)
end

function jewelryNe(npc,player,t)
	t = tonumber(t)
	local k = t * ye + 1
	if jewelry_t[1][k] ~= nil or jewelry_t[2][k] ~= nil or jewelry_t[3][k] ~= nil or jewelry_t[4][k] ~= nil or jewelry_t[6][k] ~= nil or jewelry_t[6][k] ~= nil or jewelry_t[7][k] ~= nil or jewelry_t[8][k] ~= nil then
		t = t + 1
	end
	return jewelry(npc,player,t)
end

function ww(npc, player,key)
	key= tonumber(key)
	tempstr =""
	for i = 1, #jewelry_t[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ���������")
		else
			lualib:AddItem(player, jewelry_t[key][i], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..jewelry_t[key][i].."!")
			tempstr = tempstr .. ",[" .. jewelry_t[key][i] .. "]"
		end
	end
	return "������" .. tempstr .. "!\n  \n<@jewelry#1 *01*����>\n"
end

function get_jewelry(npc,player,key,t)
	lualib:AddItem(player,key,1,false,"װ��","װ��")
	return jewelry(npc,player,t)
end