gQuestMap =
{
   {1013, "", "QuestAccomplish1013","", "*01*�������: �����͸߼��ֿ�����"},
   {1014, "QuestAccept1014", "","01*����: ȥ��ɽ��", ""}
}
gQuestNum = table.getn(gQuestMap)

local gold_value = 1000000
local gold__ = 2000
local gold_ = "����"
local yao = {"̫��ˮ","ǿЧ̫��ˮ","����ѩ˪","����ҩ"}

function main(npc, player)
    local msg = "ม�����İ����������𣿸Ͽ�浽��������ɣ������߽���֮�ˣ�����Ϊ��������������Ե�Ŷ��\n \n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">\n \n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[3].." "..v[5]..">\n \n"
            end
        end
    end
	msg = msg.."#IMAGE1902700030#<@InfoWarehouse *01*�򿪲ֿ�>\n"
	msg = msg.."#IMAGE1902700030#<@InfoWarehouseAdv *01*�򿪸߼��ֿ�>\n"
	msg = msg.."#IMAGE1902700030#<@Jin_DH *01*����������ɶһ�>\n"
	msg = msg.."#IMAGE1902700037#<@zhanghaoanquan *01*�˺Ű�ȫ>"
	--msg = msg.."#COLORCOLOR_GOLD# ____________________________________________#COLOREND#\n"
	--msg = msg.."#COLORCOLOR_BLUE#��#COLOREND#".."<@KunYao *01*ҩˮ����>".."#COLORCOLOR_BLUE#��#COLOREND#"
	--msg = msg.."<@GenItem *01*��������>\n"

    return msg
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

function KunYao(npc,player)
	local msg = ""
	msg = msg.."<@KunYao1 *01*ҩˮ����>\n"
	return msg
end

function KunYao1(npc,player)
	local msg = ""
	msg = msg.."<@huishenshui *01*����ˮ>\n"
	--msg = msg.."<@qxhsh *01*ǿЧ����ˮ>\n"
	--msg = msg.."<@wnxs *01*��������>\n"
	--msg = msg.."<@lsy *01*����ҩ>\n"
	return msg
end


function KunYao(npc, player)
	local msg = ""
	msg = msg.."<@huishenshui *01*����ˮ>\n"
	msg = msg.."<@qxhuishenshui *01*ǿЧ����ˮ>\n"
	msg = msg.."<@wnxs *01*��������>\n"
	msg = msg.."<@lsy *01*����ҩ>\n"
	return msg
end


--̫��ˮ

function huishenshui(npc_guid,player_guid)
	--lualib:Player_DestroyItemUnbind(player_guid, "̫��ˮ", 6, "ɾ��Ʒ��װ������", player_guid)
		local tyscount = lualib:Player_GetItemCount(player_guid, "̫��ˮ")
		local dkscount = lualib:Player_GetItemCount(player_guid, "������")
	if tyscount < 6 then
		return  "����ˮ����6ƿ���޷�����"
	end

	if dkscount < 1 then
		return  "û�д��������޷�����"
	end



	local result1 = lualib:Player_DestroyItem(player_guid, "̫��ˮ", 6, "ɾ��Ʒ����ɣ��ֿ�", player_guid)
	local result2 = lualib:Player_DestroyItem(player_guid, "������", 1, "ɾ��Ʒ����ɣ��ֿ�", player_guid)
	if result1 == false then
		return "ϵͳ��������ϵGM@4��"
		else

		if result2 == false then
		return "ϵͳ��������ϵGM@4��"

		end
		lualib:Player_GiveItemUnbind(player_guid, "̫��ˮ��", 1, "����Ʒ����ɣ��ֿ�", player_guid)
	end


	return "�����ɹ�"
end

--ǿЧ̫��ˮ

function qxhuishenshui(npc_guid,player_guid)
	--lualib:Player_DestroyItemUnbind(player_guid, "̫��ˮ", 6, "ɾ��Ʒ��װ������", player_guid)
		local tyscount = lualib:Player_GetItemCount(player_guid, "ǿЧ̫��ˮ")
		local dkscount = lualib:Player_GetItemCount(player_guid, "������")
	if tyscount < 6 then
		return  "ǿЧ����ˮ����6ƿ���޷�����"
	end

	if dkscount < 1 then
		return  "û�д��������޷�����"
	end



	local result1 = lualib:Player_DestroyItem(player_guid, "ǿЧ̫��ˮ", 6, "ɾ��Ʒ����ɣ��ֿ�", player_guid)
	local result2 = lualib:Player_DestroyItem(player_guid, "������", 1, "ɾ��Ʒ����ɣ��ֿ�", player_guid)
	if result1 == false then
		return "ϵͳ��������ϵGM@4��"
		else

		if result2 == false then
		return "ϵͳ��������ϵGM@4��"

		end
		lualib:Player_GiveItemUnbind(player_guid, "ǿЧ̫��ˮ��", 1, "����Ʒ����ɣ��ֿ�", player_guid)
	end


	return "�����ɹ�"
