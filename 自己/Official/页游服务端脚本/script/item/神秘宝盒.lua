local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


    local items = {
                    {"审判", "忘机", "囚龙"}, 
                    {"审判(极)", "忘机(极)", "囚龙(极)", "十杀", "龙渊", "天瀑"}, 
                    {"审判(珍)", "忘机(珍)", "囚龙(珍)", "十杀(极)", "龙渊(极)", "天瀑(极)", "赤峰战甲(男)", "赤峰战甲(女)", "阎罗长袍(男)", "阎罗长袍(女)", "光明道袍(男)", "光明道袍(女)"}, 
                    {"十杀(珍)", "龙渊(珍)", "天瀑(珍)"}
            }
    local rates = 
            {
                    4000, 3000, 2000, 1000
            }


function main(player, item)
	local BoxCanOpen = lualib:GetInt(item, "BoxCanOpen")
	if BoxCanOpen ~= 1 then 
		lualib:SysMsg_SendWarnMsg(player, "宝箱在活动结束后解除封印")
		return false
	end
    local rnd = 0;
    local item_name = ""
	local max,qujian = 0,0
	for k = 1, table.getn(rates) do
		max = max + rates[k]
	end
	rnd = lualib:GenRandom(1, max)
	for k = 1, table.getn(rates) do
		qujian = qujian + rates[k]
		if rnd <= qujian then
			for i = 1, table.getn(items) do
				if i == k then
					local ce = lualib:GenRandom(1, #items[i])
					item_name = items[i][ce];
					if not lualib:Player_GiveItemUnbind(player, item_name, 1, "给物品：开启神秘宝盒", "神秘宝盒") then
						lualib:Error("神秘宝盒给物品失败！")
						return false
					end
					lualib:SysMsg_SendCenterMsg(1, lualib:Player_GetStrProp(player, lua_role_user_name).."在古墓中开启神秘宝盒，获得了"..item_name.."！", "系统公告")
					return true
				end
			end
		end
	end
end
