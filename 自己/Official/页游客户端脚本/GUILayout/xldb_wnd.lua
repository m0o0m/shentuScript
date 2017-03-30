xldb_wnd ={}
local ui = "<form> <dialog OnInit='xldb_wnd.UIInit' id='xldb_wnd' image='0' x='-8' y='250' w='16' h='16' revmsg='true'>"
	.."	<image id='FbWndHeadBack' image='1805000002' x='1' y='-27' w='216' h='27' check_point='0' revmsg='true'/>"
	.."	<button id='HideBtn' image='1805000003' x='192' y='-27' w='26' h='27' OnLButtonUp='xldb_wnd.OnHideWndBtn' revmsg='true'/>"
	.."	<image id='tittle' image='1805500042' x='75' y='-23' w='0' h='0' revmsg='false' enable='false' font='system'/>"
	.."<image id='ContentBack' image='1805000007,1805000009,1805000013,1805000015,1805000008,1805000014,1805000010,1805000012,1805000011' x='0' y='0' w='216' h='290' check_point='0' revmsg='true'/>"
	.."	<image id='IMG1' image='1805000016' x='11' y='13' w='100' h='27' check_point='0' revmsg='true'/>"
	.."	<image id='IMG2' image='1805000016' x='11' y='65' w='100' h='27' check_point='0' revmsg='true'/>"
	.."	<edit id='text3' x='17' y='17' w='67' h='20' revmsg='true' text_color='#F8B551' text='剩余活动时间：' font='system'/>"
	.."	<edit id='item2text' x='15' y='67' w='200' h='21' revmsg='true' text_color='#FCE886' text='勇夺宝箱,坚持就是胜利' font='SIMLI18'/>"
	.."	<edit id='expRwd' x='25' y='132' w='96' h='21' revmsg='true' text_color='#D3B393' text='持有宝箱, 每满' font='system'/>"
	.."	<edit id='expNum' x='115' y='132' w='85' h='21' revmsg='true' text_color='#00CC33' text='3分钟' font='system'/>"
	.."	<edit id='restTimes' x='100' y='18' w='83' h='16' revmsg='true' text_color='#4A935E' text='00:00' font='system'/>"
	.."	<richedit id='leaveMap' x='75' y='246' w='134' h='18' text='#SELECT#退出活动#SELECTEND#' OnLButtonUp='xldb_wnd.LeaveMap' revmsg='true' text_color='#918A80' font='system'/>"
	.."	<edit id='0' x='16' y='106' w='86' h='21' revmsg='true' text_color='#F8B551' text='宝箱说明:' font='system'/>"
	.."	<edit id='1' x='26' y='157' w='104' h='21' revmsg='true' text_color='#D3B393' text='一份随机奖励' font='system'/>"
	.."	<edit id='3' x='26' y='189' w='191' h='21' revmsg='true' text_color='#D3B393' text='活动结束可开启宝箱,至多' font='system'/>"
	.."	<edit id='4' x='151' y='132' w='86' h='21' revmsg='true' text_color='#D3B393' text='可以获得' font='system'/>"
	.."	<edit id='5' x='26' y='214' w='86' h='21' revmsg='true' text_color='#D3B393' text='可获得' font='system'/>"
	.."	<edit id='6' x='67' y='214' w='86' h='21' revmsg='true' text_color='#00CC33' text='2000元宝' font='system'/>"
	.." </dialog>"
	.."</form>"

function xldb_wnd.main()
	GenFormByString(ui)
end