end


--����ѩ˪
function wnxs(npc_guid,player_guid)
	--lualib:Player_DestroyItemUnbind(player_guid, "̫��ˮ", 6, "ɾ��Ʒ��װ������", player_guid)
		local tyscount = lualib:Player_GetItemCount(player_guid, "����ѩ˪")
		local dkscount = lualib:Player_GetItemCount(player_guid, "������")
	if tyscount < 6 then
		return  "�������β���6�����޷�����"
	end

	if dkscount < 1 then
		return  "û�д��������޷�����"
	end



	local result1 = lualib:Player_DestroyItem(player_guid, "����ѩ˪", 6, "ɾ��Ʒ����ɣ��ֿ�", player_guid)
	local result2 = lualib:Player_DestroyItem(player_guid, "������", 1, "ɾ��Ʒ����ɣ��ֿ�", player_guid)
	if result1 == false then
		return "ϵͳ��������ϵGM@4��"
		else

		if result2 == false then
		return "ϵͳ��������ϵGM@4��"

		end
		lualib:Player_GiveItemUnbind(player_guid, "����ѩ˪��", 1, "����Ʒ����ɣ��ֿ�", player_guid)
	end


	return "�����ɹ�"
end

--����ҩ
function lsy(npc_guid,player_guid)
	--lualib:Player_DestroyItemUnbind(player_guid, "̫��ˮ", 6, "ɾ��Ʒ��װ������", player_guid)
		local tyscount = lualib:Player_GetItemCount(player_guid, "����ҩ")
		local dkscount = lualib:Player_GetItemCount(player_guid, "������")
	if tyscount < 6 then
		return  "����ҩ����6ƿ���޷�����"
	end

	if dkscount < 1 then
		return  "û�д��������޷�����"
	end



	local result1 = lualib:Player_DestroyItem(player_guid, "����ҩ", 6, "ɾ��Ʒ����ɣ��ֿ�", player_guid)
	local result2 = lualib:Player_DestroyItem(player_guid, "������", 1, "ɾ��Ʒ����ɣ��ֿ�", player_guid)
	if result1 == false then
		return "ϵͳ��������ϵGM@4��"
		else

		if result2 == false then
		return "ϵͳ��������ϵGM@4��"

		end
		lualib:Player_GiveItemUnbind(player_guid, "����ҩ��", 1, "����Ʒ����ɣ��ֿ�", player_guid)
	end


	return "�����ɹ�"
end





--��ҽ������һ���

function Jin_DH(npc_guid, player_guid)
	local msg = "�ҿ��Խ���ҡ��һ����ɽ������򽫽������һ����ɽ�ң��������һ��������Ҫ�۳�2000��ң���\n \n \n \n"
	msg = msg.."#IMAGE1902700030#<@ExchangeGold *01*����ҡ��һ����ɽ���>\n \n"
	msg = msg.."#IMAGE1902700030#<@ExchangeGoldEx *01*���������һ����ɽ��>\n"
	return msg
end

function ExchangeGold(npc_guid, player_guid)
    if not lualib:Player_IsGoldEnough(player_guid, gold_value, false) then
        return "��Ҳ���"..gold_value
    end
	
	if lualib:Player_GetBagFree(player_guid) < 1 then return "�������ˣ�" end

    if not lualib:Player_SubGold(player_guid, gold_value, false, "�۽�ң���ɣ��ֿ⽫��ҡ��һ����ɽ���", "��ɣ��ֿ�") then
        return "�۳����ʧ�ܣ�"
    end

	local result = lualib:Player_GiveItemUnbind(player_guid, "����", 1, "����Ʒ����ɣ��ֿ�", player_guid)
	if result == false then
		return "ϵͳ��������ϵGM@3��"
	end

	lualib:SysMsg_SendTipsMsg(player_guid, "���һ��������ɹ�")
	lualib:SysMsg_SendTriggerMsg(player_guid, "���һ��������ɹ�")
	return "���һ��������ɹ���"
end

function ExchangeGoldEx(npc_guid, player_guid)
	local count = lualib:Player_GetItemCount(player_guid, gold_)
	if count < 1 then
		return "û���ҵ��������޷����һ�����"
	end

	local result = lualib:Player_DestroyItem(player_guid, gold_, 1, "ɾ��Ʒ����ɣ��ֿ�", player_guid)
	if result == false then
		return "ϵͳ��������ϵGM@4��"
	end

    if not lualib:Player_AddGold(player_guid, gold_value - gold__, false, "�ӽ�ң���ɣ��ֿ⽫�������һ����ɽ��", player_guid) then
        return "������ʧ�ܣ�"
    end

	lualib:SysMsg_SendTipsMsg(player_guid, "��ҡ��һ����ɹ���������"..gold_value - gold__.."��")
	lualib:SysMsg_SendTriggerMsg(player_guid, "��ҡ��һ����ɹ���������"..gold_value - gold__.."��")
	return "��ҡ��һ����ɹ���"
