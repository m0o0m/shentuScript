local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/marry")

local yanhua_table = {
						["һ��һ��"] = 1,
						["õ�廨"] = 2,
						["9��õ�廨"] = 3,
						["99��õ�廨"] = 4,
						["999��õ�廨"] = 5,
						["��䵰��"] = 6, 
					 }
local texiao_time = {
						["һ��һ��"] = 3, 
						["��䵰��"] = 10, 
					}

function main(player, item)
	local item_K = lualib:KeyName(item)--����������
	local p_name = lualib:KeyName(player)--�������
	local p_map = lualib:Name(lualib:MapGuid(player))--������ڵ�ͼ����
	for k, v in pairs(yanhua_table) do
		if item_K == k then
			if v ==1 then
				yanhua(player, item, item_K, p_name, p_map)
			elseif  v ==2 then
				meiguihua(player, item, item_K, p_name, p_map)
			elseif v ==3 then
				meiguihua9(player, item, item_K, p_name, p_map)
			elseif v ==4 then
				meiguihua99(player, item, item_K, p_name, p_map)
			elseif v ==5 then
				meiguihua999(player, item, item_K, p_name, p_map)
			elseif v == 6 then
				cake(player, item, item_K, p_name, p_map)
			end
			return true
		end
	end
	return true
end

---�̻�
function yanhua(player, item, item_K, p_name, p_map)
    local player_x = lualib:X(player)
    local player_y = lualib:Y(player)
	local msg = "��ҡ�"..p_name.."���ڡ�"..p_map.."����"..player_x..", "..player_y.."��ʹ����"..item_K.."����ҿ�ȥ�ۿ���"
	if lualib:HasBuff(player, "�̻�") then
		lualib:SetInt(player, "yanhua_buff_time", (lualib:GetInt(player, "yanhua_buff_time") + texiao_time[item_K]))
		lualib:AddBuff(player, "�̻�2", 0)
	else
		lualib:AddBuff(player, "�̻�", 10000)
		lualib:SetInt(player, "yanhua_buff_time", texiao_time[item_K])
		local id = lualib:GenTimerId(player)
		lualib:AddTimer(player, id, 1000, -1, "yanhuajingyan")
	end
	lualib:SysMsg_SendCenterMsg(1, msg, "")
	lualib:Item_Destroy(player, item, "�̻�", player)
end

function yanhuajingyan(player, timer_id)
	if lualib:GetInt(player, "yanhua_buff_time") ~= 0 then
		lualib:SetInt(player, "yanhua_buff_time", (lualib:GetInt(player, "yanhua_buff_time") - 1))
	else
		lualib:DelBuff(player, "�̻�")
		lualib:DisableTimer(player, timer_id)
	end
end

--����
function cake(player, item, item_K, p_name, p_map)
	local player_x = lualib:X(player)
    local player_y = lualib:Y(player)
	local msg = "��ҡ�"..p_name.."���ڡ�"..p_map.."����"..player_x..", "..player_y.."��ʹ����"..item_K.."����ҿ�ȥ�ۿ���"
	if lualib:HasBuff(player, "����") then
		lualib:SetInt(player, "cake_buff_time", (lualib:GetInt(player, "cake_buff_time") + texiao_time[item_K]))
	else
		lualib:SysMsg_SendCenterMsg(1, "jhsdfsdf", "")
		lualib:AddBuff(player, "����", 10000)
		lualib:SetInt(player, "cake_buff_time", texiao_time[item_K])
		local id = lualib:GenTimerId(player)
		lualib:AddTimer(player, id, 1000, -1, "cakejingyan")
	end
	lualib:SysMsg_SendCenterMsg(1, msg, "")
	lualib:Item_Destroy(player, item, "����", player)
end

function cakejingyan(player, timer_id)
	if lualib:GetInt(player, "cake_buff_time") ~= 0 then
		lualib:SetInt(player, "cake_buff_time", (lualib:GetInt(player, "cake_buff_time") - 1))
	else
		lualib:DelBuff(player, "����")
		lualib:DisableTimer(player, timer_id)
	end
end

