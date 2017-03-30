local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function EnterBossHall(player)

	if lualib:GetVipLevel(player) >= 1 then 
		lualib:ShowFormWithContent(player, "脚本表单", "BOSS_Hall_Guider.CloseWnd();")
		lualib:Player_MapMove(player, "BOSS大厅")
	else
		lualib:ShowFormWithContent(player, "脚本表单", "BOSS_Hall_Guider.MsgUp(\"VIP等级不足\");")
	end
	return ""
end

function jinru(player,param)
	if lualib:GetVipLevel(player) >= 2 then 
		lualib:Player_MapMove(player, "BOSS大厅二层")
		lualib:ShowFormWithContent(player, "脚本表单", "BOSS_SconedWnd.CloseWnd();")
	elseif lualib:GetVipLevel(player) == 1 then
		if lualib:Player_SubIngot(player, 10, false, "扣元宝:原因", "发起人") then
			lualib:Player_MapMove(player, "BOSS大厅二层")
			lualib:ShowFormWithContent(player, "脚本表单", "BOSS_SconedWnd.CloseWnd();")
		else
			lualib:ShowFormWithContent(player, "脚本表单", "BOSS_SconedWnd.MsgUp(\"VIP1需要10元宝才可进入\");")
			--return "你身上元宝不足，VIP1级需要消耗10元宝才可以进入BOSS大厅二层"
		end
	elseif lualib:GetVipLevel(player) < 1 then
		--lualib:SysMsg_SendBottomColor(player, "您的VIP等级不足", 7, 2)
		lualib:ShowFormWithContent(player, "脚本表单", "BOSS_SconedWnd.MsgUp(\"您VIP等级不足\");")
	end
	return ""
end

function jinru3(player,param)
	if lualib:GetVipLevel(player) >= 3 then 
		lualib:Player_MapMove(player, "BOSS大厅三层")
		lualib:ShowFormWithContent(player, "脚本表单", "BOSS_ThirdWnd.CloseWnd();")
	elseif lualib:GetVipLevel(player) >= 1 and lualib:GetVipLevel(player) < 3 then
		if lualib:Player_SubIngot(player, 100, false, "扣元宝:原因", "发起人") then
			lualib:Player_MapMove(player, "BOSS大厅三层")
			lualib:ShowFormWithContent(player, "脚本表单", "BOSS_ThirdWnd.CloseWnd();")
		else
			lualib:ShowFormWithContent(player, "脚本表单", "BOSS_ThirdWnd.MsgUp(\"VIP1-2需要100元宝才可进入\");")
			--return "你身上元宝不足，VIP1级需要消耗100元宝才可以进入BOSS大厅三层"
		end
	elseif lualib:GetVipLevel(player) < 1 then
		lualib:ShowFormWithContent(player, "脚本表单", "BOSS_ThirdWnd.MsgUp(\"您VIP等级不足\");")
	--	lualib:SysMsg_SendBottomColor(player, "您的VIP等级不足", 7, 2)
	end
	return ""
end

function getVip(player)
	local vipLevel = lualib:GetVipLevel(player)
	lualib:ShowFormWithContent(player, "脚本表单", "BOSS_Hall_Guider.VIP("..vipLevel..");")
	return ""
end

function BuyItem(player,keyName)
	local item_tab = 
	{
	["鹤嘴锄"] = 200,
	}
	if item_tab[keyName] ~= nil then
		if lualib:GetBagFree(player) < 1 then
			lualib:SysPromptMsg(player,"包裹空间不足")
			return ""
		end
		if lualib:SubIngot(player, item_tab[keyName], "扣除绑定金币原因", "购买") then 
			lualib:AddItem(player,keyName ,1,false,"购买", "购买")
			lualib:ShowFormWithContent(player, "脚本表单", "BuyItemWnd.closeWnd();")
		else
			lualib:SysPromptMsg(player,"元宝不足")
		end
	end
	
	return ""
end
