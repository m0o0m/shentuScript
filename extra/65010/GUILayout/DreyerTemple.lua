DreyerTemple ={}
local ui = "<form> <dialog OnInit='DreyerTemple.UIInit' id='DreyerTemple' image='0' x='-8' y='250' w='16' h='16' revmsg='true'>"
	.."<image id='ContentBack' image='1805000007,1805000009,1805000013,1805000015,1805000011,1805000008,1805000014,1805000010,1805000012' x='0' y='0' w='225' h='250' check_point='0' revmsg='true'/>"
	.."	<button id='HideBtn' image='1805000003' x='182' y='-27' w='26' h='27' OnLButtonUp='DreyerTemple.OnHideWndBtn' revmsg='true'/>"
	.."	<image id='FbWndHeadBack' image='1805000002' x='1' y='-27' w='216' h='27' check_point='0' revmsg='true'/>"
	.."	<image id='IMG3' image='1805000016' x='28' y='8' w='100' h='27' check_point='0' revmsg='true'/>"
	.."	<edit id='timePrompt' x='38' y='12' w='104' h='20' revmsg='true' text_color='#F8B551' text='剩余活动时间：' font='system'/>"
	.."	<edit id='restTimes' x='127' y='14' w='83' h='16' revmsg='true' text_color='#4A935E' text='30:00' font='system'/>"
	.."	<richedit id='leaveMap' x='75' y='210' w='134' h='18' text='#SELECT#退出活动#SELECTEND#' text_color='#00ff00' OnLButtonUp='DreyerTemple.ConfirmDlg' revmsg='true' font='system'/>"
	.."	<image id='TestWndChild_1' image='1805500026' x='44' y='-22' w='126' h='22' check_point='0'/>"
	.."	<richedit id='introWords1' x='36' y='108' w='161' h='43' canedit='false' revmsg='true' font='system'/>"
	.."	<richedit id='introWords2' x='35' y='168' w='161' h='34' canedit='false' revmsg='true' font='system'/>"
	.."	<image id='TestWndChild_3' image='1805000016' x='52' y='41' w='100' h='27' check_point='0' revmsg='true'/>"
	.."	<edit id='TestWndChild_4' x='58' y='45' w='120' h='20' revmsg='true' text_color='#F8B551' text='寻镇魔使节领取奖励' font='system'/>"
	.."	<edit id='TestWndChild_5' x='15' y='71' w='104' h='20' revmsg='true' text_color='#FFB420' text='温馨提示：' font='system'/>"
	.." </dialog>"
	.."</form>"

function DreyerTemple.main()
	GenFormByString(ui)
end
DreyerTemple.Status = false
DreyerTemple.battleStart = false
DreyerTemple.second = 0
DreyerTemple.minute = 0
local allSeconds = FormParam[1]
--UI Logic Code Start
function DreyerTemple.UIInit(h)
	DreyerTemple._hideWnd = 0
	DreyerTemple._wnd = h
	local handle = 0
	DreyerTemple.minute = math.floor(allSeconds/60)
	DreyerTemple.second = allSeconds - DreyerTemple.minute*60
	
	handle = GetWindow(h, "introWords1")
	if handle ~= 0 then
		GUI:RichEditAppendString(handle, "#COLORCOLOR_BGREENG#1、#COLOREND##COLORCOLOR_DGREENG#BOSS刷新结束#COLOREND##COLORCOLOR_BGREENG#，可在地图中心安全区#COLOREND##COLORCOLOR_YELLOW#镇魔使节#COLOREND##COLORCOLOR_BGREENG#领取奖励#COLOREND#")
	end
	handle = GetWindow(h, "introWords2")
	
	if handle ~= 0 then
		GUI:RichEditAppendString(handle, "#COLORCOLOR_BGREENG#2.活动结束后，所有玩家将被传送回土城#COLOREND#")
	end
	
	handle = GetWindow(h, "IMG3")
	if handle ~= 0 then
		GUI:ImageSetTransfrom(handle,16000,10000,0)  --拉伸美术图片
	end
	
	handle = GetWindow(h, "TestWndChild_3")
	if handle ~= 0 then
		GUI:ImageSetTransfrom(handle,14000,10000,0)  --拉伸美术图片
	end
	
	
	local taskWnd = GetWindow(0, "GameMainInterface,TaskWindow")
	if taskWnd ~= nil then
		GUI:WndSetVisible(taskWnd, false)
	end
	
	if TaskWindow._hideWnd ~= 0 then
		GUI:WndSetVisible(TaskWindow._hideWnd, false)
	end
	
	handle = GetWindow(h,"HideBtn")
	if handle ~= 0 then
		GUI:WndMoveToParentTop(handle)
	end
	
	local sX = CL:GetScreenWidth()
	local tw = GUI:WndFindWindow(0, "DreyerTemple")
    if tw ~= 0 then
        GUI:WndSetPosM(tw, sX-208, 250)
    end
	
	local _wnd = GUI:WndCreateWnd(0, "ArenaInfoHidenUI", 1805000021, 0, 251)
	if _wnd ~= 0 then
		DreyerTemple._hideWnd = _wnd
		GUI:WndSetVisible(_wnd, false)
		local btn = GUI:ButtonCreate(_wnd, "ShowBtn", 1805000017, 0, -31)
		if btn ~= 0 then
			GUI:WndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "DreyerTemple.OnShowWndBtn")
		end
	end
	DreyerTemple.time_id = tonumber(GUI:WndAddTimerBrief(h, 1000, "DreyerTemple.DcUpdata"))

	GUI:WndRegistScript(h, RDWndBaseCL_wnd_close, "DreyerTemple.cleartime")
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "SCREEN SIZE CHANGED DreyerTemple", "DreyerTemple.width") 
end