--õ�廨
function meiguihua(player, item, item_K, p_name, p_map)
	lualib:SysMsg_SendInputDlg(player, 3, "��������Ҫ���͵�����ǳ�(�Է������߻򲻴������͸��Լ�)", 45, 14, "meiguihuazhixing", item.."#"..item_K)
end

function meiguihuazhixing(id, player, toName, param)
	local p_Name = lualib:Name(player)
	local params = lualib:StrSplit(param, "#")--�ָ����Ϊһ��table
	local item = params[1]
	local item_K = params[2]
	local target_Guid = lualib:Name2Guid(toName)
    local spouse = lualib:Player_GetCustomVarStr(player, "��żGUID")
	local zij_sex = lualib:Gender(player)
	local mubiao_sex = lualib:Gender(target_Guid)


	local s = ""
	if target_Guid == "" then
		lualib:SysMsg_SendMsgDlg(player, 6, "Ŀ�겻���ڻ����ߣ���������ͽ��͸��Լ�\n \n#BUTTON0#��������#BUTTONEND#", 10, "meiguihuazhixingEx", item_K)
		return false
	elseif target_Guid == player then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
		s = "�����ġ�"..p_Name.."�����˿ɰ������ֻ��ѡ�����Լ�����"..item_K.."�Լ����Լ�һ�£�"
	elseif mubiao_sex == 1 and zij_sex == 1 then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
		s = "��"..p_Name.."����"..toName.."��������"..item_K.."!����������֤����ʲô�ǡ���ŮֻΪ���ڽӴ������в����氮����"
	elseif mubiao_sex == 2 and zij_sex == 2 then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
		s = "��"..p_Name.."����"..toName.."��������"..item_K.."!����������֤����ʲô�ǡ���ŮֻΪ���ڽӴ���ŮŮ�����氮����"
	elseif mubiao_sex ~= zij_sex  then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
		s = "��"..p_Name.."����"..toName.."��������"..item_K.."����"..toName.."����ɬ�Ľ�����!"
	end
	
	if not lualib:DelItem(player, item_K, 1, 2, "õ�廨", "õ�廨") then
		lualib:SysMsg_SendTriggerMsg(player, "�۳�����ʧ��")
		return false
	end
	
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)

	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
			if target_Guid == spouse then --���˫��Ϊ��ż��������1�����ܶ�
				add_intimacy(player, 1)
				lualib:SysMsg_SendTriggerMsg(player, "���������ż�����1�����ܶ�")
								lualib:Print(""..intimacy.."")
				add_intimacy(spouse, 1)
				lualib:SysMsg_SendTriggerMsg(spouse, "���������ż�����1�����ܶ�")
			end
	end

	return true
end

function meiguihuazhixingEx(id, player, btn_id, item_K)
	local p_Name = lualib:Name(player)
	local spouse = lualib:Player_GetCustomVarStr(player, "��żGUID")
	local s = "�����ġ�"..p_Name.."�����˿ɰ������ֻ��ѡ�����Լ�����"..item_K.."�Լ����Լ�һ�£�"		
	lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#7#1#1#2#3#1#1#30#30")
	if not lualib:DelItem(player, item_K, 1, 2, "õ�廨", "õ�廨") then
		lualib:SysMsg_SendTriggerMsg(player, "�۳�����ʧ��")
	end
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)
	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
			if target_Guid == spouse then --���˫��Ϊ��ż��������1�����ܶ�
				add_intimacy(player, 9)
				lualib:SysMsg_SendTriggerMsg(player, "���������ż�����9�����ܶ�")
				add_intimacy(spouse, 9)
				lualib:SysMsg_SendTriggerMsg(spouse, "���������ż�����9�����ܶ�")
			end
	end

	return true
end


--9��õ�廨
function meiguihua9(player, item, item_K, p_name, p_map)
	lualib:SysMsg_SendInputDlg(player, 5, "��������Ҫ���͵�����ǳ�", 45, 14, "meigui9zhixing", item.."#"..item_K)
end

