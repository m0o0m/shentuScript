function main(player, vipLevel)
	local msg = "����̳п���������ȡ��������Ϸ�л���ܹ������е�һ���־���ֵ������vip�ĵȼ����ȼ�Խ�ߣ���õľ���Խ�ࡣ\n \n"
	msg = msg .. "<@lingjingyjicheng *01*���о���̳�>\n"
	msg = msg .. "<@vipjichengbiao *01*�鿴vip���ȼ��ɼ̳о���>\n"
	msg = msg .. "<@guanbi *01*�ر�>"
	lualib:NPCTalk(player,msg)
	return ""
end

function guanbi()
	return ""
end

function lingjingyjicheng(player)
	if lualib:GetAllDays(0) - lualib:GetInt(player,"vip20_jichengshijian") >= 1 then --��¼������ʱ�ĵ�ǰ����
		--vip����̳й������ߴ���
		if lualib:GetAllDays(0) - lualib:GetInt(player,"vip20_jichengshijian") == 1 then
			lualib:SetInt(player,"vip20_zuoriexp",lualib:GetInt(player,"vip20_jinriexp")) --��¼������ջ�õľ���ֵ
		else
			lualib:SetInt(player,"vip20_zuoriexp",0) --��¼�����������ʱ�ľ���ֵ
		end
		lualib:SetInt(player,"vip20_jinriexp",0) --��¼��ҽ�������ʱ�ľ���ֵ
		lualib:SetInt(player,"vip20_explingqu",0) --���������ȡ״��
		lualib:SetInt(player,"vip20_jichengshijian",lualib:GetAllDays(0)) --��¼������ʱ�ĵ�ǰ����
	end
	
	local msg = ""
	if lualib:GetInt(player,"vip20_explingqu") == 1 then
		return "�������ѽ��й�����̳У�\n\n<@guanbi *01*�ر�>"
	end
	
	if lualib:GetInt(player,"vip20_zuoriexp") > 0 then
		local p1 = lualib:GetVipLevel(player)
		if p1 < 4 then
			p1 = 7
		end
		local exp = math.ceil(lualib:GetInt(player,"vip20_zuoriexp")/100*(p1+1))
		msg = msg .. "����������Ϸ���ܹ������#COLORCOLOR_GREENG#"..lualib:GetInt(player,"vip20_zuoriexp").."����#COLOREND#���������vip�ȼ��������#COLORCOLOR_GREENG#�ɼ̳е�"..exp.."����#COLOREND#��\n \n"
		msg = msg .. "<@lingqujingcheng *01*ȷ����ȡ>\n"
	else
		msg = msg .. "����������Ϸ��û�л�ù��κξ���ֵ��\n \n"
	end
	
	msg = msg .. "<@guanbi *01*�ر�>"
	return msg
end

function lingqujingcheng(player)
	local p1 = lualib:GetVipLevel(player)
	if p1 < 4 then
		p1 = 7
	end
	local exp = math.ceil(lualib:GetInt(player,"vip20_zuoriexp")/100*(p1+1))
	if exp > 0 then
		lualib:Player_AddExp(player, exp, "vip����̳�", player)
		lualib:SetInt(player,"vip20_zuoriexp",0)
		lualib:SetInt(player,"vip20_explingqu",1)
		return "���"..exp.."���飡\n \n<@guanbi *01*�ر�>"
	else
		return ""
	end
end

function vipjichengbiao(player)
	local msg = "#COLORCOLOR_GREENG#vip�ȼ�              �ɼ̳о���#COLOREND#\n"
	msg = msg .. "vip1��               2%\n"
	msg = msg .. "vip2��               3%\n"
	msg = msg .. "vip3��               4%\n"
	msg = msg .. "vip4��               5%\n"
	msg = msg .. "vip5��               6%\n"
	msg = msg .. "vip6��               7%\n"
	msg = msg .. "vip7��               8%\n \n"
	msg = msg .. "ֱ�ӹ���˹���       8%\n \n"
	msg = msg .. "<@main *01*����>"
	return msg
end