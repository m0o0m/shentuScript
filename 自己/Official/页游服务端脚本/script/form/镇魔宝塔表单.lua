local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)


function enterMap(player)
	if lualib:GetInt("","��ħ��������") == 0 then
		lualib:ShowFormWithContent(player, "�ű���", "MagicPagodaWnd.msg(\"���δ����\");")
		return ""
	end
	local level = lualib:Level(player)
	if level < 80 then
		lualib:ShowFormWithContent(player, "�ű���", "MagicPagodaWnd.msg(\"80���ſɽ���\");")
		return ""
	end	
	local dgn_guid = lualib:GetStr("","��ħ����GUID")
	if dgn_guid == "" then
		--[[dgn_guid = lualib:Map_CreateDgn("�����������" , true, 35*60)  
		lualib:SetStr("","��ħ����GUID",dgn_guid)--]]
		lualib:ShowFormWithContent(player, "�ű���", "MagicPagodaWnd.msg(\"���δ����\");")
		return ""
	end	
	
	lualib:Player_SetDgnTicket(player, dgn_guid)
	lualib:Map_JumpXY(dgn_guid, player, 142, 157, 8)
	lualib:ShowFormWithContent(player,"�ű���","MagicPagodaWnd.closeWnd();")
	return ""
	
end

function Get_Reward(player,param)
	param = tonumber(param)
	local haveNum = lualib:ItemCount(player, "��ħ����")
	if haveNum < 100 then
		lualib:ShowFormWithContent(player, "�ű���", "MagicPagodaInWnd.msg(\"��ħ���Ʋ���\");")
		return ""
	end
	local getNum = math.floor(haveNum / 100) 
	local wingNum = getNum * 36
	if lualib:GetBagFree(player) < 1 then
		lualib:ShowFormWithContent(player, "�ű���", "MagicPagodaInWnd.msg(\"��������\");")
		return ""
	end
	local tab = {0,888,2588}
	if param ~= 1 then
		local ingot = lualib:GetIngot(player)
		if ingot < tab[param] then
			lualib:ShowFormWithContent(player, "�ű���", "MagicPagodaInWnd.msg(\"Ԫ������\");")
			return ""
		else
			if not lualib:Player_SubIngot(player, ingot, false, "��ħ����:�߱��һ���ë", "ϵͳ") then
				lualib:ShowFormWithContent(player, "�ű���", "MagicPagodaInWnd.msg(\"�۳�Ԫ��ʧ��\");")
				return ""
			end
		end	
	end	
	if param == 3 then
		param = 4
	end	
	if not lualib:DelItem(player, "��ħ����", getNum * 100, 2, "�һ���ë", "ϵͳ") then				
		lualib:ShowFormWithContent(player, "�ű���", "MagicPagodaInWnd.msg(\"�۳���ħ����ʧ��\");")
		return ""
	end
	if not lualib:AddItem(player,"��ë",wingNum * param,true,"��ħ����", "ϵͳ") then
		return ""
	end
	return ""
end
