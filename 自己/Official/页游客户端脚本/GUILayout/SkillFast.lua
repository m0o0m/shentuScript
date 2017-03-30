SkillFaster = {}
function SkillFaster.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = GUI:WndCreateWnd(_Parent,"SkillFaster",1804600016,750,670)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle, 273, 78)
		GUIWndSetIsESCClose(_GUIHandle,true)
		GUIWndSetMagicUI(_GUIHandle, 3)	
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "SkillFaster.Set")
	end
	
	--[[local _Handle = GUIButtonCreate(_GUIHandle, "closeBtn", 1800000043, 278, 6)	
	if _Handle ~= 0 then GUIWndRegistScript(_Handle, RDWndBaseCL_mouse_lbClick, "SkillFaster.Close") end--]]
	
	_Handle = GUIImageCreate(_GUIHandle,"skillimage",0,14,10)
	if _Handle ~= 0 then
		GUIWndSetEnableM(_Handle, false)
		GUIImageSetFitSize(_Handle, true)
		GUIWndSetSizeM(_Handle, 52, 52)
	end
	_Handle = GUIEditCreate(_GUIHandle,"edit1",90,8,160,19)
	if _Handle ~= 0 then
		GUIEditSetFontCenter(_Handle)
		GUIEditSetCanEdit(_Handle, false)
		GUIWndSetEnableM(_Handle, false)
		GUIEditSetTextM(_Handle,"恭喜您获得新技能")
		GUIWndSetTextColorM(_Handle, CLMakeARGB(255, 229, 109, 136))
	end
	
	
	_Handle = GUIEditCreate(_GUIHandle,"edit2",90,43,144,19)
	if _Handle ~= 0 then
		GUIEditSetFontCenter(_Handle)
		GUIEditSetCanEdit(_Handle, false)
		GUIWndSetEnableM(_Handle, false)
		GUIEditSetTextM(_Handle,"点击将其放入快捷栏")
		GUIWndSetTextColorM(_Handle, CLMakeARGB(255, 105, 166, 109))
	end
	
	SkillFaster.UIInit(_GUIHandle)
end

SkillFaster.WndHandle = 0
SkillFaster.skillid = 0
function SkillFaster.UIInit(_Handle)
	SkillFaster.WndHandle = _Handle
	local newX = CLGetScreenWidth()
	local newY = CLGetScreenHeight()
	GUIWndSetPosM(_Handle, newX/2-10, newY - 255)
	SkillFaster.skillid = tonumber(deserialize(as3.tolua(FormParam[1])))
	SkillFaster.image_id = 0
	if CLGetSkillTemplatePropByID(SkillFaster.skillid,SKILL_PROP_ICON) then
		SkillFaster.image_id = as3.tolua(LuaRet)
	end
	local name = ""
	if CLGetSkillTemplatePropByID(SkillFaster.skillid,SKILL_PROP_NAME) then
		name = as3.tolua(LuaRet)
		EditSetText(SkillFaster.WndHandle,"edit1","恭喜您获得新技能"..name)
	end
	WndAddEffect(SkillFaster.WndHandle,nil,3020101300,-17,-15,150,0)
	ImageSetImageID(SkillFaster.WndHandle,"skillimage",SkillFaster.image_id)
	if CLAddDelayTask("SkillFaster.Set()",8000,1) then
		SkillFaster.timeid = as3.tolua(LuaRet)
	end
end

function SkillFaster.Set()
	local _handle = GetWindow(nil,"SkillFaster")
	if _handle == 0 then
		return
	end
	local posX = CLGetScreenWidth() / 2 - 10	
	local posY = CLGetScreenHeight() - 235
	if GUIWndGetPosM(SkillFaster.WndHandle) then
		posX = as3.tolua(LuaRet[1]) 
		posY = as3.tolua(LuaRet[2]) - 20
	end
	SkillFaster.Close()
	local _Wnd = GUIImageCreate(0, "SkillFaster_Effect", SkillFaster.image_id, posX, posY)	
	if _Wnd ~= 0 then
		GUIImageSetFitSize(_Wnd, true)
		GUIWndSetSizeM(_Wnd, 45, 45)
		local index = CLGetQuickBarFreePos(2,SkillFaster.skillid)
		local newX = CLGetScreenWidth() 
		if newX > 1151 and newX < 1490 then
			newX = 525
		else
			newX = newX / 2 - 220
		end
		local pos_x = newX + index * 50
		local pos_y = CLGetScreenHeight() - 75
		GUI:WndTween(_Wnd, "<Tween><Frame time='1.2' x = \'".. pos_x .."\' y = '".. pos_y .."\' /></Tween>","SkillFaster.clear()")
	end
end	

function SkillFaster.clear()
	local _handle = GetWindow(nil,"SkillFaster_Effect")
	if _handle ~= 0 then
		GUIWndClose(_handle)
	end
	CLSetQuickBarByFree(2,SkillFaster.skillid)
end

function SkillFaster.Close()
	if SkillFaster.WndHandle ~= 0 then
		GUIWndClose(SkillFaster.WndHandle)
	end

end

SkillFaster.main()
