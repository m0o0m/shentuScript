PersonBossWnd ={}
	local ui = "<form> <dialog OnInit='PersonBossWnd.UIInit' id='PersonBossWnd' image='0' x='-8' y='250' w='16' h='16' revmsg='true'>"
	.."<image id='ContentBack' image='1805000007,1805000009,1805000013,1805000015,1805000008,1805000014,1805000010,1805000012,1805000011' x='0' y='0' w='209' h='200' check_point='0' revmsg='true'/>"
	.."	<button id='HideBtn' image='1805000003' x='190' y='-27' w='26' h='27' OnLButtonUp='PersonBossWnd.OnHideWndBtn' revmsg='true'/>"
	.."	<image id='FbWndHeadBack' image='1805000002' x='1' y='-27' w='216' h='27' check_point='0' revmsg='true'/>"
	.."	<image id='FbWndHead' image='1805000001' x='88' y='-24' w='34' h='20' revmsg='true'/>"
	
	.."	<image id='IMG1' image='1805000016' x='11' y='1' w='100' h='27' check_point='0' revmsg='true'/>"
	.."	<image id='IMG2' image='1805000016' x='11' y='51' w='100' h='27' check_point='0' revmsg='true'/>"
	.."	<image id='IMG3' image='1805000016' x='11' y='132' w='135' h='27' check_point='0' fitsize='true' revmsg='true'/>"
	
--	.."	<button id='getReward'    image='1800000134' x='20'  y='156' w='70' h='27' param=1 enable='false' text='领取奖励' text_color='#C2B6A0' OnLButtonUp='PersonBossWnd.Get_FB_Reward' revmsg='true'/>"
--	.."	<button id='getDoubleRWD' image='1800000134' x='117' y='156' w='70' h='27' param=2 enable='false' text='双倍领取' text_color='#C2B6A0' OnLButtonUp='PersonBossWnd.Get_FB_Reward' revmsg='true' shine='true'/>"
	
	.."	<button id='getReward'    image='1800000134' x='70'  y='156' w='70' h='27' param=1 enable='false' text='领取奖励' text_color='#C2B6A0' OnLButtonUp='PersonBossWnd.Get_FB_Reward' revmsg='true'/>"
	
	.."	<edit id='text1' x='21' y='5' w='80' h='22' revmsg='true' text_color='#F8B551' text='完成条件：' font='system'/>"
	.."	<edit id='text2' x='21' y='55' w='73' h='22' revmsg='true' text_color='#F8B551' text='副本奖励：' font='system'/>"
	.."	<edit id='text3' x='21' y='135' w='67' h='20' revmsg='true' text_color='#F8B551' text='剩余时间：' font='system'/>"
	.."	<richedit id='completeAim' x='50' y='30' w='134' h='18' OnLButtonUp='PersonBossWnd.AutoFight' revmsg='true' font='system'/>"
	.."	<image id='rewardItem' x='33' y='81' w='45' h='45' image='1892100043' fitsize='true' revmsg='true'/>"
	.."	<edit id='expRwd' x='90' y='94' w='86' h='21' revmsg='true' text_color='#dce0cb' text='经验' font='system'/>"
	.."	<edit id='restTimes' x='89' y='137' w='83' h='16' revmsg='true' text_color='#4a935e' text='30:00' font='system'/>"
	.."	<richedit id='leaveMap' x='75' y='168' w='134' h='18' text='#SELECT#退出副本#SELECTEND#' text_color='#918A80' OnLButtonUp='PersonBossWnd.LeaveMap' revmsg='true' font='system'/>"
	.."	<edit id='0' x='120' y='94' w='86' h='21' revmsg='true' text_color='#00cc33' text='600000' font='system'/>"
	.."	<button id='tip' image='1804600020' x='-180' y='150' w='188' h='50' text='点击领取奖励' visible='false' revmsg='false' text_color='#DBC300'/>"
	.." </dialog>"
	.."</form>"

function PersonBossWnd.main() 
	if GetWindow(nil, "PersonBossWnd") ~= 0 then 
		GUIWndClose(GetWindow(nil, "PersonBossWnd"))
	else
		GenFormByString(ui) 
	end
end

