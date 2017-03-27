TaskOperationDlg = {}
function TaskOperationDlg.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUI:ImageCreate(_Parent,"BkImg",1806100012,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,384, 505)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"divideImg1",1806100013,43,196)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,299, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"divideImg2",1806100013,43,420)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,299, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1805900080,328,3)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "luaWndClose")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 38)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"missionName",48,71,200,27)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4281116897)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"tianchong",43,258,299,84)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"missionDescription",42,101,299,84)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	expWnd_Parent = GUI:WndCreateWnd(_Parent,"expWnd",0,0,0)
	if expWnd_Parent ~= 0 then
		GUI:WndSetVisible(expWnd_Parent, false)
		GUI:WndSetSizeM(expWnd_Parent,16, 16)
	end
	
	
	_GUIHandle = GUI:ImageCreate(expWnd_Parent,"rewardImg",1892100043,0,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:EditCreate(expWnd_Parent,"rewardName",60,20,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290936121)
	end
	
	
	
	ingotWnd_Parent = GUI:WndCreateWnd(_Parent,"ingotWnd",0,0,0)
	if ingotWnd_Parent ~= 0 then
		GUI:WndSetVisible(ingotWnd_Parent, false)
		GUI:WndSetSizeM(ingotWnd_Parent,16, 16)
	end
	
	
	_GUIHandle = GUI:ImageCreate(ingotWnd_Parent,"rewardImg",1892100041,0,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:EditCreate(ingotWnd_Parent,"rewardName",60,20,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290936121)
	end
	
	
	
	bind_ingotWnd_Parent = GUI:WndCreateWnd(_Parent,"bind_ingotWnd",0,0,0)
	if bind_ingotWnd_Parent ~= 0 then
		GUI:WndSetVisible(bind_ingotWnd_Parent, false)
		GUI:WndSetSizeM(bind_ingotWnd_Parent,16, 16)
	end
	
	
	_GUIHandle = GUI:ImageCreate(bind_ingotWnd_Parent,"rewardImg",1892100041,0,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:EditCreate(bind_ingotWnd_Parent,"rewardName",60,20,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290936121)
	end
	
	
	
	integralWnd_Parent = GUI:WndCreateWnd(_Parent,"integralWnd",0,0,0)
	if integralWnd_Parent ~= 0 then
		GUI:WndSetVisible(integralWnd_Parent, false)
		GUI:WndSetSizeM(integralWnd_Parent,16, 16)
	end
	
	
	_GUIHandle = GUI:ImageCreate(integralWnd_Parent,"rewardImg",0,0,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:EditCreate(integralWnd_Parent,"rewardName",60,20,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290936121)
	end
	
	
	
	goldWnd_Parent = GUI:WndCreateWnd(_Parent,"goldWnd",0,0,0)
	if goldWnd_Parent ~= 0 then
		GUI:WndSetVisible(goldWnd_Parent, false)
		GUI:WndSetSizeM(goldWnd_Parent,16, 16)
	end
	
	
	_GUIHandle = GUI:ImageCreate(goldWnd_Parent,"rewardImg",1892100042,0,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:EditCreate(goldWnd_Parent,"rewardName",60,20,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290936121)
	end
	
	
	
	bind_goldWnd_Parent = GUI:WndCreateWnd(_Parent,"bind_goldWnd",0,0,0)
	if bind_goldWnd_Parent ~= 0 then
		GUI:WndSetVisible(bind_goldWnd_Parent, false)
		GUI:WndSetSizeM(bind_goldWnd_Parent,16, 16)
	end
	
	
	_GUIHandle = GUI:ImageCreate(bind_goldWnd_Parent,"rewardImg",1892100042,0,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:EditCreate(bind_goldWnd_Parent,"rewardName",60,20,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290936121)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent, "ItemBkImg1", 1800000138, 49,370)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle,false)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item1",0,49,370,48,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent, "ItemBkImg2", 1800000138, 104,370)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle,false)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item2",0,104,370,48,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent, "ItemBkImg3", 1800000138, 159,370)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle,false)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item3",0,159,370,48,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"confirmBtn",1806100002,148,430)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "TaskOperationDlg.confirmBtn_LC")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,88, 31)
		GUI:WndSetTextColorM(_GUIHandle, 4294960577)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_6",1806100000,41,212)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,224, 28)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_7",1806100001,148,5)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,95, 27)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	TaskOperationDlg.UIInit(_Parent)
end

