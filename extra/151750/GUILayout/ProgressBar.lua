ProgressBar = {}
function ProgressBar.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _Parent = GUI:WndCreateWnd(_Parent,"ProgressBar",0,0, 0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,1, 1)
    end

    _GUIHandle = GUI:ImageCreate(_Parent, "GUI_2", 1830700069, 0, 0)    
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,117, 13)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"Edit", 9, 14, 105, 11) 
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)	
	end

	_GUIHandle = GUI:EditCreate(_Parent,"ProgressText", 10, -14, 102, 14) 
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)	
	end

    ProgressBar.UIInit(_Parent)
end

--UI Logic Code Start
function ProgressBar.UIInit(_Handle)
end

ProgressBar.main()




