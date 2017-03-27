EndlessUI = {}
function EndlessUI.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"EndlessUI",1806100012,690,224)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,361, 524)
		GUI:WndSetIsESCClose(_Parent, true)
		GUI:WndSetMoveWithLBM(_Parent)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"lineImage1",1800600004,20,114)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,327, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"lineImage2",1800600004,21,374)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,327, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"tittle",1806300017,144,7)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle, 85,25)
		GUI:ImageSetFitSize(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeButton",1805900080,327,4)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "EndlessUI.closeWnd")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 38)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"introduceText",58,86,287,53)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, 4293181855)
		GUI:RichEditAppendString(_GUIHandle, "    �޾���Ԩ��Ǳ�������ǿ��Ķ�ħ��������������ʿǰȥ��ս��Ѱ�ұ��أ�����")
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"t1",64,158,145,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetTextM(_GUIHandle,"˵����")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"enterMap",149,446,88,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "EndlessUI.EnterMap")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#�����޾���Ԩ#SELECTEND#")
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_0",155,182,166,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle," 10:00~10:15  14:00~14:15 	")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_1",155,203,166,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle," 22:00~22:15")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"t2",64,228,281,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetTextM(_GUIHandle,"2.�޾���Ԩ��13�㣬ÿһ�㶼������һ��BOSS��")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"t3",64,253,281,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetTextM(_GUIHandle,"�м��ʵ���ϡ�е���")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_2",124,253,166,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle,"ϡ�е���")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"t4",64,278,281,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetTextM(_GUIHandle,"3.ÿ����һ�㶼�ɻ�ô���������̻�ʯ")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_3",184,278,53,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle,"�������")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_4",244,278,60,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle,"�̻�ʯ")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"t5",64,303,281,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetTextM(_GUIHandle,"4.��Ҫ��ɱ��Ԩ�ػ����ռ��㹻����Ԩƾ֤��")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"t6",64,328,281,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetTextM(_GUIHandle,"�ɽ�����һ��")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_5",124,303,68,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle,"��Ԩ�ػ���")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_6",243,303,60,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle,"��Ԩƾ֤")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"t7",64,353,281,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetTextM(_GUIHandle,"5.ÿ�ν�����ʱ2Сʱ����ʱ�Զ�����")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"t8",64,183,113,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetTextM(_GUIHandle,"1.��ڿ���ʱ�䣺")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent, "msg", 0, 393, 361, 25)
	if _GUIHandle ~= 0 then 	
		GUI:EditSetTextColor(_GUIHandle, 4294901760)
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end		
	
	
	EndlessUI.UIInit(_Parent)
end

--UI Logic Code Start
EndlessUI.Wnd=0
function EndlessUI.UIInit(_Handle)
	EndlessUI.Wnd=_Handle
	GUI:WndSetSizeM(_Handle, 361 ,524)
	CenterWnd(_Handle)
end

function EndlessUI.EnterMap()
	UI:Lua_SubmitForm("�޾���Ԩ��", "EnterMap", "")
	
end

function EndlessUI.closeWnd()     --�رհ�ť
	local hand = GetWindow(nil,"EndlessUI")
	if hand ~= 0 then
		GUI:WndClose(hand)
	end
end

function EndlessUI.msg(str)
	local _handle = GUI:WndFindChildM(EndlessUI.Wnd, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, str)
	end
	if EndlessUI.DelayTaskId ~= nil then
		CL:DelDelayTask(EndlessUI.DelayTaskId)
		EndlessUI.DelayTaskId = nil
	end
	EndlessUI.DelayTaskId = CL:AddDelayTask("EndlessUI.ClearMsg()", 3000, 1)
end

function EndlessUI.ClearMsg()
	local _handle = GUI:WndFindChildM(EndlessUI.Wnd, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, "")
	end
end

EndlessUI.main()