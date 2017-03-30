local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/ScriptPackage")
function buy(player,index)
	local index_num = tonumber(index)
	local lingli = lualib:GetInt(player,"linglizhi") 
	if index_num == 1 then 
		local str = "��ʯ������"
		if lualib:Player_IsIngotEnough(player, 100, false) == false then
			lualib:ShowFormWithContent(player,"�ű���","GameMainBar.YbTopUP_Dlg()") 
			lualib:ShowFormWithContent(player,"�ű���","Buy_ls.msgbox()")
			return ""
		else
			if lualib:Player_SubIngot(player, 100, false, "��ݹ�����ʯ������", player) == false then
				return "�۳�Ԫ��ʧ�ܣ�"
			else
				lingli = lingli + 20
				if lualib:SetInt(player,"linglizhi",lingli) == false  then
				   return "��ʯ������ʹ��ʧ��"
				else
					lualib:SysTipsMsg(player,"��������20")
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
			local str = "��ʯ������"
			if lualib:Player_IsIngotEnough(player, 988, false) == false then
				lualib:ShowFormWithContent(player,"�ű���","GameMainBar.YbTopUP_Dlg()") 
				lualib:ShowFormWithContent(player,"�ű���","Buy_ls.msgbox()")
				return ""
			else
				if lualib:Player_SubIngot(player, 988, false, "��ݹ�����ʯ������", player) == false then
					return "�۳�Ԫ��ʧ�ܣ�" 
				else
					lingli = lingli + 200
					if lualib:SetInt(player,"linglizhi",lingli) == false  then
					   return "��ʯ������ʹ��ʧ��"
					else
						lualib:SysTipsMsg(player,"��������200")
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
	lualib:ShowFormWithContent(player,"�ű���","Buy_ls.updata("..lingli..");")
	lualib:SysPromptMsg(player, " ����ʹ�óɹ�����")
	return ""
end