RoleProperty = {}


function RoleProperty.main()
    local _Parent = GetWindow(nil,"RoleGUI")

    local _GUIHandle = GUIWndCreateWnd(_Parent, "RoleProperty", 0, 0, 0)
  
	
	local _BackImage = GUIImageCreate(_GUIHandle, "BackImage", 1800900009, 10, 35)
    if _BackImage ~= 0 then
		GUIWndSetEnableM(_BackImage, false) 
	end	
	local str1 = {"基本属性","其他属性"}
	local x = 45
	for i = 1 , 2 do 
		local _EditHandle = GUIEditCreate(_GUIHandle, "Edit0"..i, x, 57, 90, 16)
		if _EditHandle ~= 0 then
			GUIWndSetEnableM(_EditHandle, false)
			GUIEditSetLimitStringSize(_EditHandle, false)	 
			EditSetText(_EditHandle,nil,"".. str1[i])	
			GUIEditSetFontM(_EditHandle,"SIMLI18")
			WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 197, 170, 41))
		end
		x = x + 140
		
	end	
	local str2 = {"防御","魔防","攻击","魔法","道术","幸运"}
	local y = 95
	for i = 1 , #str2 do 
		local _EditHandle = GUIEditCreate(_GUIHandle, "Edit1"..i, 20, y, 90, 16)
		if _EditHandle ~= 0 then
			GUIWndSetEnableM(_EditHandle, false)
			GUIEditSetLimitStringSize(_EditHandle, false)	 
			EditSetText(_EditHandle,nil,"".. str2[i])	
			WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 149, 129, 102))
		end
		y = y + 26
		
	end	
	
	local str3 = {"背包重量","穿戴重量","腕力","闪避","命中","暴击","生命值","魔法值"}
	local y = 95
	for i = 1 , #str3 do 
		local _EditHandle = GUIEditCreate(_GUIHandle, "Edit2"..i, 152, y, 90, 16)
		if _EditHandle ~= 0 then
			GUIWndSetEnableM(_EditHandle, false)
			GUIEditSetLimitStringSize(_EditHandle, false)	 
			EditSetText(_EditHandle,nil,"".. str3[i])	
			WndSetTextColorM(_EditHandle,nil,MakeARGB(255, 149, 129, 102))
		end
		y = y + 26
		
	end	
	local _EditHandle = GUIEditCreate(_GUIHandle, "HandPowerEdit", 192, 147, 100, 16)
	if _EditHandle ~= 0 then
		
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_BRAWN) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_BRAWN) then 
			max_Property = as3.tolua(LuaRet)
		end        
		EditSetText(_EditHandle,nil,"".. Property.." / "..max_Property)
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "HitEdit", 192, 199, 100, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_HIT) then 
			Property = as3.tolua(LuaRet)
		end        
		EditSetText(_EditHandle,nil,"".. Property)	
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "MissEdit", 192, 172, 100, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MISS) then 
			Property = as3.tolua(LuaRet)
		end        
		EditSetText(_EditHandle,nil,"".. Property)
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "ExtremAtcEdit", 192, 225, 100, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_BURST) then 
			Property = as3.tolua(LuaRet)
		end      
		EditSetText(_EditHandle,nil,"".. Property)	
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "PhyDefEdit", 60, 94, 100, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_DEF) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_DEF) then 
			max_Property = as3.tolua(LuaRet)
		end        
		EditSetText(_EditHandle,nil,"".. Property.." - "..max_Property)		
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "PhyAttacEdit", 60, 147, 100, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_ATK) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_ATK) then 
			max_Property = as3.tolua(LuaRet)
		end        
		EditSetText(_EditHandle,nil,"".. Property.." - "..max_Property)		
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "MagicAttacEdit", 60, 173, 100, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)		
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_ATK) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_ATK) then 
			max_Property = as3.tolua(LuaRet)
		end        
		EditSetText(_EditHandle,nil,"".. Property.." - "..max_Property)
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "DaoAttacEdit", 60, 201, 100, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MIN_TAO_ATK) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_TAO_ATK) then 
			max_Property = as3.tolua(LuaRet)
		end        
		EditSetText(_EditHandle,nil,"".. Property.." - "..max_Property)	
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "MagicDefineEdit", 60, 120, 100, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_DEF) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_DEF) then 
			max_Property = as3.tolua(LuaRet)
		end        
		EditSetText(_EditHandle,nil,"".. Property.." - "..max_Property)
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "RoleLucky", 60, 227, 100, 16)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_LUCK_CURSE) then 
			Property = as3.tolua(LuaRet)
		end      
		EditSetText(_EditHandle,nil,"".. Property)	
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "WeightEdit", 214, 91, 100, 20)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_WEIGHT) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_WEIGHT) then 
			max_Property = as3.tolua(LuaRet)
		end        
		EditSetText(_EditHandle,nil,"".. Property.." - "..max_Property)	
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "RoleWareWeightEdit", 214, 119, 100, 20)
	if _EditHandle ~= 0 then
		GUIWndSetEnableM(_EditHandle, false)
		GUIEditSetLimitStringSize(_EditHandle, false)	
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_EQUIP_WEIGHT) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_EQUIP_WEIGHT) then 
			max_Property = as3.tolua(LuaRet)
		end        
		EditSetText(_EditHandle,nil,"".. Property.." - "..max_Property)	
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "HPEdit", 203, 249, 100, 20)
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
		EditSetText(_EditHandle,nil,"".. Property.." - "..max_Property)		
	end

	_EditHandle = GUIEditCreate(_GUIHandle, "MPEdit", 203, 277, 100, 20)
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
		EditSetText(_EditHandle,nil,"".. Property.." - "..max_Property)		
	end

    RoleProperty.UIInit(_Parent)
end


--UI Logic Code Start
RoleProperty.WndHandle = 0
function RoleProperty.UIInit(_Parent)
	RoleProperty.WndHandle = _Parent

end


RoleProperty.main()