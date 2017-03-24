local data = [[{
	{
		req = 1,--��ǰ�ƺŵȼ�
		title = 32,--�ƺ�ID--ʵ����Ч[�������м�]
		name = "���������ľȱ�",--�ƺ�����[Ҳ��BUFF������,ʵ������]
		gold = 100,--���Ļ���
		ingot = 0,--����Ԫ��
		image = {3020760000, 330, -15},--��Ч+��Чx����+��Чy����
		desc = "#COLORCOLOR_MAGENTA#������200-200\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P��2000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#��л����֧��\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#ף����Ϸ���",
	},
	{
		req = 2,
		title = 33,
		name = "���Ժᵶ����Ц",
		gold = 100,
		ingot = 0,
		image = {3020770000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#������400-400\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P��4000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#��л����֧��\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#ף����Ϸ���",
	},
	{
		req = 3,
		title = 34,
		name = "��ɨǧ��",
		gold = 200,
		ingot = 0,
		image = {3020600000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#������600-600\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P��6000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#��л����֧��\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#ף����Ϸ���",
	},
	{
		req = 4,
		title = 35,
		name = "����������",
		gold = 300,
		ingot = 0,
		image = {3020430000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#������1000-1000\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P��10000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#��л����֧��\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#ף����Ϸ���",
	},
	{
		req = 5,
		title = 10,
		name = "һ�ﵱǧ",
		gold = 500,
		ingot = 0,
		image = {3020530000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#������1500-1500\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P��15000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#��л����֧��\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#ף����Ϸ���",
	},
	{
		req = 6,
		title = 36,
		name = "�ӽ�ɨ����",
		gold = 1000,
		ingot = 0,
		image = {3020420000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#������2100-2100\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P��21000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#��л����֧��\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#ף����Ϸ���",
	},
	{
		req = 7,
		title = 44,
		name = "��Ѫɱ��",
		gold = 2000,
		ingot = 0,
		image = {3020580000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#������2800-2800\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P��28000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#��л����֧��\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#ף����Ϸ���",
	},
	{
		req = 8,
		title = 45,
		name = "��������",
		gold = 3000,
		ingot = 0,
		image = {3020590000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#������3700-3700\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P��37000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#��л����֧��\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#ף����Ϸ���",
	},
}]]


local data1 = [[{
	
	{
		req = 9,
		title = 46,
		name = "������ʥ",
		gold = 300,
		ingot = 0,
		image = {3020560000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#������4800-4800\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P��48000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#��л����֧��\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#ף����Ϸ���",
	},
	{
		req = 10,
		title = 48,
		name = "������©",
		gold = 500,
		ingot = 0,
		image = {3020440000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#������5800-5800\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P��58000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#��л����֧��\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#ף����Ϸ���",
	},
	{
		req = 11,
		title = 49,
		name = "�������",
		gold = 1000,
		ingot = 0,
		image = {3020460000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#������6800-6800\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P��68000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#��л����֧��\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#ף����Ϸ���",
	},
	{
		req = 12,
		title = 50,
		name = "��������",
		gold = 2000,
		ingot = 0,
		image = {3020470000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#������8000-8000\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P��80000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#��л����֧��\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#ף����Ϸ���",
	},
}]]

local data2 = [[{
	{
		req = 13,
		title = 51,
		name = "һ������",
		gold = 3000,
		ingot = 0,
		image = {3020540000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#������10000-10000\n#OFFSET<Y:3>##COLORCOLOR_BLUE#������+ 3\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P��100000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#��л����֧��\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#ף����Ϸ���",
	},
	{
		req = 14,
		title = 52,
		name = "������˭",
		gold = 5000,
		ingot = 0,
		image = {3020480000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#������12000-12000\n#OFFSET<Y:3>##COLORCOLOR_BLUE#������+ 6\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P��120000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#��л����֧��\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#ף����Ϸ���",
	},
	{
		req = 15,
		title = 53,
		name = "�����ʥ",
		gold = 10000,
		ingot = 0,
		image = {3020550000, 330, -15},
		desc = "#COLORCOLOR_MAGENTA#������15000-15000\n#OFFSET<Y:3>##COLORCOLOR_BLUE#������+ 9\n#OFFSET<Y:3>##COLORCOLOR_PINK#H  P��150000\n#OFFSET<Y:3>##COLORCOLOR_SKYBLUE#��л����֧��\n#OFFSET<Y:3>##COLORCOLOR_PURPLE#ף����Ϸ���",
	},
}]]


function show(player, num)
	local tab = loadstring(" return "..data)()
	local tab1 = loadstring(" return "..data1)()
	local num =  tonumber(num)
	if num < 0 or num > 3 then 
		showmsg(player, "NPC�ű����ô���,����ϵ����Ա")
		return""
	end
	local dj = lualib:GetInt(player, "nobility")
	if num == 2 then 
		if dj < #tab then 
		showmsg(player, "�����м��ƺ�,��Ҫ�����ƺ�ȫ����ͨ")
		return""
		end
	end
	
	if num == 3 then 
		lek = #tab + #tab1
		if dj < lek then 
		showmsg(player, "���׸߼��ƺ�,��Ҫ�м��ƺ�ȫ����ͨ")
		return""
		end
	end
	local att = data 
	if num == 2 then 
		att = data1
	elseif num == 3  then 
	   att = data2	
	end
	
	local strs = [[
		local handle = GetWindow(nil, "nobility")
		if handle ~= 0 then WndClose(handle) return end
	]]
	lualib:ShowFormWithContent(player, "�ű���", strs)
	
	local str = " nobility_t = "..att
	str = str .." nobility_itx = "..num
	str = str .." nobility_lv = "..lualib:GetInt(player, "nobility")
	lualib:ShowFormWithContent(player, "�ű���", str)
	lualib:ShowFormWithContent(player, "form�ļ���", "Nobility")
	return ""
end


function main(player, idx,num)
	local idx = tonumber(idx)
	local num = tonumber(num)
	local tab = nil 
	
	   if num == 1 then
		  tab = loadstring(" return "..data)()[idx]
	elseif num == 2 then 
		 tab = loadstring(" return "..data1)()[idx]
	elseif num == 3 then 
		tab = loadstring(" return "..data2)()[idx]
	end 	 
		

	
	local lv = lualib:GetInt(player, "nobility")
	
	if lv >= tab.req then
		showmsg(player, "���Ѿ��������óƺ��ˡ�")
		return ""
	end
	
	
	if tab.msg ~= nil then
		if lv + idx < tab.req then
			showmsg(player, tab.msg)
			return ""
		end
	end
	
	if lv + 1 ~= tab.req then
		showmsg(player, "���Ƚ�����һ���ƺš�")
		return ""
	end
	
	if lualib:GetIngot(player) < tab.ingot then
		showmsg(player, "��Ǹ������Ԫ���������㣬�޷������ƺš�")
		return ""
	end
	
	if lualib:GetGold(player) < tab.gold then
		showmsg(player, "��Ǹ�����Ľ�Ҳ��㣬�޷������ƺš�")
		return ""
	end
	
	if not lualib:SubGold(player, tab.gold, "�����ƺ�", player) then
		showmsg(player, "��Ǹ�����Ľ�Ҳ��㣬�޷������ƺš�")
		return ""
	end
	
	if not lualib:SubIngot(player, tab.ingot, "�����ƺ�", player) then
		showmsg(player, "��Ǹ������Ԫ���������㣬�޷������ƺš�")
		return ""
	end
	
	lualib:AddBuff(player, tab.name, 0)
	lualib:AddTitle(player, tab.title)
	lualib:ApplyTitle(player, tab.title)
	lualib:SetInt(player, "nobility", lv + 1)
	
	showmsg(player, "��ϲ����á�"..tab.name.."���ƺţ����Ի�ô����������")
	local str = "nobility_lv = "..lualib:GetInt(player, "nobility")
	lualib:ShowFormWithContent(player, "�ű���", str);
	local str = 
	[[
	  
		nobility.gengxin()
	]]
	lualib:ShowFormWithContent(player, "�ű���", str)
	return ""
end

function showmsg(player, msg)
	lualib:ShowFormWithContent(player, "�ű���", "msgbox = "..string.format("%q", msg))
	lualib:ShowFormWithContent(player, "form�ļ���", "MsgBox")
end