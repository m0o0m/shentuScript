local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local str =
	{
		"�Դ���һ���ҵ�����ʬ����У��㱻��ӡ������������䡭��",
		"��Ҫ�����Ƕ������ҵ�ʹ�࣡",
		"�Ҳ����ģ��ⲻӦ�����ҵ�����",
		"��һ��Ҫȥ����ħʯ�������Ѱ�ҵ��������ܡ���",
		"��Ҫ�����ң��ɶ�Ϊʲô��ÿ�δ��Ͷ���������һ��С��Χ�ڣ������������������"
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
	 local s = "��������������ս��ħ������["..map.."]"..":"..x.." "..y.."����ʦ���и�����"
	 local s1 = "��������������ս��ħ������["..map.."]"..":"..x.." "..y.."����ʦ���и�����"
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
			print("ɾ����ʱ��ʧ��")
		end
		return
	end
	
end
