local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local str =
	{
		"小的们，都给我出来，快来救驾！",
	}

local timerID     = {1,2,3,4}
local elapse      = 5000
	
function on_create(monster)
lualib:SetInt(monster,"say",0)
	lualib:AddTimer(monster, 1, 15000, -1, "say")
end

function say(monster, timer_id)

	local players = lualib:Map_GetRegionPlayers(lualib:MapGuid(monster), lualib:X(monster),lualib:Y(monster) , 5, false)
	if #players ~= 0  then

		for _,v in pairs(players)do
			if lualib:HasQuest(v,4008)then
				lualib:SetInt(monster,"say1",1)
				lualib:SysMsg_SendRoleTalk(monster,str[1])
--lualib:AddTimer(monster,2, 3000, 1, "genmonster")
							end
			break
		end
	end
end

function genmonster(monster, timer_id)
lualib:Map_GenMonster(lualib:MapGuid(monster),lualib:X(monster),lualib:Y(monster) , 8,lualib:GenRandom(1,8), "秘境海妖1", 10, false)
				lualib:Map_GenMonster(lualib:MapGuid(monster),lualib:X(monster),lualib:Y(monster) , 8,lualib:GenRandom(1,8), "秘境歌妖1", 10, false)
end

