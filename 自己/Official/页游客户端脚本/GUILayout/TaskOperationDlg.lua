TaskOperationDlg = {}

TaskOperationDlg.localString = {}
local l = TaskOperationDlg.localString
l.missionTargetTitle = "任务目标"
l.missionRewardTitle = "任务奖励"
l.acceptMission = "接受任务"
l.completeMission = "完成任务"
l.rewardHint_f = "获得"
l.rewardType = {"经验", "元宝", "绑定元宝", "积分", "金币", "绑定金币"}
l.missionType =	{
	"主 线 任 务",
	"支 线 任 务",
	"活 动 任 务"	--其他
}

TaskOperationDlg._rewardWnd = {}
TaskOperationDlg._item = {}
TaskOperationDlg.index = 5
TaskOperationDlg.accept = 0
TaskOperationDlg.complete = 0

function TaskOperationDlg.main()
	local _Parent = LuaGlobal["AttachPartent"]
	
	UI:Lua_GetScreenSize()
	local _SW = as3.tolua(LuaRet[1])
	local _SH = as3.tolua(LuaRet[2])
	
	local _GUIHandle = 0
	_Parent = GUIWndCreateWnd(_Parent,"TaskOperationDlg",1800600003, _SW/2 - 460,120)
	if _Parent ~= 0 then
		GUIWndSetSizeM(_Parent, 361, 524)
		GUIWndSetIsESCClose(_Parent, true)
		GUIWndSetMoveWithLBM(_Parent)
		GUIWndSetMagicUI(_Parent, 1)
		--CenterWnd(_Parent) 
		GUIWndRegistScript(_Parent, RDWndBaseCL_wnd_close, "TaskOperationDlg.wndClose")
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"divideImg1",1800600004,17,167)	--分割线1
	if _GUIHandle ~= 0 then	GUIWndSetEnableM(_GUIHandle, false) end
	_GUIHandle = GUIImageCreate(_Parent,"divideImg2",1800600004,17,455)	--分割线1
	if _GUIHandle ~= 0 then	GUIWndSetEnableM(_GUIHandle, false) end
	
	_GUIHandle = GUIButtonCreate(_Parent, "closeBtn", 1800000043, 328, 3)	-- x-33
	if _GUIHandle ~= 0 then GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "luaWndClose") end
	
		_GUIHandle = GUIEditCreate(_Parent, "wndTitleEdit", 130, 6, 100, 20)
	if _GUIHandle ~= 0 then 
		TaskOperationDlg._wndTitle = _GUIHandle
		GUIEditSetFontM(_GUIHandle, "SIMLI18")
		GUIWndSetTextColorM(_GUIHandle, webColor.goldenText)
		GUIWndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUIEditCreate(_Parent,"missionName",30,42,200,27)	--任务名
	if _GUIHandle ~= 0 then 
		TaskOperationDlg._misName = _GUIHandle
		GUIEditSetFontM(_GUIHandle, "SIMLI18")
		GUIWndSetTextColorM(_GUIHandle, webColor.blueText)
		GUIWndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUIRichEditCreate(_Parent,"tianchong",30,320,312,90)	
	if _GUIHandle ~= 0 then
		TaskOperationDlg._misName1 = _GUIHandle
		--GUIWndSetVisible(_GUIHandle, false)
		--GUIRichEditAppendString(_GUIHandle,"你到底出不出来")
		--local txt = GUIRichEditGetAllString(_GUIHandle)
