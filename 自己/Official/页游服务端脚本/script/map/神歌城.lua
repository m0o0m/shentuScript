local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("include/����ս�淨")

function on_map_create(strMap)
	CCastle:Init(strMap);
	
	if lualib:Map_GenNpc(strMap, "��������", 163, 186, 0, 2) == "" then
        lualib:Error("ˢ��������ʧ�ܣ�")
        return
    end
	
	--ˢ�������ŵ��赲
	if lualib:Map_GenNpc(strMap, "�����赲", 81, 171, 0, 2) == "" then
        lualib:Error("ˢ���ǳ����赲ʧ�ܣ�")
        return
    end
	if lualib:Map_GenNpc(strMap, "�����赲", 81, 172, 0, 2) == "" then
        lualib:Error("ˢ���ǳ����赲ʧ�ܣ�")
        return
    end
	if lualib:Map_GenNpc(strMap, "�����赲", 81, 173, 0, 2) == "" then
        lualib:Error("ˢ���ǳ����赲ʧ�ܣ�")
        return
    end
	if lualib:Map_GenNpc(strMap, "�����赲", 144, 108, 0, 2) == "" then
        lualib:Error("ˢ���ǳ����赲ʧ�ܣ�")
        return
    end
	if lualib:Map_GenNpc(strMap, "�����赲", 145, 108, 0, 2) == "" then
        lualib:Error("ˢ���ǳ����赲ʧ�ܣ�")
        return
    end
	
	--ˢ����������
	--[[	
	if lualib:Map_GenSingleMonster(strMap, x, y, 2, 5, in_monster[lualib:GenRandom(1, #in_monster)], false) == "" then 
		lualib:Error("ˢ��������ʧ�ܣ�")
        return
	end
	if lualib:Map_GenSingleMonster(strMap, x, y, 2, 5, in_monster[lualib:GenRandom(1, #in_monster)], false) == "" then 
		lualib:Error("ˢ��������ʧ�ܣ�")
        return
	end
	--]]
	
end