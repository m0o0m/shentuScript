AchieveItem = {}
function AchieveItem.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	GUI:WndSetSizeM(_Parent,478, 68)
	_GUIHandle = GUI:ImageCreate(_Parent,"back",1806500006,0,0)
	
	_GUIHandle = GUI:ImageCreate(_Parent,"itemctrlBack",1800000080,19,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,46, 46)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Icon",0,20,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,45, 45)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"State",1806500015,300,14)
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"GetBtn",1806100002,380,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"领取")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, 4293317508)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"AchieveName",80,10,200,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, 4291932770)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Ach",78,40,70,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, 4291932770)
		GUI:EditSetTextM(_GUIHandle,"成就积分:")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Integral",138,40,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"image",1800000051,208,43)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"AchieveGold",228,40,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	AchieveItem.UIInit(_Parent)
end

--UI Logic Code Start
function AchieveItem.UIInit(_Handle)
end

AchieveItem.main()