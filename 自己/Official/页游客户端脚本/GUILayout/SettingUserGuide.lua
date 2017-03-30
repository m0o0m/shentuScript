SettingUserGuide = {}
function SettingUserGuide.main()
    local _Parent = GetWindow(nil,"GameSettingDlg")

    local _GUIHandle = GUIWndCreateWnd(_Parent, "SettingUserGuide", 0, 10, 65)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle, 580, 297)
		GUIWndSetIsESCClose(_GUIHandle,false)			
	end	
	SettingUserGuide.UIInit(_GUIHandle)
end

SettingUserGuide.WndHandle = 0
function SettingUserGuide.UIInit(_GUIHandle)
	SettingUserGuide.WndHandle = _GUIHandle
end	
SettingUserGuide.main()	