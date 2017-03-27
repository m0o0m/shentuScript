ArenaInfoUI ={}
local ui = "<form> <dialog OnInit='ArenaInfoUI.UIInit' id='ArenaInfoUI' image='0' x='-8' y='250' w='16' h='16' revmsg='true'>"
	.."<image id='ContentBack' image='1805000007,1805000009,1805000013,1805000015,1805000008,1805000014,1805000010,1805000012,1805000011' x='0' y='0' w='225' h='290' check_point='0' revmsg='true'/>"
	.."	<button id='HideBtn' image='1805000003' x='182' y='-27' w='26' h='27' OnLButtonUp='ArenaInfoUI.OnHideWndBtn' revmsg='true'/>"
	.."	<image id='FbWndHeadBack' image='1805000002' x='1' y='-27' w='216' h='27' check_point='0' revmsg='true'/>"
	.."	<image id='IMG3' image='1805000016' x='11' y='218' w='100' h='27' check_point='0' revmsg='true'/>"
	.."	<edit id='timePrompt' x='21' y='222' w='104' h='20' revmsg='true' text_color='#F8B551' text='���������ʱ��' font='system'/>"
	.."	<itemctrl id='rewardItem1' x='33' y='101' w='45' h='45' use_back='1800000133' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<itemctrl id='rewardItem2' x='33' y='153' w='45' h='45' use_back='1800000133' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='item2text' x='92' y='115' w='86' h='21' revmsg='true' text_color='#DCE0CB' text='����ʤ���ɻ��' font='system'/>"
	.."	<edit id='expRwd' x='92' y='165' w='86' h='21' revmsg='true' text_color='#DCE0CB' text='����ɻ��' font='system'/>"
	.."	<edit id='restTimes' x='120' y='224' w='83' h='16' revmsg='true' text_color='#4A935E' text='30:00' font='system'/>"
	.."	<richedit id='leaveMap' x='75' y='260' w='134' h='18' canedit='false' text='#SELECT#�˳��#SELECTEND#' OnLButtonUp='ArenaInfoUI.ConfirmDlg' text_color='#33FF00' revmsg='true' font='system'/>"
	.."	<image id='TestWndChild_1' image='1805500027' x='44' y='-22' w='50' h='21' revmsg='false'/>"
	.."	<richedit id='introWords1' x='27' y='11' w='161' h='34' canedit='false' text='1.�ڵ���ʱ����ǰ������ͼ���ɲ���' revmsg='true' text_color='#DCE0CB' font='system'/>"
	.."	<richedit id='introWords2' x='27' y='48' w='161' h='34' canedit='false' text='2.����ʱ���������PK�׶Σ��������˳�����ʧȥʤ�����ᡣ' text_color='#DCE0CB' revmsg='true' font='system'/>"
	
	.."	<image id='wordsImg' image='1804200007' x='57' y='26' w='125' h='36' visible='false' check_point='0' revmsg='true'/>"
	.."	<image id='restNumImg1' visible='false' image='1806400084' x='83' y='56' w='44' h='44' check_point='0' revmsg='true'/>"	 --//ʮλ
	.."	<image id='restNumImg2' visible='false' image='1806400085' x='118' y='56' w='44' h='44' check_point='0' revmsg='true'/>"  --//��λ
	.."	<image id='restNumImg3' visible='false' image='1806400085' x='48' y='56' w='44' h='44' check_point='0' revmsg='true'/>"  --//��λ
	.." </dialog>"
	.."</form>"

function ArenaInfoUI.main()
	GenFormByString(ui)
