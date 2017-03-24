local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

--�ص��ͻ��˽ű�����
--[[local player
	local t = {["��̯����"] = {9, 3, 4}, ["hello"] = {4, 5, 7}, }
	local t3 = { "������", 444, "iii", }
	Invoke(player, "UI:Lua_Log", t3, "hello", "��ǧ����", 555, nil, t)]]

function Invoke(player, func, p1, p2, p3, p4, p5, p6, p7, p8, p9, pA, pB, pC, pD, pE, pF)
	if type(func) ~= "string" or func == "" then
		print("Invoke��������ʧ�ܣ����������ݴ���")
	return end
	
	local t = {p1, p2, p3, p4, p5, p6, p7, p8, p9, pA, pB, pC, pD, pE, pF}
	local num = 0
	for i = 15, 1, -1 do
		if t[i] ~= nil then
			num = i
		break end
	end
	
	local pre_table_name = "server_unname"
	local pre_table_index = 1
	local pre_table_define = ""
	local script_param = ""
	
	for i = 1, num do
		local v = t[i]
		local val_type = type(v)
		
		local pre_param = ""
		local param = ""
		if val_type == "nil" then
			param = "nil"
		elseif val_type == "number" then
			param = tostring(v)
		elseif val_type == "string" then
			param = string.format("%q", v)
		elseif val_type == "table" then
			pre_param = "local "..pre_table_name..pre_table_index.."="..serialize(v)..";"
			param = pre_table_name..pre_table_index
			pre_table_index = pre_table_index + 1
		elseif val_type == "function" then
			print("Invoke�������ô��󣬺������Ͳ�����֧�֣�")
		else
			print("Invoke�������ô���δ֪�Ĳ������ͣ�")
		end
		if pre_param ~= "" then
			pre_table_define = pre_table_define..pre_param
		end
		if param ~= "" then
			if script_param == "" then
				script_param = script_param..param
			else
				script_param = script_param..","..param
			end
		end
	end
	
	local script = pre_table_define
	script = script..func.."("..script_param..")"
	
	lualib:ShowFormWithContent(player, "�ű���", script)
end

--�����ű���
function ValScript(val)
	local val_type = type(val)
	if val_type == "number" then
		return tostring(val)
	elseif val_type == "string" then
		return string.format("%q", val)
	elseif val_type == "table" then
		return serialize(val)
	elseif val_type == "nil" then
		return "nil"
	else
		print("ValScript��������ʧ�ܣ���������δ֪��"..val_type)
	end
	return "nil"
end

--���������͵��ͻ���
function SendDataToClient(player, var_name, var_value)
	if type(var_name) ~= "string" or var_name == "" then
		print("SendDataToClient��������ʧ�ܣ����������ݴ���")
	return end
	
	local script = var_name.."="..ValScript(var_value)
	lualib:ShowFormWithContent(player, "�ű���", script)
end
