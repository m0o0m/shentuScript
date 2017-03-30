local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/marry")


function main(player, item)

    local spouse = lualib:Player_GetCustomVarStr(player, "��żGUID")
	local spouse_map = lualib:MapGuid(spouse)
	local spouse_mapkeyname = lualib:KeyName(spouse_map)
	local spouse_X = lualib:X(spouse)
	local spouse_Y = lualib:Y(spouse)


	lualib:Print("��żGUID����"..spouse.."��")
	lualib:Print("��ż���ڵ�ͼ����"..spouse_mapkeyname.."��")
	lualib:Print("��ż��ͼGUID����"..spouse_map.."��")
	lualib:Print("��ż��������"..spouse_X..":"..spouse_Y.."")



	if spouse == "" then
		lualib:SysMsg_SendWarnMsg(player, "��û�н�飬�޷�ʹ�÷��޾��ᣡ")
		return false
	end

	if spouse_mapkeyname == "" then
		lualib:SysMsg_SendWarnMsg(player, "�����ż�����ߣ��޷�ʹ�÷��޾��ᣡ")
		return false
	else
		lualib:Player_MapMoveXY(player, spouse_mapkeyname, spouse_X, spouse_Y, 3)
		return true
	end

end


