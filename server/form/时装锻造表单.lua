local data = {}
--��ʱװ����ʦ��NPC��������������NPC��������ͬչʾ��ͬ��ʱװ�ϳ�����
data["ʱװ����ʦ"] = [[{
	{
		name = "һ��ʱװ",--����
		{"�������µ�", {"ʱװ��Ƭ", 10}, 50},--Ŀ��װ�� + {����+����} + ����Ԫ��
		{"��ƽս��", {"ʱװ��Ƭ", 10}, 50},
	},
	{
		name = "����ʱװ",
		{"��ӧ����ǹ", {"ʱװ��Ƭ", 20}, 100, {"�������µ�", 1}},--Ŀ��װ�� + {����+����} + ����Ԫ�� + {����װ�� + ����}
		{"��ͳս��", {"ʱװ��Ƭ", 20}, 100, {"��ƽս��", 1}},
	},
	{
		name = "����ʱװ",
		{"����ս��", {"ʱװ��Ƭ", 20}, 100, {"��ӧ����ǹ", 1}},--Ŀ��װ�� + {����+����} + ����Ԫ�� + {����װ�� + ����}
		{"����ս��", {"ʱװ��Ƭ", 20}, 100, {"��ͳս��", 1}},
	},
	{
		name = "�Ľ�ʱװ",
		{"���������", {"ʱװ��Ƭ", 20}, 100, {"����ս��", 1}},--Ŀ��װ�� + {����+����} + ����Ԫ�� + {����װ�� + ����}
		{"����ս��", {"ʱװ��Ƭ", 20}, 100, {"����ս��", 1}},
	},
}]]


data["ʱװ����ʦ[�м�]"] = [[{
	{
		name = "���ʱװ",
		{"ս����˫�", {"ʱװ��Ƭ", 80}, 400, {"���������", 1}},
		{"����ս��", {"ʱװ��Ƭ", 80}, 400, {"����ս��", 1}},
	},
	{
		name = "����ʱװ",
		{"����𹿰�", {"ʱװ��Ƭ", 120}, 600, {"ս����˫�", 1}},
		{"��սʥ��", {"ʱװ��Ƭ", 120}, 600, {"����ս��", 1}},
	},
}]]


data["ʱװ����ʦ[�ռ�]"] = [[{
	{
		name = "�ռ�ʱװ",
		{"���Ʋ��", {"ʱװ��Ƭ", 120}, 600, {"����𹿰�", 1}},
		{"�˶�ʤ��", {"ʱװ��Ƭ", 120}, 600, {"��սʥ��", 1}},
	},
}]]



function show(player, npckey)
	if data[npckey] == nil then
		lualib:MsgBox(player, "NPC���������ݴ���,��ϸ������ݱ�.")
		return ""
	end
	local str = " fashion_tab = "..data[npckey]
	str = str .." fashion_npc = "..string.format("%q", npckey)
	lualib:ShowFormWithContent(player, "�ű���", str)
	lualib:ShowFormWithContent(player, "form�ļ���", "ʱװ����")
	return ""
end


function main(player, pos, idx, types, npckey)
	local pos = tonumber(pos)
	local idx = tonumber(idx)
	local types = tonumber(types)
	if data[npckey] == nil then
		lualib:MsgBox(player, "NPC���������ݴ���,��ϸ������ݱ�.")
		return ""
	end
	if lualib:GetBagFree(player) < 1 then
		lualib:MsgBox(player, "�����ٱ���һ�������ռ䡣")
		return "�����ٱ���һ�������ռ䡣"
	end
	local tab = loadstring(" return "..data[npckey])()
	local t = tab[pos][idx]
	if types == 1 then
		if lualib:ItemCount(player, t[2][1]) < t[2][2] then
			lualib:MsgBox(player, "��Ǹ�����ġ���Ԫ�顱���㡣")
			return "��Ǹ�����ġ���Ԫ�顱���㡣"
		end
	else
		if lualib:GetIngot(player) < t[3] then
			lualib:MsgBox(player, "��Ǹ������Ԫ�����㡣")
			return "��Ǹ������Ԫ�����㡣"
		end
	end
	if t[4] ~= nil then
		if lualib:ItemCount(player, t[4][1]) < t[4][2] then
			lualib:MsgBox(player, "��Ǹ����������û�С�"..t[4][1].."����")
			return "��Ǹ����������û�С�"..t[4][1].."����"
		end
	end
	if types == 1 then
		if not lualib:DelItem(player, t[2][1], t[2][2], 2, "ʱװ����", npckey) then
			lualib:MsgBox(player, "��Ǹ�����ġ�"..t[2][1].."�����㡣")
			return "��Ǹ�����ġ�"..t[2][1].."�����㡣"
		end
	else
		if not lualib:SubIngot(player, t[3], "ʱװ����", npckey) then
			lualib:MsgBox(player, "��Ǹ������Ԫ�����㡣")
			return "��Ǹ������Ԫ�����㡣"
		end
	end
	if t[4] ~= nil then
		if not lualib:DelItem(player, t[4][1], t[4][2], 2, "ʱװ����", npckey) then
			lualib:MsgBox(player, "��Ǹ����������û�С�"..t[4][1].."����")
			return "��Ǹ����������û�С�"..t[4][1].."����"
		end
	end
	lualib:AddItem(player, t[1], 1, false, "ʱװ����", npckey)
	lualib:MsgBox(player, "��ϲ���ɹ��������".. lualib:KeyName2Name(t[1], 4) .."����")
	return "��ϲ���ɹ��������".. lualib:KeyName2Name(t[1], 4) .."����"
end