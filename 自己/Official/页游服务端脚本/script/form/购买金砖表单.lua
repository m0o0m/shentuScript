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
	local name_tab = {"�����","����"}
	local icounts = lualib:GetDayInt(player,"goldzdayints")
	local vip_lv = lualib:GetVipLevel(player)
	if icounts >= DatIntTbl[vip_lv] then
		lualib:SysCenterMsg( 0 , "ʹ��"..name_tab[index].."ʧ��,������ʹ��"..icounts.."�Σ�������ʹ��"..DatIntTbl[vip_lv].."��" , player )
		return false
	end
	local index_num = tonumber(index)
	if index_num == 2 then 
		local str = "��ש"
		if lualib:Player_IsIngotEnough(player, 500, true) == false then
			lualib:SysPromptMsg(player,"��Ԫ���㣬����Ԫ������")
			return ""
		else
			if lualib:Player_SubIngot(player, 500, true, "��ݹ����ש", player) == false then
				return "�۳�Ԫ��ʧ��"
			else
				lualib:Player_AddGold(player, 2000000, true, "�ӽ�ң��������", "ǿ��")
				lualib:SetDayInt(player,"goldzdayints",icounts + 1)
				lualib:SysCenterMsg( 0 , "ʹ�ý����ɹ�,������ʹ��"..lualib:GetDayInt(player,"goldzdayints").."�Σ�������ʹ��"..DatIntTbl[vip_lv].."��" , player )
					
			end
		end
	else 
		if index_num == 1 then 
			local str = "��ש��"
			if lualib:Player_IsIngotEnough(player, 88, false) == false then
				lualib:ShowFormWithContent(player,"�ű���","GameMainBar.YbTopUP_Dlg()") 
				return ""
			else
				if lualib:Player_SubIngot(player, 88, false, "��ݹ����ש", player) == false then
					return "�۳�Ԫ��ʧ�ܣ�" 
				else
					lualib:Player_AddGold(player, 3000000, true, "�ӽ�ң���������", "ǿ��")
					--********************************--
					local indexx = lualib:GetDBNum("consumeTerm")
					local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 88
					RecordTop10ConsumeInfo(player,totalYb)
					lualib:SetDayInt(player,"goldzdayints",icounts + 1)
					lualib:SysCenterMsg( 0 , "ʹ�ô�����ɹ�,������ʹ��"..lualib:GetDayInt(player,"goldzdayints").."�Σ�������ʹ��"..DatIntTbl[vip_lv].."��" , player )
				
					--********************************--
				end
			end
		end
	end
	lualib:ShowFormWithContent(player,"�ű���","GoldBuy.updata()")
	local bind_gold = lualib:GetBindGold(player)
	lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.EditChange(" .. bind_gold .. ")")
	lualib:SysPromptMsg(player, "����ʹ�óɹ�����")

	return ""
end
