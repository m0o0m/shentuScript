local ye = 12
local wings_t = {--����б�
	{"���֮����Ч��",},--���չʾ�б� --Ҫ�����µĵ��ߣ�����ǰ�濪ʼ�� 
	{"����װ(��)30","����װ(Ů)31","����װ(��)32","����װ(Ů)33","����װ(��)34","����װ(Ů)35","����װ(Ů)37","����װ(��)36","����װ(Ů)25","����װ(��)24",},--���չʾ�б� --Ҫ�����µĵ��ߣ�����ǰ�濪ʼ��
        {"","",}, --����չʾ
        {"�����","������","�����","�ݶ���",}, --����չʾ
	--[[{"������",}, --����չʾ
	{"��˪��",}, --����չʾ
	{"�����",}, --����չʾ
	{"������",}, --����չʾ
	{"�ɴϴ����",}, --����չʾ
	{"������",}, --����չʾ
	{"���֮����Ч��",}, --����չʾ--]]
	
}
function main(npc, player)
	msg = "\n#COLORCOLOR_GREENG#     ���������ȡ���³���������Դ��#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������#COLOREND#\n\n"
	msg = msg.."            #COLORCOLOR_YELLOW##OFFSET<X:0,Y:0>##IMAGE1902700037#<@wings#1 *01*������·�������Դչʾ��   >  \n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:500,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    return msg
end

function wings(npc,player,t)
	local msg = "\n#COLORCOLOR_YELLOW#    ����������������������������������#COLOREND##COLORCOLOR_SKYBLUE#��������Դչʾ��#COLOREND##COLORCOLOR_YELLOW#����������������������������������#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     ���������ȡ������Դ���ߣ�������⼴����ȡ�������е��ߣ������������չʾ��������ȡ���еĳ��չʾ����ȡǰ����ע������ռ��Ƿ��㹻��#COLOREND#\n\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������Щ������������������Щ������������������Щ�������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��   #COLOREND##OFFSET<X:-2,Y:0>#<@ww#1 *01*�����չʾ��>   #COLORCOLOR_BROWN#��  #COLOREND# <@ww#2 *01*���·�չʾ��>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND# <@ww#3 *01*������չʾ��>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND# <@ww#4 *01*������չʾ��>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	local yt = 0
	for i = (t - 1) * ye + 1 , ye * t do 
		local y = 135 + yt * 30
		msg = msg .."#POS<X:36>##POS<Y:"..y+8 ..">##COLORCOLOR_BROWN#��                  ��                  ��                  ��                  ��"
		if i ~= ye * t then
			msg = msg .."#POS<X:36>##POS<Y:"..y+23 ..">##COLORCOLOR_BROWN#���������������������੤�����������������੤�����������������੤������������������"
		end
		yt = yt + 1
		for j = 1 , #wings_t do 
			local x = 36 + 120 * j
			if j ~= 4 then
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			else
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			end
			if i <= #wings_t[j] then
				x = 64 + 120 * ( j - 1 )
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#<@get_wings#"..wings_t[j][i].."#"..t.." *01*"..wings_t[j][i]..">"
			end
		end
	end
	msg = msg.."\n#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n\n"   
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:200,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@wingsAg#"..t.." *01*����һҳ��>       #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@wingsNe#"..t.." *01*����һҳ��>      <@main *01*�����ء�>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,600)
    return ""
end

function wingsAg(npc,player,t)
	t = tonumber(t) - 1
	if t < 1 then
		t = 1
	end
	return wings(npc,player,t)
end

function wingsNe(npc,player,t)
	t = tonumber(t)
	local k = t * ye + 1
	if wings_t[1][k] ~= nil or wings_t[2][k] ~= nil or wings_t[3][k] ~= nil or wings_t[4][k] ~= nil then
		t = t + 1
	end
	return wings(npc,player,t)
end

function get_wings(npc,player,key,t)
	lualib:AddItem(player,key,1,false,"����","����")
	return wings(npc,player,t)
end

function ww(npc, player,key)
	key= tonumber(key)
	tempstr =""
	for i = 1, #wings_t[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "��İ���������")
		else
			lualib:AddItem(player, wings_t[key][i], 1, false, "", player)
			lualib:SysWarnMsg(player, "������"..wings_t[key][i].."!")
			tempstr = tempstr .. ",[" .. wings_t[key][i] .. "]"
		end
	end
	return "������" .. tempstr .. "!\n  \n<@wings#1 *01*����>\n"
end