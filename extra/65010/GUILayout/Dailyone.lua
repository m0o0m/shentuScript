Dailyone = {}
function Dailyone.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"Dailyone",1806100012,98,108)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,384,505)
		GUI:WndSetIsESCClose(_Parent, true)
		GUI:WndSetMoveWithLBM(_Parent)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_1",1805900080,333,5)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "Dailyone.closed")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,26, 26)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"inter",1800600007,130,415)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "Dailyone.inter")
		GUI:WndSetTextM(_GUIHandle,"���븱��")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,102, 32)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_5",1800000147,62,113)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"TestWndChild_6",1800000147,62,173,48,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_7",127,123,194,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"�������飺150000")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_8",130,185,94,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle,"��֮�飨С��")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_9",225,185,94,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"x2")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_10",1806100013,42,260)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,299, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"TestWndChild_12",274,457,94,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "Dailyone.back")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#�����б�#SELECTEND#")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_13",65,315,113,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"ʣ���������� ��")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"cishu",148,315,24,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"2")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_15",65,346,113,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"���ĸ�����Կ��")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_16",147,346,25,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle,"1��")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_18",176,346,113,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"��ӵ��1����")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_17",65,379,202,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"ͨ��ʱ�����ƣ�30����")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_19",1892100043,52,105)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,45, 45)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"buy",268,351,110,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "Dailyone.buy")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#������Կ#SELECTEND#")
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent, "TestWndChild_3", 1806100007, 165, 8)
	_GUIHandle = GUI:ImageCreate(_Parent, "TestWndChild_14", 1806100009, 44, 69)
	_GUIHandle = GUI:ImageCreate(_Parent, "TestWndChild_11", 1806100011, 46, 282)

	_GUIHandle = GUI:RichEditCreate(_Parent, "single", 57, 457, 110, 20)
	if _GUIHandle ~= 0 then
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#����ɨ��#SELECTEND#")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndRegistScript(_GUIHandle, 1003, "Dailyone.sweeps")
		GUI:WndSetVisible(_GUIHandle, false)
	end

	_GUIHandle = GUI:RichEditCreate(_Parent, "double", 165, 457, 110, 20)
	if _GUIHandle ~= 0 then
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#˫��ɨ��#SELECTEND#")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndRegistScript(_GUIHandle, 1003, "Dailyone.sweeps")
		GUI:WndSetVisible(_GUIHandle, false)
	end
	Dailyone.UIInit(_Parent)
end

--UI Logic Code Start
Dailyone.Wnd = 0
Dailyone.index = 0
function Dailyone.UIInit(_Handle)
		
	local tab = {{1500000,{"������ƬС",2,"��֮�飨С��"}},
				{600000,{"��ë",12,"����֮��"}},
				{600000,{"������ƬС",25,"���Ʋ�Ƭ��С��"}},
				{1500000,{"������ƬС",2,"��֮�飨С��"}},
				{600000,{"��ʯ�ᾧС",12,"�鱦��Ƭ��С��"}}
				}
	GUI:WndSetSizeM(_Handle, 361 ,524)
	CenterWnd(_Handle)
	Dailyone.Wnd = _Handle
	
	local handle = GetWindow(nil, "Daily_FB_Dlg")
	if handle ~= 0 then 
		GUI:WndClose(handle)
	end

	local cishu = tonumber(FormParam[1])
	local itemnum = tonumber(FormParam[2])
	Dailyone.index = tonumber(FormParam[3])
	local ised = tonumber(FormParam[4])
	local hand = GetWindow(_Handle,"TestWndChild_7")
	if hand ~= 0 then 
		GUI:EditSetTextM(hand,"�������飺"..tab[Dailyone.index][1])
	end 
	hand = GetWindow(_Handle,"TestWndChild_6")
	if hand ~= 0 then 
		RDItemCtrlSetGUIDataByKeyName(hand,tab[Dailyone.index][2][1], 1, false)
	end
	
	hand = GetWindow(_Handle,"TestWndChild_8")
	if hand ~= 0 then 
		GUI:EditSetTextM(hand, tab[Dailyone.index][2][3])
	end 
	hand = GetWindow(_Handle,"TestWndChild_9")
	if hand ~= 0 then 
		GUI:EditSetTextM(hand,"x"..tab[Dailyone.index][2][2])
	end 

	hand = GetWindow(_Handle,"cishu")
	if hand ~= 0 then 
		GUI:WndSetTextColorM(hand, MakeARGB(255, 255,217, 1))   
		GUI:EditSetTextM(hand, "".. cishu)
		if cishu == 0 and hand ~= 0 then  
			GUI:WndSetTextColorM(hand, MakeARGB(255, 255, 0, 0))  
			hand = GetWindow(_Handle,"inter")  
			GUI:WndSetEnableM(hand,false) 
		end 
	end 
	hand = GetWindow(_Handle,"TestWndChild_18")
	if hand ~= 0 then 
		GUI:EditSetTextM(hand, "��ӵ��".. itemnum.."��)")
		if itemnum == 0 then        
			GUI:WndSetTextColorM(hand,MakeARGB(255, 255, 0, 0)) 
			hand = GetWindow(_Handle,"buy")
			if hand ~= 0 then 
				GUI:WndSetVisible(hand,true) 
			end
			hand = GetWindow(_Handle,"inter")
			if hand ~= 0 then         
				GUI:WndSetEnableM(hand,false)
			end
		else
			GUI:WndSetTextColorM(hand,MakeARGB(255, 194, 182, 160))
		end 
	end
	
	if ised == 1 then
		hand = GetWindow(_Handle,"single")
		if hand ~= 0 then  
			GUI:WndSetVisible(hand,true) 
		end
		hand = GetWindow(_Handle,"double")
		if hand ~= 0 then  
			GUI:WndSetVisible(hand,true)
			WndAddEffect(_Handle, "double", 3020100300, -5, -5, 100, 0)
		end
	end
