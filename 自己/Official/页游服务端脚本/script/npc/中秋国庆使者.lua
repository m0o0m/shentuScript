--�Զ��������
local bianliang = {"zhongqiou1", "zhongqiou2", "zhongqiou3", "zhongqiou4", "zhongqiou5", "zhongqiou6", "zhongqiou7", "zhongqiou8", "zhongqiou9"}

local weizhi = {"һ��λ", "����λ", "����λ", "�ĺ�λ", "���λ", "����λ", "�ߺ�λ", "�˺�λ", "�ź�λ"}

--��ͨ��Ʒ��
local item = {
				{"�����ر�ͼ", "�����ر�ͼ", "1990135240", 1}, 
                {"�м��ر�ͼ", "�м��ر�ͼ", "1990135241", 1}, 
                {"�߼��ر�ͼ", "�߼��ر�ͼ", "1990135242", 1}, 
                {"ս����", "ս����", "1990120026", 1}, 
                {"˫���������", "˫���������", "1990120029", 1}, 
                {"˫���������", "˫���������", "1990120029", 1}, 
                {"3���������", "3���������", "1990120030", 1}, 
                {"����ӡ", "����ӡ", "1990135336", 1}, 
                {"����ӡ", "����ӡ", "1990135336", 1}, 
                {"����ӡ", "����ӡ", "1990135336", 1}, 
                {"Ǭ����(10��)", "Ǭ����(10��)", "1990145004", 1}, 
                {"����ʯ", "����ʯ", "1990135252", 1}, 
                {"����ʯ", "����ʯ", "1990135252", 1}, 
                {"����ʯ", "����ʯ", "1990135252", 1}, 
                {"����ʯ", "����ʯ", "1990135252", 1}, 
                {"����������", "����������", "1990135237", 1}, 
                {"�������", "�������", "1990135297", 1}, 
                {"����������", "����������", "1990135237", 1}, 
                {"�������", "�������", "1990135297", 1}, 
                {"����������", "����������", "1990135237", 1}, 
                {"�������", "�������", "1990135297", 1}, 
                {"����������", "����������", "1990135237", 1}, 
                {"�������", "�������", "1990135297", 1}, 
                {"����", "����", "1990135234", 1}, 
                {"����", "����", "1990120036", 1}, 
                {"����", "����", "1990120036", 2}, 
                {"����", "����", "1990120036", 5}, 
                {"����", "����", "1990135234", 1}, 
                {"����", "����", "1990120036", 1}, 
                {"����", "����", "1990120036", 2}, 
                {"����", "����", "1990120036", 5}, 
                {"����", "����", "1990120036", 10}, 
                {"����", "����", "1990120036", 20}, 
                {"����", "����", "1990120036", 50}, 
			}
--ѫ�±�			
local xunzhang = {
					 {"���ֹ������", "���ֹ������", "1990120038"}, 
					 {"�����ر����", "�����ر����", "1990120038"},
					 {"������������", "������������", "1990120038"},
					 {"��������(δ����)", "��������(δ����)", "1990120353"},
				}			
--��ȡ����ѫ�»��ʱ�			
local rate = {
				{100, 1},
				{200, 2},
				{300, 4},
				{400, 7},
				{500, 15},
				{600, 20},
				{700, 35},
				{800, 70},
				{900, 100},
			}			

local duihuan = {
					{"���ֹ������", "���ֹ������", "����ѫ����Ƭ", 10},
					{"�����ر����", "�����ر����", "���ֹ������", 10},
					{"������������", "������������", "�����ر����", 2},
				}



			
function main(npc, player)
	local start_time = lualib:GetAllDays(lualib:Str2Time("2012-9-28 00:00:00"))
	local end_time = lualib:GetAllDays(lualib:Str2Time("2012-10-8 23:59:00"))
	
	local a = lualib:GetAllTime()
	local timeStr = lualib:Time2Str("%Y-%m-%d %H:%M", a)
	
	local  msg = "     ��������������ʹ�ߣ�\n \n�ʱ��:  9��28��0��-10��7��24��\n��ǰʱ�䣺  #COLORCOLOR_BLUE#"..timeStr.."#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700017>#<@choujiang *01* ���˳齱>     #IMAGE<ID:1902700017>#<@dhxz *01* �һ��������ѫ��>     #IMAGE<ID:1902700017>#<@info *01* �˵��>\n\n"
	msg = msg.."<@leave *01*�뿪>\n"
	return msg
end


function leave()
	return ""
end

--�˵��

