local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
	local monster = lualib:Map_GenSingleCampMonster(map, 63, 67, 4, 1, "С��ħ1", false, 2)	
	local target = lualib:Map_GenSingleCampMonster(map, 63, 67, 1, 1, "��ӡ����", false, 1) --���ϻ�Ҫ�Ҹ�����������	
	
	--Map_GenSingleCampMonster(map, 63, 67, 4, 1, "С��ħ1", false, 2)
	--[[
	local monster = lualib:Map_GenSingleMonster(map, 63, 67, 4, 1, "С��ħ1", false)
	lualib:SetCamp(monster, 2)		
	local target = lualib:Map_GenSingleMonster(map, 63, 67, 4, 1, "��ӡ����", false) --���ϻ�Ҫ�Ҹ�����������
	lualib:SetCamp(target, 1)
	]]

	lualib:Monster_SetAttackTarget(monster, target)	
	lualib:AddTrigger(target,  lua_trigger_post_die, "on_trigger_post_die")	
	lualib:AddTimerEx(map, 1, 22000, -1, "create_monster", "target")
	
	return ""
end

function create_monster(map)

	local mon = {"С��ħ1", "С��ħ1", "����ţħ1", "����ţħ1", "�ڰ��̿�1", "С��ħ2"}
	local target = lualib:Map_GetRegionMonsters(map, "��ӡ����", 63, 67, 10, true, true)
	
	local monster = lualib:Map_GenSingleCampMonster(map, 63, 67, 10, 1, mon[lualib:GenRandom(1, #mon)], false, 2)
	lualib:Monster_SetAttackTarget(monster, target[1])	
	
	lualib:AddTimerEx(map, 2, 300000, 1, "check", "")
	return ""
end

function check(map)
	local map_width = lualib:Map_GetWidth(map)
    local map_height = lualib:Map_GetHeight(map)
    local a = (map_width > map_height) and map_width or map_height	 --��ͼ�������ֵ
	local players = lualib:Map_GetRegionPlayers(map, 0, 0, a, true)  --ȫ��ͼ�����GUID�б�

	local b = lualib:Map_GetMonsterCount(map, "��ӡ����", true, true)
	if b >0 then lualib:SetInt(players[1], "5099", 1) end
	if lualib:SysPromptMsg(players[1], "�ɹ��ػ���ӡ����5���ӣ�������ɣ�") then lualib:Map_DestroyDgn(map) end
	return ""

end

function on_trigger_post_die(target)
	local map = lualib:MapGuid(target)
	lualib:Map_DestroyDgn(map)
	lualib:SysMsg_SendMapMsg(map, "��ӡ���ı��ƻ�������ʧ�ܣ��������٣����ٴν��븱�����ԣ�")
	return "��ӡ���ı��ƻ�������ʧ�ܣ�"


end


function on_map_destroy(map)
	lualib:Map_DestroyDgn(map)
    
    return ""
end


