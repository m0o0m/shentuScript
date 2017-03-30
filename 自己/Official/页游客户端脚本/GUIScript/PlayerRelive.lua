function PlayerReliveMain()
    local _PlayerStatus = as3.tolua(CL:GetPlayerStatus())
    if _PlayerStatus == 3 then 
		local reliveOption = CLGetMapOption()
		if reliveOption == 2 or  reliveOption == 4 then
			UI:Lua_SubmitForm("DeathForm","GetVipSetNum","")
		else
			local _KillerName = as3.tolua(CL:GetKillerName())		
			if _KillerName ~= "" then
				local index = string.find(_KillerName, "）")
				if index ~= nil then
					_KillerName = string.sub(_KillerName, 1, index + 2)
				end
				WinCreate("死亡", "".._KillerName.."", {"免费回城"}, {"PlayerReliveDoRelive1"}, "")
			else
				WinCreate("死亡", "上帝", {"免费回城"}, {"PlayerReliveDoRelive1"}, "")
			end	
		end	
    else
        local _MainWnd = as3.tolua(GUI:WndFindWindow(0, "MsgBox_死亡"))
        if _MainWnd ~= 0 then
            GUI:WndClose(_MainWnd)
        end
    end
end

function PlayerReliveUpdate(num)
	local _KillerName = as3.tolua(CL:GetKillerName())
    if _KillerName ~= "" then		
		local index = string.find(_KillerName, "）")
		if index ~= nil then
			_KillerName = string.sub(_KillerName, 1, index + 2)
		end
		WinCreate("死亡", "".._KillerName.."", {"免费回城", "原地复活"}, {"PlayerReliveDoRelive1", "PlayerReliveDoRelive2"}, ""..num)
	else
		WinCreate("死亡", "上帝", {"免费回城", "原地复活"}, {"PlayerReliveDoRelive1", "PlayerReliveDoRelive2"}, ""..num)
	end	
end	

function PlayerReliveDoRelive1()
	if as3.tolua(CL:GetPlayerStatus()) ~= 3 then
		return
	end
	local reliveOption = CLGetMapOption()
	if reliveOption == 3 or reliveOption == 4 then
		local kname = CLGetCurMapKeyName()
		if kname == "龙魂之刃" then
			CLDoPlayerReliveByType(1)
			UI:Lua_SubmitForm("DeathForm","ReliveInSL","")
			return
		end
		if kname == "夜袭巫山城" then
			CLDoPlayerReliveByType(1)
			UI:Lua_SubmitForm("DeathForm","ReliveInYX","")
			return
		end
		CLDoPlayerReliveByType(3)
	else
		CLDoPlayerReliveByType(2)
	end	
end

function PlayerReliveDoRelive2(_handle)
	UI:Lua_SubmitForm("DeathForm","reliveSitu","")
end





function WinCreate(name, text, btn_, btnFun_, param)
	local parent = LuaGlobal["AttachPartent"]
	local mb = GUIWndCreateWnd(parent, "MsgBox_"..name, 1804600011, 0, 0)--1800000280
	if mb ~= 0 then
		GUIWndSetSizeM(mb, 277, 211)
		GUIWndSetIsESCClose(mb, true)
		GUIWndSetMoveWithLBM(mb)
		GUIWndSetMagicUI(mb, 1)
		CenterWnd(mb)
	end
	_GUIHandle = GUIImageCreate(mb,"ExampleImage0",1801500066,109,2)
	if _GUIHandle ~= 0 then GUIWndSetEnableM(_GUIHandle, false) end
	_GUIHandle = GUIRichEditCreate(mb, "textRE", 10, 46, 233, 105)
	if _GUIHandle ~= 0 then 
		GUIWndSetEnableM(_GUIHandle, false)
		GUIRichEditSetCurFont(_GUIHandle, "TitleFont1")
		GUIRichEditSetTotalLine(_GUIHandle, 6)
		local offset = math.ceil((233 - CLGetFontStrWidth("TitleFont1", text) - 28)/2) - 20 
		if offset < 0 then
			offset = 0
		end
		GUIRichEditAppendString(_GUIHandle, "\n\n#OFFSET<X:"..offset..",Y:0>#您被  #COLORCOLOR_RED#"..text.."#COLORCOLOREND#  杀死了\n\n")
	end
	local bLen = #btn_
	for i = 1, bLen do
		_GUIHandle = GUIButtonCreate(mb, btn_[i], 1800000150, 90+(i-(bLen+1)/2)*100, 147)
		if _GUIHandle ~= 0 then
			GUIWndSetSizeM(_GUIHandle, 74, 43)
			GUIWndSetTextOffset(_GUIHandle, -1, -1)
			GUIWndSetTextM(_GUIHandle, btn_[i])
			GUIWndSetTextColorM(_GUIHandle, webColor.goldenText)
			if next(btnFun_) ~= nil and btnFun_[i] ~= 0 then
				GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, btnFun_[i])
			else
				GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "luaWndClose")
			end
		end
		if i == 2 then
			_GUIHandle = GUIRichEditCreate(mb, "Text"..i, 93+(i-(bLen+1)/2)*100, 123, 80, 20)
			if _GUIHandle ~= 0 then
				if tonumber(param) == 0 then
					GUIRichEditAppendString(_GUIHandle, "#COLORCOLOR_GREENG#消耗#COLORCOLOREND##COLORCOLOR_RED#200#COLORCOLOREND##COLORCOLOR_GREENG#元宝 #COLORCOLOREND# ")
				else
					GUIRichEditAppendString(_GUIHandle, "#COLORCOLOR_GREENG#剩余 #COLORCOLOREND##COLORCOLOR_RED#"..param.. "#COLORCOLOREND##COLORCOLOR_GREENG# 次#COLORCOLOREND# ")
				end	
				GUIWndSetEnableM(_GUIHandle, false)
			end
		end	
	end	
	CLAddDelayTask("PlayerReliveDoRelive1()", 10000, 1)
end