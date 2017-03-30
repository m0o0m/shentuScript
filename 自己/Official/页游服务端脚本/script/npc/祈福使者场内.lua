local GoldQfBookKeyname   = "��֮��(���)"
local SilverQfBookKeyname = "��֮��(Ԫ��)"
local GoldQfBuffKeyname   = "��֮��(���)"
local SilverQfBuffKeyname = "��֮��(Ԫ��)"
local itemTbl =
	{
		[GoldQfBookKeyname]   = {["type"] = "gold",   ["num"] = 50000},
		[SilverQfBookKeyname] = {["type"] = "silver", ["num"] = 100},
	}

function main(npc, player)
	local msg = ""
	msg = msg .. "     ��ش�½�Ͻ��治��ľ����������������ػ��İ�ȫ�����õ���������ɻ�þ��顣\n"
	msg = msg .. "<@ExBook   *01*������֮��>\n"
	if lualib:Player_IsHasBuff(player, GoldQfBuffKeyname) or lualib:Player_IsHasBuff(player, SilverQfBuffKeyname) then
		msg = msg .. "<@LeaveMap *01*�뿪��֮��>\n"
	else
		msg = msg .. "<@OK *01*�뿪��֮��>\n"
	end
	msg = msg .. "<@Leave    *01*�뿪>"

	return msg
end

function ExBook(npc, player)
	local msg = ""
	msg = msg .. "<@ExBookEx1#" .. GoldQfBookKeyname   .. "   *01*������֮��(���)>\n"
	msg = msg .. "<@ExBookEx1#" .. SilverQfBookKeyname .. "   *01*������֮��(Ԫ��)>\n"

	return msg
end

function ExBookEx1(npc, player, item)
	local msg = ""

	if item == GoldQfBookKeyname then
		msg = msg .. "������֮���մ��һ�������������������֮�غ�ʹ�ÿɻ���������顣�㷺��������ش�½����ֻҪ����50000����ҾͿ�����������\n"
	elseif item == SilverQfBookKeyname then
		msg = msg .. "������֮�����ҵ��������ĺ���ʱ����ҵ���һλ�����������ҵģ�ʲô������Ҫ��100Ԫ���������ۣ�\n"
	else
		msg = msg .. "����"
		return msg
	end

	msg = msg .. "<@ExBookEx2#" .. item .. "   *01*ȷ������>\n"
	msg = msg .. "<@Leave    *01*�뿪>"

	return msg
end

function ExBookEx2(npc, player, item)
	if itemTbl[item].type == "gold" then
		if not lualib:Player_IsGoldEnough(player, itemTbl[item].num, false) then
			return "��Ľ�Ҳ���\n<@main    *01*����>"
		end
		if not lualib:Player_SubGold(player, itemTbl[item].num, false, "��ʹ�߳��⣺����" .. item .. "�۽��", "��ʹ�߳���") then
			lualib:Error("��ʹ�߳��⣺����" .. item .. "�۽��ʧ��")
			return "�۽��ʧ��\n<@main    *01*����>"
		end
	elseif itemTbl[item].type == "silver" then
		if not lualib:Player_IsIngotEnough(player, itemTbl[item].num, false) then
			return "���Ԫ������\n<@main    *01*����>"
		end
		if not lualib:Player_SubIngot(player, itemTbl[item].num, false, "��ʹ�߳��⣺����" .. item .. "��Ԫ��", "��ʹ�߳���") then
			lualib:Error("��ʹ�߳��⣺����" .. item .. "��Ԫ��ʧ��")
			return "��Ԫ��ʧ��\n<@main    *01*����>"
		end
	else
		return "item������\n<@main    *01*����>"
	end

	if lualib:BagFree(player, true, false, false) < 1 then
		return "��ı�������\n<@main    *01*����>"
	end
	if not lualib:AddItem(player, item, 1, false, "��ʹ�߳��⣺����" .. item .. "����Ʒ", "��ʹ�߳���") then
		lualib:Error("��ʹ�߳��⣺����" .. item .. "����Ʒʧ��")
		return "����Ʒʧ��\n<@main    *01*����>"
	end

	local msg = ""
	msg = msg .. "����ɹ�\n����ǰ�������" .. item .. "������" .. lualib:ItemCountByKey(player, item, true, false, false, 0) .. " \n"
	msg = msg .. "\n<@ExBookEx2#" .. item .. "    *01*�ϰ�����һ����>"
	msg = msg .. "\n<@main    *01*����>"
	return msg
end

--�뿪��֮��
function LeaveMap(npc, player)
	local msg = ""

	if lualib:Player_IsHasBuff(player, GoldQfBuffKeyname) or lualib:Player_IsHasBuff(player, SilverQfBuffKeyname) then
		msg = msg .. "����������BUFF������뿪��֮�أ������ܵõ����飬�Ƿ�ȷ���뿪��"
	end

	msg = msg .. "\n<@OK     *01*�ǣ���Ҫ�뿪>\n"
	msg = msg .. "  <@Leave  *01*ȡ��>\n"
	return msg
end

function OK(npc, player)
	local cityTbl =
	{
		{"��ɽ��", ["x"] = 235, ["y"] = 304},
		{"����",   ["x"] = 235, ["y"] = 229}
	}
	local msg = ""

	msg = msg .. "��Ϊ����뿪�е���ϧ����Ҫ���ģ�\n"
	for _, v in pairs(cityTbl) do
		msg = msg .. "<@Back#" .. v[1] .. "#" .. v.x .. "#" .. v.y .. "  *01*" .. v[1] .. ">\n"
	end
	msg = msg .. "<@main *01*�ðɣ��Ҳ�����>\n"
	return msg
end

function Back(npc, player, city, x, y)
	x = tonumber(x)
	y = tonumber(y)

	if not lualib:Player_MapMoveXY(player, city, x, y, 10) then
		lualib:Error("��֮�ػس�ʧ��")
	end
	return ""
end

function Leave(npc, player)
	return ""
end