--UI Logic Code Start
TaskOperationDlg.acceptMission = "接受任务"
TaskOperationDlg.completeMission = "完成任务"
TaskOperationDlg.rewardHint_f = "获得"
TaskOperationDlg.rewardType = {"经验", "元宝", "绑定元宝", "积分", "金币", "绑定金币"}
TaskOperationDlg.missionType =	{
	"主 线 任 务",
	"支 线 任 务",
	"活 动 任 务"	--其他
}
--TaskOperationDlg.rewardItem = {{"exp", 1891420459}, {"ingot", 1891420589}, {"bind_ingot", 1891420589}, {"integral", 1891420562}, {"gold", 1891420590}, {"bind_gold", 1891420590}}
TaskOperationDlg.rewardItem =   {{"exp", 1892100043}, {"ingot", 1892100041}, {"bind_ingot", 1892100041}, {"integral", 1891420562}, {"gold", 1892100042}, {"bind_gold", 1892100042}}
TaskOperationDlg._wndHandle = 0
TaskOperationDlg.index = 5
TaskOperationDlg.accept = 0
TaskOperationDlg.complete = 0
TaskOperationDlg.isGet = 0

function TaskOperationDlg.UIInit(_h)	
	LuaGlobal["TaskOperationDlg_AreaEnable"] = false
	GUI:WndSetSizeM(_h,384, 505)
	GUI:WndSetIsESCClose(_h, true)
	GUI:WndSetMoveWithLBM(_h)
	CenterWnd(_h)
	TaskOperationDlg.isGet = 0
	local _GUIHandle = 0
	for i = 1, 3 do
		_GUIHandle = GetWindow(_h, "item"..i)
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
		end
		_GUIHandle = GetWindow(_h, "ItemBkImg"..i)
		GUI:WndSetVisible(_GUIHandle, false)
	end
	RegisterUIEvent(LUA_EVENT_NPCQUEST, "openNPCMissionWnd", TaskOperationDlg.getQuest) 	
	GUI:WndRegistScript(_h, RDWndBaseCL_wnd_close, "TaskOperationDlg.wndClose")
end

function MWshowReward(ret)
	local str = tostring(ret[0])
	--msg(""..str)		
	if str == "无脚本任务奖励" then
		--无脚本配置奖励 
		--检查是否有db配置奖励

		if CL:GetQuestAwardByID(TaskOperationDlg.mID) then
			local t = LuaRet
			for i = 1, #t do
				local _wnd = GUI:WndFindChildM(TaskOperationDlg._wndHandle, "item"..i)
				GUI:WndSetVisible(_wnd, true)
				RDItemCtrlSetGUIDataByKeyName(_wnd, t[i][1], t[i][2], t[i][3])
				_wnd = GUI:WndFindChildM(TaskOperationDlg._wndHandle, "ItemBkImg"..i)
				GUI:WndSetVisible(_wnd, true)
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
			local _wnd = GUI:WndFindChildM(TaskOperationDlg._wndHandle, "item"..i)
			GUI:WndSetVisible(_wnd, true)
			RDItemCtrlSetGUIDataByKeyName(_wnd, ret[i][1], ret[i][2], ret[i][3])
			_wnd = GUI:WndFindChildM(TaskOperationDlg._wndHandle, "ItemBkImg"..i)
			GUI:WndSetVisible(_wnd, true)
			i = i + 1
		end
	end
end

