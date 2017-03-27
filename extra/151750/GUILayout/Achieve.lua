Achieve = {}
function Achieve.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"Achieve",1806100012,628,241)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,384, 505)
		GUI:WndSetIsESCClose(_Parent, true)
		GUI:WndSetMoveWithLBM(_Parent)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"lineImage1",1806100013,42,142)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,299, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"lineImage2",1806100013,41,388)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,299, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"close",1805900080,327,5)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Achieve.Closeed")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 38)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_3",47,66,100,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4281246682)
		GUI:EditSetTextM(_GUIHandle,"经验、功勋 ")
		GUI:EditSetFontM(_GUIHandle, "SIMLI18")
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"TestWndChild_4",64,96,275,49)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "    完成日常除魔任务可获得功勋，消耗功勋值可激活【神武功勋称号】，并获得强大属性加成！")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_7",129,206,60,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292126859)
		GUI:EditSetTextM(_GUIHandle,"物理攻击")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_8",129,232,60,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292126859)
		GUI:EditSetTextM(_GUIHandle,"魔法攻击 ")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_9",129,258,60,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292126859)
		GUI:EditSetTextM(_GUIHandle,"道术攻击")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_10",129,284,60,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292126859)
		GUI:EditSetTextM(_GUIHandle,"物理免伤 ")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_11",129,310,60,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292126859)
		GUI:EditSetTextM(_GUIHandle,"魔法免伤")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sx0",112,182,146,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294121416)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sx1",208,206,60,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sx2",208,232,60,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sx3",208,258,60,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sx4",208,284,60,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sx5",208,310,60,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_17",60,344,60,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4288514418)
		GUI:EditSetTextM(_GUIHandle,"升级消耗：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_18",260,345,42,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4288514418)
		GUI:EditSetTextM(_GUIHandle,"功勋值")
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_19",1802300005,118,341)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,137, 26)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"help",1800000297,296,340)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,27, 30)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"sx6",137,347,121,26)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"button",1800000150,160,410)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Achieve.Up")
		GUI:WndSetTextM(_GUIHandle,"升级称号")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,84, 32)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"TestWndChild_23",275,461,73,22)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Achieve.Back")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#返回任务#SELECTEND#")
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"tips",1804600019,275,399)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"点击获得称号")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,188, 50)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"tips2",1804600019,381,-1)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"关闭称号兑换")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,188, 50)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_1",1806100010,44,152)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,224, 28)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_2",1806100008,146,8)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,95, 28)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	Achieve.UIInit(_Parent)
end

--UI Logic Code Start
Achieve.Wnd = 0
Achieve.tips2 = 0
function Achieve.UIInit(_Handle)
	local ach_tb = {30000, 210000, 550000, 870000, 950000, 1380000, 2590000, 3450000, 4320000, 7120000}
	Achieve.Wnd = _Handle
	GUI:WndSetSizeM(_Handle,361,524)
	CenterWnd(_Handle)
	GUI:WndSetMagicUI(TitleWnd.Handle, 1)
	GUI:WndSetIsESCClose(TitleWnd.Handle, true)
	local hand = GetWindow(_Handle,"help")
	if hand ~=0 then 
		GUI:WndSetHintWidth(hand, 200)
		GUI:WndSetHint(hand, "功勋可兑换高级称号\n功勋通过除魔任务和商城购买获得")
	end
	UI:Lua_SubmitForm("功勋称号表单", "main", "")
	
end

function Achieve.update(tab,score,level,ach_clink,tips2) 
 
	--CL:OnTitleApply(2)
	
	local hand = GetWindow(Achieve.Wnd,"sx0")
	if hand ~= 0 then 
		GUI:EditSetTextM(hand, "★"..tab[1].."★")
	end  
	Achieve.tips2 = tonumber(tips2)
	if Achieve.tips2 == 0 and tonumber(ach_clink) ~= 0 then 
		hand = GetWindow(Achieve.Wnd,"tips2")
		if hand ~= 0 then 
			GUI:ButtonSetTextFont(hand,"SIMLI18") 
			GUI:WndSetTextArrangeType(hand,10,0,0,0)
			GUI:WndSetVisible(hand, true)
		end
		hand = GetWindow(Achieve.Wnd,"close")
		if hand ~= 0 then 
			WndAddEffect(hand, "close", 3020100900, -7, -7, 100, 0)
		end 
	end
	
	for i=1,5 do 
		hand = GetWindow(Achieve.Wnd,"sx".. i)
		if hand ~= 0 then 
			if i<4 then 
				GUI:EditSetTextM(hand, tab[2].."-"..tab[3])
			else  
				GUI:EditSetTextM(hand, tab[4].."%")
			end
		end 
	end  
	hand = GetWindow(Achieve.Wnd,"sx6")
	if hand ~= 0 then 
		GUI:RichEditClear(hand)
		GUI:RichEditSetTotalLine(hand, 1)
		if score < tab[5] then   
			GUI:RichEditAppendString(hand,"#COLORCOLOR_RED#"..score.."#COLOREND#/".."#COLORCOLOR_BROWN#".. tab[5].."#COLOREND#" ) 
		else 
			GUI:RichEditAppendString(hand, "#COLORCOLOR_BROWN#"..score.."/"..tab[5].."#COLOREND#")
			if tonumber(ach_clink) == 0 then 
				handle = GetWindow(Achieve.Wnd,"tips")
				if handle ~= 0 then 
					GUI:ButtonSetTextFont(handle,"SIMLI18") 
					GUI:WndSetTextArrangeType(handle,10,0,0,0)
					GUI:WndSetVisible(handle, true)
				end
			end
		end
	end
	local ach_tb = {30000, 210000, 550000, 870000, 950000, 1380000, 2590000, 3450000, 4320000, 7120000}
	local hand = GetWindow(nil,"Achieve,button")
	if tonumber(score) >= ach_tb[tonumber(level)+1] then	
		if hand ~= 0 then
			WndAddEffect(hand, "button", 3020100700, -13, -8, 100, 0)
		end
	else
		if hand ~= 0 then
			WndDelEffect(hand)
		end
	end

end

function Achieve.Up(_Handle)
	local handle = GetWindow(Achieve.Wnd,"tips")
	if handle ~= 0 then  
		GUI:WndSetVisible(handle, false)
	end
	UI:Lua_SubmitForm("功勋称号表单", "up", "")
end

function Achieve.Back(_Handle)
	local handle = GetWindow(nil, "TitleWnd")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, true)
	end
	
	UI:Lua_SubmitForm("功勋称号表单", "Open_CM_Wnd", "")
	Achieve.Closeed()
	
end

function Achieve.Closeed()
	if Achieve.Wnd ~= 0 then 
		WndClose(Achieve.Wnd)
	end
	if Achieve.tips2 == 0 then 
		UI:Lua_SubmitForm("功勋称号表单", "Setint", "")
	end
end

function msg_up(str)
	local _handle = GetWindow(nil,"Achieve,button")
	local color = MakeARGB(255, 255, 0, 0)
	window_msg_up(_handle , str , -70 , -16 , 70 , color , 3)
end	


Achieve.main()