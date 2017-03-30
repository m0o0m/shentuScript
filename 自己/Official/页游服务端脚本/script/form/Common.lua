local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

--回调客户端脚本函数
--[[local player
	local t = {["摆摊传送"] = {9, 3, 4}, ["hello"] = {4, 5, 7}, }
	local t3 = { "啦啦啦", 444, "iii", }
	Invoke(player, "UI:Lua_Log", t3, "hello", "大千世界", 555, nil, t)]]

function Invoke(player, func, p1, p2, p3, p4, p5, p6, p7, p8, p9, pA, pB, pC, pD, pE, pF)
	if type(func) ~= "string" or func == "" then
		print("Invoke函数调用失败，函数名传递错误！")
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
			print("Invoke函数调用错误，函数类型参数不支持！")
		else
			print("Invoke函数调用错误，未知的参数类型！")
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
	
	lualib:ShowFormWithContent(player, "脚本表单", script)
end

--变量脚本化
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
		print("ValScript函数调用失败，参数类型未知："..val_type)
	end
	return "nil"
end

--将变量发送到客户端
function SendDataToClient(player, var_name, var_value)
	if type(var_name) ~= "string" or var_name == "" then
		print("SendDataToClient函数调用失败，参数名传递错误！")
	return end
	
	local script = var_name.."="..ValScript(var_value)
	lualib:ShowFormWithContent(player, "脚本表单", script)
end
