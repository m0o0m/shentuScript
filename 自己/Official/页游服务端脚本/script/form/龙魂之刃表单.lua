local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
local enter_xy =  {
					{75, 125},
					{115, 125},
					{115, 85},
					{75, 85},
				}

function enter(player)
	local level = lualib:Level(player)
	if level < 50 or level >= 200 then
		lualib:ShowFormWithContent(player, "脚本表单", "LongHunZL_outside.msg(\"等级不足!\")")
		return ""
	end
	

	local dgn_id = lualib:GetStr(lualib:Map_GetMapGuid("巫山城"), "active_lhzr_map")
	if dgn_id == "" then
		lualib:ShowFormWithContent(player, "脚本表单", "LongHunZL_outside.msg(\"活动未开启，请注意系统公告!\")")
		return ""
	end
	
	if lualib:Player_SetDgnTicket(player, dgn_id) == false then
		lualib:ShowFormWithContent(player, "脚本表单", "LongHunZL_outside.msg(\"你未被许可进入龙魂之刃地图!\")")
		return ""
    end
	local rand = math.random(1, #enter_xy)
    if lualib:Player_EnterDgn(player, "龙魂之刃", enter_xy[rand][1], enter_xy[rand][2], 3) == false then
		lualib:ShowFormWithContent(player, "脚本表单", "LongHunZL_outside.msg(\"进入地图龙魂之刃失败!\")")
        return ""
	else
		lualib:ShowFormWithContent(player, "脚本表单", "LongHunZL_outside.closeWnd()")
    end
	
	local curTime =  lualib:Str2Time(lualib:Now())
	local startTime = lualib:GetInt(dgn_id, "龙魂之刃dc")
	local restTime = 15*60-(curTime - startTime)
	lualib:ShowFormWithContent(player,"form文件表单","LongHunZL#"..restTime) 
	return ""
end