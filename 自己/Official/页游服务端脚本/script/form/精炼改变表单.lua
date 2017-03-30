local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/refine")
require("system/logic_def_lua")


local item_lv = {
					{"�ͼ���Ԫ����", 3},
					{"�м���Ԫ����", 6},
					{"�߼���Ԫ����", 9},
                    {"�ؼ���Ԫ����", 15},
				}
local gold = 5000

function main(player, a_weizhi, b_weizhi, att_name)
	local a_guid = lualib:Item_GetBySite(player, tonumber(a_weizhi))
	local a_type = lualib:Item_GetType(player,a_guid)
	local a_subType = lualib:Item_GetSubType(player,a_guid)
	if tonumber(a_type) ~= 1 then
		return "����װ�����޷�����װ�����Ըı�"
	end
	
	local find = false
	for k, v in pairs(refine_valid_item_att[a_subType]) do
		if v == tonumber(att_name) then
			find = true
		end
	end
	
	if find ~= true then
		return "��װ�����ܾ���������"
	end
	
	local b_guid = lualib:Item_GetBySite(player,tonumber(b_weizhi))
	local b_Key = lualib:KeyName(b_guid)
	
	if b_Key ~= item_lv[1][1] and b_Key ~= item_lv[2][1] and b_Key ~= item_lv[3][1] and b_Key ~= item_lv[4][1] then
		return "�������Ըı���Ҫһ����Ԫ����"
	end
	
	if lualib:Player_IsGoldEnough(player,gold,false) == false then
		return "���Ըı���Ҫ5000��ң�"
	end
		
	local z_level = lualib:Equip_GetRefineLevel(player,a_guid)
	local z_att = lualib:Equip_GetRefineProp(player,a_guid)
	
	local lv = 0
	for i = 1, table.getn(item_lv) do
		if b_Key == item_lv[i][1] then
			lv = item_lv[i][2]
		end
	end
	if z_level > lv then 
		return "���װ���������Ըı���Ҫ���߼���Ԫ���⣡"
	end
	
	local b_num = tonumber(lualib:Item_GetAmount(player, b_guid))
	if b_num < 1 then
		return "��Ԫ�����������㣬�޷��������Ըı䣡"
	end
	
	if z_att == att_name then 
		return "����ѡ�������ԭ��������һ���������޸�!"
	end
	
	return gaibian(player, a_guid, tonumber(a_type), b_guid, tonumber(z_level), tonumber(z_att), tonumber(att_name), b_num)
end



function gaibian(player, a_guid, a_type, b_guid, z_level, z_att, att_name, b_num)
	--print(player, a_guid, a_type, b_guid, z_level, z_att, att_name)
	
	if not lualib:Player_SubGold(player, gold, false, "�ǰ�", "") then return "�۳����ʧ��" end
	
	lualib:Item_SetAmount(player, b_guid, b_num - 1)
	
	if not lualib:Equip_SetRefineLevel(player, a_guid, z_level) then return "���þ����ȼ�ʧ��" end
	
	local renfine_property = lualib:Equip_GetRefineProp(player, a_guid)
	local att_value = 0
	for k, v in pairs(renfine_property) do
        	att_value = v
	end
	if not lualib:Equip_SetRefineProp(player, a_guid, att_name, att_value) then  return "���þ�������ʧ��" end
	
	lualib:Item_NotifyUpdate(player, a_guid)
	
	return ""
end