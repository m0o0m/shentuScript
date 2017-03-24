local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("form/龙吟修仙诀表单")


local t = {
	["内丹●人级"] = 5,
	["内丹●玄级"] = 15,
	["内丹●皇级"] = 30,
	["内丹●地级"] = 50,
	["内丹●天级"] = 100,
	["内丹●圣级"] = 188,
	["天材"] = 5,
	["地宝"] = 20,
	["灵药"] = 50,
}

function main(player, item)
	local key = lualib:KeyName(item)
	local nums = t[key]
	if nums == nil then
		lualib:SysWarnMsg(player, "道具索引名挂载错误")
		return false
	end
	local xiuxian = lualib:GetInt(player, "xiuxian")
	lualib:SysTipsMsg(player, "修仙值+"..nums)
	lualib:SetInt(player, "xiuxian", xiuxian + nums)
	check(player)
	return true
end