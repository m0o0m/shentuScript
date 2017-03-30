local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("form/物品回收员表单")

function on_accept(sPlayerID,id )
	 
	if id == 38 or id == 48 or id == 57 then 
		lualib:SetInt(sPlayerID,"回收点击",1)
		main(sPlayerID,0) 
		--lualib:SetInt(sPlayerID,"回收员time_id",0)
	--	lualib:AddTimer(sPlayerID, 5466232812, 20000, 1, "dsssyaonpc_ssyao")
	end
	return true
	
end   

function dsssyaonpc_ssyao(player, time_id)
	
	lualib:SetInt(player,"回收员time_id",time_id)
	lualib:DisableTimer(player,5466232812) 
    return true
	
end




