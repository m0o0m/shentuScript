local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/ScriptPackage")
function EnterMap(player)
	if lualib:GetBindIngot(player) >= 500 then
		lualib:SubBindIngot(player, 500, "暗殿门票","暗殿引路人" )
		if lualib:Player_MapMove(player, "未知暗殿") then
			lualib:ShowFormWithContent(player, "脚本表单", "TempleGuider.CloseWnd()")
		end
	else
		lualib:ShowFormWithContent(player, "脚本表单", "TempleGuider.Msg()")
		--lualib:SysMsg_SendBottomColor(player, "您的绑定元宝不足", 7, 0)
	end
	
	return ""
end

function BuyYb(player)
	if lualib:GetIngot(player) >= 100 then 
		lualib:Player_SubIngot(player, 100, false, "扣元宝:购买绑元", "系统")
		--********************************--
		local indexx = lualib:GetDBNum("consumeTerm")
		local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 100
		RecordTop10ConsumeInfo(player,totalYb)
		--********************************--
		if lualib:Player_MapMove(player, "未知暗殿") then
			lualib:ShowFormWithContent(player, "脚本表单", "TempleGuider.CloseWnd()")
		end
	else
		lualib:ShowFormWithContent(player, "脚本表单", "TempleGuider.YBMsg()")
	end
	return ""
end