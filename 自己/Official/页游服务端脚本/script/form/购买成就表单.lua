local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/ScriptPackage")
require("system/����ͼ��")
function buy(player,index)
	--lualib:SysPromptMsg(player, "��������")
	local index_num = tonumber(index)
	local chengjiu = lualib:GetInt(player,"Ach_jifen")
	local inde = lualib:GetInt(player,"Ach_xunz") 
	if index_num == 1 then 
		local str = "�߼��ɾ����ư�"
		local chengjiu_counts = "�߼��ɾ����ư����"
		local counts = lualib:GetDayInt(player,chengjiu_counts)
		if counts >= 10 then
		lualib:SysCenterMsg( 0 , "�߼��ɾ�����(��)һ�����ʹ��10�Σ�����ʹ�ô�������" , player )
		lualib:SysPromptMsg(player, " �߼��ɾ�����(��)һ�����ʹ��10�Σ�����ʹ�ô�������")
		return "" 
	    end
		if lualib:Player_IsIngotEnough(player, 2000, true) == false then
			lualib:ShowFormWithContent(player,"�ű���","Buy_ach.Msg()") 
			--lualib:SysPromptMsg(player, "��İ�Ԫ������2000 ���޷�����")
			return ""
		else
			if lualib:Player_SubIngot(player, 2000, true, "��ݹ���ɾ�", player) == false then
				return "�۳���Ԫ��ʧ��"
			else
				chengjiu = chengjiu + 80000
				counts = counts + 1
				if lualib:SetDayInt(player,chengjiu_counts,counts) then 
					local lastcounts = 10 - counts
					if lualib:SetInt(player,"Ach_jifen",chengjiu) == false  then
					   return "�߼��ɾ�����(��)ʹ��ʧ��"
					else
						lualib:SysPromptMsg(player, "����óɾͻ���80000��������໹����ʹ��".. lastcounts.."��")
						lualib:SysTipsMsg(player,"�ɾͻ�������80000")
					end
				end
			end
		end
	else 
		if index_num == 2 then 
			local str = "�߼��ɾ�����"
			if lualib:Player_IsIngotEnough(player, 500, false) == false then
				lualib:ShowFormWithContent(player,"�ű���","GameMainBar.YbTopUP_Dlg()") 
				lualib:ShowFormWithContent(player,"�ű���","Buy_ach.msgbox()")
				return ""
			else
				if lualib:Player_SubIngot(player, 500, false, "��ݹ���ɾ�", player) == false then
					return "�۳�Ԫ��ʧ�ܣ�" 
				else
					chengjiu = chengjiu + 80000
					if lualib:SetInt(player,"Ach_jifen",chengjiu) == false  then
					   return "�߼��ɾ�����ʹ��ʧ��"
					else
						lualib:SysPromptMsg(player, "����óɾͻ���80000")
						lualib:SysTipsMsg(player,"�ɾ�����80000")
					end
					--********************************--
					local indexx = lualib:GetDBNum("consumeTerm")
					local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 500
					RecordTop10ConsumeInfo(player,totalYb)
					--********************************--
				end
			end
		end
	end
	
	Button_add_magic2(player,1)
	lualib:ShowFormWithContent(player,"�ű���","Buy_ach.updata("..chengjiu..");Xunz_Win.jifen_update("..inde..","..chengjiu..")")
	lualib:SysPromptMsg(player, " ����ʹ�óɹ�����")
	return ""
end
