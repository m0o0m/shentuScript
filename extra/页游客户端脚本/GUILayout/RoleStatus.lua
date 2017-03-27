RoleStatus = {}


function RoleStatus.main()
    local _Parent = GetWindow(nil,"RoleGUI")

    local _GUIHandle = GUIWndCreateWnd(_Parent, "RoleStatus", 0, 0, 0)
    
	local _BackImage = GUIImageCreate(_GUIHandle, "BackImage", 1800900007, 10, 35)
    if _BackImage ~= 0 then
		GUIWndSetEnableM(_BackImage, false) 
	end	
	
	local _Image = GUIImageCreate(_GUIHandle, "image0",1801500078, 123, 52)
	if _Image ~= 0 then
		GUIWndSetEnableM(_Image, false) 
	end	

	local str2 = {"职业","声望","生命恢复","HP","MP","经验"}
	local y = 80
	for i = 1 , #str2 do 
		local _EditHandle = GUIEditCreate(_GUIHandle, "Edit1"..i, 23, y, 90, 16)
		if _EditHandle ~= 0 then
			GUIWndSetEnableM(_EditHandle, false)
			GUIEditSetLimitStringSize(_EditHandle, false)	 
			EditSetText(_EditHandle,nil,"".. str2[i])	
			WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 149, 129, 102))
		end
		y = y + 26
		
	end	
	
	local str3 = {"魔法恢复","中毒恢复","攻击速度","移动速度"}
	local y = 80
	for i = 1 , #str3 do 
		local _EditHandle = GUIEditCreate(_GUIHandle, "Edit2"..i, 155, y, 90, 16)
		if _EditHandle ~= 0 then
			GUIWndSetEnableM(_EditHandle, false)
			GUIEditSetLimitStringSize(_EditHandle, false)	 
			EditSetText(_EditHandle,nil,"".. str3[i])	
			WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 149, 129, 102))
		end
		y = y + 26
		
	end	
	
	local _EditHandle = GUIEditCreate(_GUIHandle, "JobEdit", 62, 80, 100, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_JOB) then 
			Property = as3.tolua(LuaRet)
		end          
		local job_tab = {"战士","法师","道士"}
		EditSetText(_EditHandle,nil,job_tab[Property])
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "PresiTigeEdit", 62, 106, 100, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_PRESTIGE) then 
			Property = as3.tolua(LuaRet)
		end          
		EditSetText(_EditHandle,nil,"".. Property)	
	end

	local role_level=0;
	if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
		role_level = as3.tolua(LuaRet)
	end  
	local role_job=0;
	if CLGetPlayerSelfPropBase(ROLE_PROP_JOB) then 
		role_job = as3.tolua(LuaRet)
	end  

	_EditHandle = GUIEditCreate(_GUIHandle, "HP_RecEdit", 87, 133, 100, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local myProperty = 0
		local tempProperty = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_HP_REC) then 
			myProperty = as3.tolua(LuaRet)
		end  
		if CLGetPlayerTemplateProperty(role_job,role_level,ROLE_PROP32_HP_REC) then 
			tempProperty = as3.tolua(LuaRet)
		end  
		dbg(myProperty);
		dbg(tempProperty);
		local Property = (100*myProperty)/tempProperty-100
		dbg(Property);
		EditSetText(_EditHandle,nil,"+".. Property.."%")
	end
	
	_EditHandle = GUIEditCreate(_GUIHandle, "HPEdit", 50, 157, 100, 20)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_HP) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_HP) then 
			max_Property = as3.tolua(LuaRet)
		end        
		EditSetText(_EditHandle,nil,"".. Property.." / "..max_Property)		
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "MPEdit", 50, 183, 100, 20)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MP) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_MP) then 
			max_Property = as3.tolua(LuaRet)
		end        
		EditSetText(_EditHandle,nil,"".. Property.." / "..max_Property)		
	end
	
	_EditHandle = GUIEditCreate(_GUIHandle, "ExpEdit", 60, 210, 100, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		local Property = 0
		local max_Property = 0
		if UI:Lua_GetPlayerSelfProperty64(0) then 
			Property = as3.tolua(LuaRet)
		end  
		if UI:Lua_GetPlayerSelfProperty64(0) then 
			max_Property = as3.tolua(LuaRet)
		end        
		EditSetText(_EditHandle,nil,"".. Property.." / "..max_Property)	        
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "MP_RecEdit", 220, 79, 57, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local myProperty = 0
		local tempProperty = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MP_REC) then 
			myProperty = as3.tolua(LuaRet)
		end  
		if CLGetPlayerTemplateProperty(role_job,role_level,ROLE_PROP32_MP_REC) then 
			tempProperty = as3.tolua(LuaRet)
		end  
		local Property = (100*myProperty)/tempProperty-100
		EditSetText(_EditHandle,nil,"+".. Property.."%")
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "POISON_RecEdit", 220, 106, 57, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local myProperty = 0
		local tempProperty = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_POISON_REC) then 
			myProperty = as3.tolua(LuaRet)
		end  
		if CLGetPlayerTemplateProperty(role_job,role_level,ROLE_PROP32_POISON_REC) then 
			tempProperty = as3.tolua(LuaRet)
		end  
		local Property = (100*myProperty)/tempProperty-100
		EditSetText(_EditHandle,nil,"+".. Property.."%")
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "ATTACK_SPEED_Edit", 220, 133, 57, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_ATTACK_SPEED_PCT) then 
			Property = as3.tolua(LuaRet)
		end       
		EditSetText(_EditHandle,nil,"+".. Property.."%")
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "MOVE_SPEED_Edit", 220, 160, 57, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MOVE_SPEED_PCT) then 
			Property = as3.tolua(LuaRet)
		end          
		EditSetText(_EditHandle,nil,"+".. Property.."%")
	end
	local _EditHandle = GUIEditCreate(_GUIHandle, "ATK_PCT1", 35, 261, 90, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	 
		EditSetText(_EditHandle,nil,"金攻")	
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 216, 198, 14))
	end
	
	local _EditHandle = GUIEditCreate(_GUIHandle, "ATK_PCT2", 35, 283, 90, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	 
		EditSetText(_EditHandle,nil,"木攻")	
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 27, 204, 36))
	end
	
	local _EditHandle = GUIEditCreate(_GUIHandle, "ATK_PCT3", 35, 305, 90, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	 
		EditSetText(_EditHandle,nil,"水攻")	
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 38, 179, 222))
	end
	
	local _EditHandle = GUIEditCreate(_GUIHandle, "ATK_PCT4", 35, 327, 90, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	 
		EditSetText(_EditHandle,nil,"火攻")	
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 185, 19, 23))
	end
	
	local _EditHandle = GUIEditCreate(_GUIHandle, "ATK_PCT5", 35, 351, 90, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	 
		EditSetText(_EditHandle,nil,"土攻")	
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 167, 140, 37))
	end
	
	local _EditHandle = GUIEditCreate(_GUIHandle, "DEF_PCT1", 165, 261, 90, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	 
		EditSetText(_EditHandle,nil,"金防")	
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 216, 198, 14))
	end
	
	local _EditHandle = GUIEditCreate(_GUIHandle, "DEF_PCT2", 165, 283, 90, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	 
		EditSetText(_EditHandle,nil,"木防")	
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 27, 204, 36))
	end
	
	local _EditHandle = GUIEditCreate(_GUIHandle, "DEF_PCT3", 165, 305, 90, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	 
		EditSetText(_EditHandle,nil,"水防")	
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 38, 179, 222))
	end
	
	local _EditHandle = GUIEditCreate(_GUIHandle, "DEF_PCT4", 165, 327, 90, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	 
		EditSetText(_EditHandle,nil,"火防")	
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 185, 19, 23))
	end
	
	local _EditHandle = GUIEditCreate(_GUIHandle, "DEF_PCT5", 165, 350, 90, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	 
		EditSetText(_EditHandle,nil,"土防")	
		WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 167, 140, 37))
	end
	
	_EditHandle = GUIEditCreate(_GUIHandle, "ATK_PCT_Edit1", 75, 259, 61, 20)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_ELE_1_ATK_PCT) then 
			Property = as3.tolua(LuaRet)
		end          
		EditSetText(_EditHandle,nil,"".. Property)	
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "ATK_PCT_Edit2", 75, 281, 61, 20)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_ELE_2_ATK_PCT) then 
			Property = as3.tolua(LuaRet)
		end          
		EditSetText(_EditHandle,nil,"".. Property)		
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "ATK_PCT_Edit3", 75, 303, 74, 20)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_ELE_3_ATK_PCT) then 
			Property = as3.tolua(LuaRet)
		end          
		EditSetText(_EditHandle,nil,"".. Property)		
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "ATK_PCT_Edit4", 75, 325, 74, 20)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_ELE_4_ATK_PCT) then 
			Property = as3.tolua(LuaRet)
		end          
		EditSetText(_EditHandle,nil,"".. Property)		
	end
	_EditHandle = GUIEditCreate(_GUIHandle, "ATK_PCT_Edit5", 75, 348, 74, 20)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_ELE_5_ATK_PCT) then 
			Property = as3.tolua(LuaRet)
		end          
		EditSetText(_EditHandle,nil,"".. Property)		
	end
	
	_EditHandle = GUIEditCreate(_GUIHandle, "DEF_PCT_Edit1", 205, 259, 61, 20)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_ELE_1_DEF_PCT) then 
			Property = as3.tolua(LuaRet)
		end          
		EditSetText(_EditHandle,nil,"".. Property)	
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "DEF_PCT_Edit2", 205, 281, 61, 20)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_ELE_2_DEF_PCT) then 
			Property = as3.tolua(LuaRet)
		end          
		EditSetText(_EditHandle,nil,"".. Property)		
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "DEF_PCT_Edit3", 205, 303, 74, 20)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_ELE_3_DEF_PCT) then 
			Property = as3.tolua(LuaRet)
		end          
		EditSetText(_EditHandle,nil,"".. Property)		
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "DEF_PCT_Edit4", 205, 325, 74, 20)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_ELE_4_DEF_PCT) then 
			Property = as3.tolua(LuaRet)
		end          
		EditSetText(_EditHandle,nil,"".. Property)		
	end
	_EditHandle = GUIEditCreate(_GUIHandle, "DEF_PCT_Edit5", 205, 348, 74, 20)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_ELE_5_DEF_PCT) then 
			Property = as3.tolua(LuaRet)
		end          
		EditSetText(_EditHandle,nil,"".. Property)		
	end
	

    RoleStatus.UIInit(_Parent)
end


--UI Logic Code Start
RoleStatus.WndHandle = 0
function RoleStatus.UIInit(_Parent)
	RoleStatus.WndHandle = _Parent

end


RoleStatus.main()