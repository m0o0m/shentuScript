local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/ScriptPackage")
local DatIntTbl = {
				[0]	=	20	,
				[1]	=	30	,
				[2]	=	50	,
				[3]	=	70	,
				[4]	=	100	,
				[5]	=	150	,
				[6]	=	200	,
				[7]	=	300	,
				[8]	=	400	,
				[9]	=	500	,
				[10] =	600	,
}
function buy(player,index)
	index = tonumber(index)
	local name_tab = {"大金条","金条"}
	local icounts = lualib:GetDayInt(player,"goldzdayints")
	local vip_lv = lualib:GetVipLevel(player)
	if icounts >= DatIntTbl[vip_lv] then
		lualib:SysCenterMsg( 0 , "使用"..name_tab[index].."失败,今日已使用"..icounts.."次，最多可以使用"..DatIntTbl[vip_lv].."次" , player )
		return false
	end
	local index_num = tonumber(index)
	if index_num == 2 then 
		local str = "金砖"
		if lualib:Player_IsIngotEnough(player, 500, true) == false then
			lualib:SysPromptMsg(player,"绑元不足，请用元宝购买")
			return ""
		else
			if lualib:Player_SubIngot(player, 500, true, "快捷购买金砖", player) == false then
				return "扣除元宝失败"
			else
				lualib:Player_AddGold(player, 2000000, true, "加金币：购买金条", "强化")
				lualib:SetDayInt(player,"goldzdayints",icounts + 1)
				lualib:SysCenterMsg( 0 , "使用金条成功,今日已使用"..lualib:GetDayInt(player,"goldzdayints").."次，最多可以使用"..DatIntTbl[vip_lv].."次" , player )
					
			end
		end
	else 
		if index_num == 1 then 
			local str = "金砖大"
			if lualib:Player_IsIngotEnough(player, 88, false) == false then
				lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
				return ""
			else
				if lualib:Player_SubIngot(player, 88, false, "快捷购买金砖", player) == false then
					return "扣除元宝失败！" 
				else
					lualib:Player_AddGold(player, 3000000, true, "加金币：购买大金条", "强化")
					--********************************--
					local indexx = lualib:GetDBNum("consumeTerm")
					local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 88
					RecordTop10ConsumeInfo(player,totalYb)
					lualib:SetDayInt(player,"goldzdayints",icounts + 1)
					lualib:SysCenterMsg( 0 , "使用大金条成功,今日已使用"..lualib:GetDayInt(player,"goldzdayints").."次，最多可以使用"..DatIntTbl[vip_lv].."次" , player )
				
					--********************************--
				end
			end
		end
	end
	lualib:ShowFormWithContent(player,"脚本表单","GoldBuy.updata()")
	local bind_gold = lualib:GetBindGold(player)
	lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.EditChange(" .. bind_gold .. ")")
	lualib:SysPromptMsg(player, "购买并使用成功！！")

	return ""
end
