gQuestMap =
{
   {3001, "", "QuestAccomplish3001","", "*01*�������: Ѻ��"}
}
gQuestNum = table.getn(gQuestMap)

local EscorterAward = --��������
{
         --�ڳ���ɫ    ,                     ,�ڳ�����  ,�㲥,     ����
    color_flag =
    {
        {"#COLORCOLOR_WHITE#", "#COLOREND#", "�ڳ�����", false, "�ڳ�(��)"},
        {"#COLORCOLOR_GREENG#", "#COLOREND#", "�ڳ�����", false, "�ڳ�(��)"},
        {"#COLORCOLOR_BLUE#", "#COLOREND#", "�ڳ�����", false, "�ڳ�(��)"},
        {"#COLORCOLOR_PURPLE#", "#COLOREND#", "�ڳ�����", true, "�ڳ�(��)"},
        {"#COLORCOLOR_GOLD#", "#COLOREND#", "�ڳ�����", true, "�ڳ�(��)"},
    },
    cur_color = "escort_color",--��ǰ�ڳ���ɫ
}

local AwardList = --�����һ���
{
    escort_v = "escort_v",      --������������������
    ["����"] = {
                    ["��Ԫ����"]     = {{"��Ԫ����",        1,	1    },}, 
                    ["����"]         = {{"����",	        1,	10   },}, 
                    ["ս����"]       = {{"ս����",	        1,	10   },}, 
                    ["���"]         = {{"���",	        1,	3    },}, 
                    ["���鵤"]       = {{"���鵤",	        1,	3    },}, 
                    ["�ͼ�ת��ʯ"]   = {{"�ͼ�ת��ʯ",	    1,	10   },}, 
                    ["�м�ת��ʯ"]   = {{"�м�ת��ʯ",	    1,	20   },}, 
                    ["�߼�ת��ʯ"]   = {{"�߼�ת��ʯ",	    1,	50   },}, 
                    ["�ؼ�ת��ʯ"]   = {{"�ؼ�ת��ʯ",	    1,	500  },}, 
                    ["��ħʯ"]       = {{"��ħʯ",	        1,	1000 },}, 
                    --[[["ս����"]   = {
                                        {"ŭ����",	1,	1},
                                        {"ŭ����",	1,	1},
                                        {"ŭ����",	1,	1},
                                        {"������",	1,	1},
                                        {"������",	1,	1},
                                        {"ŭѪ��",	1,	1},
                                        {"ŭħ��",	1,	1},
                                        {"�ָ���",	1,	1},
                    },]]
                }
}
--------------------------------------------------------------------------------
function EscorterAward:IsEscorterDied(player)
    if lualib:IsEscorterDied(player) then
        self:SetColor(player, 0)
        return true
    end
    return false
end

function EscorterAward:SetColor(player, color)
    lualib:SetInt(player, self.cur_color, color)
end

function EscorterAward:GetColor(player)
    return lualib:GetInt(player, self.cur_color)
end
--------------------------------------------------------------------------------
function main(npc, player)
    local msg = "    ���ٳ����������Ĺ�������Σ���������Ｑ��������ʣ����ܰ��Ҵ���������һ��������\n \n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:5>##IMAGE<ID:1902700033>##OFFSET<X:0,Y:-1>#<@EndEscort *01*�����Ѻ�ڡ�>\n"
    msg = msg.."#OFFSET<X:0,Y:1>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@award *01*�������һ���>\n"
    msg = msg.."#OFFSET<X:0,Y:1>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-1>#<@query *01*����ѯ������>\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@likai *01*���뿪��>\n"

		for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."<@"..v[3].." "..v[5]..">\n"
            end
        end
    end
    return msg
end

function EndEscort(npc, player)
    if EscorterAward:IsEscorterDied(player) then
        return "��û����ȡ�ڳ����������ɻ���أ�\n \n \n \n \n \n \n                                            #OFFSET<X:0,Y:-5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    local cur_color = EscorterAward:GetColor(player)
    return "��ǰ�ڳ�Ϊ"..EscorterAward.color_flag[cur_color][1]
                            ..EscorterAward.color_flag[cur_color][3]
                            ..EscorterAward.color_flag[cur_color][2]..
            "����Ի��#COLORCOLOR_RED#"..EscorterAward.color_flag[cur_color][5]..
            "#COLOREND#��\n \n \n \n \n#OFFSET<X:0,Y:0>##IMAGE<ID:1902700033>##OFFSET<X:0,Y:-1>#<@Award#"..cur_color.."#"..EscorterAward.color_flag[cur_color][5]..
            " *01* ����ȡ��>\n \n                                            #OFFSET<X:0,Y:-5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
end

