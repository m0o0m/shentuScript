local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/�Զ����")
require("npc/��ɽ�Ƿ�ħʹ��")
function MatchNpc(player, npcGuid)
	--lualib:SysPromptMsg(player, "{{{")
	local npcKeynames = {
					["��ɽ�Ǵ���Ա"] = "transmit", ["��ɽ�ǰ�����·��"] = "TempleGuider", ["��ɽBOSS����Ա"] = "BOSS_Hall_Guider",
					["��ɽ�Ǹ���ʹ��"] = "Daily_FB_Dlg", ["��ɽ�ǳ�ħʹ��"] = "TitleWnd", ["��ɽ����Ʒ����Ա"] = "Recycle",
					["��ɽ�ǲֿ�"] = "WareHouse",["����������Ա"] = "EndlessUI",
					["�������ʹ��"] = "mayaTemple",
					["ת�����ʹ��"] = "ReinTemple",
					["���Ƕᱦ���"] = "xldb_NPCShow",
					}
	local npc_name = lualib:KeyName(npcGuid)
	--lualib:SysPromptMsg(player, tostring(npc_name))
	if npcKeynames[npc_name] == nil then
		return ""
	else
		if npc_name == "��ɽ�Ǹ���ʹ��" then
			local str = "" 
			str =str.. "local Handle = GetWindow(nil, \""..npcKeynames[npc_name].."\")\n"
			str =str.."if Handle ~= 0 then\n"
			str =str.."GUIWndClose(Handle)\n"
			str = str .."end\n"
			lualib:ShowFormWithContent(player,"�ű���",str) 
			str ="local Handle = GetWindow(nil, \"Dailyone\")\n"
			str =str.."if Handle ~= 0 then\n"
			str =str.."GUIWndClose(Handle)\n"
			str = str .."end\n"
			lualib:ShowFormWithContent(player,"�ű���",str) 
		elseif npc_name == "��ɽ�ǳ�ħʹ��" then
			local str = "" 
			str =str.. "local Handle = GetWindow(nil, \""..npcKeynames[npc_name].."\")\n"
			str =str.."if Handle ~= 0 then\n"
			str =str.."GUIWndClose(Handle)\n"
			str = str .."end\n"
			lualib:ShowFormWithContent(player,"�ű���",str) 
			str ="local Handle = GetWindow(nil, \"Achieve\")\n"
			str =str.."if Handle ~= 0 then\n"
			str =str.."GUIWndClose(Handle)\n"
			str = str .."end\n"
			lualib:ShowFormWithContent(player,"�ű���",str) 
		elseif npc_name == "��ɽ����Ʒ����Ա" then
			lualib:SysPromptMsg(player,""..npc_name)
			lualib:ShowFormWithContent(player,"�ű���", "Recycle.Close()") 
		else
			local str = "" 
			str =str.. "local Handle = GetWindow(nil, \""..npcKeynames[npc_name].."\")\n"
			str =str.."if Handle ~= 0 then\n"
			str =str.."GUIWndClose(Handle)\n"
			str = str .."end\n"
			lualib:ShowFormWithContent(player,"�ű���",str) 
		end
		return ""
	end
	
end

function cs_csNpc(player)
	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return ""
	end
	AutoFindBoss(player)
	if lualib:Player_NpcMove(player, "��ɽ�Ǵ���Ա",2) then
		lualib:ShowFormWithContent(player,"form�ļ���","����ԱUI")
	end
	return ""
end

function cs_RecycleNpc(player)
	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return ""
	end
	AutoFindBoss(player)
	if lualib:Player_NpcMove(player, "��ɽ����Ʒ����Ա",2) then
		lualib:ShowFormWithContent(player,"form�ļ���","��Ʒ����ԱUI")
		--lualib:ShowFormWithContent(player,"�ű���","CL:OnOpenPakage()")
	end
	return ""
end

function FindDailyTaskNpc(player)
	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return ""
	end
	AutoFindBoss(player)
	local dayIntNameTb = {"62�����鸱��","63����ë����","64�����Ƹ���","65�����鸱��","65�����鸱��","67����ʯ����"}
	local tb = {}
	for i = 1, 6 do
		tb[i] = lualib:GetInt(player , dayIntNameTb[i])
	end
	tb[7] = lualib:GetVipLevel(player)
	if lualib:Player_NpcMove(player, "��ɽ�Ǹ���ʹ��",2) then
		lualib:ShowFormWithContent(player, "form�ļ���", "Daily_FB#"..serialize(tb))
	end
	return ""
end

function FindExploitTaskNpc(player)
	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return ""
	end
	AutoFindBoss(player)
	if lualib:Player_NpcMove(player, "��ɽ�ǳ�ħʹ��",2) then
		lualib:ShowFormWithContent(player,"form�ļ���","TitleWnd")
	end
	return ""
end


function cs_FengMoNpc(player)
	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return ""
	end
	AutoFindBoss(player)
	if lualib:Player_NpcMove(player, "��ɽ�Ƿ�ħʹ��",2) then
		openDlg(player)
	end
	return ""
end

function cs_SafeArea(player)
	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return ""
	end
	AutoFindBoss(player)
	lualib:Player_MapMoveXY(player, "��ɽ��" , 156 , 195 , 10 )
	return ""
end

function AutoFight(player)
	guaji(player)
	return ""
end

function Back_LC(player)
	if lualib:Player_MapMoveXY(player, "����" , 103 , 128 , 3 ) then
		
	end
	return ""
end

function isAutoFight(player)
	if lualib:HasBuff(player,"�Զ����") then
		return ""
	end
	guaji(player)
	return ""
end

function AutoFindBoss(player)
	if lualib:HasBuff(player,"�Զ����") then
		guaji(player)
	end
	return ""
end

