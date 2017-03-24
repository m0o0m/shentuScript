local ye = 12
local monster_t = {--�����б�
        {"�ͼ��ڳ�","�����ڳ�","�м��ڳ�","�߼��ڳ�","�����ڳ�","Ǯ����","����Ů��","������","��������","������","���Ҿ�ħ","�����ܹ�","������ͳ��","�Ʒ�Ů��","����ħ��","��Ľ���","��ħ����","ħ������",},--����չʾ�б� --Ҫ�����µĹ������ǰ�濪ʼ�� 
        {"֩����","���ñ�","�ٻ���","������ʦ","Զ�ž�Գ","���ߴ�ʦ","ħ����","ʬ��","Ѫɲħ��","��ҹŮ��","���ħ","��ţħ��",}, --����չʾ
        {"������","����սʿ","ʿ����ʦ","��ħ��","ǧ��ն","ţͷ������","��ҹħ��","����","����ħ","�°�Ұ��","��ţħ����",}, --����չʾ
        {"������","���ü���","���ᷨʦ","��è����","Ыβ��","�¾�ǧ��","������ʦ","����","а��ͳ��","��ɳ�ȳ�","������",}, --����չʾ

	
}
function main(npc, player)
	msg = "\n#COLORCOLOR_GREENG#     ������Բ鿴���¹�����Դ��#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������#COLOREND#\n\n"
	msg = msg.."            #COLORCOLOR_YELLOW##OFFSET<X:0,Y:0>##IMAGE1902700037#<@monster#1 *01*������չʾ��   >  \n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:500,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    return msg
end

function monster(npc,player,t)
	local msg = "\n#COLORCOLOR_YELLOW#    ����������������������������������#COLOREND##COLORCOLOR_SKYBLUE#�����¹�����Դչʾ��#COLOREND##COLORCOLOR_YELLOW#����������������������������������#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     ������Բ鿴���ֹ�����Դ������������Ƽ���ˢ�²鿴�ù��#COLOREND#\n\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������Щ������������������Щ������������������Щ�������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��   #COLOREND##OFFSET<X:-2,Y:0>#<@ww#1 *01*������չʾ��>   #COLORCOLOR_BROWN#��  #COLOREND# <@ww#2 *01*������չʾ��>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND# <@ww#3 *01*������չʾ��>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND# <@ww#4 *01*������չʾ��>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	local yt = 0
	for i = (t - 1) * ye + 1 , ye * t do 
		local y = 122 + yt * 30
		msg = msg .."#POS<X:36>##POS<Y:"..y+8 ..">##COLORCOLOR_BROWN#��                  ��                  ��                  ��                  ��"
		if i ~= ye * t then
			msg = msg .."#POS<X:36>##POS<Y:"..y+23 ..">##COLORCOLOR_BROWN#���������������������੤�����������������੤�����������������੤������������������"
		end
		yt = yt + 1
		for j = 1 , #monster_t do 
			local x = 36 + 120 * j
			if j ~= 4 then
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			else
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			end
			if i <= #monster_t[j] then
				x = 78 + 120 * ( j - 1 )
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#<@get_monsters#"..monster_t[j][i].."#"..t.." *01*"..monster_t[j][i]..">"
			end
		end
	end
	msg = msg.."\n#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n\n"   
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:200,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@monsterAg#"..t.." *01*����һҳ��>       #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@monsterNe#"..t.." *01*����һҳ��>      <@main *01*�����ء�>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,600)
    return ""
end

function monsterAg(npc,player,t)
	t = tonumber(t) - 1
	if t < 1 then
		t = 1
	end
	return monster(npc,player,t)
end

function monsterNe(npc,player,t)
	t = tonumber(t)
	local k = t * ye + 1
	if monster_t[1][k] ~= nil or monster_t[2][k] ~= nil or monster_t[3][k] ~= nil or monster_t[4][k] ~= nil then
		t = t + 1
	end
	return monster(npc,player,t)
end

function get_monsters(npc,player,key,t)
	local x, y, strMap = lualib:X(player), lualib:Y(player), lualib:MapGuid(player);
	local servant = lualib:Map_GenSingleMonster(strMap, x, y, 2, lualib:GenRandom(0, 7), key, false);
	assert(servant ~= "", "ϵͳ����:ˢ��ʧ��,�Ƿ����û�г�����?");
	lualib:AddTimer(servant, 1, 30000, -1, "del_monster")
	lualib:SysWarnMsg(player, "�������ˢ���ˡ�".. key .."��!������30�����ʧ��")
	 
	--return ""
	--lualib:AddItem(player,key,1,false,"����","����")
	return monster(npc,player,t)
end

function ww(npc, player,key)

	return ""
	
end

function del_monster(servant)
	if servant ~= "" then
		lualib:Monster_Remove(servant)
	end
end