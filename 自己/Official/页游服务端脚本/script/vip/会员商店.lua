shangdiandaoju = {
		{"���ĵ�",100,100000}, --�������֣����ʣ���Ҫ���
		{"С����",100,10000},
		{"С����*2",100,20000},
		{"С����*3",100,30000},
		{"С����(10��)",100,100000},
		{"��Ԫ��",100,20000},
		{"��Ԫ��*2",100,40000},
		{"��ӡ������",100,100000},
		{"��ӡ������*2",100,200000},
		{"ף����ˮ",100,100000},
		{"������(С)",100,10000},
		{"������(��)",100,20000},
		{"������(��)",100,40000},
		{"������",100,50000},
		{"������*2",100,100000},
		{"������(1��)",100,100000},
		{"�޸���ˮ",100,300000},
        {"1.5���������",100,200000},
		{"˫���������",100,200000},
        {"3���������",100,200000},
		{"����",100,40000},
		{"��λʯ",100,100000},
        {"��λʯ(100��)",100,1000000},
		{"�������(50��)",100,100000},
        {"�������(500��)",100,1000000},
		{"���Ǵ���ʯ",100,100000},
		{"��ɽ�Ǵ���ʯ",100,100000},
		{"��ң��(100��)",100,1000000},
        {"��ң��(7��)",100,1000000},
}

function main(player, vipLevel)
	local vipLevel = tonumber(vipLevel)
	local suiji = 0
	local p1 = 0
	
	if vipLevel > 7 then
		vipLevel = 7
	end
	--��Ʒ��ʼ��
	if lualib:GetAllDays(0) - lualib:GetInt(player,"vip24_shangdianshijian") >= 1 then --��¼������ʱ�ĵ�ǰ����
		lualib:SetInt(player,"vip24_shangdianshijian",lualib:GetAllDays(0)) --��¼������ʱ�ĵ�ǰ����
		for i=1,7 do
			p1 = math.random(#shangdiandaoju)
			suiji = math.random(100)
			if shangdiandaoju[p1][2] >= suiji then
			else
				i = i - 1
			end
			lualib:SetInt(player,"vip24_shangpinggouma"..i,0) --��Ʒ����ļ�¼
			lualib:SetInt(player,"vip24_shangpingsuoyin"..i,p1) --��Ʒ����ļ�¼
		end
	end
	
	local msg = "#COLORCOLOR_GREENG#��Ʒ����             ��Ҫ���#COLOREND#\n"
	for i=1,vipLevel do
		local msg1 = ""
		msg = msg .. "#COLORCOLOR_ORANGE#"..shangdiandaoju[lualib:GetInt(player,"vip24_shangpingsuoyin"..i)][1].."#COLOREND#" --��Ʒ������ʾ
		msg1 = msg1 .. shangdiandaoju[lualib:GetInt(player,"vip24_shangpingsuoyin"..i)][1]
		
		while #msg1 < 21 do
			msg = msg .. " "
			msg1 = msg1 .. " "
		end
		
		msg = msg .. shangdiandaoju[lualib:GetInt(player,"vip24_shangpingsuoyin"..i)][3] --��Ʒ�۸���ʾ
		msg1 = msg1 .. shangdiandaoju[lualib:GetInt(player,"vip24_shangpingsuoyin"..i)][3]
			
		while #msg1 < 34 do
			msg = msg .. " "
			msg1 = msg1 .. " "
		end
			
		if lualib:GetInt(player,"vip24_shangpinggouma"..i) == 0 then
			msg = msg .. "<@goumai#"..lualib:GetInt(player,"vip24_shangpingsuoyin"..i).."#vip24_shangpinggouma"..i.."#"..vipLevel.." *01*������Ʒ>\n"
		else
			msg = msg .. "#COLORCOLOR_GRAY#�ѹ���#COLOREND#\n"
		end
	end
	
	msg = msg .. "\n<@likai *01*�뿪> #COLORCOLOR_SKYBLUE#�̵���Ʒÿ��0ʱˢ��#COLOREND#��vip�ȼ�Խ���ܹ���ĵ���Խ�ࡣ\n"
	lualib:NPCTalk(player,msg)
	return ""
end

----------------------------------------������Ʒ--------------------------------------------------------
function goumai(player,suoyin,weizhi,vipLevel)
	suoyin = tonumber(suoyin)
	local itemname = shangdiandaoju[suoyin][1]
	
	if lualib:GetInt(player,weizhi) == 0 then
	else
		return "���Ѿ�����������Ʒ�����´��̵�ˢ���Ժ�������\n\n <@likai *01*�ر�>"
	end
		
	if lualib:Player_IsGoldEnough(player,shangdiandaoju[suoyin][3],false) == true then
		if not lualib:Player_SubGold(player,shangdiandaoju[suoyin][3],false,"VIP�̵깺��",player) then
			return "�۳����ʧ��"
		end
	else
		return "��Ҳ��㣡�޷�����\n\n<@likai *01*�ر�>"
	end
	
	local n1 = string.find(itemname,"*")
	local n2 = 1
	if n1 ~= nil then
		n2 = tonumber(string.sub(itemname,n1+1,#itemname))
	end
	
	if n1 == nil and lualib:Player_GetBagFree(player) >= 1 then
		lualib:AddItem(player,itemname,n2,true,"VIP�̵깺��", player) --����Ʒ
	elseif n1 ~= nil and lualib:Player_GetBagFree(player) >= n2 then
		lualib:AddItem(player,string.sub(itemname,1,n1-1),n2,true,"VIP�̵깺��", player) --����Ʒ
	else
		return "������λ����"..n2.."���������Ժ�������\n\n<@likai *01*�ر�>"
	end
	
	lualib:SetInt(player,weizhi,1) --��¼�Ѿ����������Ʒ
	return "#COLORCOLOR_GREENG#"..itemname.."#COLOREND#����ɹ���\n\n<@main#"..vipLevel.." *01*��������>\n<@likai *01*�ر�>"
end

function likai()
	return ""
end