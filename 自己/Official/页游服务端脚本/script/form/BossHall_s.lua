local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function EnterBossHall(player)

	if lualib:GetVipLevel(player) >= 1 then 
		lualib:ShowFormWithContent(player, "�ű���", "BOSS_Hall_Guider.CloseWnd();")
		lualib:Player_MapMove(player, "BOSS����")
	else
		lualib:ShowFormWithContent(player, "�ű���", "BOSS_Hall_Guider.MsgUp(\"VIP�ȼ�����\");")
	end
	return ""
end

function jinru(player,param)
	if lualib:GetVipLevel(player) >= 2 then 
		lualib:Player_MapMove(player, "BOSS��������")
		lualib:ShowFormWithContent(player, "�ű���", "BOSS_SconedWnd.CloseWnd();")
	elseif lualib:GetVipLevel(player) == 1 then
		if lualib:Player_SubIngot(player, 10, false, "��Ԫ��:ԭ��", "������") then
			lualib:Player_MapMove(player, "BOSS��������")
			lualib:ShowFormWithContent(player, "�ű���", "BOSS_SconedWnd.CloseWnd();")
		else
			lualib:ShowFormWithContent(player, "�ű���", "BOSS_SconedWnd.MsgUp(\"VIP1��Ҫ10Ԫ���ſɽ���\");")
			--return "������Ԫ�����㣬VIP1����Ҫ����10Ԫ���ſ��Խ���BOSS��������"
		end
	elseif lualib:GetVipLevel(player) < 1 then
		--lualib:SysMsg_SendBottomColor(player, "����VIP�ȼ�����", 7, 2)
		lualib:ShowFormWithContent(player, "�ű���", "BOSS_SconedWnd.MsgUp(\"��VIP�ȼ�����\");")
	end
	return ""
end

function jinru3(player,param)
	if lualib:GetVipLevel(player) >= 3 then 
		lualib:Player_MapMove(player, "BOSS��������")
		lualib:ShowFormWithContent(player, "�ű���", "BOSS_ThirdWnd.CloseWnd();")
	elseif lualib:GetVipLevel(player) >= 1 and lualib:GetVipLevel(player) < 3 then
		if lualib:Player_SubIngot(player, 100, false, "��Ԫ��:ԭ��", "������") then
			lualib:Player_MapMove(player, "BOSS��������")
			lualib:ShowFormWithContent(player, "�ű���", "BOSS_ThirdWnd.CloseWnd();")
		else
			lualib:ShowFormWithContent(player, "�ű���", "BOSS_ThirdWnd.MsgUp(\"VIP1-2��Ҫ100Ԫ���ſɽ���\");")
			--return "������Ԫ�����㣬VIP1����Ҫ����100Ԫ���ſ��Խ���BOSS��������"
		end
	elseif lualib:GetVipLevel(player) < 1 then
		lualib:ShowFormWithContent(player, "�ű���", "BOSS_ThirdWnd.MsgUp(\"��VIP�ȼ�����\");")
	--	lualib:SysMsg_SendBottomColor(player, "����VIP�ȼ�����", 7, 2)
	end
	return ""
end

function getVip(player)
	local vipLevel = lualib:GetVipLevel(player)
	lualib:ShowFormWithContent(player, "�ű���", "BOSS_Hall_Guider.VIP("..vipLevel..");")
	return ""
end

function BuyItem(player,keyName)
	local item_tab = 
	{
	["�����"] = 200,
	}
	if item_tab[keyName] ~= nil then
		if lualib:GetBagFree(player) < 1 then
			lualib:SysPromptMsg(player,"�����ռ䲻��")
			return ""
		end
		if lualib:SubIngot(player, item_tab[keyName], "�۳��󶨽��ԭ��", "����") then 
			lualib:AddItem(player,keyName ,1,false,"����", "����")
			lualib:ShowFormWithContent(player, "�ű���", "BuyItemWnd.closeWnd();")
		else
			lualib:SysPromptMsg(player,"Ԫ������")
		end
	end
	
	return ""
end
