local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)
    local item_key = lualib:KeyName(item)
    local sd =  { 
        {"���",          4995, 0}, 
        {"���鵤",        9990, 0}, 
        {"ʥ������(Ь)",  10000, 1}, 
                }
    local yd =  { 
        {"���ﾭ�鵤",      4290, 0}, 
        {"�������ﾭ�鵤",  5150, 0}, 
        {"�������ﾭ�鵤",  5580, 0}, 
        {"�������ﾭ�鵤",  5670, 0}, 
        {"һ���и�",        9960, 0}, 
        {"һ���и�",        10000, 1}, 
                }
    

    if item_key == "ʥ������" then
        local rnd = lualib:GenRandom(1, 10000)
		for _, v in pairs(sd) do
			if rnd <= v[2] then
				if not lualib:AddItem(player, v[1], 1, false, "ʥ������", player) then
					lualib:SysMsg_SendWarnMsg(player,"��ʥ���������Ʒʧ�ܣ�")
					return false
				end
                if v[3] == 1 then
					lualib:SysMsg_SendBroadcastColor("["..lualib:Name(player).."]��ʥ����������"..v[1].."������", "", 1, 12)
                    lualib:SysMsg_SendCenterMsg(1, "["..lualib:Name(player).."]��ʥ����������"..v[1].."������", "")
                    return true
                end
				break
			end
		end
    elseif item_key =="Ԫ�����" then
        local rnd = lualib:GenRandom(1, 10000)
		for _, v in pairs(yd) do
			if rnd <= v[2] then
				if not lualib:AddItem(player, v[1], 1, false, "Ԫ�����", player) then
					lualib:SysMsg_SendWarnMsg(player,"��Ԫ����и���Ʒʧ�ܣ�")
					return false
				end
                if v[3] == 1 then
					lualib:SysMsg_SendBroadcastColor("["..lualib:Name(player).."]��Ԫ����л����"..v[1].."������", "", 1, 12)
                    lualib:SysMsg_SendCenterMsg(1, "["..lualib:Name(player).."]��Ԫ����л����"..v[1].."������", "")
                    return true
                end
				break
			end
		end
    elseif item_key == "˫��ף��" then
        if not lualib:AddBuff(player, "˫��ף��", 3600) then return false end
    elseif item_key == "һ���и�" then
        local rnd_gold = lualib:GenRandom(1000,2000)
        local rnd_bind = lualib:GenRandom(0,1)
        local bind = nil
        if rnd_bind == 1 then 
            if lualib:Player_AddGold(player, rnd_gold, false, "ʹ���и�", player) == true then
                lualib:SysMsg_SendTriggerMsg(player, "��������һ���и�����"..rnd_gold.."�󶨽�ң�") 
                return true
            end
        else
            if lualib:Player_AddGold(player, rnd_gold, true, "ʹ���и�", player) == true then
                lualib:SysMsg_SendTriggerMsg(player, "��������һ���и�����"..rnd_gold.."��ң�") 
                return true
            end
        end
    elseif item_key == "һ���и�" then
        local rnd = lualib:GenRandom(1000,2000)
        local rnd_bind = lualib:GenRandom(0,1)
        local rnd_gold = rnd * 100
        if rnd_bind == 1 then 
            if lualib:Player_AddGold(player, rnd_gold, false, "ʹ���и�", player) == true then
            lualib:SysMsg_SendTriggerMsg(player, "��������һ���и�����"..rnd_gold.."�󶨽�ң�")
            return true
            end
        else
            if lualib:Player_AddGold(player, rnd_gold, true, "ʹ���и�", player) == true then
            lualib:SysMsg_SendTriggerMsg(player, "��������һ���и�����"..rnd_gold.."��ң�") 
            return true
            end
        end
    elseif item_key == "���˲ʵ�" then
        local caidan_table = 
        {   {"���ﾭ�鵤", 2860, 0}, 
            {"�������ﾭ�鵤", 3430, 0}, 
            {"�������ﾭ�鵤", 3715, 0}, 
            {"�������ﾭ�鵤", 3765, 0}, 
            {"���", 6015, 0}, 
            {"���鵤", 8265, 0}, 
            {"�������1��", 8290, 1}, 
            {"������", 8535, 1}, 
            {"������", 8540, 1}, 
            {"������", 8780, 1}, 
            {"�ͼ��������", 9030, 1}, 
            {"�м��������", 9060, 1}, 
            {"�߼��������", 9070, 1}, 
            {"ѭ��ħ��", 9540, 1}, 
            {"ʱ֮ɳ��", 9785, 1}, 
            {"����", 9800, 1}, 
            {"ʥ��ʱװ(��)", 9900, 1}, 
            {"ʥ��ʱװ(Ů)", 10000, 1}, 
        }
        local rnd = lualib:GenRandom(1, 10000)
        for _, v in pairs(caidan_table) do
			if rnd <= v[2] then
                if lualib:BagFree(player, true, false, false) < 1 then 
					lualib:SysMsg_SendTriggerMsg(player, "����λ�ò�������������")
                    return false 
                end
				if not lualib:AddItem(player, v[1], 1, false, "���˲ʵ�", player) then
					lualib:SysMsg_SendTriggerMsg(player, "�����˲ʵ�����Ʒʧ�ܣ�")
                    return false
				end
                if v[3] == 1 then
					lualib:SysMsg_SendBroadcastColor("["..lualib:Name(player).."]��Ʒ�����ˣ������˲ʵ������"..v[1].."������", "", 1, 12)
                    lualib:SysMsg_SendCenterMsg(1, "["..lualib:Name(player).."]��Ʒ�����ˣ������˲ʵ������"..v[1].."������", "")
                    return true
                end
				break
			end
		end
    end
	return true
end

function on_create(item)
    local item_key = lualib:KeyName(item)
    if item_key == "���˲ʵ�" then
        lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
    end
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "��"..item_name.."��������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "��"..item_name.."����������".."["..player_name.."]һ����Ʒ�������˳�����������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
            local s = "��"..item_name.."��������"..item_map_name.."��["..item_map_x..":"..item_map_y.."]������"
			local s1 = "["..player_name.."]��Ʒ�����ˣ���"..item_map_name.."["..item_map_x..":"..item_map_y.."]�����һ��".."��"..item_name.."��������"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return false
	end
end