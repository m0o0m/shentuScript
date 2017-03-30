local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("form/物品回收员表单")

function on_accept(sPlayerID,id )
	 
	if id == 38 or id == 48 or id == 57 then 
		main(sPlayerID,0) 
		lualib:SetInt(sPlayerID,"time_id",0)
		lualib:AddTimer(sPlayerID, 812, 20000, 1, "dsssyaonpc_ssyao")
	end
	return true
	
end   

function dsssyaonpc_ssyao(player, time_id)
	
	local tf_clink =  lualib:GetInt(player,"tf_clink")
	lualib:SetInt(player,"time_id",time_id)
    return true
	
end
