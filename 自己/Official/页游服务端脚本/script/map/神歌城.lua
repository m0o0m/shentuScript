local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("include/攻城战玩法")

function on_map_create(strMap)
	CCastle:Init(strMap);
	
	if lualib:Map_GenNpc(strMap, "神歌城老人", 163, 186, 0, 2) == "" then
        lualib:Error("刷神歌城老人失败！")
        return
    end
	
	--刷左右两门的阻挡
	if lualib:Map_GenNpc(strMap, "城门阻挡", 81, 171, 0, 2) == "" then
        lualib:Error("刷神歌城城门阻挡失败！")
        return
    end
	if lualib:Map_GenNpc(strMap, "城门阻挡", 81, 172, 0, 2) == "" then
        lualib:Error("刷神歌城城门阻挡失败！")
        return
    end
	if lualib:Map_GenNpc(strMap, "城门阻挡", 81, 173, 0, 2) == "" then
        lualib:Error("刷神歌城城门阻挡失败！")
        return
    end
	if lualib:Map_GenNpc(strMap, "城门阻挡", 144, 108, 0, 2) == "" then
        lualib:Error("刷神歌城城门阻挡失败！")
        return
    end
	if lualib:Map_GenNpc(strMap, "城门阻挡", 145, 108, 0, 2) == "" then
        lualib:Error("刷神歌城城门阻挡失败！")
        return
    end
	
	--刷左右两大门
	--[[	
	if lualib:Map_GenSingleMonster(strMap, x, y, 2, 5, in_monster[lualib:GenRandom(1, #in_monster)], false) == "" then 
		lualib:Error("刷神歌城老人失败！")
        return
	end
	if lualib:Map_GenSingleMonster(strMap, x, y, 2, 5, in_monster[lualib:GenRandom(1, #in_monster)], false) == "" then 
		lualib:Error("刷神歌城老人失败！")
        return
	end
	--]]
	
end