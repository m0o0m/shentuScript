local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {1021, "", "QuestAccomplish1021","", "*01*�������: Ԫ����ֵ"},
   {1022, "QuestAccept1022", "","01*����: ��������˱���", ""}
   }
gQuestNum = table.getn(gQuestMap)

local talk_t = {"����������Խ��г�ֵ��", "1��100����Ѫ�һ���", "�����˵˵���ɣ�����̸Ǯ�����ǻ�����̸̸���飡"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 180000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local msg = "     �𾴵�"..name.."����Ϊ����#COLORCOLOR_RED#��ֵ#COLOREND#��������Ī�������!\n     ������Ļ����ǡ�#COLORCOLOR_RED#1����ң�100Ԫ��#COLOREND#�� \n     ��֧�ֶ��ֳ�ֵ��ʽ����ɵ��·��ĳ�ֵ��ʽ�鿴��\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">\n \n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[3].." "..v[5]..">\n \n"
            end
        end
    end
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700032##OFFSET<X:0,Y:-1>#<@web *01*[��Ҫ��ֵԪ��]>\n"
	msg = msg.."#OFFSET<X:0,Y:3>##IMAGE1902700042##OFFSET<X:0,Y:-2>#<@JieShao *01*[�鿴��ֵ��ʽ]>\n"

	return msg
end

function web(npc, player)
    local name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local userid = lualib:Player_GetAccountID(player)
    local grpid = lualib:GetGroupId()
    local msg = "http://pay.hzyotoy.com/index.do?mod=pay&groupid=" .. grpid
    lualib:SysMsg_SendWebPage(player, msg)
    return ""
end

function JieShao(npc, player)
	local msg = "������֧�����³�ֵ��ʽ:".."\n \n"
		  msg = msg.."#OFFSET<X:1,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@dx *01*�����š�  ��>".."   �ƶ�����ͨ���ų�ֵ\n"
		  msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@ykt *01*��һ��ͨ����>".."   #OFFSET<X:0,Y:0>#ʢ��/����/����/����/�Ѻ�/��;/����һ��ͨ\n"
		  msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@czk *01*����ֵ������>".."   #OFFSET<X:0,Y:0>#�ƶ�/��ͨ/���ų�ֵ��\n"
		  msg = msg.."#OFFSET<X:1,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@yy *01*��������  ��>".."   �����������V�ҳ�ֵ/�ƶ��ֻ�����(QD-IVR)\n"
		  msg = msg.."#OFFSET<X:1,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@wy *01*��������  ��>".."   ��������#COLOREND#\n \n"
		  msg = msg.."                                                                                 #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *1*�����ء�>"
	return msg
end
--����
function dx(npc, player)
	local msg = "�����ʷ�: \n \n"
		  msg = msg.."#COLORCOLOR_GREENG#���ƶ����š���#COLOREND##COLORCOLOR_GOLD#1/2/5 Ԫ#COLOREND#\n \n \n \n \n"
		  msg = msg.."                                                                                 #OFFSET<X:0,Y:-2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@JieShao *1*�����ء�>"
	return msg
end
--һ��ͨ
function ykt(npc, player)
	local msg = "#OFFSET<X:0,Y:-2>#�����ʷ�: \n"
		  msg = msg.."#COLORCOLOR_GREENG#��ʢ�󡻣�#COLOREND##COLORCOLOR_GOLD#5/10/15/25/30/35/45/50/100/300/350/1000 Ԫ#COLOREND#\n"
		  msg = msg.."#COLORCOLOR_GREENG#����������#COLOREND##COLORCOLOR_GOLD#5/6/10/15/30/50/100 Ԫ#COLOREND#\n"
		  msg = msg.."#COLORCOLOR_GREENG#�����ס���#COLOREND##COLORCOLOR_GOLD#5/10/15/20/30/50/ Ԫ#COLOREND#\n"
		  msg = msg.."#COLORCOLOR_GREENG#����������#COLOREND##COLORCOLOR_GOLD#15/30/50/100 Ԫ#COLOREND#\n"
		  msg = msg.."#COLORCOLOR_GREENG#���Ѻ�����#COLOREND##COLORCOLOR_GOLD#5/10/15/30/40/100 Ԫ#COLOREND#\n"
		  msg = msg.."#COLORCOLOR_GREENG#����;����#COLOREND##COLORCOLOR_GOLD#10/15/20/25/30/50/60/100/300/468/500 Ԫ#COLOREND#\n"
		  msg = msg.."#COLORCOLOR_GREENG#�����Ρ���#COLOREND##COLORCOLOR_GOLD#5/10/15/20/25/30/50/100 Ԫ#COLOREND#\n \n"
		  msg = msg.."                                                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@JieShao *1*�����ء�>"
	return msg
end
--��ֵ��
function czk(npc, player)
	local msg = "�����ʷ�: \n \n"
		   msg = msg.."#COLORCOLOR_GREENG#���ƶ���ֵ������#COLOREND##COLORCOLOR_GOLD#10/20/30/50/100 Ԫ#COLOREND#\n"
		   msg = msg.."#COLORCOLOR_GREENG#����ͨ��ֵ������#COLOREND##COLORCOLOR_GOLD#20/30/50/100/300/500 Ԫ#COLOREND#\n"
		   msg = msg.."#COLORCOLOR_GREENG#�����ų�ֵ������#COLOREND##COLORCOLOR_GOLD#50/100 Ԫ#COLOREND#\n \n \n"
		   msg = msg.."                                                                                 #OFFSET<X:0,Y:-2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@JieShao *1*�����ء�>"
	return msg
end
--����
function yy(npc, player)
	local msg = "�����ʷ�: \n \n"
		  msg = msg.."#COLORCOLOR_GREENG#�������������V�ҳ�ֵ����#COLOREND##COLORCOLOR_GOLD#2/5/10//15/20/30 Ԫ#COLOREND#\n \n"
		  msg = msg.."#COLORCOLOR_GREENG#�������������V�ҳ�ֵ����#COLOREND##COLORCOLOR_GOLD#10/20/30 Ԫ#COLOREND#\n \n \n"
		  msg = msg.."                                                                                 #OFFSET<X:0,Y:-2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@JieShao *1*�����ء�>"

	return msg
end
--����
function wy(npc, player)
	local msg = "�����ʷ�: \n \n"
		  msg = msg.."#COLORCOLOR_GREENG#���������С���#COLOREND##COLORCOLOR_GOLD#���� Ԫ#COLOREND#\n \n \n \n \n"
		  msg = msg.."                                                                                 #OFFSET<X:0,Y:-2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@JieShao *1*�����ء�>"
	return msg
end
---1021��
function QuestAccomplish1021(npc, player)
    msg = "�ҿ��԰����ֵԪ��������Ԫ���󣬿������̳������Ķ�����������������;������кܴ�����ģ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1021 *01* ��֪����>\n"
    return msg
end


function Accomplish1021(npc, player)
    if lualib:AccomplishQuest(player, 1021, 0) == true then
        msg = "�ܸ������ֻ����Щ�ˣ���ȥ��������˰ɡ�\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept1022 *01* ȥ���������>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

---1022��
function QuestAccept1022(npc,player)
    msg = "ȥ��������˱��棬���Ѿ���������������˽� \n"
	msg = msg.."#IMAGE1902700017#<@Accept1022 *01* �õģ������ȥ>\n"
	return msg
end

function Accept1022(npc, player)
    if lualib:AcceptQuest(player, 1022) == true then
        return "ȥ��#COLORCOLOR_GREENG# #NPCLINK<STR:�������,NPCID:25001>##COLOREND#������"
    else
        return "�����ȡʧ��"
    end
end
