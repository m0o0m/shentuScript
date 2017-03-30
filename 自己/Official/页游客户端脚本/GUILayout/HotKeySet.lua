HotKeySet = {}
function HotKeySet.main()
    local _Parent = GetWindow(nil,"GameSettingDlg")

    local _GUIHandle = GUIWndCreateWnd(_Parent, "HotKeySet", 1801700004, 10, 65)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle, 580, 297)
		GUIWndSetIsESCClose(_GUIHandle,false)			
	end	
	
	local _Image = GUIImageCreate(_GUIHandle, "image0",1801500057,30, 3)
	if _Image ~= 0 then
		GUIWndSetEnableM(_Image, false) 
	end
	
	local _Image = GUIImageCreate(_GUIHandle, "image1",1801500058,165, 3)
	if _Image ~= 0 then
		GUIWndSetEnableM(_Image, false) 
	end
	
	local _Image = GUIImageCreate(_GUIHandle, "image2",1801500057,300, 3)
	if _Image ~= 0 then
		GUIWndSetEnableM(_Image, false) 
	end
	
	
	local _Image = GUIImageCreate(_GUIHandle, "image3",1801500058,435, 3)
	if _Image ~= 0 then
		GUIWndSetEnableM(_Image, false) 
	end
	local _KeyWinHandle = GUIWndCreateWnd(_GUIHandle, "KeyWin", 0, 0, 30)
	if _KeyWinHandle ~= 0 then
		GUIWndSetSizeM(_KeyWinHandle, 560, 250)
		GUIWndSetIsESCClose(_KeyWinHandle,false)			
	end	
end



HotKeySet.WndHandle = 0
function HotKeySet.UIInit(_GUIHandle)
	HotKeySet.WndHandle = _GUIHandle
	
end
function HotKeySet.ShowNameChange(_GUIHandle)
	msg("1")
	
end

HotKeySet.main()