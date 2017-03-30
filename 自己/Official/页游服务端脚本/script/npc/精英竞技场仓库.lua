
local gold_value = 1000000
local gold__ = 2000
local gold_ = "����"
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/װ����ʦ")

function main(npc, player)
    local msg = "�......��İ����������𣿸Ͽ�浽��������ɣ������߽���֮�ˣ�����Ϊ��������������Ե�Ŷ��\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:2>##IMAGE1902700030#<@InfoWarehouse *01*���򿪲ֿ⡹     >#IMAGE1902700030#<@InfoWarehouseAdv *01*���߼��ֿ⡹    >#IMAGE1902700030#<@Jin_DH *01*����Ҷһ���   >\n"
    msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."                     #OFFSET<X:0,Y:0>##IMAGE1902700018#<@main_ex *01*����װ����װ����ʦ��>\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                               #OFFSET<X:0,Y:-6>##IMAGE1902700015#<@MapMoveXYA#����#232#229#3 *01*�����ǹ㳡>"
	return msg
end


function InfoWarehouse(npc, player)
    lualib:OpenWarehouse(npc, player)
    --lualib:ShowForm(player, "�ֿ��")
    return ""
end

function InfoWarehouseAdv(npc, player)
    lualib:OpenWarehouseAdv(npc, player)
    --lualib:ShowForm(player, "�߼��ֿ��")
    return ""
end

--��ҽ������һ���

function Jin_DH(npc_guid, player_guid)
	local msg = "�ҿ��Խ���ҡ��һ����ɽ������򽫽������һ����ɽ�ң��������һ��������Ҫ�۳�2000��ң���\n \n \n"
	msg = msg.." #OFFSET<X:0,Y:-4>##IMAGE1902700030#<@ExchangeGold *01*����ҡ��һ����ɽ���>\n "
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE1902700030#<@ExchangeGoldEx *01*���������һ����ɽ��>\n \n"
	msg = msg.." #OFFSET<X:0,Y:0>##IMAGE1902700019#<@main *01*����>"
	return msg
end

function ExchangeGold(npc_guid, player_guid)
    if not lualib:Player_IsGoldEnough(player_guid, gold_value, false) then
        return "��Ҳ���"..gold_value
    end

	if lualib:Player_GetBagFree(player_guid) < 1 then return "�������ˣ�" end
	
    if not lualib:Player_SubGold(player_guid, gold_value, false, "�۽�ң����ǲֿ⽫��ҡ��һ����ɽ���", "���ǲֿ�") then
        return "�۳����ʧ�ܣ�"
    end

	local result = lualib:Player_GiveItemUnbind(player_guid, "����", 1, "����Ʒ�������һ�", "���ǲֿ�")
	if result == false then
		return "ϵͳ��������ϵGM@3��"
	end

	lualib:SysMsg_SendTipsMsg(player_guid, "���һ��������ɹ�")
	lualib:SysMsg_SendTriggerMsg(player_guid, "���һ��������ɹ�")
	return "��ҡ��һ��������ɹ���\n \n \n \n \n \n #OFFSET<X:0,Y:-4>##IMAGE1902700030#<@ExchangeGold *01*�����һ�>\n #OFFSET<X:0,Y:4>##IMAGE1902700019#<@Jin_DH *01*����>"
end

function ExchangeGoldEx(npc_guid, player_guid)
	local count = lualib:Player_GetItemCount(player_guid, gold_)
	if count < 1 then
		return "û���ҵ��������޷����һ���\n \n \n \n \n \n \n#IMAGE1902700019#<@main *01*����>"
	end

local result = lualib:Player_DestroyItem(player_guid, gold_, 1, "ɾ��Ʒ����ɽ�ǲֿ�", player_guid)
	if result == false then
		return "ϵͳ��������ϵGM@4��"
	end

    if not lualib:Player_AddGold(player_guid, gold_value - gold__, false, "��ɽ�ǲֿ⽫�������һ����ɽ��", player_guid) then
        return "��ӽ��ʧ�ܣ�"
    end

	lualib:SysMsg_SendTipsMsg(player_guid, "��ҡ��һ����ɹ���������"..gold_value - gold__.."��")
	lualib:SysMsg_SendTriggerMsg(player_guid, "��ҡ��һ����ɹ���������"..gold_value - gold__.."��")
	return "�������һ�����ҳɹ���\n \n \n \n \n \n #OFFSET<X:0,Y:-4>##IMAGE1902700030#<@ExchangeGoldEx *01*�����һ�>\n #OFFSET<X:0,Y:4>##IMAGE1902700019#<@Jin_DH *01*����>"
end
--��ҽ������һ���

--��������

local table_bag = {}
table_bag["1"] = {"��֯��", "����", 10, 5000}
table_bag["2"] = {"Ƥ����", "Ƥ��", 10, 10000}
table_bag["3"] = {"������", "�߼�Ƥ��", 10, 15000}





function GenItem(npc, player)
	local msg = "����Ҫ�����������͵İ�����\n \n"
	msg = msg.."<@GenBag#1 *01*��֯��>\n"
	msg = msg.."<@GenBag#2 *01*Ƥ����>\n"
	msg = msg.."<@GenBag#3 *01*������>\n \n"
	msg = msg.."<@Leave *01*���뿪��>\n"
	return msg
end

function GenBag(npc, player, types)
	local msg = "���� "..table_bag[types][1].." ��Ҫ "..table_bag[types][3].." �� "..table_bag[types][2].." ��"..table_bag[types][4].." ��ң��㡸ȷ����Ҫ������"
	msg = msg.."<@GenBagEx#"..types.." *01*��ȷ����>"
	msg = msg.."<@Leave *01*���뿪��>"
	return msg
end

function GenBagEx(npc, player, types)
	if table_bag[types] == nil then return "ϵͳ����@1��" end

    if not lualib:Player_IsGoldEnough(player, table_bag[types][4], false) then
        return "��Ǯ����"
    end

	local table_name = {table_bag[types][1], table_bag[types][2]}
	local table_count = {1, table_bag[types][3]}
	local table_bind = {0, 0}
	local table_remove = {0, 1}
	if lualib:Player_ItemRequest(player, table_name, table_count, table_bind, table_remove, "������������ǲֿ�", player) == false then
		lualib:SysMsg_SendWarnMsg(player, "����ʧ�ܣ�")
		return "��������ʧ�ܣ���ȷ�ϲ����Ƿ��㹻�������Ƿ���ʣ��ո�"
	end

    if not lualib:Player_SubGold(player, table_bag[types][4], false, "�۽�ң����ǲֿ�������컨��", "���ǲֿ�") then
        return "�۳����ʧ�ܣ�"
    end

	lualib:SysMsg_SendTriggerMsg(player, "��Ʒ "..table_bag[types][1].." ������ɹ���")
	return "��Ʒ "..table_bag[types][1].." ������ɹ���"
end

function Leave()
	return ""
end

function MapMoveXYA(npc, player, map_key_name, x, y, r)
	local msg=""
	--gold = 0
	--if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "���ǲֿ�") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	return msg
end
