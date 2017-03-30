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

	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，请先收摊！")
		return ""
	end
	
	local msg = ""
	if isauto == nil or isauto == "" then
		if lualib:GetInt(player, "autoattack") == 1 then
			lualib:StopAutoRun(player)
			lualib:SetInt(player, "autoattack", 0)
			lualib:ShowFormWithContent(player,"脚本表单","WndDelEffect(GameMainBar._wnd,\"Auto\");GameMainBar.AutoMagic(".. 0 ..")")
			
			 
			--lualib:SysTriggerMsg(player, "暂停自动战斗！再次点击可进入自动战斗！")
			if lualib:HasBuff(player,"自动打怪") then
				lualib:DelBuff(player, "自动打怪")
				
			end
		else
			lualib:StartAutoRun(player, "")
			lualib:SetInt(player, "autoattack", 1)
			lualib:SetStr(player, "map_1", lualib:MapGuid(player))
			lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(GameMainBar._wnd,\"Auto\",3020300000,0,-3,150,0);GameMainBar.AutoMagic(".. 1 ..")")
		
			if lualib:GetClientType(player) == 1 then
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "点击地面取消自动挂机")
			else
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "点击挂机按钮取消自动挂机")
			end	
			--lualib:SysTriggerMsg(player, "开始自动战斗！再次点击脱离自动战斗！")
			if not lualib:HasBuff(player,"自动打怪") then
				lualib:AddBuff(player, "自动打怪", 0)		
				
			end		
			changeServant(player)
		end
	else
		isauto = tonumber(isauto)
		if isauto == 1 then
			lualib:StartAutoRun(player, "")
		
			lualib:SetInt(player, "autoattack", 1)
			lualib:SetStr(player, "map_1", lualib:MapGuid(player))
			
			lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(GameMainBar._wnd,\"Auto\",3020300000,0,-3,150,0);GameMainBar.AutoMagic(".. 1 ..")")
			if lualib:GetClientType(player) == 1 then
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "点击地面取消自动挂机")
			else
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "点击挂机按钮取消自动挂机")
			end	
			if not lualib:HasBuff(player,"自动打怪") then
				lualib:AddBuff(player, "自动打怪", 0)
				
			end	
			changeServant(player)
			--lualib:SysTriggerMsg(player, "开始自动战斗！再次点击脱离自动战斗！")
		elseif isauto == 0 then
			lualib:StopAutoRun(player)
			lualib:SetInt(player, "autoattack", 0)
			--lualib:SysTriggerMsg(player, "暂停自动战斗！再次点击可进入自动战斗！")
			lualib:ShowFormWithContent(player,"脚本表单","WndDelEffect(GameMainBar._wnd,\"Auto\");GameMainBar.AutoMagic(".. 0 ..")")
			if lualib:HasBuff(player,"自动打怪") then
				lualib:DelBuff(player, "自动打怪")	
			end
		end
	end
	return ""
end

function changeServant(player)
	if lualib:Job(player) == 3 then
		local hasSkill = false
		local index = 1
		local skill_table = {"天庭之唤1级","天庭之唤2级","天庭之唤3级","天庭之唤4级"}
		for i = 1 , #skill_table do
			if lualib:HasSkill(player, skill_table[i], false) == true then
				hasSkill = true
				index = i
				break
			end
		end	
		if hasSkill then
			local servant_t = lualib:Player_GetServantList(player) 
			if #servant_t ~= 0 then
				for i = 1 , #servant_t do 
					if lualib:Name(servant_t[i]) == "骷髅士兵" then	
						if not lualib:Player_SpellTarget(player,skill_table[index],player) then
							--lualib:SysPromptMsg(player,""..skill_table[index].."技能又使用失败")
						else
							--lualib:SysPromptMsg(player,""..skill_table[index].."技能又使用成功了")
						end
					end
				end
			end
		end	
	end

	
end	

function close(player)
	return ""
end