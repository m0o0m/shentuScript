local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function main(player, str)
	local newName = tostring(str)
	if str == nil then
		lualib:SysPromptMsg(player, "请输入名字")
		return ""
	end
	
	if string.find(newName,"[%]%[]") ~= nil then 
		lualib:SysPromptMsg(player, "输入的名称不合法，请重新输入！")
		return ""
	end
	
	
	if lualib:IsBanString(newName) == true then 
		lualib:SysPromptMsg(player, "输入的名称不合法，请重新输入！")
		return ""
	end
	
	
	if newName == "" then
		lualib:SysPromptMsg(player, "名字不能为空")
		return ""
	end

	if lualib:ItemCount(player, "改名卡") == 0 then
		lualib:SysPromptMsg(player, "您没有该道具")
		lualib:ShowFormWithContent(player, "脚本表单", "RenameCard.Close();")
		return ""
	end
	if lualib:Player_ChangeName(player, newName) then
		lualib:DelItem(player, "改名卡", 1, 2, "改名", "system")
	else
		lualib:SysPromptMsg(player, "不能使用该名字，请换一个")
	end
	return ""
end