function info(npc, player)
	local msg = "                         #COLORCOLOR_ORANGE#�����#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700017>#<@sub_info#1 *01*���˳齱>          #IMAGE<ID:1902700017>#<@sub_info#2 *01*�һ�����ѫ��>\n \n"
	msg = msg.."<@main *01*����>"
	return msg
end


function sub_info(npc, player, types)
	local types = tonumber(types)
	local msg = ""
	if types == 1 then 
		msg = "                         #COLORCOLOR_ORANGE#���˳齱#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg..[[1. �齱�ɻ����Ϸ�ڸ���ϡ�е���
		
	2. ��ȡ���������رض��ܻ��һö�������ѫ�£����л��ʻ�ø߼�����ѫ�£�]]
	elseif types == 2 then
		msg = "                       #COLORCOLOR_ORANGE#�һ�����ѫ��#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg..[[1. ��ڼ��ڸ���ع�����ආ��ɻ�ò��ϣ�������Ӧ�������Զһ��������ѫ�£���
		
	2. ���һ���ﻹ������±���ʹ���±��������������ԣ�]]
	end
	msg = msg.."\n \n<@main *01*����>"
	return msg
end


--���ո���
function jl(npc, player)
	local msg = ""
	local times = lualib:GetAllDays(0)
	local intTime = lualib:GetInt(player, "zhongqiou")
	
	if times == intTime then
		return "�������Ѿ���ȡ��������"
	end
	
	lualib:AddBuff(player, "����������", 90)
	lualib:SetInt(player, "zhongqiou", times)
end

--����ϵͳ
function choujiang(npc, player, itemIcon)
	local msg = ""
	local numx = 1
	local numy = 1
	local x = 85
	local y = 50
	
	local cishu = 0
	for i = 1, #bianliang do
		local strs = lualib:GetStr(player, bianliang[i])
		if strs ~= "" then
			cishu = cishu + 1
		end
	end
	if cishu == 9 then
		msg = msg.."�����Ѿ�ȫ����ȡ��ϣ������ý��ش��¿�ʼ��\n"	
	else
		msg = msg.."���γ�ȡ��Ҫ����"..rate[cishu + 1][1].."Ԫ������ȡ�������رض��ܻ�ù������ѫ�£�\n"
	end
	
	
	
	for i = 1, #weizhi do
		local str = lualib:GetStr(player, bianliang[i])
		if str == "" then
			msg = msg.."#POS<X:" .. x * numx - 30 .. ">##POS<Y:" .. y * numy - 32 .. ">##IMAGE1990135247#"
			msg = msg.."#POS<X:" .. x * numx - 30 .. ">##POS<Y:" .. y * numy - 37 .. ">#<@chouqu#"..i.."#".. x * numx - 30  .."#".. y * numy - 32 .." *01*     >"
			msg = msg.."#POS<X:" .. x * numx - 32 .. ">##POS<Y:" .. y * numy - 20 .. ">#<@chouqu#"..i.."#".. x * numx - 32  .."#".. y * numy - 32 .." *01*"..weizhi[i]..">"
			numx = numx + 1
		else
			local str_t = string.split(str,"#")
			msg = msg.."#POS<X:" .. x * numx - 30 .. ">##POS<Y:" .. y * numy - 32 .. ">##IMAGE"..str_t[2].."#"
			msg = msg.."#POS<X:" .. x * numx - 32 .. ">##POS<Y:" .. y * numy - 20 .. ">#�ѳ�ȡ"
			numx = numx + 1
		end
		
		
		
		if numx > 3 then
			numx = 1
			numy = numy + 1
		end
	end
	
	local itemIcon = tonumber(itemIcon)
	if itemIcon ~= nil then
		itemIcon = itemIcon - 100000
		msg = msg.."\n#POS<X:302>##POS<Y:40>##COLORCOLOR_BLUE#[�ϴλ��]#COLOREND#\n"
		msg = msg.."\n#POS<X:305>##POS<Y:68>##IMAGE"..itemIcon.."#\n"
		msg = msg.."#POS<X:290>##POS<Y:150>##IMAGE1902700030##POS<X:300>##POS<Y:148>#<@chongzhi# *01*�����ý��ء�>"
	else
		msg = msg.."#POS<X:290>##POS<Y:132>##IMAGE1902700030##POS<X:300>##POS<Y:130>#<@chongzhi# *01*�����ý��ء�>"
	end
	return msg
end
	
