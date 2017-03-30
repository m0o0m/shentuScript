DailyFbWnd ={}
local ui = "<form> <dialog OnInit='DailyFbWnd.UIInit' id='DailyFbWnd' image='0' x='-8' y='250' w='16' h='16' revmsg='true'>"
	.."<image id='ContentBack' image='1805000007,1805000009,1805000013,1805000015,1805000008,1805000014,1805000010,1805000012,1805000011' x='0' y='0' w='225' h='290' check_point='0' revmsg='true'/>"

	.."	<button id='HideBtn' image='1805000003' x='182' y='-27' w='26' h='27' OnLButtonUp='DailyFbWnd.OnHideWndBtn' revmsg='true'/>"
	.."	<image id='FbWndHeadBack' image='1805000002' x='1' y='-27' w='216' h='27' check_point='0' revmsg='true'/>"
	.."	<image id='FbWndHead' image='1805000001' x='88' y='-24' w='34' h='20' revmsg='true'/>"
	--.."	<button id='getReward' image='1800000134' x='70' y='245' w='26' h='27' param=1 visible='false' text='领取奖励' text_color='#C2B6A0' OnLButtonUp='DailyFbWnd.Get_FB_Reward' revmsg='true'/>"
	.."	<button id='getReward' image='1800000134' x='20' y='245' w='26' h='27' param=1 visible='false' text='领取奖励' text_color='#C2B6A0' OnLButtonUp='DailyFbWnd.Get_FB_Reward' revmsg='true'/>"
	.."	<button id='getDoubleRWD' image='1800000134' x='117' y='245' w='26' h='27' param=2 visible='false' text='双倍领取' text_color='#C2B6A0' OnLButtonUp='DailyFbWnd.Get_FB_Reward' revmsg='true'/>"
	.."	<image id='IMG1' image='1805000016' x='11' y='13' w='34' h='20' revmsg='true'/>"
	.."	<image id='IMG2' image='1805000016' x='11' y='65' w='34' h='20' revmsg='true'/>"
	.."	<image id='IMG3' image='1805000016' x='11' y='218' w='34' h='20' revmsg='true'/>"
	.."	<edit id='text1' x='21' y='15' w='80' h='22' revmsg='true' text_color='#F8B551' text='完成条件：' font='system'/>"
	.."	<edit id='text2' x='21' y='67' w='80' h='22' revmsg='true' text_color='#F8B551' text='副本奖励：' font='system'/>"
	.."	<edit id='text3' x='21' y='222' w='67' h='20' revmsg='true' text_color='#F8B551' text='剩余时间：' font='system'/>"
	.."	<richedit id='text11' x='39' y='43' w='134' h='18' text='击杀' text_color='#DCE0CB' revmsg='true' font='system'/>"
	.."	<richedit id='text12' x='70' y='43' w='134' h='18' text='#SELECT#小怪#SELECTEND#' text_color='#00CCFF' OnLButtonUp='DailyFbWnd.AutoFight' revmsg='true' font='system'/>"
	.."	<richedit id='completeAim' x='98' y='43' w='134' h='18' text_color='#00CC33' revmsg='true' font='system'/>"
	
	.."	<image id='Item2Img' x='33' y='101' w='45' h='45' image='1800000133'  enable='true' revmsg='true'/>"
	.."	<image id='Item2Back' image='1891430000' x='31' y='99' w='49' h='49' enable='true' revmsg='true' fitsize='true'/>"
	
	.."	<itemctrl id='rewardItem2' x='33' y='101' w='45' h='45' use_back='-1' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='item2text' x='92' y='117' w='86' h='21' revmsg='true' text_color='#DCE0CB' font='system'/>"
	
	.."	<image id='rewardItem1' image='1892100043' x='27' y='165' w='45' h='45' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='expRwd' x='92' y='181' w='86' h='21' revmsg='true' text_color='#DCE0CB' text='经验' font='system'/>"
	.."	<edit id='expNum' x='120' y='181' w='86' h='21' revmsg='true' text_color='#00CC33' text='600000' font='system'/>"
	
	.."	<edit id='restTimes' x='90' y='225' w='83' h='16' revmsg='true' text_color='#4A935E' text='30:00' font='system'/>"
	.."	<richedit id='leaveMap' x='75' y='260' w='134' h='18' text='#SELECT#退出副本#SELECTEND#' text_color='#918A80' OnLButtonUp='DailyFbWnd.LeaveMap' revmsg='true' font='system'/>"
	--.."	<button id='GET_REWARD_TIP' image='1804600020' x='-180' y='240' w='188' h='50' text='点击领取奖励' visible='false' revmsg='false' text_color='#DBC300'/>"
	.."	<button id='GET_REWARD_TIP' image='1804600017' x='70' y='300' w='238' h='50' text='点击领取奖励' visible='false' revmsg='false' text_color='#DBC300'/>"

	.." </dialog>"
	.."</form>"

