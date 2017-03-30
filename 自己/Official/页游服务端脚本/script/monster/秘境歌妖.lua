local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("monster/征服系统怪物")

local CMonster = {
	["需求"] = "囚笼",
	["概率"] = 100, 		--(1,100)
	["奖励"] = "笼子里的歌妖",
}

function on_create(monster)
	lualib:AddTrigger(monster, lua_trigger_post_die  , "on_trigger_post_die")	
end

function on_trigger_post_die(actor, killer)
	zhengfusiwang(actor, killer) --调用征服系统中的怪物死亡触发判断
	if lualib:ItemCountByKey(killer, CMonster["需求"], true, false,false, 2)>0 then
		if lualib:Player_GetBagFree(killer)<1 then
			lualib:MsgBox(killer,"您的背包满了")		
		elseif lualib:AddItem(killer, CMonster["奖励"],1, true, "","")then
			if not lualib:DelItem(killer,  CMonster["需求"],1, 2,"", "") then
				lualib:MsgBox(killer,"扣除道具失败")		
				return
			end
		end
	end
end