local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/ScriptPackage")
function EnterMap(player)
	if lualib:GetBindIngot(player) >= 500 then
		lualib:SubBindIngot(player, 500, "������Ʊ","������·��" )
		if lualib:Player_MapMove(player, "δ֪����") then
			lualib:ShowFormWithContent(player, "�ű���", "TempleGuider.CloseWnd()")
		end
	else
		lualib:ShowFormWithContent(player, "�ű���", "TempleGuider.Msg()")
		--lualib:SysMsg_SendBottomColor(player, "���İ�Ԫ������", 7, 0)
	end
	
	return ""
end

function BuyYb(player)
	if lualib:GetIngot(player) >= 100 then 
		lualib:Player_SubIngot(player, 100, false, "��Ԫ��:�����Ԫ", "ϵͳ")
		--********************************--
		local indexx = lualib:GetDBNum("consumeTerm")
		local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 100
		RecordTop10ConsumeInfo(player,totalYb)
		--********************************--
		if lualib:Player_MapMove(player, "δ֪����") then
			lualib:ShowFormWithContent(player, "�ű���", "TempleGuider.CloseWnd()")
		end
	else
		lualib:ShowFormWithContent(player, "�ű���", "TempleGuider.YBMsg()")
	end
	return ""
end