function DailyFbWnd.main()
	GenFormByString(ui)
end

DailyFbWnd.second = 60
DailyFbWnd.minute = 29
--UI Logic Code Start
function DailyFbWnd.UIInit(h)
	DailyFbWnd._hideWnd = 0
	DailyFbWnd._wnd = h
	DailyFbWnd.tolNum = tonumber(deserialize(as3.tolua(FormParam[4])))
	local handle = 0
	local item = tostring(deserialize(as3.tolua(FormParam[1])))
	local number = 	tonumber(deserialize(as3.tolua(FormParam[2])))
	local expNum = tonumber(deserialize(as3.tolua(FormParam[3])))
	local itemShowName = tostring(deserialize(as3.tolua(FormParam[5])))
	handle = GetWindow(h, "IMG3")
	if handle ~= 0 then
		GUIImageSetTransfrom(handle,14000,10000,0)
	end
	handle = GetWindow(h, "rewardItem2")
	if handle ~= 0 then
		RDItemCtrlSetGUIDataByKeyName(handle, item, number, true)
	end
	handle = GetWindow(h, "item2text")
	if handle ~= 0 then
		GUIEditSetTextM(handle, itemShowName)
	end
	handle = GetWindow(h, "rewardItem1")
	if handle ~= 0 then
		GUIWndSetHint(handle, "经验"..expNum)
		GUIImageSetTransfrom(handle,8000,8000,0)
	end
	handle = GetWindow(h, "expNum")
	if handle ~= 0 then
		GUIEditSetTextM(handle, expNum )
	end
	handle = GetWindow(h, "getReward")
	if handle ~= 0 then
		GUIWndSetTextArrangeType(handle,0,3,0,0)
	end
	--[[handle = GetWindow(h, "getDoubleRWD")
	if handle ~= 0 then
		GUIWndSetTextArrangeType(handle,0,3,0,0)
		if string.find(itemShowName,"神灵之羽") then 
			GUIWndSetHint(handle, "<font color='#D58840'>花费188元宝领取双倍奖励</font>")
		elseif string.find(itemShowName,"珠宝碎片") then 
			GUIWndSetHint(handle, "<font color='#D58840'>花费198元宝领取双倍奖励</font>")
		elseif string.find(itemShowName,"盾牌残片") then 
			GUIWndSetHint(handle, "<font color='#D58840'>花费188元宝领取双倍奖励</font>")
		else
			GUIWndSetHint(handle, "<font color='#D58840'>花费98元宝领取双倍奖励</font>")
		end
	end--]]
	local taskWnd = GetWindow(0, "TaskWindow")
	if taskWnd ~= 0 then
		GUIWndSetVisible(taskWnd, false)
	end
	if TaskWindow._hideWnd ~= 0 then
		GUIWndSetVisible(TaskWindow._hideWnd, false)
	end
	handle = GetWindow(h,"HideBtn")
	if handle ~= 0 then
		GUIWndMoveToParentTop(handle)
	end
	DailyFbWnd.showAim("0")
    local sX = CLGetScreenWidth()
	local tw = GUIWndFindWindow(0, "DailyFbWnd")
    if tw ~= 0 then
        GUIWndSetPosM(tw, sX-208, 250)
    end
	
	local _wnd = GUIWndCreateWnd(0, "FbWndHideUI", 1805000021, 0, 251)
	if _wnd ~= 0 then
		DailyFbWnd._hideWnd = _wnd
		GUIWndSetVisible(_wnd, false)
		local btn = GUIButtonCreate(_wnd, "ShowBtn", 1805000017, 0, -31)
		if btn ~= 0 then
			GUIWndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "DailyFbWnd.OnShowWndBtn")
		end
	end
	
	if GUIWndAddTimerBrief(h, 1000, "DailyFbWnd.DcUpdata") then    --设置定时器
		DailyFbWnd.time_id = as3.tolua(LuaRet)
	end
	GUIWndRegistScript(h, RDWndBaseCL_wnd_close, "DailyFbWnd.cleartime")
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "SCREEN SIZE CHANGED DailyFbWnd", "DailyFbWnd.width") 
end