end
ArenaInfoUI.single = false
ArenaInfoUI.Status = false
ArenaInfoUI.battleStart = false
ArenaInfoUI.second = 60
ArenaInfoUI.minute = 29
--UI Logic Code Start
function ArenaInfoUI.UIInit(h)
	ArenaInfoUI._hideWnd = 0
	ArenaInfoUI._wnd = h
	local handle = 0
	local allSeconds = as3.tolua(FormParam[1])
	local temp = math.floor(allSeconds/60)
	--msg("minute:"..temp)
	if temp >= 30 then
		--msg("׼���׶�")
		ArenaInfoUI.minute = temp - 30
		ArenaInfoUI.second = allSeconds - temp*60
		if ArenaInfoUI.second == 0 then
			if ArenaInfoUI.minute > 0 then
				ArenaInfoUI.minute = ArenaInfoUI.minute - 1
				ArenaInfoUI.second = 60
			end
		end
		--msg("second:"..ArenaInfoUI.second)
	else
		--msg("�������")
		ArenaInfoUI.minute = temp
		ArenaInfoUI.second = allSeconds - temp*60
		ArenaInfoUI.battleStart = true
		handle = GetWindow(h, "timePrompt")
		if handle ~= 0 then
			GUIEditSetTextM(handle,"���������ʱ��")
		end
	end
	handle = GetWindow(h, "IMG3")
	if handle ~= 0 then
		GUIImageSetTransfrom(handle,16000,10000,0)  --��������ͼƬ
	end
	
	handle = GetWindow(h, "rewardItem1")            --��Ʒ��1
	if handle ~= 0 then
		RDItemCtrlSetGUIDataByKeyName(handle, "1000Ԫ��", 1, true)
	end
	
	handle = GetWindow(h, "rewardItem2")            --��Ʒ��2
	if handle ~= 0 then
		RDItemCtrlSetGUIDataByKeyName(handle, "��שС", 1, true)
	end
	
	local taskWnd = GetWindow(nil, "TaskWindow")
	if taskWnd ~= nil then
		GUIWndSetVisible(taskWnd, false)
	end
	
	if TaskWindow._hideWnd ~= 0 then
		GUIWndSetVisible(TaskWindow._hideWnd, false)
	end
	
	handle = GetWindow(h,"HideBtn")
	if handle ~= 0 then
		GUIWndMoveToParentTop(handle)
	end
	
   local sX = CLGetScreenWidth()
	local tw = GUIWndFindWindow(0, "ArenaInfoUI")
    if tw ~= 0 then
        GUIWndSetPosM(tw, sX-208, 250)
    end
	
	local _wnd = GUIWndCreateWnd(0, "ArenaInfoHidenUI", 1805000021, 0, 251)
	if _wnd ~= 0 then
		ArenaInfoUI._hideWnd = _wnd
		GUIWndSetVisible(_wnd, false)
		local btn = GUIButtonCreate(_wnd, "ShowBtn", 1805000017, 0, -31)
		if btn ~= 0 then
			GUIWndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "ArenaInfoUI.OnShowWndBtn")
		end
	end
	ArenaInfoUI.time_id = tonumber(as3.tolua(GUIWndAddTimerBrief(h, 1000, "ArenaInfoUI.DcUpdata")))
	
	GUIWndRegistScript(h, RDWndBaseCL_wnd_close, "ArenaInfoUI.cleartime")
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "SCREEN SIZE CHANGED ArenaInfoUI", "ArenaInfoUI.width") 
end

function ArenaInfoUI.width()
	OnScreenSizeChange(ArenaInfoUI._wnd, ArenaInfoUI._hideWnd,208,31)
end

function ArenaInfoUI.cleartime()  --�رն�ʱ��
	if tonumber(ArenaInfoUI.time_id) ~= 0 then
		GUIWndDelTimer(ArenaInfoUI._wnd, tonumber(ArenaInfoUI.time_id))
		ArenaInfoUI.time_id = 0
	end	
	--GUIWndDelTimer(ArenaInfoUI._hideWnd, tonumber(ArenaInfoUI.time_id))
end

function ArenaInfoUI.OnHideWndBtn(h)
	local sX = CLGetScreenWidth()
	local tXml = "<Tween><Frame time='0.3' x='"..sX.."' /></Tween>"
	GUIWndTween(ArenaInfoUI._wnd, tXml, "ArenaInfoUI.HideTweenEnd()")
