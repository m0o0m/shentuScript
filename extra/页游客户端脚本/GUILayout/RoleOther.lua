RoleOther = {}


function RoleOther.main()

    
	local _Parent = GetWindow(nil,"RoleGUI")
    local _GUIHandle = GUIWndCreateWnd(_Parent, "RoleOther", 0, 0, 0)
    local _BackImage = GUIImageCreate(_GUIHandle, "BackImage", 1800900079, 15, 30)
    if _BackImage ~= 0 then
		GUIWndSetEnableM(_BackImage, false) 
    end
	local _BackImage = GUIImageCreate(_GUIHandle, "BackImage1", 1800900096, 100, 56)
    if _BackImage ~= 0 then
		GUIWndSetEnableM(_BackImage, false) 
	end
	local _BackImage = GUIImageCreate(_GUIHandle, "BackImage2", 1800900096, 100, 88)
    if _BackImage ~= 0 then
		GUIWndSetEnableM(_BackImage, false) 
	end
	local _BackImage = GUIImageCreate(_GUIHandle, "BackImage3", 1800900096, 100, 121)
    if _BackImage ~= 0 then
		GUIWndSetEnableM(_BackImage, false) 
	end
	local _EditHandle = GUIEditCreate(_GUIHandle, "Edit11", 30, 58, 55, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		  	    
		EditSetText(_EditHandle,nil,"Ç×ÃÜ¶È:")
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 127, 111, 84))    
	end

	local _EditHandle = GUIEditCreate(_GUIHandle, "Edit12", 30, 90, 55, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		  	    
		EditSetText(_EditHandle,nil,"ÈÙÒ«Öµ:")
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 127, 111, 84))    
	end

	local _EditHandle = GUIEditCreate(_GUIHandle, "Edit13", 30, 123, 55, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		  	    
		EditSetText(_EditHandle,nil,"PKÖµ:")
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 127, 111, 84))    
	end

	local _EditHandle = GUIEditCreate(_GUIHandle, "Edit0", 105, 58, 55, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		if CLGetPlayerSelfProperty32(211) then 
			Property = as3.tolua(LuaRet)
		end      
		EditSetText(_EditHandle,nil,"".. Property)	
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 198, 182, 156))      
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "Edit1", 105, 90, 57, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	    
		local Property = 0
		if CLGetPlayerSelfProperty32(212) then 
			Property = as3.tolua(LuaRet)
		end      
		EditSetText(_EditHandle,nil,"".. Property)	
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 198, 182, 156))    	
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "Edit2", 105, 123, 57, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)          
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_PK) then 
			Property = as3.tolua(LuaRet)
		end      
		EditSetText(_EditHandle,nil,"".. Property)	  
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 198, 182, 156))  
	end


	
	
    RoleOther.UIInit(_Parent)
end


--UI Logic Code Start
RoleOther.WndHandle = 0
function RoleOther.UIInit(_Parent)
	RoleOther.WndHandle = _Parent

end


RoleOther.main()