function DailyFbWnd.width()
	OnScreenSizeChange(DailyFbWnd._wnd, DailyFbWnd._hideWnd,208,31)
end

function DailyFbWnd.cleartime()  --关闭定时器
	GUIWndDelTimer(DailyFbWnd._wnd, tonumber(DailyFbWnd.time_id))
	DailyFbWnd.time_id = 0
end

function DailyFbWnd.OnHideWndBtn(h)
	local sX = CLGetScreenWidth()
	local tXml = "<Tween><Frame time='0.3' x='"..sX.."' /></Tween>"
	GUIWndTween(DailyFbWnd._wnd, tXml, "DailyFbWnd.HideTweenEnd()")
end

function DailyFbWnd.HideTweenEnd()
	local sX = CLGetScreenWidth()
	GUIWndSetPosM(DailyFbWnd._hideWnd, sX-31, 251)
	GUIWndSetVisible(DailyFbWnd._wnd, false)
	GUIWndSetVisible(DailyFbWnd._hideWnd, true)
end

function DailyFbWnd.OnShowWndBtn(h)
	GUIWndSetVisible(DailyFbWnd._wnd, true)
	GUIWndSetVisible(DailyFbWnd._hideWnd, false)
	
	local tweenX = CLGetScreenWidth()- 208
	local tXml = "<Tween><Frame time='0.3' x='"..tweenX.."' /></Tween>"
	GUIWndTween(DailyFbWnd._wnd, tXml, "")
end

function DailyFbWnd.DcUpdata()
	local min_Offset = ""
	local second_Offset = ""
	local handle = GetWindow(DailyFbWnd._wnd, "restTimes")
	DailyFbWnd.second = DailyFbWnd.second - 1
	if DailyFbWnd.minute < 10 then
		min_Offset = "0"
	end
	if DailyFbWnd.second < 10 then
		second_Offset = "0"
	end
	GUIEditSetTextM(handle, min_Offset..DailyFbWnd.minute..":"..second_Offset..DailyFbWnd.second)
	if DailyFbWnd.minute == 0 and DailyFbWnd.second == 0 then
		UI:Lua_SubmitForm("DailyFbRwd", "GetReward5", "")
		return
	end	
	if DailyFbWnd.second == 0 then
		DailyFbWnd.minute = DailyFbWnd.minute - 1
		DailyFbWnd.second = 60
	end
end

function DailyFbWnd.showAim(cur)
	local handle = GetWindow(DailyFbWnd._wnd, "completeAim")
	if handle ~= 0 then
		GUIRichEditClear(handle)
		GUIRichEditAppendString(handle, "（"..cur.."/"..DailyFbWnd.tolNum.."）")
	end
end

