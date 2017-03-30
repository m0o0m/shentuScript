local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("form/TreasureHouse_s")
require("form/等级判断表单")
require("form/NPC_IsNotInScene")

function NewbeeGuide_showInfo(player, param)		
	param = tonumber(param)
	lualib:ShowFormWithContent(player,"脚本表单","NewbeeGuide.showContent("..param..")")
	return ""
end
function NewbeeGuide_openUI(player)
	lualib:ShowFormWithContent(player,"form文件表单","NewbeeGuide")
	return ""
end

function NewbeeGuide_LevelJudge(player, param)
	param = tonumber(param)
	local level = lualib:Level(player)
	if 1 == param then
		if 50 > level then
			lualib:ShowFormWithContent(player,"脚本表单", [[NewbeeGuide.MsgUp("此功能50级时开放，加油升级吧！")]])
		else
			if lualib:HasBuff(player,"摆摊") then
				lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
				return ""
			end
			lualib:Player_MapMoveXY(player, "巫山城", 115, 194, 3)
			lualib:ShowFormWithContent(player,"form文件表单","TitleWnd")
			lualib:ShowFormWithContent(player,"脚本表单", "NewbeeGuide.closeWnd()")
		end
	elseif 2 == param then
		if 60 > level then
			lualib:ShowFormWithContent(player,"脚本表单", [[NewbeeGuide.MsgUp("此功能60级时开放，加油升级吧！")]])
		else
			local clientType = lualib:GetClientType(player) 
			if clientType == 0 then
				lualib:ShowFormWithContent(player, "脚本表单", "TaskBoss(4)")
			elseif clientType == 1 then 
				lualib:ShowFormWithContent(player, "脚本表单", "CLOnOpenBoss()")
			end
		end
	elseif 3 == param then
		if 50 > level then
			lualib:ShowFormWithContent(player,"脚本表单", [[NewbeeGuide.MsgUp("此功能50级时开放，加油升级吧！")]])
		else
			if lualib:HasBuff(player,"摆摊") then
				lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
				return ""
			end
			lualib:Player_MapMoveXY(player, "土城", 103, 128, 1)
			lualib:ShowFormWithContent(player,"form文件表单","NightWnd")
			lualib:ShowFormWithContent(player,"脚本表单", "NewbeeGuide.closeWnd()")
		end
	elseif 4 == param then
		if 85 > level then
			lualib:ShowFormWithContent(player,"脚本表单", [[NewbeeGuide.MsgUp("此功能85级时开放，加油升级吧！")]])
		else
			--lualib:ShowFormWithContent(player,"脚本表单", "CLOnRoleWindow()")
			lualib:ShowFormWithContent(player,"脚本表单", "OpenRoleRein()")
			--lualib:DelayCall(player, 100, "NewbeeGuide_openRoleRein", player)
			lualib:ShowFormWithContent(player,"脚本表单", "NewbeeGuide.closeWnd()")
		end
	elseif 5 == param then
		lualib:ShowFormWithContent(player,"脚本表单", "NewbeeGuide.closeWnd()")
		lualib:ShowFormWithContent(player,"脚本表单", "TaskWindow.OpenRecycleUI()")
	elseif 6 == param then
		lualib:ShowFormWithContent(player,"脚本表单", "NewbeeGuide.closeWnd()")
		lualib:ShowFormWithContent(player,"脚本表单", "TaskWindow.TransmitCSnpc()")
	elseif 7 == param then
		if 50 > level then
			lualib:ShowFormWithContent(player,"脚本表单", [[NewbeeGuide.MsgUp("此功能50级时开放，加油升级吧！")]])
		else
			if lualib:HasBuff(player,"摆摊") then
				lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
				return ""
			end
			lualib:Player_MapMoveXY(player, "巫山城", 165, 186, 3)
			lualib:ShowFormWithContent(player,"form文件表单","EndlessUI")
			lualib:ShowFormWithContent(player,"脚本表单", "NewbeeGuide.closeWnd()")
		end
	elseif 8 == param then
		if 62 > level then
			lualib:ShowFormWithContent(player,"脚本表单", [[NewbeeGuide.MsgUp("此功能62级时开放，加油升级吧！")]])
		else
			if lualib:HasBuff(player,"摆摊") then
				lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
				return ""
			end
			lualib:Player_MapMoveXY(player, "巫山城", 223, 178, 1)
			local dayIntNameTb = {"62级经验副本","63级羽毛副本","64级盾牌副本","65级经验副本","65级宝珠副本"}
			local tb = {}
			for i = 1, 5 do
				tb[i] = lualib:GetInt(player , dayIntNameTb[i])
			end
			lualib:ShowFormWithContent(player, "form文件表单", "Daily_FB#"..serialize(tb))
			lualib:ShowFormWithContent(player,"脚本表单", "NewbeeGuide.closeWnd()")
		end
	elseif 9 == param then
		if 80 > level then
			lualib:ShowFormWithContent(player,"脚本表单", [[NewbeeGuide.MsgUp("此功能80级时开放，加油升级吧！")]])
		else
			lualib:ShowFormWithContent(player, "脚本表单", "CLOnOpenBoss()")
		end
	elseif 10 == param then
		if 65 > level then
			lualib:ShowFormWithContent(player,"脚本表单", [[NewbeeGuide.MsgUp("此功能65级时开放，加油升级吧！")]])
		else
			openTreasureHouse(player)
		end
	elseif 11 == param then
		if 61 > level then
			lualib:ShowFormWithContent(player,"脚本表单", [[NewbeeGuide.MsgUp("此功能61级时开放，加油升级吧！")]])
		else
			OnOpenFurnace(player)
		end
	elseif 12 == param then
		lualib:ShowFormWithContent(player,"脚本表单","CL:OnAchieveWindow()")
	elseif 13 == param then
		if 60 > level then
			lualib:ShowFormWithContent(player,"脚本表单", [[NewbeeGuide.MsgUp("此功能60级时开放，加油升级吧！")]])
		else
			OnOpenForge(player)
		end
	elseif 14 == param then
		if 60 > level then
			lualib:ShowFormWithContent(player,"脚本表单", [[NewbeeGuide.MsgUp("此功能60级时开放，加油升级吧！")]])
		else
			OnOpenWing(player)
		end
	elseif 15 == param then
		if 75 > level then
			lualib:ShowFormWithContent(player,"脚本表单", [[NewbeeGuide.MsgUp("此功能75级时开放，加油升级吧！")]])
		else
			lualib:ShowFormWithContent(player,"脚本表单", "UI:Lua_OpenWindow(0,\"CrystalSystem.lua\")")
		end
	elseif 16 == param then
		lualib:ShowFormWithContent(player, "form文件表单", "Achieve")
	elseif 17 == param then
		if lualib:HasBuff(player,"摆摊") then
			lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
			return ""
		end
		lualib:Player_MapMoveXY(player, "巫山城", 129, 150, 3)
		if lualib:GetInt(player,"可以挖矿") == 1 or  lualib:HasQuest(player, 84) then
			lualib:ShowFormWithContent(player,"form文件表单","OreWnd")
		end
		lualib:ShowFormWithContent(player,"脚本表单", "NewbeeGuide.closeWnd()")
	elseif 18 == param then
		if lualib:HasBuff(player,"摆摊") then
			lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
			return ""
		end
		lualib:Player_MapMoveXY(player, "巫山城", 171, 192, 3)
		lualib:ShowFormWithContent(player, "form文件表单", "mayaTemple")
		lualib:ShowFormWithContent(player,"脚本表单", "NewbeeGuide.closeWnd()")
	elseif 19 == param then
		if lualib:HasBuff(player,"摆摊") then
			lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
			return ""
		end
		lualib:Player_MapMoveXY(player, "巫山城", 164, 205, 3)
		lualib:ShowFormWithContent(player, "form文件表单", "BOSS_Hall_Guider")
		lualib:ShowFormWithContent(player,"脚本表单", "NewbeeGuide.closeWnd()")
	elseif 20 == param then
		if 66 > level then
			lualib:ShowFormWithContent(player,"脚本表单", [[NewbeeGuide.MsgUp("此功能66级时开放，加油升级吧！")]])
		else
			cs_FengMoNpc(player)
			lualib:ShowFormWithContent(player,"脚本表单", "NewbeeGuide.closeWnd()")
		end
	end
	return ""
end

function NewbeeGuide_openRoleRein(player)
	lualib:ShowFormWithContent(player,"脚本表单", "RoleGUI.RoleReinWnd()") 
end