function meigui9zhixing(id, player, toName, param)
	local p_Name = lualib:Name(player)
	local params = lualib:StrSplit(param, "#")
	local item = params[1]
	local item_K = params[2]
	local target_Guid = lualib:Name2Guid(toName)
    local spouse = lualib:Player_GetCustomVarStr(player, "��żGUID")
	local zij_sex = lualib:Gender(player)
	local mubiao_sex = lualib:Gender(target_Guid)

	
	local s = ""
	if target_Guid == "" then
		lualib:SysMsg_SendMsgDlg(player, 6, "Ŀ�겻���ڻ����ߣ���������ͽ��͸��Լ�\n \n#BUTTON0#��������#BUTTONEND#", 10, "meigui9zhixingEx", item_K)
		return false
	elseif target_Guid == player then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
		s = "�����ġ�"..p_Name.."�����˿ɰ������ֻ��ѡ�����Լ�����"..item_K.."�Լ����Լ�һ�£�"
	elseif mubiao_sex == 1 and zij_sex == 1 then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
		s = "��"..p_Name.."����"..toName.."��������"..item_K.."!����������֤����ʲô�ǡ���ŮֻΪ���ڽӴ������в����氮����"
	elseif mubiao_sex == 2 and zij_sex == 2 then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
		s = "��"..p_Name.."����"..toName.."��������"..item_K.."!����������֤����ʲô�ǡ���ŮֻΪ���ڽӴ���ŮŮ�����氮����"
	elseif mubiao_sex ~= zij_sex  then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
		s = "��"..p_Name.."����"..toName.."��������"..item_K.."����"..toName.."����ɬ�Ľ�����!"
	end
	
	if not lualib:DelItem(player, item_K, 1, 2, "9õ�廨", "9õ�廨") then
		lualib:SysMsg_SendTriggerMsg(player, "�۳�����ʧ��")
		return false
	end
	
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)
	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
			if target_Guid == spouse then --���˫��Ϊ��ż��������1�����ܶ�
				add_intimacy(player, 9)
				lualib:SysMsg_SendTriggerMsg(player, "���������ż�����9�����ܶ�")
				add_intimacy(spouse, 9)
				lualib:SysMsg_SendTriggerMsg(spouse, "���������ż�����9�����ܶ�")
			end
	end

	return true
end

function meigui9zhixingEx(id, player, btn_id, item_K)
	local p_Name = lualib:Name(player)
	local spouse = lualib:Player_GetCustomVarStr(player, "��żGUID")
	local s = "�����ġ�"..p_Name.."�����˿ɰ������ֻ��ѡ�����Լ�����"..item_K.."�Լ����Լ�һ�£�"		
	lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#15#1#1#2#3#1#2#30#30")
	if not lualib:DelItem(player, item_K, 1, 2, "9õ�廨", "9õ�廨") then
		lualib:SysMsg_SendTriggerMsg(player, "�۳�����ʧ��")
		return false
	end
	
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)
	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
			if target_Guid == spouse then --���˫��Ϊ��ż��������1�����ܶ�
				add_intimacy(player, 9)
				lualib:SysMsg_SendTriggerMsg(player, "���������ż�����9�����ܶ�")
				add_intimacy(spouse, 9)
				lualib:SysMsg_SendTriggerMsg(spouse, "���������ż�����9�����ܶ�")
			end
	end

	return true
end


--99��õ�廨
function meiguihua99(player, item, item_K, p_name, p_map)
	lualib:SysMsg_SendInputDlg(player, 5, "��������Ҫ���͵�����ǳ�(�Է������߻򲻴������͸��Լ�)", 45, 14, "meigui99zhixing", item.."#"..item_K)
end