function DailyFbWnd.ShowGetRwdBtn()
	local handle = 0
	handle = GetWindow(DailyFbWnd._wnd, "getReward")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)	
		--WndAddEffect(DailyFbWnd._wnd, "getReward", 3000101000, 36, 19, 100, 0) 
	end
	handle = GetWindow(DailyFbWnd._wnd, "getDoubleRWD")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
		WndAddEffect(DailyFbWnd._wnd, "getDoubleRWD", 3000101000, 36, 19, 100, 0) 
	end
	handle = GetWindow(DailyFbWnd._wnd, "leaveMap")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false)
	end
	for i = 1, 3 do
		handle = GetWindow(DailyFbWnd._wnd, "text"..i)
		if handle ~= 0 then
			GUIEditSetTextColor(handle, MakeARGB(255, 0, 204, 51))
		end
	end
	
	if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
		local level = tonumber(LuaRet)
		if level <= 67 then
			handle = GetWindow(DailyFbWnd._wnd, "GET_REWARD_TIP")
			if handle ~= 0 then
				GUIWndSetVisible(handle, true)
				--GUIWndSetTextArrangeType(handle,-17,0,0,0)
				GUIWndSetTextArrangeType(handle,0,17,0,0)
				DailyFbWnd.itemTweenUp01(handle)
				GUIButtonSetTextFont(handle,"SIMLI18")
			end
		end
	end

	--[[if tonumber(FIRSTCOMPLETEDAILYFB) == 1 then 
		FIRSTCOMPLETEDAILYFB = 0
		
	end--]]
end

function DailyFbWnd.itemTweenUp01(hand) 
	--GUIWndTween(hand, "<Tween><Frame time='0.8' x='-170' /></Tween>", "DailyFbWnd.itemTweenDown01("..hand..")")
	GUIWndTween(hand, "<Tween><Frame time='0.8' y='290' /></Tween>", "DailyFbWnd.itemTweenDown01("..hand..")")
end 
function DailyFbWnd.itemTweenDown01(hand) 
	--GUIWndTween(hand, "<Tween><Frame time='1' x='-190' /></Tween>" , "DailyFbWnd.itemTweenUp01("..hand..")")
	GUIWndTween(hand, "<Tween><Frame time='1' y='310' /></Tween>" , "DailyFbWnd.itemTweenUp01("..hand..")")
end 

function DailyFbWnd.AutoFight()
	UI:Lua_SubmitForm("DailyFbRwd","AutoFight","")
end

function DailyFbWnd.Get_FB_Reward(h)
	local param = 0
	param = GUIWndGetParam(h)
	if param == 1 then
		UI:Lua_SubmitForm("DailyFbRwd","GetReward5","")
	else
		UI:Lua_SubmitForm("DailyFbRwd","GetDoubleReward5","")
	end
end

function DailyFbWnd.LeaveMap()
	UI:Lua_SubmitForm("DailyFbRwd","LeaveCurrentMap","")
end

function DailyFbWnd.ConfirmDlg()
	luaMsgBox.new("离开副本", "副本还未完成，离开将无法获得奖励", {"是", "否"}, {"DailyFbWnd.ConfirmLeave", 0}, _handle)
end

function DailyFbWnd.ConfirmLeave(_handle)
	UI:Lua_SubmitForm("DailyFbRwd", "LeaveMap", "")
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end

function DailyFbWnd.CloseFBandOpenTask()
	GUIWndClose(DailyFbWnd._wnd)
	GUIWndClose(DailyFbWnd._hideWnd)
	local taskWnd = GetWindow(0, "TaskWindow")
	if taskWnd ~= 0 then
		GUIWndSetVisible(taskWnd, true)
	end
	if TaskWindow._hideWnd ~= 0 then
		GUIWndSetVisible(TaskWindow._hideWnd, false)
	end
	OnScreenSizeChange(taskWnd,TaskWindow._hideWnd,208,31)
end

function DailyFbWnd.MsgBox()
	luaMsgBox.new("元宝", "     很抱歉，您的元宝不足", {"前往充值", "取消"}, {"DailyFbWnd.chongz", "DailyFbWnd.out"}, "")
end

function DailyFbWnd.chongz(h)
	CLOpenUrlUseIEByType(3)
	luaWndClose(h)
end

function DailyFbWnd.out(h)
	luaWndClose(h)
end

DailyFbWnd.main()