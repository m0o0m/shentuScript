local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("form/��Ʒ����Ա��")

function on_accept(sPlayerID,id )
	 
	if id == 38 or id == 48 or id == 57 then 
		lualib:SetInt(sPlayerID,"���յ��",1)
		main(sPlayerID,0) 
		--lualib:SetInt(sPlayerID,"����Աtime_id",0)
	--	lualib:AddTimer(sPlayerID, 5466232812, 20000, 1, "dsssyaonpc_ssyao")
	end
	return true
	
end   

function dsssyaonpc_ssyao(player, time_id)
	
	lualib:SetInt(player,"����Աtime_id",time_id)
	lualib:DisableTimer(player,5466232812) 
    return true
	
end




