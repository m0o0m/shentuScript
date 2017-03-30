local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("form/ActivityDegree_s")
-----------------------------------------------------------------table-----------------------------------------------------------------------------
local lingli_have = {8,34,102,233,468,845,1411,2232,3381,4967,7124,9997}
local lingli_huis = {8,34,102,229,463,761,1270,2009,2874,4223,6057,8500}


function item_set(player,item)
	local ll_have = 0
	local ll_huis = 0
	--��ȡ��Ʒע��ȼ�
	local zhul_lv = lualib:GetInt(item,"zhul_level")
	if zhul_lv < 1 then 
		--return "��װ��û�б��̻꣬����û�л����ɻ��գ�����"
		lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��װ��û�б��̻꣬����û�л����ɻ��գ�����\");")
		return ''
	else
		ll_have = lualib:GetInt(player,"linglizhi")
		ll_huis = lingli_huis[zhul_lv]
	end
	local item_data = serialize(item)
	lualib:ShowFormWithContent(player,"�ű���","Zhul_hs.updata("..item_data..","..ll_have..","..ll_huis..");")
	return ""
	
end	

function huis_item(player,item)
	--��ȡ��Ʒע��ȼ�
	local zhul_lv = lualib:GetInt(item, "zhul_level")	
	if zhul_lv == 0 then
		--return "��װ��û�б��̻꣬����û�л����ɻ��գ�����"
		lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��װ��û�б��̻꣬����û�л����ɻ��գ�����\");")
		return ''
	end
	local ll_huis = lingli_huis[zhul_lv]
	local old_lingli = lualib:GetInt(player,"linglizhi")
	local new_lingli = old_lingli + ll_huis
	--��������µ�ע��ֵ,����װ��ע��ȼ�����
	if not lualib:SetInt(item,"zhul_level",0) or not lualib:SetInt(player,"linglizhi", new_lingli) then
		lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,\"ForgeWnd,Zhul_hs,item\",3007000000,-135,-127,150,1);ForgeWnd.msg_up(\"��������ʧ��\");")
		return "ע�����ʧ��"
	end
	--���ע��ǿ���ĸ�����Ʒ����
	for i = 10 , 19 do 
		if not lualib:SetInt(item,"_da"..i,0) then return "����̻�ǿ������ʧ�ܣ�����" end
		if not lualib:SetInt(item,"_dv"..i,0) then return "����̻�ǿ������ʧ�ܣ�����" end
	end 
	local lingliceshi = lualib:GetInt(player,"linglizhi")
	--����Ʒ������֪ͨ��Ʒ���Ը���.	
	lualib:Item_NotifyUpdate(player, item)
	local data = serialize(item)
	----------------ÿ�ջ�Ծ�ȼ�¼��������-----------------
	local count = lualib:GetDayInt(player,"activityDgr_jl")
	if 0 == count then
		lualib:SetDayInt(player,"activityDgr_jl", 1)
		lualib:SetDayInt(player, "totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 10)
		ActivityDegree_setFlag(player)
	end
	----------------ÿ�ջ�Ծ�ȼ�¼��������END--------------
	lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,\"ForgeWnd,Zhul_hs,item_magic\",3020200300,-190,-125,150,1);ForgeWnd.msg_up(\"װ���������ճɹ�\");Zhul_hs.updata("..data..",".. lingliceshi ..",".. 0 ..");ForgeWnd.Get_EquipUpdate("..data..")")	
	--lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,\"ForgeWnd,Zhul_hs,item\",3020200300,-225,-221,150,1)")
	--return "���ջ����ɹ�"
	--lualib:ShowFormWithContent(player,"�ű���","msg_up(\"���ջ����ɹ�\");")
	return ''
	
	
	end
	

