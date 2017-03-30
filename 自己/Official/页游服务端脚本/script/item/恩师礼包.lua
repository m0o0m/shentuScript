local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)
    local item_table = {
                  "审判(极)",
                  "忘机(极)",
                  "囚龙(极)",
                  "铁战护腕",
                  "铁战戒指",
                  "铁战靴子",
                  "聚魂护腕",
                  "聚魂戒指",
                  "聚魂靴子",
                  "玄光护腕",
                  "玄光戒指",
                  "玄光靴子",
				  "定位石",
                  "定位石",
                  "随机传送(50次)",
                  "修复神水",
                  "灵元珠",
                  "封印鉴定符",
                  "打捆绳",
                  "定位石",
                  "随机传送(50次)",
                  "修复神水",
                  "灵元珠",
                  "封印鉴定符",
                  "打捆绳",
                  "定位石",
                  "随机传送(50次)",
                  "修复神水",
                  "灵元珠",
                  "封印鉴定符",
                  "打捆绳",
				  "定位石",
                  "定位石",
                  "随机传送(50次)",
                  "修复神水",
                  "灵元珠",
                  "封印鉴定符",
                  "打捆绳",
                  "定位石",
                  "随机传送(50次)",
                  "修复神水",
                  "灵元珠",
                  "封印鉴定符",
                  "打捆绳",
                  "定位石",
                  "随机传送(50次)",
                  "修复神水",
                  "灵元珠",
                  "封印鉴定符",
                  "打捆绳",
                  "随机传送(50次)",
                  "修复神水",
                  "灵元珠",
                  "封印鉴定符",
                  "打捆绳",
                  "定位石",
                  "随机传送(50次)",
                  "修复神水",
                  "灵元珠",
                  "封印鉴定符",
                  "打捆绳",
                  "定位石",
                  "随机传送(50次)",
                  "修复神水",
                  "灵元珠",
                  "封印鉴定符",
                  "打捆绳",
				  "定位石",
                  "定位石",
                  "随机传送(50次)",
                  "修复神水",
                  "灵元珠",
                  "封印鉴定符",
                  "打捆绳",
                  "定位石",
                  "随机传送(50次)",
                  "修复神水",
                  "灵元珠",
                  "封印鉴定符",
                  "打捆绳",
                  "定位石",
                  "随机传送(50次)",
                  "修复神水",
                  "灵元珠",
                  "封印鉴定符",
                  "打捆绳"
						}
	
	
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < 35 then
	lualib:SysMsg_SendWarnMsg(player, "等级不足，无法使用")
	return false
	end
	
    local bag_free = lualib:Player_GetBagFree(player)
    if bag_free < 1 then
        lualib:SysMsg_SendWarnMsg(player, "背包已满！")
        return false
    end

    local index = lualib:GenRandom(1, table.getn(item_table))
    if not lualib:Player_GiveItemUnbind(player, item_table[index], 1, "给物品：恩师礼包", player) then
        lualib:SysMsg_SendWarnMsg(player, "给予物品失败！")
        return false
    end

    return true
end
