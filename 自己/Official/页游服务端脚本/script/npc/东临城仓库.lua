
local gold_value = 1000000
local gold__ = 2000
local gold_ = "����"
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/װ����ʦ")
local baoguo_table = {
                        {"�鲼��", 6786}, 
                        {"˿���", 1696}, 
                        {"��֯��", 754}, 
                        {"Ƥ����", 424}, 
                        {"������", 271}, 
                        {"Ǭ����(10��)", 67}, 
                      }


local talk_t = {"ս��������ˮ�����ȥ����������ۻ��ˣ�ʲôʱ����������Ϣһ���أ�", "�������Щ�ң���ȡ��Ʒ��ʱ����С�ģ�������ˡ�", "��Ϊһ���ֿ����Ա����Ҫţһ��Կ����͵ľ���"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 27000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    local msg = "    �......��İ������������¸ҵ�ս����ζ�ŷ����ջ��⻰��Ȼһ��û��ѽ��\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."#OFFSET<X:40,Y:2>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@InfoWarehouse *01*���򿪲ֿ⡹>#OFFSET<X:50,Y:1>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@InfoWarehouseAdv *01*���߼��ֿ⡹>\n#OFFSET<X:40,Y:1>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@Jin_DH *01*����Ҷһ���>#OFFSET<X:50,Y:1>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@Bao_Pro *01*������������>\n"
    msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."#OFFSET<X:40,Y:1>##IMAGE1902700037#<@zhanghaoanquan *01*�˺Ű�ȫ>             #OFFSET<X:0,Y:0>#<@main_ex *01*����װ����װ����ʦ��>\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@MapMoveXYA#���ٳ�#330#300#3 *01*�����Ĺ㳡>"
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

--��ҽ������һ���

function Jin_DH(npc_guid, player_guid)
	local msg = "ͨ���ҿ���ʵ�ֽ����������໥�һ���\n \n \n"
	msg = msg.." #OFFSET<X:0,Y:-4>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@ExchangeGold *01*����ҡ��һ����ɽ�������ѣ�>\n "
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@ExchangeGoldEx *01*���������һ����ɽ�ң�������2000��ң�>\n \n \n"
	msg = msg.."                                               #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end

function ExchangeGold(npc_guid, player_guid)
    if not lualib:Player_IsGoldEnough(player_guid, gold_value, false) then
        return "��Ҳ���"..gold_value.."\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

	if lualib:Player_GetBagFree(player_guid) < 1 then return "�������ˣ�\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Jin_DH *01*�����ء�>" end

    if not lualib:Player_SubGold(player_guid, gold_value, false, "�۽�ң���ɽ�ֿ⽫��ҡ��һ����ɽ���", "��ɽ�ֿ�") then
        return "�۳����ʧ�ܣ�"
    end

	local result = lualib:Player_GiveItemUnbind(player_guid, "����", 1, "����Ʒ�������һ�", "��ɽ�ֿ�")
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
	if lualib:Player_ItemRequest(player, table_name, table_count, table_bind, table_remove, "�����������ɽ�ֿ�", player) == false then
		lualib:SysMsg_SendWarnMsg(player, "����ʧ�ܣ�")
		return "��������ʧ�ܣ���ȷ�ϲ����Ƿ��㹻�������Ƿ���ʣ��ո�"
	end

    if not lualib:Player_SubGold(player, table_bag[types][4], false, "�۽�ң���ɽ�ֿ�������컨��", "��ɽ�ֿ�") then
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
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "��ɽ�ֿ�") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�" end
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

function Bao_Pro(npc, player)
    local msg = "�ռ����㹻�Ĳ��ϱ��������������а��������������Ľ����ȫ���Ŷ��\n"
    msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n "
    msg = msg .. "���#COLORCOLOR_BROWN#�鲼����˿�������֯����Ƥ���ҡ������ҡ�Ǭ����(10��)#COLOREND#\n"
    msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n \n"
    msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@QueRen *01*��ȷ��������>"
	return msg
end


function QueRen(npc, player)
    local sum = 0
    local rand = lualib:GenRandom(1, 10000)
    local itemcount = lualib:ItemCountByKey(player, "����", true, false, false, 2)
    for i = 1, #baoguo_table do
        sum = sum + baoguo_table[i][2]
        if rand <= sum then
            item = baoguo_table[i][1] 
            break
        end
    end
    if lualib:BagFree(player, true, false, false) < 1 then
        return "��İ����ռ䲻�㣬����Ҫ����һ��������λ��"
    elseif lualib:Player_GetItemCount(player, "����") < 10 then
        return "��Ĳ��ϲ���10����"
    elseif lualib:Player_DestroyItem(player, "����", 10, "��������", "��ɽ�ǲֿ�") == true and lualib:AddItem(player, item, 1, false, "��������", "��ɽ�ǲֿ�") == true then
        return "�����ɹ��������һ��"..item
    else 
        return "����ʧ�ܣ�"
    end
end