function TaskOperationDlg.getQuest()		
	TaskOperationDlg._wndHandle = GetWindow(0,"TaskOperationDlg")
	TaskOperationDlg.index = 5
	TaskOperationDlg.accept = 0
	TaskOperationDlg.complete = 0
	TaskOperationDlg.mID = LuaParam[1]
	
	local handle = GetWindow(0,"TaskOperationDlg,tianchong")
	local wndTitle = GetWindow(0,"TaskOperationDlg,wndTitleEdit")
	local misName = GetWindow(0,"TaskOperationDlg,missionName")
	local misDesc = GetWindow(0,"TaskOperationDlg,missionDescription")
	local btn = GetWindow(0,"TaskOperationDlg,confirmBtn")
	local txt = ""
	if CL:GetQuestDataByID(TaskOperationDlg.mID) then
		
		GUI:EditSetTextM(wndTitle, ''..TaskOperationDlg.missionType[LuaRet[2]])
		txt = LuaRet[1]
		GUI:RichEditClear(handle)
		GUI:RichEditAppendString(handle, tostring(txt))
		txt = GUI:RichEditGetAllString(handle)
		GUI:EditSetTextM(misName, txt)
		
		GUI:RichEditClear(misDesc)
		GUI:RichEditAppendString(misDesc, LuaRet[3])
		TaskOperationDlg.accept = LuaRet[4]   -- 是否自动接任务    1是 0否
		TaskOperationDlg.complete = LuaRet[5]   -- 是否自动完成任务
		
		for i = 1, 6 do
			local _wnd = GUI:WndFindChildM(TaskOperationDlg._wndHandle, TaskOperationDlg.rewardItem[i][1].."Wnd")
			GUI:WndSetVisible(_wnd, false)
		end 
		for i = 1, 6 do
			if not LuaRet[(i+5)] then break end
			local t = LuaRet[(i+5)]
			
			local index = t[1]+1
			local _wnd = GUI:WndFindChildM(TaskOperationDlg._wndHandle, TaskOperationDlg.rewardItem[index][1].."Wnd")
			GUI:WndSetVisible(_wnd, true)
			local _h = GUI:WndFindChildM(_wnd, "rewardName")
			
			GUI:EditSetTextM(_h, t[2]..TaskOperationDlg.rewardType[index])
			_h = GUI:WndFindChildM(_wnd, "rewardImg")
			GUI:WndSetHint(_h, TaskOperationDlg.rewardHint_f..t[2]..TaskOperationDlg.rewardType[index])
			GUI:WndSetPosM(_wnd, 50+math.mod(i-1, 2)*140, 250+math.floor((i-1)/2)*64)
		end
	end

	--获得奖励物品
	UI:Lua_SubmitForm("任务奖励","getRewardList",tostring(TaskOperationDlg.mID))

	if CL:TaskQueryAccepted(TaskOperationDlg.mID) then
		if TaskOperationDlg.accept == 1 or TaskOperationDlg.complete == 1 then  
			GUI:WndSetTextM(btn, TaskOperationDlg.completeMission.."(5s)")
			GUI:WndSetTextArrangeType(btn,2,2,0,0)
			CL:AddDelayTask("TaskOperationDlg.Magic()", 1000, 6) 
		else
			GUI:WndSetTextM(btn, ''..TaskOperationDlg.completeMission)
		end
		TaskOperationDlg.type = 2
		if not CL:TaskQueryReady(TaskOperationDlg.mID) then
			GUI:WndSetEnableM(btn, false)
		end
		TaskOperationDlg.text = TaskOperationDlg.completeMission
	else 
		if TaskOperationDlg.accept == 1 or TaskOperationDlg.complete == 1 then  
			GUI:WndSetTextM(btn, TaskOperationDlg.acceptMission.."(5s)") 
			CL:AddDelayTask("TaskOperationDlg.Magic()", 1000, 6) 
		else
			GUI:WndSetTextM(btn, ''..TaskOperationDlg.acceptMission)
		end
		TaskOperationDlg.type = 1
		TaskOperationDlg.text = TaskOperationDlg.acceptMission
	end
	
end

function TaskOperationDlg.Magic() 
	
	local handle = GetWindow(TaskOperationDlg._wndHandle,"confirmBtn") 
	if handle ~= 0 then  
		if TaskOperationDlg.accept == 1 or TaskOperationDlg.complete == 1 then  
			GUI:WndSetTextM(handle, TaskOperationDlg.text.."("..TaskOperationDlg.index.."s)") 
			if TaskOperationDlg.index == 0 then
				TaskOperationDlg.confirmBtn_LC()
			end
		else
			GUI:WndSetTextM(handle, ''..TaskOperationDlg.text) 
		end	
	end
	TaskOperationDlg.index = TaskOperationDlg.index - 1 
	if TaskOperationDlg.index < 1 then 
		TaskOperationDlg.index = 0
	end
	
end

function TaskOperationDlg.confirmBtn_LC()
	if TaskOperationDlg.isGet == 0 then 
		if TaskOperationDlg.type == 1 then
			CL:AcceptQuestByID(TaskOperationDlg.mID)
		else
			CL:SubmitQuestByID(TaskOperationDlg.mID)
		end
		TaskOperationDlg.isGet = 1
	end
	GUI:WndClose(TaskOperationDlg._wndHandle)
end

function TaskOperationDlg.wndClose(_h)
	if TaskOperationDlg.isGet == 0 then 
		if TaskOperationDlg.type == 1 then
			CL:AcceptQuestByID(TaskOperationDlg.mID)
		else
			CL:SubmitQuestByID(TaskOperationDlg.mID)
		end
		TaskOperationDlg.isGet = 1
	end
	if TaskOperationDlg.text == TaskOperationDlg.acceptMission then
		if tonumber(TaskOperationDlg.mID) == 72 then
			UI:Lua_OpenWindow(0,"ForgeWnd.lua")
		end
		if tonumber(TaskOperationDlg.mID) == 73 then
			UI:Lua_OpenWindow(0,"Onboss.lua")
		end
	end
end

TaskOperationDlg.main()