function meigui99zhixing(id, player, toName, param)
	local p_Name = lualib:Name(player)
	local params = lualib:StrSplit(param, "#")
	local item = params[1]
	local item_K = params[2]
	local target_Guid = lualib:Name2Guid(toName)
    local spouse = lualib:Player_GetCustomVarStr(player, "��żGUID")
	local zij_sex = lualib:Gender(player)
	local mubiao_sex = lualib:Gender(target_Guid)

	local s = ""
	if target_Guid == "" then
		lualib:SysMsg_SendMsgDlg(player, 6, "Ŀ�겻���ڻ����ߣ���������ͽ��͸��Լ�\n \n#BUTTON0#��������#BUTTONEND#", 10, "meigui99zhixingEx", item_K)
		return false
	elseif target_Guid == player then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#3#30#30")
		s = "�����ġ�"..p_Name.."�����˿ɰ������ֻ��ѡ�����Լ�����"..item_K.."�Լ����Լ�һ�£�"	
	elseif mubiao_sex == 1 and zij_sex == 1 then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#3#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#3#30#30")
		s = "��"..p_Name.."����"..toName.."��������"..item_K.."!����������֤����ʲô�ǡ���ŮֻΪ���ڽӴ������в����氮����"
	elseif mubiao_sex == 2 and zij_sex == 2 then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#3#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#3#30#300")
		s = "��"..p_Name.."����"..toName.."��������"..item_K.."!����������֤����ʲô�ǡ���ŮֻΪ���ڽӴ���ŮŮ�����氮����"
	elseif mubiao_sex ~= zij_sex  then
		lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#3#30#30")
		lualib:RunClientScript(target_Guid, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#3#30#30")
		s = "��"..p_Name.."����"..toName.."��������"..item_K.."����"..toName.."����ɬ�Ľ�����!"
	end

	if not lualib:DelItem(player, item_K, 1, 2, "99õ�廨", "99õ�廨") then
		lualib:SysMsg_SendTriggerMsg(player, "�۳�����ʧ��")
		return false
	end
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)

	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
			if target_Guid == spouse then --���˫��Ϊ��ż��������1�����ܶ�
				add_intimacy(player, 99)
				lualib:SysMsg_SendTriggerMsg(player, "���������ż�����99�����ܶ�")
				add_intimacy(spouse, 99)
				lualib:SysMsg_SendTriggerMsg(spouse, "���������ż�����99�����ܶ�")
			end
	end

	return true
end


function meigui99zhixingEx(id, player, btn_id, item_K)
	local p_Name = lualib:Name(player)
	local spouse = lualib:Player_GetCustomVarStr(player, "��żGUID")
	local s = "�����ġ�"..p_Name.."�����˿ɰ������ֻ��ѡ�����Լ�����"..item_K.."�Լ����Լ�һ�£�"			
	lualib:RunClientScript(player, "ItemEffect","piaoluo_client", tostring(1078600000).."#99#1#1#3#3#1#2#30#30")
	if not lualib:DelItem(player, item_K, 1, 2, "99õ�廨", "99õ�廨") then
		lualib:SysMsg_SendTriggerMsg(player, "�۳�����ʧ��")
		return false
	end
	
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)
	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
			if target_Guid == spouse then --���˫��Ϊ��ż��������1�����ܶ�
				add_intimacy(player, 9)
				lualib:SysMsg_SendTriggerMsg(player, "���������ż�����9�����ܶ�")
				add_intimacy(spouse, 9)
				lualib:SysMsg_SendTriggerMsg(spouse, "���������ż�����9�����ܶ�")
			end
	end
	return true
end

--999��õ�廨
function meiguihua999(player, item, item_K, p_name, p_map)
	lualib:SysMsg_SendInputDlg(player, 6, "��������Ҫ���͵�����ǳ�(�Է������߻򲻴������͸��Լ�)", 45, 14, "meigui999zhixing", item.."#"..item_K)
end

