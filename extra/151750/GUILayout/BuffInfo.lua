BuffInfo = {}
function BuffInfo.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _Parent = GUI:WndCreateWnd(_Parent,"BuffInfo",0,0,0)
    if _Parent ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BuffImage",0, 0,0)
    if _GUIHandle ~= 0 then
    	GUI:WndSetSizeM(_Parent, 22, 22)
    end

	_GUIHandle = GUI:EditCreate(_Parent,"BuffCount", 10, 9, 12, 12)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"BuffTime", 0, 26, 22, 12)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"")
	end

    BuffInfo.UIInit(_Parent)
end

--UI Logic Code Start
function BuffInfo.UIInit(_Handle)
end
BuffInfo.main()