end

function ArenaInfoUI.HideTweenEnd()
	local sX = CLGetScreenWidth()
	GUIWndSetPosM(ArenaInfoUI._hideWnd, sX-31, 251)
	GUIWndSetVisible(ArenaInfoUI._wnd, false)
	GUIWndSetVisible(ArenaInfoUI._hideWnd, true)
end

function ArenaInfoUI.OnShowWndBtn(h)
	GUIWndSetVisible(ArenaInfoUI._wnd, true)
	GUIWndSetVisible(ArenaInfoUI._hideWnd, false)
	
	local tweenX = CLGetScreenWidth()- 208
	local tXml = "<Tween><Frame time='0.3' x='"..tweenX.."' /></Tween>"
	GUIWndTween(ArenaInfoUI._wnd, tXml, "")
end

function ArenaInfoUI.DcUpdata()
	local min_Offset = ""
	local second_Offset = ""
	local handle = 0
	if ArenaInfoUI.second == 0 then
		ArenaInfoUI.minute = ArenaInfoUI.minute - 1
		ArenaInfoUI.second = 60
	end
	ArenaInfoUI.second = ArenaInfoUI.second - 1
	if ArenaInfoUI.minute < 10 then
		min_Offset = "0"
	end
	if ArenaInfoUI.second < 10 then
		second_Offset = "0"
	end
	if ArenaInfoUI.minute <= 0 and ArenaInfoUI.second == 0 then
		if not ArenaInfoUI.battleStart then
			ArenaInfoUI.second = 60
			ArenaInfoUI.minute = 29
			min_Offset = ""
			second_Offset = ""
			handle = GetWindow(ArenaInfoUI._wnd, "timePrompt")
			if handle ~= 0 then
				GUIEditSetTextM(handle,"���������ʱ��")
			end
			handle = GetWindow(ArenaInfoUI._wnd, "wordsImg")
			if handle ~= 0 then
				GUI:WndSetVisible(handle,true)
			end
			
			handle = GetWindow(ArenaInfoUI._wnd, "introWords1")
			if handle ~= 0 then
				GUI:WndSetVisible(handle,false)
			end
			handle = GetWindow(ArenaInfoUI._wnd, "introWords2")
			if handle ~= 0 then
				GUI:WndSetVisible(handle,false)
			end
			UI:Lua_SubmitForm("˭�������", "GetPlayerNum", "")
			ArenaInfoUI.Status = true
		else
			UI:Lua_SubmitForm("˭�������", "JudgeBattleIsEnd", "")
			return
		end
	end
	handle = GetWindow(ArenaInfoUI._wnd, "restTimes")
	GUIEditSetTextM(handle, min_Offset..ArenaInfoUI.minute..":"..second_Offset..ArenaInfoUI.second)
	
end



