local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("monster/征服系统怪物")

function on_create(monster)
    lualib:SetInt("0","boss_shuaxin6",0)
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_post_die(actor, killer)
	if lualib:KeyName(lualib:MapGuid(actor)) == "海底5" then
		local killername = lualib:Name(killer)
		lualib:SetInt("0","boss_shuaxin6",120)
		lualib:SetStr("0","boss_killer6",killername)
		lualib:AddTimerEx("0",306,60000,-1,"chongshengshijian","")
	end
	zhengfusiwang(actor, killer) --调用征服系统中的怪物死亡触发判断
end

-----------------------------------------------boss刷新倒计时----------------------------------------------------------
function chongshengshijian()
	if lualib:GetInt("0","boss_shuaxin6") > 0 then
		lualib:SetInt("0","boss_shuaxin6",lualib:GetInt("0","boss_shuaxin6")-1)
		lualib:AddTimerEx("0",306,60000,1,"chongshengshijian","")
	end
end