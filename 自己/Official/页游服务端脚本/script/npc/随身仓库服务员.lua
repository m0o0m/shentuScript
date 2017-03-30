local gold_value = 1000000
local gold__ = 2000
local gold_ = "����"

function on_create(npc_guid)
	lualib:AddTimer(npc_guid, 813, 180000, 1, "ssck_scnpc")
	lualib:AddTimer(npc_guid, 814, 1000, -1, "ssck_scnpcc")
end

function ssck_scnpc(npc_guid)
     lualib:Npc_Remove(npc_guid)
end

function ssck_scnpcc(npc_guid)
	local player_guid = lualib:GetStr(npc_guid, "vip6_player_guid")
	if not lualib:Player_IsOnline(player_guid) then
    lualib:Npc_Remove(npc_guid)
	end
end

function main(npc, player)
	local msg = ""
	local player_npc = lualib:GetStr(npc, "vip6_player_guid")
	if player_npc == player then
		msg = msg.."�߹�����ˣ�������ʲô��Ҫ��#COLORCOLOR_RED#��ÿ�γ���ʱ��Ϊ3���ӣ���ץ��ʱ�䣡#COLOREND#\n \n"
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		msg = msg.."#IMAGE1902700037#<@InfoWarehouse *01*�򿪲ֿ�>\n"
		msg = msg.."#IMAGE1902700037#<@InfoWarehouseAdv *01*�򿪸߼��ֿ�>\n"
		msg = msg.."#OFFSET<X:0,Y:2>##IMAGE1902700037##OFFSET<X:0,Y:-2>#<@Jin_DH *01*����������ɶһ�>"
		return msg
	else
		msg = msg.."�������ҵ����ˣ����޷�Ϊ���ṩ���·���\n#COLORCOLOR_DARKGREY#�򿪲ֿ�\n�򿪸߼��ֿ�\n����������ɶһ�#COLOREND#\n \n"
		msg = msg.."��Ҫӵ�к���һ�����������֣�#COLOREND#\n \n�����#IMAGE<ID:1902700037>#<@OpenShop#24 *01*��˴��ϱ��̵깺������ֿ�������̵�>\n"
		return msg
	end
end

function InfoWarehouse(npc, player)
	local ks = anquan(npc, player)
	if ks == true then
		lualib:OpenWarehouse(npc, player)
		--lualib:ShowForm(player, "�ֿ��")
	else
		lualib:ShowForm(player, "�˺Ű�ȫ")
		return "�����������뱣��������������������"
	end
    return ""
end

function InfoWarehouseAdv(npc, player)
	local ks = anquan(npc, player)
	if ks == true then
		lualib:OpenWarehouseAdv(npc, player)
		--lualib:ShowForm(player, "�߼��ֿ��")
	else
		lualib:ShowForm(player, "�˺Ű�ȫ")
		return "�����������뱣��������������������"
	end
    return ""
end

--��ҽ������һ���

function Jin_DH(npc_guid, player_guid)
	local msg = "�ҿ��Խ���ҡ��һ����ɽ������򽫽������һ����ɽ�ң��������һ��������Ҫ�۳�2000��ң���\n \n \n"
	msg = msg.."#OFFSET<X:0,Y:-4>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@ExchangeGold *01*����ҡ��һ����ɽ���>\n "
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@ExchangeGoldEx *01*���������һ����ɽ��>\n \n \n"
	msg = msg.."                                               #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end

function ExchangeGold(npc_guid, player_guid)
    if not lualib:Player_IsGoldEnough(player_guid, gold_value, false) then
        return "��Ҳ���"..gold_value.."\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end
	
	if lualib:Player_GetBagFree(player_guid) < 1 then return "�������ˣ�\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Jin_DH *01*�����ء�>" end

    if not lualib:Player_SubGold(player_guid, gold_value, false, "�۽�ң���ɽ�ǲֿ⽫��ҡ��һ����ɽ���", player_guid) then
        return "�۳����ʧ�ܣ�"
    end

	local result = lualib:Player_GiveItemUnbind(player_guid, "����", 1, "����Ʒ����ɽ�ǲֿ�", player_guid)
	if result == false then
		return "ϵͳ��������ϵGM@3��"
	end

	lualib:SysMsg_SendTipsMsg(player_guid, "���һ��������ɹ�")
	lualib:SysMsg_SendTriggerMsg(player_guid, "���һ��������ɹ�")
	return "��ҡ��һ��������ɹ���\n \n \n \n \n \n \n #OFFSET<X:0,Y:-4>##IMAGE1902700037#<@ExchangeGold *01*�����һ�>\n                                               #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Jin_DH *01*�����ء�>"
end

function ExchangeGoldEx(npc_guid, player_guid)
	local count = lualib:Player_GetItemCount(player_guid, gold_)
	if count < 1 then
		return "û���ҵ��������޷����һ���\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
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
	return "�������һ�����ҳɹ���\n \n \n \n \n \n \n #OFFSET<X:0,Y:-4>##IMAGE1902700037#<@ExchangeGoldEx *01*�����һ�>\n                                               #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Jin_DH *01*�����ء�>"
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
	if lualib:Player_ItemRequest(player, table_name, table_count, table_bind, table_remove, "�����������ɽ�ǲֿ�", player) == false then
		lualib:SysMsg_SendWarnMsg(player, "����ʧ�ܣ�")
		return "��������ʧ�ܣ���ȷ�ϲ����Ƿ��㹻�������Ƿ���ʣ��ո�"
	end

    if not lualib:Player_SubGold(player, table_bag[types][4], false, "�۽�ң���ɽ�ǲֿ�������컨��", player) then
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
	gold = 0
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "��ɽ�ǲֿ�") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	return msg
end


function anquan(npc, player)
	local switch = lualib:GetInt(player, "set_lock_pwd")
	
	local player_code = lualib:GetStr(player, "_lock_pwd")
	if player_code ==  "" then
		lualib:SysMsg_SendPromptMsg(player, "�㻹δ���òֿ�������룬����������������ĲƲ���ȫ��")
		return true
	end
	if switch == 1 then 
		return true
	end
	return false
end

function zhanghaoanquan(npc, player)
	lualib:ShowForm(player, "�ʺŰ�ȫ")
	return ""
end