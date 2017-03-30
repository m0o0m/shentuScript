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
	msg = msg .. "     �˴�����ش�½�Ͻ��治��ľ����������������ػ��İ�ȫ�����õ���������ɻ�þ��顣\n"
	msg = msg .. "<@EnterMap *01*������֮��>\n"
	msg = msg .. "<@ExBook   *01*������֮��>\n"
	msg = msg .. "<@Leave    *01*�뿪>"

	return msg
end

--������֮��
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

--������֮��
function EnterMap(npc, player)
	local MinLevel = 20

	playerLevel = lualib:Level(player)
	if playerLevel < MinLevel then
		return "���ĵȼ�������Ҫ�󣬱������" .. MinLevel .. "��\n \n<@Leave    *01*�뿪>"
	end

	if not lualib:Player_MapMove(player, "��֮��") then
		lualib:Error(player .. "������֮��ʧ��")
	end
	return ""
end

function Leave(npc, player)
	return ""
end