PersonBossWnd.second = 60
PersonBossWnd.minute = 29
PersonBossWnd.timeid = 0
--UI Logic Code Start
function PersonBossWnd.UIInit(h) 
	PersonBossWnd._hideWnd = 0
	PersonBossWnd._wnd = h
	local handle = GetWindow(h, "getReward")
	if handle ~= 0 then
		GUIWndSetTextArrangeType(handle,0,3,0,0)
		GUIWndSetVisible(handle, false)
	end
	handle = GetWindow(h, "getDoubleRWD")
	if handle ~= 0 then
		GUIWndSetTextArrangeType(handle,0,3,0,0)
		GUIWndSetVisible(handle, false)
		GUIWndSetHint(handle, "<font color='#B8A085'>花费98元宝领取双倍奖励</font>")
	end
	handle = GetWindow(h, "completeAim")
	if handle ~= 0 then
		GUIRichEditClear(handle)
		GUIRichEditAppendString(handle, "击杀#COLORCOLOR_BLUE##SELECT# Boss #SELECTEND##COLOREND#（0/1）")
	end
	local taskWnd = GetWindow("", "TaskWindow")
	if taskWnd ~= 0 then
		GUIWndSetVisible(taskWnd, false)
	end
	
	handle = GetWindow(h,"HideBtn")
	if handle ~= 0 then
		GUIWndMoveToParentTop(handle)
	end 
    local sX = CLGetScreenWidth()
	local tw = GUIWndFindWindow(0, "PersonBossWnd")
    if tw ~= 0 then
        GUIWndSetPosM(tw, sX-212, 250)
    end
	
	local _wnd = GUIWndCreateWnd(0, "FbWndHideUI", 1805000021, 0, 251)
	if _wnd ~= 0 then
		PersonBossWnd._hideWnd = _wnd
		GUIWndSetVisible(_wnd, false)
		local btn = GUIButtonCreate(_wnd, "ShowBtn", 1805000017, 0, -27)
		if btn ~= 0 then
			GUIWndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "PersonBossWnd.OnShowWndBtn")
		end
	end
	if GUIWndAddTimerBrief(h, 1000, "PersonBossWnd.DcUpdata") then
		PersonBossWnd.timeid = tonumber(as3.tolua(LuaRet))
	end
	
	
	
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "窗口大小改变时调用PersonBossWnd", "PersonBossWnd.width") 
end
function PersonBossWnd.width()
	OnScreenSizeChange(PersonBossWnd._wnd, PersonBossWnd._hideWnd,212,26)  
end


function PersonBossWnd.OnHideWndBtn(h)
	local sX = CLGetScreenWidth()
	local tXml = "<Tween><Frame time='0.3' x='"..sX.."' /></Tween>"
	GUIWndTween(PersonBossWnd._wnd, tXml, "PersonBossWnd.HideTweenEnd()")
end

function PersonBossWnd.HideTweenEnd()
	local sX = CLGetScreenWidth()
	GUIWndSetPosM(PersonBossWnd._hideWnd, sX-26, 251)
	GUIWndSetVisible(PersonBossWnd._wnd, false)
	GUIWndSetVisible(PersonBossWnd._hideWnd, true)
end

function PersonBossWnd.OnShowWndBtn(h)
	GUIWndSetVisible(PersonBossWnd._wnd, true)
	GUIWndSetVisible(PersonBossWnd._hideWnd, false)
	
	local tweenX = CLGetScreenWidth()- 212
	local tXml = "<Tween><Frame time='0.3' x='"..tweenX.."' /></Tween>"
	GUIWndTween(PersonBossWnd._wnd, tXml, "")
end

function PersonBossWnd.DcUpdata()
	local min_Offset = ""
	local second_Offset = ""
	local handle = GetWindow(PersonBossWnd._wnd, "restTimes")
	PersonBossWnd.second = PersonBossWnd.second - 1
	if PersonBossWnd.minute < 10 then
		min_Offset = 0
	end
	if PersonBossWnd.second < 10 then
		second_Offset = 0
	end
	GUIEditSetTextM(handle, min_Offset..PersonBossWnd.minute..":"..second_Offset..PersonBossWnd.second)
	if PersonBossWnd.minute == 0 and PersonBossWnd.second == 0 then
		UI:Lua_SubmitForm("PersonBoss", "onLeave", "") 
		return
	end	
	if PersonBossWnd.second == 0 then
		PersonBossWnd.minute = PersonBossWnd.minute - 1
		PersonBossWnd.second = 60
	end 
end

