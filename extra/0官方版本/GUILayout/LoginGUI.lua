LoginGUI = {}
function LoginGUI.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage",1932500049,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1024, 768)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage2",1932500050,0,326)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1024, 426)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage1",1932500048,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1024, 768)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_4",1932500002,380,460)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,271, 207)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Effect2",1076800000,113,-125)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,800, 800)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Effect3",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,63, 60)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"LoginName",461,492,127,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"LoginPassWord",461,526,127,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, true)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Confirm",1932500003,415,568)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,90, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"SaveLoginName",1900112015,"",607,493)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle," «∑Ò±£¥Ê’ ∫≈")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,18, 18)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Back",1932500007,530,568)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,90, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Register",1932500011,415,603)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,90, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ChangePassWord",1932500015,530,603)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,90, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Keyboard",1900001120,607,522)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle," π”√»Ìº¸≈Ã")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,27, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    LoginGUI.UIInit(_Parent)
end

--UI Logic Code Start
function LoginGUI.UIInit(_Handle)
end
LoginGUI.main()




