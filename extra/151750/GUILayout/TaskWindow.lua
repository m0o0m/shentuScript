

TaskWindow = {}
TaskWindow.TaskTrack_YOffset = 130
TaskWindow.TaskTrack_Width = 250
TaskWindow.TaskTrack_Height = 170


function TaskWindow.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _GUIHandle = GUI:ButtonCreate(_Parent, "TaskBtn", 1850000000, 20, TaskWindow.TaskTrack_YOffset)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle, "任务")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TaskWindow.OnOpenQuestDlg")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    _GUIHandle = GUI:ButtonCreate(_Parent, "BossBtn", 1850000000, 110, TaskWindow.TaskTrack_YOffset)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle, "BOSS")
        -- GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TaskWindow.OnHideWndBtn")
        -- GUI:WndSetParam(_GUIHandle, 0)
        -- GUI:WndSetSizeM(_GUIHandle,32, 34)
        -- GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
	_GUIHandle = GUI:ButtonCreate(_Parent,"HideWndBtn",1850000008, 200, TaskWindow.TaskTrack_YOffset)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TaskWindow.OnHideWndBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

     
    TaskWindow.UIInit(_Parent)
end

function TaskWindow.OnOpenQuestDlg()
    CL:OnQuestWindow()
end


TaskWindow._wnd = 0
TaskWindow._hideWnd = 0
TaskWindow.ClipWnd = 0
function TaskWindow.UIInit(h)
	TaskWindow._wnd = h
    GUI:WndSetCanRevMsg(TaskWindow._wnd, true)

	--TaskWindow.DelayTaskId = CL:AddDelayTask("TaskWindow.AutoPos()", 100, 3)
	
	local _wnd = GUI:WndCreateWnd(0, "TaskWindowHideUI", 0, 0, TaskWindow.TaskTrack_YOffset)
	if _wnd ~= 0 then
		TaskWindow._hideWnd = _wnd
		GUI:WndSetVisible(_wnd, false)
		local btn = GUI:ButtonCreate(_wnd, "ShowWndBtn", 1850000439, 0, 0)
		if btn ~= 0 then
			GUI:WndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "TaskWindow.OnShowWndBtn")
		end
	end

	local _GUIHandle = GUI:WndCreateWnd(TaskWindow._wnd, "ClipWnd", 0, 0, TaskWindow.TaskTrack_YOffset + 40)
     if _GUIHandle then
     	TaskWindow.ClipWnd = _GUIHandle
     	GUI:WndSetSizeM(_GUIHandle,TaskWindow.TaskTrack_Width, TaskWindow.TaskTrack_Height)
     	GUI:WndSetFlagsM(TaskWindow.ClipWnd, flg_wndBase_useBkBuffer)
     end
 
	TaskWindow.CreateUI(TaskWindow._wnd)
end

--TaskWindow, ClipWnd, singleTaskClipWnd
                                    --singleBtn
                                    --singleEdit
function TaskWindow.CreateUI(_Handle)
	local count = 20;
	for i = 1, count do
		dbg("i = "..tostring(i))
		 local _GUIHandle = GUI:WndCreateWnd(TaskWindow.ClipWnd, "singleTaskClipWnd"..tostring(i), 0, 0, 90 * (i - 1))
         if _GUIHandle then
            GUI:WndSetSizeM(_GUIHandle, 240, 80)
            --GUI:WndSetFlagsM(TaskWindow.ClipWnd, flg_wndBase_useBkBuffer)
        end
         local _Parent = _GUIHandle 
         _GUIHandle = GUI:ButtonCreate(_Parent, "singleBtn"..tostring(i), 1850000453, 0, 0)
         if _GUIHandle then
            GUI:WndSetParam(_GUIHandle, i)
        end
         _GUIHandle = GUI:RichEditCreate(_Parent, "singleEdit"..tostring(i), 2, 2, 240, 80)
         if _GUIHandle then
            GUI:WndSetEnableM(_GUIHandle, false)
            GUI:WndSetCanRevMsg(_GUIHandle, false)
            GUI:RichEditAppendString(_GUIHandle, tostring(i))
            GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
         end
	end
end

function TaskWindow.AutoPos()
 --    local sX = CL:GetScreenWidth()
	-- local sY = CL:GetScreenHeight()
	-- local tw = GUI:WndFindWindow(0, "GameMainInterface,TaskWindow")
 --    if tw ~= 0 then
 --        GUI:WndSetPosM(tw, 0, TaskWindow.TaskTrack_YOffset)
 --    end
	-- CL:DelDelayTask(TaskWindow.DelayTaskId)
end

function TaskWindow.OnHideWndBtn(h)
	GUI:WndSetVisible(TaskWindow._wnd, false)
	GUI:WndSetVisible(TaskWindow._hideWnd, true)
end

function TaskWindow.OnShowWndBtn(h)
	GUI:WndSetVisible(TaskWindow._wnd, true)
	GUI:WndSetVisible(TaskWindow._hideWnd, false)
end

function TaskWindow.AddExtraFun(num)

end

TaskWindow.main()