function Award(npc, player, color, item_key)
    local cur_color = tonumber(color)
    if not lualib:RemoveEscorter(player) then
        return "�ڳ�"..EscorterAward.color_flag[cur_color][1]
                     ..EscorterAward.color_flag[cur_color][3]
                     ..EscorterAward.color_flag[cur_color][2].."���̫Զ��\n \n \n \n \n \n \n                                            #OFFSET<X:0,Y:-5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@EndEscort *01*�����ء�>"
    end

    if not lualib:AddItem(player, item_key, 1, true, "����Ʒ���ύ�ڳ�����", "���ٳǾ����") then
        return "������"..item_key.."ʧ�ܣ�\n \n \n \n \n \n \n                                            #OFFSET<X:0,Y:-5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@EndEscort *01*�����ء�>"
    end

    if EscorterAward.color_flag[cur_color][4] then
        lualib:SysMsg_SendCenterMsg(1, "��ϲ���"..lualib:Name(player).."Ѻ��"
                     ..EscorterAward.color_flag[cur_color][3].."�ɹ���", "")
    end
	lualib:DropQuest(player, 7000)
    return "��ȡ�����ɹ���\n \n \n \n \n \n \n                                            #OFFSET<X:0,Y:-5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
end

function award(npc, player)
    local escort_v = lualib:GetInt(player, AwardList.escort_v)
    local msg = "��ǰ����Ϊ��"..escort_v.."   ��ѡ����Ҫ�һ��ĵ��ߣ�\n#COLORCOLOR_RED#С��ʾ�������һ���Ʒ��ʱ�򣬳��һ�������Ʒ�⣬ÿ�һ�1���������ɶ�����300��ң�\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
    for k, v in pairs(AwardList["����"]) do
        msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@exchange#"..k.." *01*��"..k.."��>\n"
    end
    
    msg = msg.."#OFFSET<X:0,Y:-8>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
    msg = msg.."                                            #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    return msg
end

function exchange(npc, player, key)
    if AwardList["����"][key] == nil then return "��һ��ĵ���"..key.."�����ڣ�\n \n \n \n \n \n \n                                            #OFFSET<X:0,Y:-5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
    
    local msg = ""
    for _, v in pairs(AwardList["����"][key]) do
        msg = msg.."�һ�#COLORCOLOR_PURPLE#"..v[2].."��"..v[1].."#COLOREND#��Ҫ#COLORCOLOR_RED#"..v[3].."������#COLOREND#\n \n \n \n \n"
		msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@exchangeEx#"..v[2].."#"..v[1].."#"..v[3].." *01*���һ���>\n \n"
	end
    
    msg = msg.."                                            #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@award *01*�����ء�>"
    return msg
end

function exchangeEx(npc, player, item_count, item_key, item_consume)
    
    local escort_v = lualib:GetInt(player, AwardList.escort_v)
    if escort_v < tonumber(item_consume) then
        return "����������㣡\n \n \n \n \n \n \n                                            #OFFSET<X:0,Y:-4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@award *01*�����ء�>"
    end
    
    lualib:SetInt(player, AwardList.escort_v, escort_v - tonumber(item_consume))
    
    local key = {}
    key[1] = item_key
    local count = {}
    count[1] = tonumber(item_count)
    local bind = {}
    bind[1] = 0
    local opr = {}
    opr[1] = 0
    
    if not lualib:Player_ItemRequest(player, key, count, bind, opr, "����Ʒ�������һ�����", "���ٳǾ����") then
        return "��Ʒ�һ�ʧ�ܣ�\n \n \n \n \n \n \n                                            #OFFSET<X:0,Y:-4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@award *01*�����ء�>"
    end
    
    lualib:Player_AddGold(player, tonumber(item_consume) * 300, false, "����ң������һ�����", "���ٳǾ����")
    
    return "��Ʒ�һ��ɹ���\n \n \n \n \n \n \n                                            #OFFSET<X:0,Y:-4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@award *01*�����ء�>"
end

function query(npc, player)
    local escort_v = lualib:GetInt(player, AwardList.escort_v)
    return "�㵱ǰ��������Ϊ��"..escort_v.."��\n \n \n \n \n \n \n                                            #OFFSET<X:0,Y:-5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
end
----3001��
function QuestAccomplish3001(npc, player)
    msg = "��ʿ���������Ĺ��׽�����ʷ�ᣬ���ٳ�����Ҫ�����ľ������ʣ��Ͽ�����Щ���ɣ�\n \n"
    msg = msg.."<@Accomplish3001 *01* �һ�ģ�>\n"
    return msg
end

function Accomplish3001(npc, player)
    if lualib:AccomplishQuest(player, 3001, 0) == true then
        msg = "���ס��һ��Ϊ�����࣡��Ĺ����һ���£����������Ѻ�ڵĽ�����\n \n"
		msg = msg.."<@leave *01*��л>\n"
		return msg
    else
        msg = "��������ˣ�\n \n"
		msg = msg.."<@leave *01*����Ŭ��>\n"
		return msg
    end
end

function likai(npc,player)
	return ""
end