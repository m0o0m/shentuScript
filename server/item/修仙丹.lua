local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("form/�������ɾ���")


local t = {
	["�ڵ����˼�"] = 5,
	["�ڵ�������"] = 15,
	["�ڵ���ʼ�"] = 30,
	["�ڵ���ؼ�"] = 50,
	["�ڵ����켶"] = 100,
	["�ڵ���ʥ��"] = 188,
	["���"] = 5,
	["�ر�"] = 20,
	["��ҩ"] = 50,
}

function main(player, item)
	local key = lualib:KeyName(item)
	local nums = t[key]
	if nums == nil then
		lualib:SysWarnMsg(player, "�������������ش���")
		return false
	end
	local xiuxian = lualib:GetInt(player, "xiuxian")
	lualib:SysTipsMsg(player, "����ֵ+"..nums)
	lualib:SetInt(player, "xiuxian", xiuxian + nums)
	check(player)
	return true
end