GUIWndSetVisible(_GUIHandle, false)
		--msg("0:"..txt)
	end
	
	_GUIHandle = GUIRichEditCreate(_Parent,"missionDescription",30,72,312,90)	--任务描述
	if _GUIHandle ~= 0 then
		TaskOperationDlg._misDesc = _GUIHandle
		GUIRichEditSetDefaultTextColor(_GUIHandle, webColor.normalText)
		GUIWndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUIEditCreate(_Parent,"missionRewardTitle",30,165,118,30)
	if _GUIHandle ~= 0 then
		GUIEditSetFontM(_GUIHandle, "SIMLI18")
		GUIEditSetTextM(_GUIHandle, l.missionRewardTitle)
		GUIWndSetTextColorM(_GUIHandle, webColor.goldenText)
		GUIWndSetEnableM(_GUIHandle, false)
	end
	
	local _wnd = 0
	local rewardItem = {{"exp", 1891420459}, {"ingot", 1891420589}, {"bind_ingot", 1891420589}, {"integral", 1891420562}, {"gold", 1891420590}, {"bind_gold", 1891420590}}
	for i = 1, 6 do
		_wnd = GUIWndCreateWnd(_Parent, rewardItem[i][1].."Wnd", 0, 0, 0)
		if _wnd ~= 0 then 
			TaskOperationDlg._rewardWnd[i] = _wnd
			GUIWndSetVisible(_wnd, false) 
		end
		_GUIHandle = GUIImageCreate(_wnd, "rewardImg", rewardItem[i][2], 0, 0)
		if _GUIHandle ~= 0 then
			GUIWndSetSizeM(_GUIHandle, 48, 48)
			GUIImageSetFitSize(_GUIHandle, true)
		end
		_GUIHandle = GUIEditCreate(_wnd, "rewardName", 60, 20, 100, 20)
		if _GUIHandle ~= 0 then
			GUIWndSetEnableM(_GUIHandle, false) 
		end
	end
	
	for i = 1, 3 do
		_GUIHandle = GUIItemCtrlCreate(_Parent, "item"..i, 0, 35+(i-1)*55, 380, 48, 48)
		if _GUIHandle ~= 0 then
			TaskOperationDlg._item[i] = _GUIHandle
			GUIItemCtrlSetBackImageID(_GUIHandle, 1800000138)
			GUIWndSetVisible(_GUIHandle, false)
		end
	end
	
	_GUIHandle = GUIButtonCreate(_Parent, "confirmBtn", 1800000444 , 128, 465)	-- x-33  
	if _GUIHandle ~= 0 then 
		TaskOperationDlg._btn = _GUIHandle
		GUIWndSetSizeM(_GUIHandle, 84, 32)
		GUIWndSetTextColorM(_GUIHandle, webColor.normalText)
	--	GUIWndSetTextM(_GUIHandle, l.acceptMission)--.." (5s)"
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "TaskOperationDlg.confirmBtn_LC") 
	end
	
	--[[_GUIHandle = GUIImageCreate(_Parent, "timeimg",  1800900042, 167, 465)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle, 23, 28)
		GUIImageSetFitSize(_GUIHandle, true)
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetCanRevMsg(_GUIHandle,false)
	end--]]
	TaskOperationDlg.UIInit(_Parent)
end

		
function MWshowReward(ret)
		local str = tostring(ret[0])
		----msg(""..str)		
		if str == "无脚本任务奖励" then
			--无脚本配置奖励 
			--检查是否有db配置奖励

			if CLGetQuestAwardByID(TaskOperationDlg.mID) then
			local t = getTable(as3.tolua(LuaRet))
			for i = 1, #t do
				GUIWndSetVisible(TaskOperationDlg._item[i], true)
				RDItemCtrlSetGUIDataByKeyName(TaskOperationDlg._item[i], t[i][1], t[i][2], t[i][3])
				end
			end			
			return
		else
		
			--脚本配置奖励 
			local t = ret[1]
			if t == nil then
				return
			end
			local i = 1
			
			for k,v in pairs(ret) do
				GUIWndSetVisible(TaskOperationDlg._item[i], true)
				RDItemCtrlSetGUIDataByKeyName(TaskOperationDlg._item[i], ret[i][1], ret[i][2], ret[i][3])
				i = i + 1
			end
		end
end

--UI Logic Code Start
function TaskOperationDlg.UIInit(_h)
	TaskOperationDlg._wndHandle = _h
	RegisterUIEvent(LUA_EVENT_NPCQUEST, "openNPCMissionWnd", TaskOperationDlg.getQuest) 
end

