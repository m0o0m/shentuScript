local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/ScriptPackage")
function buy(player,index)
	local index_num = tonumber(index)
	local lingli = lualib:GetInt(player,"linglizhi") 
	if index_num == 1 then 
		local str = "灵石精华中"
		if lualib:Player_IsIngotEnough(player, 100, false) == false then
			lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
			lualib:ShowFormWithContent(player,"脚本表单","Buy_ls.msgbox()")
			return ""
		else
			if lualib:Player_SubIngot(player, 100, false, "快捷购买灵石精华中", player) == false then
				return "扣除元宝失败！"
			else
				lingli = lingli + 20
				if lualib:SetInt(player,"linglizhi",lingli) == false  then
				   return "灵石精华中使用失败"
				else
					lualib:SysTipsMsg(player,"魂力增加20")
				end
				--********************************--
				local indexx = lualib:GetDBNum("consumeTerm")
				local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 100
				RecordTop10ConsumeInfo(player,totalYb)
				--********************************--
			end
		end
	else 
		if index_num == 2 then 
			local str = "灵石精华大"
			if lualib:Player_IsIngotEnough(player, 988, false) == false then
				lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
				lualib:ShowFormWithContent(player,"脚本表单","Buy_ls.msgbox()")
				return ""
			else
				if lualib:Player_SubIngot(player, 988, false, "快捷购买灵石精华大", player) == false then
					return "扣除元宝失败！" 
				else
					lingli = lingli + 200
					if lualib:SetInt(player,"linglizhi",lingli) == false  then
					   return "灵石精华大使用失败"
					else
						lualib:SysTipsMsg(player,"魂力增加200")
					end
					--********************************--
					local indexx = lualib:GetDBNum("consumeTerm")
					local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 988
					RecordTop10ConsumeInfo(player,totalYb)
					--********************************--
				end
			end
		end
	end
	lualib:ShowFormWithContent(player,"脚本表单","Buy_ls.updata("..lingli..");")
	lualib:SysPromptMsg(player, " 购买并使用成功！！")
	return ""
end