local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/目标系统")


-----------------------图标显示-----------------------------
function guaji_xianshi(player)	
	--ShowTimeCount2(player, 0, 1903800079, "自动打怪",0,"") --显示目标图标
 --AddSEIcon(player, 2, -2, "自动打怪", 1800200075, "倒计时", "guaji","","开启自动打怪")

end

-------------------图标被点击-----------------------
function guaji(player,isauto)
	--ShowTimeCount2(player, 0, 1903800079, "自动打怪",0,"") --显示目标图标

	
	
	local msg = ""
	if isauto == nil or isauto == "" then
		if lualib:GetInt(player, "autoattack") == 1 then
			lualib:StopAutoRun(player)
			lualib:SetInt(player, "autoattack", 0)
			lualib:ShowFormWithContent(player,"脚本表单","WndDelEffect(GameMainBar._wnd,\"Auto\")")
			--lualib:SysTriggerMsg(player, "暂停自动战斗！再次点击可进入自动战斗！")
			if lualib:HasBuff(player,"自动打怪") then
				lualib:DelBuff(player, "自动打怪")
				
			end
		else
			lualib:StartAutoRun(player, "")
			lualib:SetInt(player, "autoattack", 1)
			lualib:SetStr(player, "map_1", lualib:MapGuid(player))
			lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(GameMainBar._wnd,\"Auto\",3020300000,0,-3,150,0)")
			if lualib:GetClientType(player) == 1 then
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "点击地面取消自动挂机")
			else
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "点击挂机按钮取消自动挂机")
			end	
			--lualib:SysTriggerMsg(player, "开始自动战斗！再次点击脱离自动战斗！")
			if not lualib:HasBuff(player,"自动打怪") then
				lualib:AddBuff(player, "自动打怪", 0)		
				
			end		
		end
	else
		isauto = tonumber(isauto)
		if isauto == 1 then
			lualib:StartAutoRun(player, "")
			lualib:SetInt(player, "autoattack", 1)
			lualib:SetStr(player, "map_1", lualib:MapGuid(player))
			lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(GameMainBar._wnd,\"Auto\",3020300000,0,-3,150,0)")
			if lualib:GetClientType(player) == 1 then
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "点击地面取消自动挂机")
			else
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "点击挂机按钮取消自动挂机")
			end	
			if not lualib:HasBuff(player,"自动打怪") then
				lualib:AddBuff(player, "自动打怪", 0)
				
			end	
			--lualib:SysTriggerMsg(player, "开始自动战斗！再次点击脱离自动战斗！")
		elseif isauto == 0 then
			lualib:StopAutoRun(player)
			lualib:SetInt(player, "autoattack", 0)
			--lualib:SysTriggerMsg(player, "暂停自动战斗！再次点击可进入自动战斗！")
			lualib:ShowFormWithContent(player,"脚本表单","WndDelEffect(GameMainBar._wnd,\"Auto\")")
			if lualib:HasBuff(player,"自动打怪") then
				lualib:DelBuff(player, "自动打怪")	
			end
		end
	end
	return ""
end

function close(player)
	return ""
end