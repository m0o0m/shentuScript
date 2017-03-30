local equip_suit_list = {
		{"����ս�ס�", {"��ս��ָ", "��ս����", "��սͷ��"}, 30000},
		{"����ħ�ס�", {"��ħ��ָ", "��ħ����", "��ħͷ��"}, 30000},
		{"�������ס�", {"������ָ", "��������", "����ͷ��"}, 30000},
		{"����ս�ס�", {"��ս��ָ", "��ս����", "��սѥ��"}, 120000},
		{"���ۻ��ס�", {"�ۻ��ָ", "�ۻ껤��", "�ۻ�ѥ��"}, 120000}, 
		{"�������ס�", {"�����ָ", "���⻤��", "����ѥ��"}, 120000},
		{"��ʥ���ס�", {"ʥ��ͷ��", "ʥ�令��", "ʥ���ָ", "ʥ��սѥ"}, 480000},
		{"����ڤ�ס�", {"��ڤͷ��", "��ڤ����", "��ڤ��ָ", "��ڤħѥ"}, 480000},
		{"���ɳ��ס�", {"�ɳ�ͷ��", "�ɳ�����", "�ɳ���ָ", "�ɳ���ѥ"}, 480000},
		{"��ĩ���ס�", {"ĩ��ͷ��", "ĩ�ջ���", "ĩ�ս�ָ", "ĩ������", "ĩ��սѥ"}, 1920000},
		{"��Ѫҹ�ס�", {"Ѫҹħ��", "Ѫҹ����", "Ѫҹħָ", "Ѫҹ����", "Ѫҹħѥ"}, 1920000},
		{"������ס�", {"��ٵ���", "��ٻ���", "��ٵ�ָ", "�������", "��ٵ�ѥ"}, 1920000},
		{"�������ס�", {"���׽�ָ(ʥ)", "���׻���(ʥ)", "����սѥ", "���׽�ָ(��)", "���׻���(��)", "��������", "����ͷ��"}, 7680000},
		{"�������ס�", {"�����ָ(ʥ)", "���黤��(ʥ)", "����ħѥ", "�����ָ(��)", "���黤��(��)", "��������", "����ͷ��"}, 7680000},
		{"�������ס�", {"�����ָ(ʥ)", "���ﻤ��(ʥ)", "�����ѥ", "�����ָ(��)", "���ﻤ��(��)", "��������", "����ͷ��"}, 7680000},
		{"����ŭ�ס�", {"��ŭ��ָ(ʥ)", "��ŭ����(ʥ)", "��ŭսѥ", "��ŭ��ָ(��)", "��ŭ����(��)", "��ŭ����", "��ŭͷ��"}, 23040000},
		{"����Ԩ�ס�", {"��Ԩ��ָ(ʥ)", "��Ԩ����(ʥ)", "��Ԩħѥ", "��Ԩ��ָ(��)", "��Ԩ����(��)", "��Ԩ����", "��Ԩͷ��"}, 23040000},
		{"�������ס�", {"�����ָ(ʥ)", "������(ʥ)", "�����ѥ", "�����ָ(��)", "������(��)", "��������", "����ͷ��"}, 23040000},
		{"��ս���ס�", {"ս����ָ", "ս������", "ս������", "ս��ͷ��", "����սѥ"}, 42000000},
		{"������ס�", {"����ָ", "��⻤��", "�������", "���ͷ��", "���ϼ��"}, 42000000},
		{"����ң�ס�", {"��ң��ָ", "��ң����", "��ң����", "��ң����", "��ң����"}, 42000000},
						}
						
function main(npc, player)
	local width = 60
	local height = 30
	local num = 1
	local msg = "�ն���װ�������г��׵���װ�𣬿�ת�ø��ң�����㼱ȱ��ҵĻ����Կ���һ�£��ٺٺٺ١���\n"
	
	
	for i = 1, #equip_suit_list do
		msg = msg.."#POS<X:".. width..",Y:"..height..">##IMAGE1902700037#<@equip_suit#"..i.." *01*"..equip_suit_list[i][1]..">"
		width = width + 100
		num = num + 1
		if num >3 then
			num = 1
			width = 60
			height = height + 18
		end
	end
	--msg = msg.."#POS<X:310,Y:".. height ..">#<@leave *01*���뿪��>"
	return msg
end

function equip_suit(npc, player, suitName)
--[[	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local ServerDays = lualib:GetAllDays(lualib:Str2Time(StartServerTime))
	local Days = lualib:GetAllDays(0)
	
	
	local goldPct = 1 - (Days - ServerDays) / 1
	if goldPct > 1 then
		goldPct = 1
	elseif goldPct < 0.1 then
		goldPct = 0.1
	end

	local addGold = equip_suit_list[tonumber(suitName)][3] * goldPct]]
	local addGold = equip_suit_list[tonumber(suitName)][3] 
	

	local msg = "����������Ƿ�����װ������ȫ�����������պ�ɻ��#COLORCOLOR_GREENG#"..addGold.."#COLOREND##COLORCOLOR_RED#���#COLOREND#\n"
	
	
	local x = 0
	local y = 35
	
	
	local fomr_str = "<form default_parent=NpcTalk,Container>"
	for i = 1, #equip_suit_list[tonumber(suitName)][2] do
		fomr_str = fomr_str .. "<itemctrl id=��Ҫ����"..i.." x="..x.." y="..y.." w=35 h=35 init_item="..equip_suit_list[tonumber(suitName)][2][i].." count=1 is_bound=false use_back=true/>"
		x = x + 45
	end
	
	

	msg = msg.."#POS<X:140,Y:135>##IMAGE1904300004#".."#POS<X:154,Y:122>#<@duihuan#"..suitName.." *01*ȷ������>"
	msg = fomr_str .. "<text><![CDATA["..msg.."]]></text></form>"
	
	return msg
end

function duihuan(npc, player, suitIndex)
	local suitIndex = tonumber(suitIndex)
	local msg = ""
	
	local itemNum = #equip_suit_list[suitIndex][2]
	local itembind = {}
	local itemreqCount = {}
	local oprType = {}
	
	for i = 1, itemNum do
		itembind[i] = 0
		itemreqCount[i] = 1
		oprType[i] = 1
	end
	
	
	if not lualib:Player_ItemRequest(player, equip_suit_list[suitIndex][2], itemreqCount, itembind, oprType, "��������������ϱ���װ���������װ", "�����ϱ�") then
        return "��װ�������㣬�޷����գ���װ������Ҫ���󶨣����������\n \n<@main *01*����>"
    end
	
--[[	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local ServerDays = lualib:GetAllDays(lualib:Str2Time(StartServerTime))
	local Days = lualib:GetAllDays(0)
	
	
	local goldPct = 1 - (Days - ServerDays) / 1
	if goldPct > 1 then
		goldPct = 1
	elseif goldPct < 0.1 then
		goldPct = 0.1
	end

	local addGold = equip_suit_list[tonumber(suitName)][3] * goldPct]]
	local addGold = equip_suit_list[suitIndex][3]
	
	if not lualib:Player_AddGold(player, addGold, false, "��������", player) then
		return "���ӽ��ʧ�ܣ�"
	end
	msg = "����[".. equip_suit_list[suitIndex][1] .."]�ɹ���������#COLORCOLOR_GREENG#"..addGold.."#COLOREND##COLORCOLOR_RED#���#COLOREND#��\n \n "
	msg = msg.."<@main *01* �����ء�>"
	return msg
end

function leave()
	return ""
end