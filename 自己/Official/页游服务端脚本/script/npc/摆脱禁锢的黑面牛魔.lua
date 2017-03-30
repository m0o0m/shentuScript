local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function main(npc)	
	return ""
end	


local str =
	{
		"�ɶ�����࣬�Ͽ�����ң��������ţħ�󽫾�����ţħ���������������˺����Ƭ��",
		"ʲô������������������ţħһ���ƽ�ദ��������������",
		"��ֱ̫��Ц�ˣ�������Щ��С�����࣬�װ����֣���������������������һ���Ķ�������Ȼ�������ǿ���ţħ���Ტ�ۣ�",
		"Ҫ������Ϊ���ž�·�Ⱥ;�·�룬���ھ�����Գ�;��ߵ������ϣ�����ţħһ�����ɱ�˹��������������������ˣ����Ǿ�Ȼ���������ǿ���ţħһ��̸��������ֱ�����Σ�",
		"��С�����࣬����ֻ���������ǵ�ʳ����ѣ��ѵ�����ϲ�����Լ���ʳ��̸������",
		"��������������Ľ���ħ��ʱЧ���ڹ��ˣ������ɣ�",		
	}

local timerID     = {1,2,3,4,5,6,7}
local elapse      = 3000
local NpcName = ""	
	
function on_create(npc)
	for i=2,#timerID do
		lualib:AddTimer(npc, i, elapse*i, 1, "say")
	end
	lualib:SysMsg_SendRoleTalk(npc,str[1])
return ""
end

function say(npc, timer_id)
	if timer_id ~= 7 then
		lualib:SysMsg_SendRoleTalk(npc,str[timer_id])
	else 
		lualib:Npc_Remove(npc)
	end
return ""
end