function PersonBossWnd.ShowGetRwdBtn() 
	
	local handle = GetWindow(PersonBossWnd._wnd, "completeAim")
	if handle ~= 0 then
		GUIRichEditClear(handle)
		GUIRichEditAppendString(handle, "击杀#COLORCOLOR_BLUE##SELECT# Boss #SELECTEND##COLOREND##COLORCOLOR_GREENG#（1/1）#COLOREND#")
		end
	local handle = 0
	handle = GetWindow(PersonBossWnd._wnd, "getReward")
	if handle ~= 0 then
		GUIWndSetEnableM(handle, true)
		GUIWndSetVisible(handle, true)
		WndAddEffect(PersonBossWnd._wnd, "getReward", 3000101000, 36, 19, 100, 0) 
	end
	handle = GetWindow(PersonBossWnd._wnd, "getDoubleRWD")
	if handle ~= 0 then
		GUIWndSetEnableM(handle, true)
		GUIWndSetVisible(handle, true)
		WndAddEffect(PersonBossWnd._wnd, "getDoubleRWD", 3000101000, 36, 19, 100, 0) 
	end
	handle = GetWindow(PersonBossWnd._wnd, "leaveMap")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false)
	end
	UI:Lua_SubmitForm("PersonBoss", "getTip", "") 
end

function PersonBossWnd.personBosssFirst()
	handle = GetWindow(PersonBossWnd._wnd, "tip")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
		PersonBossWnd.itemTweenUp01(handle)
		GUIButtonSetTextFont(handle,"SIMLI18")
		GUIWndSetTextArrangeType(handle,-25,0,0,0)
	end
end

function PersonBossWnd.itemTweenUp01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='0.8' x='-170' /></Tween>", "PersonBossWnd.itemTweenDown01("..hand..")")
end 
function PersonBossWnd.itemTweenDown01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' x='-190' /></Tween>" , "PersonBossWnd.itemTweenUp01("..hand..")")
end 

function PersonBossWnd.AutoFight()
	UI:Lua_SubmitForm("NPC_IsNotInScene","isAutoFight","")
end

function PersonBossWnd.Get_FB_Reward(h)
	local param = 0
	param = GUIWndGetParam(h)
	if param == 1 then
		UI:Lua_SubmitForm("PersonBoss","GetReward",1)
	else
		UI:Lua_SubmitForm("PersonBoss","GetReward",2)
	end
end

function PersonBossWnd.CloseFBandOpenTask()
	
	--CLDelDelayTask(tonumber(PersonBossWnd.timeid)) 
	if tonumber(PersonBossWnd.timeid) ~= 0 then 
		UI:Lua_DelDelayTask(tonumber(PersonBossWnd.timeid))
	end
	
	local perWnd = GetWindow("", "PersonBossWnd")
	if perWnd ~= 0 then 
		GUIWndClose(perWnd)
	end
	
	local taskWnd = GetWindow(0, "TaskWindow")
	if taskWnd ~= 0 then
		GUIWndSetVisible(taskWnd, true)
	end
	if TaskWindow._hideWnd ~= 0 then
		GUIWndSetVisible(TaskWindow._hideWnd, false)
	end
	OnScreenSizeChange(taskWnd,TaskWindow._hideWnd,208,31)
end

function PersonBossWnd.MsgBox()
	luaMsgBox.new("元宝", "     很抱歉，您的元宝不足", {"前往充值", "取消"}, {"PersonBossWnd.chongz", "PersonBossWnd.out"}, "")
end

function PersonBossWnd.chongz(h)
	CLOpenUrlUseIEByType(3)
	luaWndClose(h)
end

function PersonBossWnd.out(h)
	luaWndClose(h)
end

function PersonBossWnd.LeaveMap()
	UI:Lua_SubmitForm("PersonBoss","LeaveCurrentMap","")
end

function PersonBossWnd.ConfirmDlg()
	luaMsgBox.new("离开副本", "副本还未完成，离开将无法获得奖励", {"是", "否"}, {"PersonBossWnd.ConfirmLeave", 0}, hand)
end

function PersonBossWnd.ConfirmLeave(_handle)
	UI:Lua_SubmitForm("PersonBoss", "LeaveMap", "")
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
	local perWnd = GetWindow("", "PersonBossWnd")
	if perWnd ~= 0 then 
		GUIWndClose(perWnd)
	end
end
PersonBossWnd.main()