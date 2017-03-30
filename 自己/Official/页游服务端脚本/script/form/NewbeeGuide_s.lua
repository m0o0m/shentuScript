local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("form/TreasureHouse_s")
require("form/�ȼ��жϱ�")
require("form/NPC_IsNotInScene")

function NewbeeGuide_showInfo(player, param)		
	param = tonumber(param)
	lualib:ShowFormWithContent(player,"�ű���","NewbeeGuide.showContent("..param..")")
	return ""
end
function NewbeeGuide_openUI(player)
	lualib:ShowFormWithContent(player,"form�ļ���","NewbeeGuide")
	return ""
end

function NewbeeGuide_LevelJudge(player, param)
	param = tonumber(param)
	local level = lualib:Level(player)
	if 1 == param then
		if 50 > level then
			lualib:ShowFormWithContent(player,"�ű���", [[NewbeeGuide.MsgUp("�˹���50��ʱ���ţ����������ɣ�")]])
		else
			if lualib:HasBuff(player,"��̯") then
				lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
				return ""
			end
			lualib:Player_MapMoveXY(player, "��ɽ��", 115, 194, 3)
			lualib:ShowFormWithContent(player,"form�ļ���","TitleWnd")
			lualib:ShowFormWithContent(player,"�ű���", "NewbeeGuide.closeWnd()")
		end
	elseif 2 == param then
		if 60 > level then
			lualib:ShowFormWithContent(player,"�ű���", [[NewbeeGuide.MsgUp("�˹���60��ʱ���ţ����������ɣ�")]])
		else
			local clientType = lualib:GetClientType(player) 
			if clientType == 0 then
				lualib:ShowFormWithContent(player, "�ű���", "TaskBoss(4)")
			elseif clientType == 1 then 
				lualib:ShowFormWithContent(player, "�ű���", "CLOnOpenBoss()")
			end
		end
	elseif 3 == param then
		if 50 > level then
			lualib:ShowFormWithContent(player,"�ű���", [[NewbeeGuide.MsgUp("�˹���50��ʱ���ţ����������ɣ�")]])
		else
			if lualib:HasBuff(player,"��̯") then
				lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
				return ""
			end
			lualib:Player_MapMoveXY(player, "����", 103, 128, 1)
			lualib:ShowFormWithContent(player,"form�ļ���","NightWnd")
			lualib:ShowFormWithContent(player,"�ű���", "NewbeeGuide.closeWnd()")
		end
	elseif 4 == param then
		if 85 > level then
			lualib:ShowFormWithContent(player,"�ű���", [[NewbeeGuide.MsgUp("�˹���85��ʱ���ţ����������ɣ�")]])
		else
			--lualib:ShowFormWithContent(player,"�ű���", "CLOnRoleWindow()")
			lualib:ShowFormWithContent(player,"�ű���", "OpenRoleRein()")
			--lualib:DelayCall(player, 100, "NewbeeGuide_openRoleRein", player)
			lualib:ShowFormWithContent(player,"�ű���", "NewbeeGuide.closeWnd()")
		end
	elseif 5 == param then
		lualib:ShowFormWithContent(player,"�ű���", "NewbeeGuide.closeWnd()")
		lualib:ShowFormWithContent(player,"�ű���", "TaskWindow.OpenRecycleUI()")
	elseif 6 == param then
		lualib:ShowFormWithContent(player,"�ű���", "NewbeeGuide.closeWnd()")
		lualib:ShowFormWithContent(player,"�ű���", "TaskWindow.TransmitCSnpc()")
	elseif 7 == param then
		if 50 > level then
			lualib:ShowFormWithContent(player,"�ű���", [[NewbeeGuide.MsgUp("�˹���50��ʱ���ţ����������ɣ�")]])
		else
			if lualib:HasBuff(player,"��̯") then
				lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
				return ""
			end
			lualib:Player_MapMoveXY(player, "��ɽ��", 165, 186, 3)
			lualib:ShowFormWithContent(player,"form�ļ���","EndlessUI")
			lualib:ShowFormWithContent(player,"�ű���", "NewbeeGuide.closeWnd()")
		end
	elseif 8 == param then
		if 62 > level then
			lualib:ShowFormWithContent(player,"�ű���", [[NewbeeGuide.MsgUp("�˹���62��ʱ���ţ����������ɣ�")]])
		else
			if lualib:HasBuff(player,"��̯") then
				lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
				return ""
			end
			lualib:Player_MapMoveXY(player, "��ɽ��", 223, 178, 1)
			local dayIntNameTb = {"62�����鸱��","63����ë����","64�����Ƹ���","65�����鸱��","65�����鸱��"}
			local tb = {}
			for i = 1, 5 do
				tb[i] = lualib:GetInt(player , dayIntNameTb[i])
			end
			lualib:ShowFormWithContent(player, "form�ļ���", "Daily_FB#"..serialize(tb))
			lualib:ShowFormWithContent(player,"�ű���", "NewbeeGuide.closeWnd()")
		end
	elseif 9 == param then
		if 80 > level then
			lualib:ShowFormWithContent(player,"�ű���", [[NewbeeGuide.MsgUp("�˹���80��ʱ���ţ����������ɣ�")]])
		else
			lualib:ShowFormWithContent(player, "�ű���", "CLOnOpenBoss()")
		end
	elseif 10 == param then
		if 65 > level then
			lualib:ShowFormWithContent(player,"�ű���", [[NewbeeGuide.MsgUp("�˹���65��ʱ���ţ����������ɣ�")]])
		else
			openTreasureHouse(player)
		end
	elseif 11 == param then
		if 61 > level then
			lualib:ShowFormWithContent(player,"�ű���", [[NewbeeGuide.MsgUp("�˹���61��ʱ���ţ����������ɣ�")]])
		else
			OnOpenFurnace(player)
		end
	elseif 12 == param then
		lualib:ShowFormWithContent(player,"�ű���","CL:OnAchieveWindow()")
	elseif 13 == param then
		if 60 > level then
			lualib:ShowFormWithContent(player,"�ű���", [[NewbeeGuide.MsgUp("�˹���60��ʱ���ţ����������ɣ�")]])
		else
			OnOpenForge(player)
		end
	elseif 14 == param then
		if 60 > level then
			lualib:ShowFormWithContent(player,"�ű���", [[NewbeeGuide.MsgUp("�˹���60��ʱ���ţ����������ɣ�")]])
		else
			OnOpenWing(player)
		end
	elseif 15 == param then
		if 75 > level then
			lualib:ShowFormWithContent(player,"�ű���", [[NewbeeGuide.MsgUp("�˹���75��ʱ���ţ����������ɣ�")]])
		else
			lualib:ShowFormWithContent(player,"�ű���", "UI:Lua_OpenWindow(0,\"CrystalSystem.lua\")")
		end
	elseif 16 == param then
		lualib:ShowFormWithContent(player, "form�ļ���", "Achieve")
	elseif 17 == param then
		if lualib:HasBuff(player,"��̯") then
			lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
			return ""
		end
		lualib:Player_MapMoveXY(player, "��ɽ��", 129, 150, 3)
		if lualib:GetInt(player,"�����ڿ�") == 1 or  lualib:HasQuest(player, 84) then
			lualib:ShowFormWithContent(player,"form�ļ���","OreWnd")
		end
		lualib:ShowFormWithContent(player,"�ű���", "NewbeeGuide.closeWnd()")
	elseif 18 == param then
		if lualib:HasBuff(player,"��̯") then
			lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
			return ""
		end
		lualib:Player_MapMoveXY(player, "��ɽ��", 171, 192, 3)
		lualib:ShowFormWithContent(player, "form�ļ���", "mayaTemple")
		lualib:ShowFormWithContent(player,"�ű���", "NewbeeGuide.closeWnd()")
	elseif 19 == param then
		if lualib:HasBuff(player,"��̯") then
			lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
			return ""
		end
		lualib:Player_MapMoveXY(player, "��ɽ��", 164, 205, 3)
		lualib:ShowFormWithContent(player, "form�ļ���", "BOSS_Hall_Guider")
		lualib:ShowFormWithContent(player,"�ű���", "NewbeeGuide.closeWnd()")
	elseif 20 == param then
		if 66 > level then
			lualib:ShowFormWithContent(player,"�ű���", [[NewbeeGuide.MsgUp("�˹���66��ʱ���ţ����������ɣ�")]])
		else
			cs_FengMoNpc(player)
			lualib:ShowFormWithContent(player,"�ű���", "NewbeeGuide.closeWnd()")
		end
	end
	return ""
end

function NewbeeGuide_openRoleRein(player)
	lualib:ShowFormWithContent(player,"�ű���", "RoleGUI.RoleReinWnd()") 
end
