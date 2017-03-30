local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/marry")

function main(player, item)
	lualib:AddTrigger(player, lua_trigger_pre_equip, "medal_equip")
	return true
end

function medal_equip(player, item)--�������ܶȵĸߵͣ�װ����Ӧ��ѫ��
	local keyname = lualib:KeyName(item)
	
	local xz_table = {
						["ͬ��ѫ��һ��"] = {1, 3},
						["ͬ��ѫ�¶���"] = {1000, 5},
						["ͬ��ѫ������"] = {2000, 7},
						["ͬ��ѫ���ļ�"] = {3000, 9},
						["ͬ��ѫ���弶"] = {4500, 12},
						["ͬ��ѫ������"] = {6000, 15},
					}
					
	local a = false
	for k, _ in pairs(xz_table) do
		if keyname == k then
			a = true
		end
	end				
					
	if a == true then
		local intimacy = lualib:Player_GetCustomVarInt(player, "intimacy")
		if intimacy >= xz_table[keyname][1] then
			lualib:AddBuffEx(player, "ͬ������", 0, xz_table[keyname][2])
			return true
		else
			lualib:SysMsg_SendWarnMsg(player, "������ܶ�̫�ͣ��޷�װ�������ͬ��ѫ�¡���\n�㵱ǰ�����ܶȣ�"..intimacy.."")
			return false
		end
	else
		return true
	end	
end