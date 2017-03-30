local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
local boy_path = {500, 680, 496, 676, 492, 672, 486, 666, 486, 658, 491, 653, 495, 649, 500, 644, 500, 680}
local girl_path = {508, 692, 504, 692, 500, 692, 496, 692, 492, 688, 492, 684, 492, 680, 492, 676, 488, 670, 508, 692}

local str =
	{
		"�������ú��棡",
		"���ڴ���������ڳ�����͵��������ϴ���ˣ�������~~",
		"�����������ܲ��������糵���޽�~",
		"��Ҷ�˵��������÷����!",
		"��������һ������ɣ�"
	}

local timerID     = 1
local elapse      = 30000
local monsterName = ""	
	
function on_create(monster)
	lualib:AddBuff(monster, "�޵�", 0)
	lualib:AddTimer(monster, timerID, elapse, -1, "say")
	local keyname = lualib:KeyName(monster)
	if keyname == "С�к�" then
		lualib:Monster_SetSeeker(monster, boy_path, 1, true)
	elseif keyname == "СŮ��" then
		lualib:Monster_SetSeeker(monster, girl_path, 1, true)
	end
end

function on_trigger_post_die(actor, killer)

end

function say(monster, timer_id)
	local rnd = lualib:GenRandom(1, #str)
    lualib:SysMsg_SendRoleTalk(monster, monsterName .. str[rnd])
end