function chouqu(npc, player, types, x, y)
	local player_Name = lualib:Name(player)
	local cishu = 0
	for i = 1, #bianliang do
		local strs = lualib:GetStr(player, bianliang[i])
		if strs ~= "" then
			cishu = cishu + 1
		end
	end
	
	if not lualib:Player_IsIngotEnough(player, rate[cishu + 1][1], false) then return "���Ԫ������"..rate[cishu + 1][1].."���޷�������ȡ��" end
	
	lualib:Player_SubIngot(player, rate[cishu + 1][1], false, "����齱", "����齱")
	
	
	local itemName = ""
	local itemIcon = ""
	--��ȡNPC��zhongqiou���Զ�������������߼�ѫ��ʱ��
	local intTime = lualib:GetInt(npc, "zhongqiou")
	local times = lualib:GetAllDays(0)
	--�����ڻ�ȡ����ѫ�±�ǡ�guoqingchoujiang����1Ϊ�ѻ��
	local huode = lualib:GetInt(player, "guoqingchoujiang")
	if intTime ~= times and cishu > 5 and lualib:GenRandom(1,10000) <= 100 then
		
			local rand1 = lualib:GenRandom(2,#xunzhang)
			lualib:AddItem(player, xunzhang[rand1][2], 1, false, "","")
			lualib:SysMsg_SendCenterMsg(1, "��ҡ�"..player_Name.."������������ʹ���˳齱�л���ˡ�"..xunzhang[rand1][1].."��","")
			itemName = xunzhang[rand1][1]
			itemIcon = xunzhang[rand1][3]
			lualib:SetInt(npc, "zhongqiou", times)
	elseif huode ~= 1 and rate[cishu + 1][2] >= lualib:GenRandom(1,100) then
		
		lualib:AddItem(player, xunzhang[1][2], 1, false, "","")
		lualib:SysMsg_SendCenterMsg(1, "��ҡ�"..player_Name.."������������ʹ���˳齱�л���ˡ�"..xunzhang[1][1].."��","")
		itemName = xunzhang[1][1]
		itemIcon = xunzhang[1][3]
		lualib:SetInt(player, "guoqingchoujiang", 1)	
	else
		
		local sj = lualib:GenRandom(1,#item)
		lualib:AddItem(player, item[sj][2], item[sj][4], false, "","")
		itemName = item[sj][1]
		itemIcon = item[sj][3]
	end
	
	local b = itemName.."#"..itemIcon
	lualib:SetStr(player, bianliang[tonumber(types)], b)
	
	lualib:RunClientScript(player, "ItemEffect", "choujiang", x.."#"..y)
	
--[[	local num = 0
	for i = 1, #bianliang do
		local str = lualib:GetStr(player, bianliang[i])
		if str ~= "" then
			num = num + 1
		end
	end
	
	if num == #bianliang then 
		for i = 1, #bianliang do
			lualib:SetStr(player, bianliang[i],"")
		end
		lualib:SetInt(player, "guoqingchoujiang", 0)
	end]]
	
	return choujiang(npc, player, itemIcon)
end


function chongzhi(npc, player)
	for i = 1, #bianliang do
		lualib:SetStr(player, bianliang[i],"")
	end
	lualib:SetInt(player, "guoqingchoujiang", 0)
	return choujiang(npc, player)
end


--ѫ�¶һ�
function dhxz(npc, player)
	local msg = "��ѡ����Ҫ�һ���ѫ�£�\n \n"
	for i = 1, #duihuan do
		msg = msg.."<@qr#"..i.." *01*"..duihuan[i][1].."        >"
	end
	msg = msg.."\n \n<@main *01*����>"
	return msg
end

function qr(npc, player, types)
	local types = tonumber(types)
	local msg = "�һ�"..duihuan[types][1].."��Ҫʹ��"..duihuan[types][4].."��"..duihuan[types][3].."����ȷ���һ���\n \n"
	msg = msg.."<@exchange#"..types.." *01*ȷ���һ�>\n \n"
	msg = msg.."<@main *01*����>"
	
	return msg
end

function exchange(npc, player, types)
	local types = tonumber(types)
	local msg = "�һ��ɹ���"
	if lualib:BagFree(player, true, false, false) < 1 then
		lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ1�����ӣ�")
		return "�����ռ䲻������Ҫ1�����ӣ�"
	end
	
	if not lualib:DelItem(player, duihuan[types][3], duihuan[types][4], 2, "����ѫ�ºϳ�", player) then 
		local s = "��û��"..duihuan[types][4].."��"..duihuan[types][3].."���޷��ϳɣ�"
		return s
	end
	
	lualib:AddItem(player, duihuan[types][2], 1, false, "����ѫ�ºϳ�", player)
	return msg
end

