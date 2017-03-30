local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")

function getHandBookTb(player)
	local monsterBook = lualib:GetStr(player, "player_monsterBook")
	if monsterBook == "" then
		monsterBook = {}
	else
		monsterBook = json.decode(monsterBook)
	end
	
	local equipTb = lualib:BagItemList(player, true, true, true)
	
	lualib:ShowFormWithContent(player, "½Å±¾±íµ¥", "HandBook.SetTable(" .. serialize(monsterBook) .. "," .. serialize(equipTb) .. ");")
	return ""
end