end
--��ҽ������һ���

--��������

local table_bag = {}
table_bag["1"] = {"��֯��", "����", 10, 5000}
table_bag["2"] = {"Ƥ����", "Ƥ��", 10, 10000}
table_bag["3"] = {"������", "�߼�Ƥ��", 10, 15000}





function GenItem(npc, player)
	local msg = "����Ҫ�����������͵İ�����\n\n\n\n"
	msg = msg.."<@GenBag#1 *01*��֯��>\n"
	msg = msg.."<@GenBag#2 *01*Ƥ����>\n"
	msg = msg.."<@GenBag#3 *01*������>\n"
	msg = msg.."<@Leave *01*���뿪��>\n"
	return msg
end

function GenBag(npc, player, types)
	local msg = "���� "..table_bag[types][1].." ��Ҫ "..table_bag[types][3].." �� "..table_bag[types][2].." ��"..table_bag[types][4].." ��ң��㡸ȷ����Ҫ������\n\n\n\n"
	msg = msg.."<@GenBagEx#"..types.." *01*��ȷ����>\n"
	msg = msg.."<@Leave *01*���뿪��>\n"
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
	if lualib:Player_ItemRequest(player, table_name, table_count, table_bind, table_remove, "�����������ɣ��ֿ�", player) == false then
		lualib:SysMsg_SendWarnMsg(player, "����ʧ�ܣ�")
		return "��������ʧ�ܣ���ȷ�ϲ����Ƿ��㹻�������Ƿ���ʣ��ո�"
	end

    if not lualib:Player_SubGold(player, table_bag[types][4], false, "�۽�ң���ɣ��ֿ�������컨��", "��ɣ��ֿ�") then
        return "�۳����ʧ��"
    end

	lualib:SysMsg_SendTriggerMsg(player, "��Ʒ "..table_bag[types][1].." ������ɹ���")
	return "��Ʒ "..table_bag[types][1].." ������ɹ���"
end

function Leave()
	return ""
end


-------1013��
function QuestAccomplish1013(npc, player)
    msg = "���չ���Χ�������ⴢ�����Խ��Խ�٣�����ôЩ���ӣ��㿴������������洢��������ȥ��һЩ��������͸߼��ֿ�ĵ��ߡ�����������һ������˫��ʹ�ÿ�����\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1013a *01* �����͸߼��ֿ������>\n"
    return msg
end

function Accomplish1013a(npc, player)
    msg = "�������������ˣ����Ҿ��������ˣ�\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1013b *01* ��������˵��>\n"
    return msg
end

function Accomplish1013b(npc, player)
    if lualib:AccomplishQuest(player, 1013, 0) == true then
        msg = "����Χ�������Ƕ��޷��߳��壬������˹���Ҳ�ز����ˡ����Ǵ���Ψһ��ϣ������ﶼָ������ȥ��ɽ�����ȱ���������ǳ���������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1014 *01* �ҿ���һ��>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1014��

function QuestAccept1014(npc,player)
    msg = "��������¹��ˣ���������ذ����æ��\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1014a *01* �ðɣ��Ұ���ȥ��ɽ����һ��>\n"
	return msg
end

function Accept1014a(npc,player)
    msg = "���˳������������������ˣ�����ͨ��󣬶��������ȫ֮�ߣ�\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1014b *01* �õģ�����ͳ���>\n"
	return msg
end

function Accept1014b(npc, player)
    if lualib:AcceptQuest(player, 1014) == true then
		local keyname = lualib:KeyName(npc)
	
		if lualib:Player_GetCustomVarInt(player, "��Ѫ����(24Сʱ)") == 1 then
				lualib:SysMsg_SendWarnMsg(player, "��Ѫ����(24Сʱ)���Ѿ���ȡ���ˣ�")
				return "��Ѫ����(24Сʱ)���Ѿ���ȡ���ˣ���\n \n \n \n \n \n \n"
		else		
			 lualib:Player_SetCustomVarInt(player, "��Ѫ����(24Сʱ)", 1)
			local hanxue_shixiao = lualib:AddSingleItem(player, "��Ѫ����(24Сʱ)", 1, 1, "�������Ʒ", keyname)
			if hanxue_shixiao =="" then
				return "���躹Ѫ����ʧ��"
			end
			local att_name = 109
			local att_value = lualib:GenRandom(5, 10)
			local setatt = lualib:Equip_SetExtProp(player, hanxue_shixiao, 0, att_name, att_value)
			lualib:Item_NotifyUpdate(player, hanxue_shixiao)
				return "�ֿ����Ա��������һƥ��Ѫ������������ȥ��ɽ����#COLORCOLOR_GREENG# #NPCLINK<STR:�������,NPCID:25001>##COLOREND#��ȡ�"
		end
    else
        return "�����ȡʧ��"
    end
end

function Lever(npc,player)
	return ""
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