function DreyerTemple.width()
	OnScreenSizeChange(DreyerTemple._wnd, DreyerTemple._hideWnd,208,31)
end

function DreyerTemple.cleartime()  --关闭定时器
end

function DreyerTemple.OnHideWndBtn(h)
	local sX = CL:GetScreenWidth()
	GUI:WndGetPosM(DreyerTemple._wnd)
	GUI:WndSetPosM(DreyerTemple._wnd, sX, LuaRet[2])
	DreyerTemple.HideTweenEnd()
end

function DreyerTemple.HideTweenEnd()
	local sX = CL:GetScreenWidth()
	GUI:WndSetPosM(DreyerTemple._hideWnd, sX-31, 251)
	GUI:WndSetVisible(DreyerTemple._wnd, false)
	GUI:WndSetVisible(DreyerTemple._hideWnd, true)
end

function DreyerTemple.OnShowWndBtn(h)
	GUI:WndSetVisible(DreyerTemple._wnd, true)
	GUI:WndSetVisible(DreyerTemple._hideWnd, false)
	
	local tweenX = CL:GetScreenWidth()- 208
	GUI:WndGetPosM(DreyerTemple._wnd)
	GUI:WndSetPosM(DreyerTemple._wnd, tweenX, LuaRet[2])
end

function DreyerTemple.DcUpdata()
	local min_Offset = ""
	local second_Offset = ""
	local handle = 0
	if DreyerTemple.second == 0 then
		DreyerTemple.minute = DreyerTemple.minute - 1
		DreyerTemple.second = 60
	end
	DreyerTemple.second = DreyerTemple.second - 1
	if DreyerTemple.minute < 10 then
		min_Offset = "0"
	end
	if DreyerTemple.second < 10 then
		second_Offset = "0"
	end
	if DreyerTemple.minute <= 0 and DreyerTemple.second == 0 then
		DreyerTemple.LeaveMap()
	end
	handle = GetWindow(DreyerTemple._wnd, "restTimes")
	GUI:EditSetTextM(handle, min_Offset..DreyerTemple.minute..":"..second_Offset..DreyerTemple.second)
	
end


function DreyerTemple.LeaveMap()
	UI:Lua_SubmitForm("NPC_IsNotInScene","Back_LC","")
	DreyerTemple.CloseFBandOpenTask()
end

function DreyerTemple.ConfirmDlg()
	luaMsgBox.new("离开活动", "活动还未结束，是否确定离开？", {"是", "否"}, {"DreyerTemple.ConfirmLeave", 0}, _handle)
end

function DreyerTemple.ConfirmLeave(_handle)
	UI:Lua_SubmitForm("谁与争锋表单", "Leave", "")
	local handle = GUI:WndGetParentM(_handle)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
	DreyerTemple.CloseFBandOpenTask()
end

function DreyerTemple.CloseFBandOpenTask()
	GUI:WndClose(DreyerTemple._wnd)
	local taskWnd = GetWindow(0, "GameMainInterface,TaskWindow")
	if taskWnd ~= 0 then
		GUI:WndSetVisible(taskWnd, true)
	end
	if TaskWindow._hideWnd ~= 0 then
		GUI:WndSetVisible(TaskWindow._hideWnd, false)
	end
	OnScreenSizeChange(taskWnd,TaskWindow._hideWnd,208,31)
end

DreyerTemple.main()