function ArenaInfoUI.SetRestNum(count)
	if tonumber(count) == 1 then
		ArenaInfoUI.single = true
	end
	local handle = 0
	local num = tonumber(count)
	if num >= 10 and num<=99 then
		handle = GetWindow(ArenaInfoUI._wnd, "restNumImg1")
		if handle ~= 0 then
			GUI:WndSetVisible(handle,true)
		end
		handle = GetWindow(ArenaInfoUI._wnd, "restNumImg2")
		if handle ~= 0 then
			GUI:WndSetVisible(handle,true)
		end
		handle = GetWindow(ArenaInfoUI._wnd, "restNumImg3")
		if handle ~= 0 then
			GUI:WndSetVisible(handle,false)
		end
		local restNum = tonumber(CLPlus(tostring(1806400084), tonumber(num%10)))   
		ImageSetImageID(ArenaInfoUI._wnd, "restNumImg2", restNum )
		restNum = tonumber(CLPlus(tostring(1806400084), tonumber(math.floor(num/10))))
		ImageSetImageID(ArenaInfoUI._wnd, "restNumImg1", restNum )
		handle = GetWindow(ArenaInfoUI._wnd, "restNumImg2")
		if handle ~= 0 then
			GUI:WndSetPosM(handle, 98, 56)
		end
		handle = GetWindow(ArenaInfoUI._wnd, "restNumImg1")
		if handle ~= 0 then
			GUI:WndSetPosM(handle, 63, 56)
		end
	elseif num >= 100 then
		if ArenaInfoUI.Status then
			handle = GetWindow(ArenaInfoUI._wnd, "restNumImg1")
			if handle ~= 0 then
				GUI:WndSetVisible(handle,true)
			end
			handle = GetWindow(ArenaInfoUI._wnd, "restNumImg2")
			if handle ~= 0 then
				GUI:WndSetVisible(handle,true)
			end
			handle = GetWindow(ArenaInfoUI._wnd, "restNumImg3")
			if handle ~= 0 then
				GUI:WndSetVisible(handle,true)
			end
			ArenaInfoUI.Status = false
		end
		local restNum = tonumber(CLPlus(tostring(1806400084), tonumber(num%10)))   
		ImageSetImageID(ArenaInfoUI._wnd, "restNumImg2", restNum )
		restNum = tonumber(CLPlus(tostring(1806400084), tonumber(math.floor(num/10))%10))
		ImageSetImageID(ArenaInfoUI._wnd, "restNumImg1", restNum )
		restNum = tonumber(CLPlus(tostring(1806400084), tonumber(math.floor(num/100))))
		ImageSetImageID(ArenaInfoUI._wnd, "restNumImg3", restNum )
	else
		handle = GetWindow(ArenaInfoUI._wnd, "restNumImg3")
		if handle ~= 0 then
			GUI:WndSetVisible(handle,false)
		end
		handle = GetWindow(ArenaInfoUI._wnd, "restNumImg2")
		if handle ~= 0 then
			GUI:WndSetVisible(handle,true)
		end
		handle = GetWindow(ArenaInfoUI._wnd, "restNumImg1")
		if handle ~= 0 then
			GUI:WndSetVisible(handle,false)
		end
		local restNum = tonumber(CLPlus(tostring(1806400084), num))   
		ImageSetImageID(ArenaInfoUI._wnd, "restNumImg2", restNum )
		handle = GetWindow(ArenaInfoUI._wnd, "restNumImg2")
		if handle ~= 0 then
			GUI:WndSetPosM(handle, 80, 56)
		end
		
	end

end

function ArenaInfoUI.LeaveMap()
	--UI:Lua_SubmitForm("DailyFbRwd","LeaveCurrentMap","")
	ArenaInfoUI.CloseFBandOpenTask()
end

function ArenaInfoUI.ConfirmDlg()
	if ArenaInfoUI.single then
		UI:Lua_SubmitForm("˭�������", "Leave", "")
	else
		luaMsgBox.new("�뿪�", "���δ�������뿪���޷��������ʤ��", {"��", "��"}, {"ArenaInfoUI.ConfirmLeave", 0}, _handle)
	end
end

function ArenaInfoUI.ConfirmLeave(_handle)
	UI:Lua_SubmitForm("˭�������", "Leave", "")
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
	ArenaInfoUI.CloseFBandOpenTask()
end

function ArenaInfoUI.CloseFBandOpenTask()
	GUIWndClose(ArenaInfoUI._wnd)
	GUIWndClose(ArenaInfoUI._hideWnd)
	local taskWnd = GetWindow(0, "TaskWindow")
	if taskWnd ~= 0 then
		GUIWndSetVisible(taskWnd, true)
	end
	if TaskWindow._hideWnd ~= 0 then
		GUIWndSetVisible(TaskWindow._hideWnd, false)
	end
	OnScreenSizeChange(taskWnd,TaskWindow._hideWnd,208,31)
end

ArenaInfoUI.main()