xldb_wnd.second = 60
xldb_wnd.minute = 29
--UI Logic Code Start
function xldb_wnd.UIInit(h)
	xldb_wnd._hideWnd = 0
	xldb_wnd._wnd = h
	local handle = 0
	xldb_wnd.times = tonumber(deserialize(as3.tolua(FormParam[1])))
	--msg(xldb_wnd.times)
	local sX = CLGetScreenWidth()
	local tw = GUIWndFindWindow(0, "xldb_wnd")
    if tw ~= 0 then
        GUIWndSetPosM(tw, sX-216, 250)
    end
	
	handle = GetWindow(h, "IMG1")
	if handle ~= 0 then
		GUIImageSetTransfrom(handle,14000,10000,0)
	end
    handle = GetWindow(h, "IMG2")
	if handle ~= 0 then
		GUIImageSetTransfrom(handle,14000,10000,0)
	end
    
	local _wnd = GUIWndCreateWnd(0, "FbWndHideUI", 1805000021, 0, 251)
	if _wnd ~= 0 then
		xldb_wnd._hideWnd = _wnd
		GUIWndSetVisible(_wnd, false)
		local btn = GUIButtonCreate(_wnd, "ShowBtn", 1805000017, 0, -31)
		if btn ~= 0 then
			GUIWndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "xldb_wnd.OnShowWndBtn")
		end
	end

	--[[
	if GUIWndAddTimerBrief(h, 1000, "xldb_wnd.DcUpdata") then    --设置定时器
		xldb_wnd.time_id = as3.tolua(LuaRet)
	end
	--]]
	
	xldb_wnd.time_id = CLAddDelayTask('xldb_wnd.Timeupdata()', 1000, xldb_wnd.times)
	--msg(type(xldb_wnd.time_id))
	GUIWndRegistScript(h, RDWndBaseCL_wnd_close, "xldb_wnd.cleartime")
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "SCREEN SIZE CHANGED xldb_wnd", "xldb_wnd.width") 
end
function xldb_wnd.Timeupdata()
	--每过一秒调用更新函数
	if xldb_wnd.times < 0 then 
		xldb_wnd.times = 0 
	end
	if xldb_wnd.times > 0 then
		xldb_wnd.times = xldb_wnd.times - 1      
	end
	
	local minutes = math.floor(xldb_wnd.times/60)
	if minutes < 10 then 
		minutes = '0'..minutes
	end
	
	local seconds = xldb_wnd.times%60
	if seconds < 10 then 
		seconds = '0'..seconds
	end
	
	local time_str = minutes..':'..seconds
	
	local handle = GetWindow(xldb_wnd._wnd, "restTimes")
	if handle ~= 0 then	
		GUIEditSetTextM(handle, time_str)
	end

end


function xldb_wnd.OnHideWndBtn(h)
	local sX = CLGetScreenWidth()
	local tXml = "<Tween><Frame time='0.3' x='"..sX.."' /></Tween>"
	GUIWndTween(xldb_wnd._wnd, tXml, "xldb_wnd.HideTweenEnd()")
end

function xldb_wnd.HideTweenEnd()
	local sX = CLGetScreenWidth()
	GUIWndSetPosM(xldb_wnd._hideWnd, sX-31, 251)
	GUIWndSetVisible(xldb_wnd._wnd, false)
	GUIWndSetVisible(xldb_wnd._hideWnd, true)
end

function xldb_wnd.OnShowWndBtn(h)
	GUIWndSetVisible(xldb_wnd._wnd, true)
	GUIWndSetVisible(xldb_wnd._hideWnd, false)
	
	local tweenX = CLGetScreenWidth()- 208
	local tXml = "<Tween><Frame time='0.3' x='"..tweenX.."' /></Tween>"
	GUIWndTween(xldb_wnd._wnd, tXml, "")
end


function xldb_wnd.width()
	OnScreenSizeChange(xldb_wnd._wnd, xldb_wnd._hideWnd,208,31)
end


function xldb_wnd.LeaveMap()
	xldb_wnd.ConfirmDlg()
	
end

function xldb_wnd.ConfirmDlg()
	luaMsgBox.new("离开副本", "副本还未完成，离开将无法获得奖励", {"是", "否"}, {"xldb_wnd.ConfirmLeave", 0}, _handle)
end

function xldb_wnd.ConfirmLeave(_handle)
	UI:Lua_SubmitForm("寻龙夺宝表单","LeaveCurrentMap","")
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
	
end

function xldb_wnd.RecoverTaskWindow()
	local taskWnd = GetWindow(0, "TaskWindow")
	if taskWnd ~= 0 then
		GUIWndSetVisible(taskWnd, true)
	end
	if TaskWindow._hideWnd ~= 0 then
		GUIWndSetVisible(TaskWindow._hideWnd, false)
	end
	OnScreenSizeChange(taskWnd,TaskWindow._hideWnd,208,31)
end

function xldb_wnd.MsgBox()
	luaMsgBox.new("元宝", "     很抱歉，您的元宝不足", {"前往充值", "取消"}, {"xldb_wnd.chongz", "xldb_wnd.out"}, "")
end

function xldb_wnd.cleartime()  --关闭定时器
	UI:Lua_DelDelayTask(tonumber(xldb_wnd.time_id))
end

function xldb_wnd.bottom_msg_tip(str)
	UI:Lua_GetScreenSize()
	local x = as3.tolua(LuaRet[1])/2-191
	local y = as3.tolua(LuaRet[2])-200
	msg_tip(str,x,y)
end




xldb_wnd.main()