gQuestMap =
{
   {2006, "QuestAccept2006", "","*01*����: ��˺���ţħ", ""},
   {2007, "QuestAccept2007", "","*01*����: ��˺���ţħ", ""},
   {2008, "QuestAccept2008", "","*01*����: ���ţħ����", ""}
}
gQuestNum = table.getn(gQuestMap)


function main(npc, player)
	local msg = "     ţħ���������·�ǣ�Ԯ��ʲôʱ����ܵ�����\n \n"
	msg = msg.."#IMAGE<ID:1902700030>#<@jump#��ɽ��#235#305#3 *01*�ص���ɽ�ǹ㳡>\n"
	msg = msg.."#IMAGE<ID:1902700030>#<@leave *01*�뿪>\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[3].." "..v[5]..">\n"
            end
        end
    end

	return msg
end

function leave(player,npc)
	return ""
end

function jump(npc, player, map_name, x, y, r)
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	if not lualib:Player_MapMoveXY(player, map_name, x, y, r) then return "����ͼʧ�ܣ�\n \n<@main *01*����>" end
	return ""
end


---2006��
function QuestAccept2006(npc,player)
    msg = "��·�������ڳ����ţħ���������ȥ����20ֻ����ţħ��\n \n"
	msg = msg.."<@Accept2006 *01* ��������>\n"
	return msg
end


function Accept2006(npc, player)
    if lualib:AcceptQuest(player, 2006) == true then
        return "��·������ʮ��Σ�գ������С�ģ�"
    else
        return "��26���������Ұ�"
    end
end


---2007��
function QuestAccept2007(npc,player)
    msg = "��·�������ڳ����ţħ���������ȥ����20ֻ����ţħ��\n \n"
	msg = msg.."<@Accept2007 *01* ��������>\n"
	return msg
end


function Accept2007(npc, player)
    if lualib:AcceptQuest(player, 2007) == true then
        return "��·������ʮ��Σ�գ������С�ģ�"
    else
        return "��26���������Ұ�"
    end
end



---2008��
function QuestAccept2008(npc,player)
    msg = "��·�������ڳ����ţħ���������ȥ����20ֻţħ������\n \n"
	msg = msg.."<@Accept2008 *01* ��������>\n"
	return msg
end


function Accept2008(npc, player)
    if lualib:AcceptQuest(player, 2008) == true then
        return "��·������ʮ��Σ�գ������С�ģ�"
    else
        return "��26���������Ұ�"
    end
end




