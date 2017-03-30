local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function main(player, str)
	local newName = tostring(str)
	if str == nil then
		lualib:SysPromptMsg(player, "����������")
		return ""
	end
	
	if string.find(newName,"[%]%[]") ~= nil then 
		lualib:SysPromptMsg(player, "��������Ʋ��Ϸ������������룡")
		return ""
	end
	
	
	if lualib:IsBanString(newName) == true then 
		lualib:SysPromptMsg(player, "��������Ʋ��Ϸ������������룡")
		return ""
	end
	
	
	if newName == "" then
		lualib:SysPromptMsg(player, "���ֲ���Ϊ��")
		return ""
	end

	if lualib:ItemCount(player, "������") == 0 then
		lualib:SysPromptMsg(player, "��û�иõ���")
		lualib:ShowFormWithContent(player, "�ű���", "RenameCard.Close();")
		return ""
	end
	if lualib:Player_ChangeName(player, newName) then
		lualib:DelItem(player, "������", 1, 2, "����", "system")
	else
		lualib:SysPromptMsg(player, "����ʹ�ø����֣��뻻һ��")
	end
	return ""
end
