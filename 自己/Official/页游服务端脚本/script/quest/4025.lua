local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_accept(player, quest_id)
	lualib:SetInt(player, "4025", 0)
	return true
end

--[[
function can_accomplish(player, quest_id)
	local tb = {"������", "������", "������", "ѩ������", "��������"}
	for i = 1, #tb do
		if lualib:ItemCountByKey(player, tb[i], true, false, false, 2) > 0 then lualib:SetInt(player, "4025", 1) end		
	end
	
	local a = lualib:GetInt(player, "4025")
	if a ~= 1 then
	return false
	end
	return true
end

]]
function on_accomplish(player, quest_id)
	lualib:AddTimer(player, 45877, 100, 1, "quxiao_renwu_time")
	return true
end	

function quxiao_renwu_time(player, timer_id)
	lualib:AcceptQuest(player, 4025)
	--lualib:Player_RunGMCmd(player, "quest", "4024 1")
  	local tb = {}
	local msg = ""
	msg = msg.."��ѡ����Ҫ�Ͻɵ����\n"
	msg = msg.."#COLORCOLOR_RED#��ʾ������ύ���ǰ󶨵�������ð󶨽�ң�����ύ���Ƿǰ󶨵�������ý�ң�\n \n#COLOREND#"
	local huoqu_guid_tb = {"������", "������", "������", "ѩ������", "��������"}
	local pinzhi_tb = {{"��ͨ", 1}, {"��Ʒ", 2}, {"��Ʒ", 3}, {"��Ʒ", 4}, {"��Ʒ", 5}}
	
	local item_guid_tb = lualib:GetItemsByKeys(player, "������#������#������#ѩ������#��������", false, true, false, false)
	for i = 1, table.getn(item_guid_tb) do
		local dengji = lualib:Item_GetCustomVarInt(player, item_guid_tb[i], "h_type")
		if dengji > 0 then
			table.insert(tb, {dengji, lualib:KeyName(item_guid_tb[i]), item_guid_tb[i]})
		end
	end
	
	table.sort(tb, function(a,b) return a[1] < b[1] end)
	
	for k, v in pairs(tb) do
		if lualib:Item_IsBind(player, v[3]) == true then
			msg = msg.."�������֣���#COLORCOLOR_BROWN#"..v[2].."#COLOREND#��   ����Ʒ�ʡ�#COLORCOLOR_BROWN#"..v[1].."#COLOREND#��  �������ԡ��󶨡�  <@tijiao_ma_renwu#"..v[3].." *01*[�Ͻ�]>\n"
		else
			msg = msg.."�������֣���#COLORCOLOR_BROWN#"..v[2].."#COLOREND#��   ����Ʒ�ʡ�#COLORCOLOR_BROWN#"..v[1].."#COLOREND#��  �������ԡ��ǰ󶨡�  <@tijiao_ma_renwu#"..v[3].." *01*[�Ͻ�]>\n"
		end
	end


	lualib:NPCTalk(player, msg)
end

function tijiao_ma_renwu(player, item_guid)
	local itemname	= lualib:Name(item_guid)
	local itemkeyname = lualib:KeyName(item_guid)
	local item_num = lualib:ItemCountByKey(player, itemkeyname, true, false, false, 2)
	local item_player_guid = lualib:Item_GetRole(item_guid)
	if item_player_guid == "" then
		lualib:SysTriggerMsg(player, "���ǲ��ǰ�["..itemname.."]���ű��ˣ�")
		return "���ǲ��ǰ�[������Ʒ]���ű��ˣ�"
	end
	
	if player ~= item_player_guid then
		lualib:SysTriggerMsg(player, "���ǲ��ǰ�["..itemname.."]���ű��ˣ�")
		return "���ǲ��ǰ�["..itemname.."]���ű��ˣ�"
	end
	
	if lualib:Item_IsBind(player, item_guid) == true then
		if lualib:Item_Destroy(player, item_guid, "�ύ����ɾ����Ʒ", player) == true then
			lualib:Player_AddGold(player, 500000, true, "������������", player)
			lualib:SysWarnMsg(player, "������500000�󶨽�ң�")
		else
			lualib:NPCTalk(player, "�ύ������Ʒʧ�ܣ�����")
			return ""
		end
	else
		if lualib:Item_Destroy(player, item_guid, "�ύ����ɾ����Ʒ", player) == true then
			lualib:Player_AddGold(player, 500000, false, "������������", player)
			lualib:SysWarnMsg(player, "������500000��ң�")
		else
			lualib:NPCTalk(player, "�ύ������Ʒʧ�ܣ�����")
			return ""
		end
	end
	lualib:DropQuest(player, 4025)
	lualib:NPCTalk(player, "�����ύ�ɹ�������")
	return ""
end
