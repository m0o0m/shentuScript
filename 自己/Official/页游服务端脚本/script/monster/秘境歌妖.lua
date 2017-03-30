local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("monster/����ϵͳ����")

local CMonster = {
	["����"] = "����",
	["����"] = 100, 		--(1,100)
	["����"] = "������ĸ���",
}

function on_create(monster)
	lualib:AddTrigger(monster, lua_trigger_post_die  , "on_trigger_post_die")	
end

function on_trigger_post_die(actor, killer)
	zhengfusiwang(actor, killer) --��������ϵͳ�еĹ������������ж�
	if lualib:ItemCountByKey(killer, CMonster["����"], true, false,false, 2)>0 then
		if lualib:Player_GetBagFree(killer)<1 then
			lualib:MsgBox(killer,"���ı�������")		
		elseif lualib:AddItem(killer, CMonster["����"],1, true, "","")then
			if not lualib:DelItem(killer,  CMonster["����"],1, 2,"", "") then
				lualib:MsgBox(killer,"�۳�����ʧ��")		
				return
			end
		end
	end
end