function meigui999zhixing(id, player, toName, param)
	local p_Name = lualib:Name(player)
	local params = lualib:StrSplit(param, "#")
	local item = params[1]
	local item_K = params[2]
	local target_Guid = lualib:Name2Guid(toName)
    local spouse = lualib:Player_GetCustomVarStr(player, "��żGUID")
	local zij_sex = lualib:Gender(player)
	local mubiao_sex = lualib:Gender(target_Guid)

	local s = ""
	if target_Guid == "" then
		lualib:SysMsg_SendMsgDlg(player, 6, "Ŀ�겻���ڻ����ߣ���������ͽ��͸��Լ�\n \n#BUTTON0#��������#BUTTONEND#", 10, "meigui999zhixingEx", item_K)
		return false
	elseif target_Guid == player then
		lualib:RunClientScript("0", "ItemEffect","yanhua", ""..yanhua_table[item_K].."")
		lualib:RunClientScript("0", "ItemEffect","piaoluo_client", tostring(1078600000).."#200#1#1#4#3#1#3#30#30")
		s = "�����ġ�"..p_Name.."�����˿ɰ������ֻ��ѡ�����Լ�����"..item_K.."�Լ����Լ�һ�£�"	
	elseif mubiao_sex == 1 and zij_sex == 1 then
		lualib:RunClientScript("0", "ItemEffect","yanhua", ""..yanhua_table[item_K].."")
		lualib:RunClientScript("0", "ItemEffect","piaoluo_client", tostring(1078600000).."#200#1#1#4#3#1#3#30#30")
		s = "��"..p_Name.."����"..toName.."��������"..item_K.."!����������֤����ʲô�ǡ���ŮֻΪ���ڽӴ������в����氮����"
	elseif mubiao_sex == 2 and zij_sex == 2 then
		lualib:RunClientScript("0", "ItemEffect","yanhua", ""..yanhua_table[item_K].."")
		lualib:RunClientScript("0", "ItemEffect","piaoluo_client", tostring(1078600000).."#200#1#1#4#3#1#3#30#30")
		s = "��"..p_Name.."����"..toName.."��������"..item_K.."!����������֤����ʲô�ǡ���ŮֻΪ���ڽӴ���ŮŮ�����氮����"
	elseif mubiao_sex ~= zij_sex  then
		lualib:RunClientScript("0", "ItemEffect","yanhua", ""..yanhua_table[item_K].."")
		lualib:RunClientScript("0", "ItemEffect","piaoluo_client", tostring(1078600000).."#200#1#1#4#3#1#3#30#30")
		s = "��"..p_Name.."����"..toName.."��������"..item_K.."����"..toName.."����ɬ�Ľ�����!"
	end
 
	if not lualib:DelItem(player, item_K, 1, 2, "99õ�廨", "99õ�廨") then
		lualib:SysMsg_SendTriggerMsg(player, "�۳�����ʧ��")
	end
	
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)

	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
			if target_Guid == spouse then --���˫��Ϊ��ż��������999�����ܶ�
				add_intimacy(player, 999)
				lualib:SysMsg_SendTriggerMsg(player, "���������ż�����999�����ܶ�")
				lualib:Print(""..intimacy.."")
				add_intimacy(spouse, 999)
				lualib:SysMsg_SendTriggerMsg(spouse, "���������ż�����999�����ܶ�")
			end
	end

	return true
end


function meigui999zhixingEx(id, player, btn_id, item_K)
	local p_Name = lualib:Name(player)
	local spouse = lualib:Player_GetCustomVarStr(player, "��żGUID")
	local s = "�����ġ�"..p_Name.."�����˿ɰ������ֻ��ѡ�����Լ�����"..item_K.."�Լ����Լ�һ�£�"			
	lualib:RunClientScript("0", "ItemEffect","yanhua", ""..yanhua_table[item_K].."")
	lualib:RunClientScript("0", "ItemEffect","piaoluo_client", tostring(1078600000).."#200#1#1#4#3#1#3#30#30")
	if not lualib:DelItem(player, item_K, 1, 2, "999õ�廨", "999õ�廨") then
		lualib:SysMsg_SendTriggerMsg(player, "�۳�����ʧ��")
		return false
	end
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s, "", 6, 12)
	if spouse ~= "" then
		local intimacy=lualib:Player_GetCustomVarInt(player, "intimacy")
		local spouse_intimacy=lualib:Player_GetCustomVarInt(spouse, "intimacy")
		if target_Guid == spouse then --���˫��Ϊ��ż��������1�����ܶ�
			add_intimacy(player, 9)
			lualib:SysMsg_SendTriggerMsg(player, "���������ż�����9�����ܶ�")
			add_intimacy(spouse, 9)
			lualib:SysMsg_SendTriggerMsg(spouse, "���������ż�����9�����ܶ�")
		end
	end
	return true
end
