local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/自动打怪")
require("npc/巫山城封魔使节")
function MatchNpc(player, npcGuid)
	--lualib:SysPromptMsg(player, "{{{")
	local npcKeynames = {
					["巫山城传送员"] = "transmit", ["巫山城暗殿引路人"] = "TempleGuider", ["巫山BOSS传送员"] = "BOSS_Hall_Guider",
					["巫山城副本使节"] = "Daily_FB_Dlg", ["巫山城除魔使节"] = "TitleWnd", ["巫山城物品回收员"] = "Recycle",
					["巫山城仓库"] = "WareHouse",["神威狱传送员"] = "EndlessUI",
					["玛雅神殿使者"] = "mayaTemple",
					["转生神殿使者"] = "ReinTemple",
					["土城夺宝奇兵"] = "xldb_NPCShow",
					}
	local npc_name = lualib:KeyName(npcGuid)
	--lualib:SysPromptMsg(player, tostring(npc_name))
	if npcKeynames[npc_name] == nil then
		return ""
	else
		if npc_name == "巫山城副本使节" then
			local str = "" 
			str =str.. "local Handle = GetWindow(nil, \""..npcKeynames[npc_name].."\")\n"
			str =str.."if Handle ~= 0 then\n"
			str =str.."GUIWndClose(Handle)\n"
			str = str .."end\n"
			lualib:ShowFormWithContent(player,"脚本表单",str) 
			str ="local Handle = GetWindow(nil, \"Dailyone\")\n"
			str =str.."if Handle ~= 0 then\n"
			str =str.."GUIWndClose(Handle)\n"
			str = str .."end\n"
			lualib:ShowFormWithContent(player,"脚本表单",str) 
		elseif npc_name == "巫山城除魔使节" then
			local str = "" 
			str =str.. "local Handle = GetWindow(nil, \""..npcKeynames[npc_name].."\")\n"
			str =str.."if Handle ~= 0 then\n"
			str =str.."GUIWndClose(Handle)\n"
			str = str .."end\n"
			lualib:ShowFormWithContent(player,"脚本表单",str) 
			str ="local Handle = GetWindow(nil, \"Achieve\")\n"
			str =str.."if Handle ~= 0 then\n"
			str =str.."GUIWndClose(Handle)\n"
			str = str .."end\n"
			lualib:ShowFormWithContent(player,"脚本表单",str) 
		elseif npc_name == "巫山城物品回收员" then
			lualib:SysPromptMsg(player,""..npc_name)
			lualib:ShowFormWithContent(player,"脚本表单", "Recycle.Close()") 
		else
			local str = "" 
			str =str.. "local Handle = GetWindow(nil, \""..npcKeynames[npc_name].."\")\n"
			str =str.."if Handle ~= 0 then\n"
			str =str.."GUIWndClose(Handle)\n"
			str = str .."end\n"
			lualib:ShowFormWithContent(player,"脚本表单",str) 
		end
		return ""
	end
	
end

function cs_csNpc(player)
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return ""
	end
	AutoFindBoss(player)
	if lualib:Player_NpcMove(player, "巫山城传送员",2) then
		lualib:ShowFormWithContent(player,"form文件表单","传送员UI")
	end
	return ""
end

function cs_RecycleNpc(player)
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return ""
	end
	AutoFindBoss(player)
	if lualib:Player_NpcMove(player, "巫山城物品回收员",2) then
		lualib:ShowFormWithContent(player,"form文件表单","物品回收员UI")
		--lualib:ShowFormWithContent(player,"脚本表单","CL:OnOpenPakage()")
	end
	return ""
end

function FindDailyTaskNpc(player)
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return ""
	end
	AutoFindBoss(player)
	local dayIntNameTb = {"62级经验副本","63级羽毛副本","64级盾牌副本","65级经验副本","65级宝珠副本","67级宝石副本"}
	local tb = {}
	for i = 1, 6 do
		tb[i] = lualib:GetInt(player , dayIntNameTb[i])
	end
	tb[7] = lualib:GetVipLevel(player)
	if lualib:Player_NpcMove(player, "巫山城副本使节",2) then
		lualib:ShowFormWithContent(player, "form文件表单", "Daily_FB#"..serialize(tb))
	end
	return ""
end

function FindExploitTaskNpc(player)
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return ""
	end
	AutoFindBoss(player)
	if lualib:Player_NpcMove(player, "巫山城除魔使节",2) then
		lualib:ShowFormWithContent(player,"form文件表单","TitleWnd")
	end
	return ""
end


function cs_FengMoNpc(player)
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return ""
	end
	AutoFindBoss(player)
	if lualib:Player_NpcMove(player, "巫山城封魔使节",2) then
		openDlg(player)
	end
	return ""
end

function cs_SafeArea(player)
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return ""
	end
	AutoFindBoss(player)
	lualib:Player_MapMoveXY(player, "巫山城" , 156 , 195 , 10 )
	return ""
end

function AutoFight(player)
	guaji(player)
	return ""
end

function Back_LC(player)
	if lualib:Player_MapMoveXY(player, "土城" , 103 , 128 , 3 ) then
		
	end
	return ""
end

function isAutoFight(player)
	if lualib:HasBuff(player,"自动打怪") then
		return ""
	end
	guaji(player)
	return ""
end

function AutoFindBoss(player)
	if lualib:HasBuff(player,"自动打怪") then
		guaji(player)
	end
	return ""
end

