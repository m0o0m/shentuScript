local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local str =
	{
		"自从那一天我诞生与尸体堆中，便被烙印下了永恒的诅咒……",
		"我要让你们都尝尝我的痛苦！",
		"我不甘心，这不应该是我的命！",
		"我一定要去往天魔石窟深处，找寻我诞生的秘密……",
		"不要束缚我！可恶，为什么我每次传送都被禁锢在一个小范围内！是你对我下了诅咒吗？"
	}

local timerID     = 1
local elapse      = 15000
local monsterName = ""

function on_create(monster)
	lualib:AddTimer(monster, timerID, elapse, -1, "say")
	lualib:AddTimer(monster, 2, 1000, -1, "fanwei")
	lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
	 local map = lualib:Name(lualib:MapGuid(monster))
	 local x = lualib:X(monster)
	 local y = lualib:Y(monster)
	 local s = "超级宝宝——恶战天魔诞生在["..map.."]"..":"..x.." "..y.."！法师们有福啦！"
	 local s1 = "超级宝宝——恶战天魔诞生在["..map.."]"..":"..x.." "..y.."！法师们有福啦！"
	 lualib:SysMsg_SendCenterMsg(1, s, "")
	 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
	 
end

function on_trigger_post_die(actor, killer)
	lualib:DisableTimer(actor, timerID)
    lualib:ClearTrigger(actor)
end

function say(monster, timer_id)
	local rnd = lualib:GenRandom(1, #str)
    lualib:SysMsg_SendRoleTalk(monster, monsterName .. str[rnd])
end

function fanwei(monster, timer_id)
	local master = lualib:Monster_GetMaster(monster)

	local x_z = 110
	local x_y = 100
	local y_s = 50
	local y_x = 40
	
	local mapguid = lualib:MapGuid(monster)
	local map = lualib:Name(mapguid)
	local x = lualib:X(monster)
	local y = lualib:Y(monster)
	
	if master == "" then
		if x < x_z or x > x_y  then
			 lualib:Monster_JumpXY(mapguid, monster, 108, 44, 1)
		end
		
		if y < y_s or y > y_x then
			 lualib:Monster_JumpXY(mapguid, monster, 108, 44, 1)
		end
	else
		if lualib:DisableTimer(monster, 2) == false then
			print("删除定时器失败")
		end
		return
	end
	
end