function TaskOperationDlg.getQuest()
	TaskOperationDlg.mID = as3.tolua(LuaParam[1])
	
	
	local handle = GetWindow(nil,"TaskOperationDlg,tianchong")
	local txt = GUIRichEditGetAllString(handle)
	--msg("1:"..txt)
	if CLGetQuestDataByID(TaskOperationDlg.mID) then
		GUIEditSetTextM(TaskOperationDlg._wndTitle, l.missionType[as3.tolua(LuaRet[2])])
		
		txt = as3.tolua(LuaRet[1])
		--msg("NEI "..txt)
		GUIRichEditClear(handle)
		GUIRichEditAppendString(handle, tostring(txt))
		
		txt = GUIRichEditGetAllString(handle)
		--msg("2:"..txt)
		GUIEditSetTextM(TaskOperationDlg._misName, txt)
		GUIWndSetVisible(TaskOperationDlg._misName1, false)
		
		GUIRichEditClear(TaskOperationDlg._misDesc)
		GUIRichEditAppendString(TaskOperationDlg._misDesc, as3.tolua(LuaRet[3]))
		TaskOperationDlg.accept = as3.tolua(LuaRet[4])   -- 是否自动接任务    1是 0否
		TaskOperationDlg.complete = as3.tolua(LuaRet[5])   -- 是否自动完成任务
		for i = 1, 6 do
			if not as3.tolua(LuaRet[(i+5)]) then break end
			local t = getTable(as3.tolua(LuaRet[(i+5)]))
			
			local index = t[1]+1
			GUIWndSetVisible(TaskOperationDlg._rewardWnd[index], true)
			local _h = GUIWndFindChildM(TaskOperationDlg._rewardWnd[index], "rewardName")
			GUIEditSetTextM(_h, t[2]..l.rewardType[index])
			_h = GUIWndFindChildM(TaskOperationDlg._rewardWnd[index], "rewardImg")
			GUIWndSetHint(_h, l.rewardHint_f..t[2]..l.rewardType[index])
			GUIWndSetPosM(TaskOperationDlg._rewardWnd[index], 30+math.mod(i-1, 2)*140, 200+math.floor((i-1)/2)*64)
		end
	end
	
	-- if CLGetQuestAwardByID(TaskOperationDlg.mID) then
		-- local t = getTable(as3.tolua(LuaRet))
		-- for i = 1, #t do
		-- 	GUIWndSetVisible(TaskOperationDlg._item[i], true)
		-- 	RDItemCtrlSetGUIDataByKeyName(TaskOperationDlg._item[i], t[i][1], t[i][2], t[i][3])
		-- end
	-- end

	--获得奖励物品
	UI:Lua_SubmitForm("任务奖励","getRewardList",tostring(TaskOperationDlg.mID))

	if CLTaskQueryAccepted(TaskOperationDlg.mID) then
		if TaskOperationDlg.accept == 1 or TaskOperationDlg.complete == 1 then  
			GUIWndSetTextM(TaskOperationDlg._btn, l.completeMission.." (5s)")
			CLAddDelayTask("TaskOperationDlg.Magic()", 1000, 5) 
		else
			GUIWndSetTextM(TaskOperationDlg._btn, l.completeMission)
		end
		TaskOperationDlg.type = 2
		if not CLTaskQueryReady(TaskOperationDlg.mID) then
			GUIWndSetEnableM(TaskOperationDlg._btn, false)
		end
		TaskOperationDlg.text = l.completeMission
	else 
		if TaskOperationDlg.accept == 1 or TaskOperationDlg.complete == 1 then  
			GUIWndSetTextM(TaskOperationDlg._btn, l.acceptMission.." (5s)") 
			CLAddDelayTask("TaskOperationDlg.Magic()", 1000, 5) 
		else
			GUIWndSetTextM(TaskOperationDlg._btn, l.acceptMission)
		end
		TaskOperationDlg.type = 1
		TaskOperationDlg.text = l.acceptMission 
		
	end
	
end

function TaskOperationDlg.Magic() 
	
	local handle = GetWindow(TaskOperationDlg._wndHandle,"confirmBtn") 
	if handle ~= 0 then  
		if TaskOperationDlg.accept == 1 or TaskOperationDlg.complete == 1 then  
			GUIWndSetTextM(handle, TaskOperationDlg.text.." ("..TaskOperationDlg.index.."s)") 
		else
			GUIWndSetTextM(handle, TaskOperationDlg.text) 
		end	
	end
	TaskOperationDlg.index = TaskOperationDlg.index - 1 
	if TaskOperationDlg.index <= 1 then 
		TaskOperationDlg.index = 1
	end
	
	
end

function TaskOperationDlg.confirmBtn_LC()
	if TaskOperationDlg.type == 1 then
		CLAcceptQuestByID(TaskOperationDlg.mID)
	else
		CLSubmitQuestByID(TaskOperationDlg.mID)
	end
	GUIWndClose(TaskOperationDlg._wndHandle)
end

function TaskOperationDlg.wndClose()
	if TaskOperationDlg.text == l.acceptMission then
		if tonumber(TaskOperationDlg.mID) == 72 then
			CLOnOpenForge()
		end
		if tonumber(TaskOperationDlg.mID) == 73 then
			UI:Lua_OpenWindow(TaskOperationDlg._wndHandle,"Onboss.lua")
		end
	end
	local wnd = GUIWndFindWindow(0, "TaskOperationDlg") 
	if wnd == 0 then
		TaskOperationDlg = nil
	end
end

TaskOperationDlg.main()