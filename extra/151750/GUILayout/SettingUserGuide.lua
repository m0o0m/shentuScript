SettingUserGuide = {}
function SettingUserGuide.main()
    local _Parent = GetWindow(nil,"GameSettingDlg")

    local _GUIHandle = GUI:WndCreateWnd(_Parent, "SettingUserGuide", 0, 10, 65)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 580, 297)
		GUI:WndSetIsESCClose(_GUIHandle,false)			
	end	
	SettingUserGuide.UIInit(_GUIHandle)
end

SettingUserGuide.WndHandle = 0
function SettingUserGuide.UIInit(_GUIHandle)
	SettingUserGuide.WndHandle = _GUIHandle
end	
SettingUserGuide.main()	