end

function Dailyone.itemnum()

	local hand = GetWindow(Dailyone.Wnd,"TestWndChild_18")
	if hand ~= 0 then 
		GUI:EditSetTextM(hand, "��ӵ��1��)")
		GUI:WndSetTextColorM(hand,MakeARGB(255, 194, 182, 160))
	end   
	hand = GetWindow(Dailyone.Wnd,"buy")
	if hand ~= 0 then 
		GUI:WndSetVisible(hand,false) 
	end
	hand = GetWindow(Dailyone.Wnd,"inter")
	if hand ~= 0 then         
		GUI:WndSetEnableM(hand,true)
	end
end

function Dailyone.back(_Handle)
	UI:Lua_SubmitForm("ÿ�ո�����", "OpenMainUI", "") 
	Dailyone.closed(_Handle)
end

function Dailyone.inter(_Handle) 
	UI:Lua_SubmitForm("ÿ�ո�����", "EnterMap"..Dailyone.index, "") 
end

function Dailyone.buy(_Handle)
	UI:Lua_SubmitForm("ÿ�ո�����", "BuyFbKeys", "") 
end

function Dailyone.closed()
	if Dailyone.Wnd ~= 0 then 
		GUI:WndClose(Dailyone.Wnd)
	end
end

function Dailyone.MsgUp(msg)
	local handle = GetWindow(Dailyone.Wnd,"buy")
	local color = MakeARGB(255,255,0,0) 
	window_msg_up(handle, msg, -83, -10, 30, color, 2)
end

function Dailyone.sweeps(h)
	local param = 0 
	param = GUI:WndGetParam(h)
	Dailyone.handle=h
	if param ~= 0 then
		UI:Lua_SubmitForm("ÿ�ո�����", "Sweeps", Dailyone.index .."#"..param )
	end
end

function Dailyone.Msg(mess)
	local color = MakeARGB(255,255,0,0) 
	window_msg_up(Dailyone.handle, mess, -90, -10, 50, color, 2)
end

function Dailyone.down(num)
	local hand = GetWindow(Dailyone.Wnd,"cishu")
	if hand ~= 0 then 
		GUI:EditSetTextM(hand, "".. num)
		if num == 0 then  
			GUI:WndSetTextColorM(hand, MakeARGB(255, 255, 0, 0))  
			hand = GetWindow(Dailyone.Wnd,"inter")
			if hand ~= 0 then         
				GUI:WndSetEnableM(hand,false)
			end
		else
			GUI:WndSetTextColorM(hand, MakeARGB(255, 255,217, 1))   
		end 
	end     
end
Dailyone.main()