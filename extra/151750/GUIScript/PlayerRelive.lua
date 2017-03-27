function PlayerReliveMain()
    local _PlayerStatus = CL:GetPlayerStatus()
    if _PlayerStatus == 3 then 
		local reliveOption = CL:GetMapOption()
		if reliveOption == 2 or  reliveOption == 4 then
			UI:Lua_SubmitForm("DeathForm","GetVipSetNum","")
		else
			local _KillerName = CL:GetKillerName()		
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
        local _MainWnd = GUI:WndFindWindow(0, "MsgBox_死亡")
        if _MainWnd ~= 0 then
            GUI:WndClose(_MainWnd)
        end
    end
end

function PlayerReliveUpdate(num)
	local _KillerName = CL:GetKillerName()
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

function PlayerReliveDoRelive1(_handle)
	local reliveOption = CL:GetMapOption()
	if reliveOption == 3 or reliveOption == 4 then
		CL:DoPlayerReliveByType(3)
	else
		CL:DoPlayerReliveByType(2)
	end	
end

function PlayerReliveDoRelive2(_handle)
	UI:Lua_SubmitForm("DeathForm","reliveSitu","")
end





function WinCreate(name, text, btn_, btnFun_, param)
	local _MainWnd = GUI:WndFindWindow(0, "MsgBox_死亡")
	if _MainWnd ~= 0 then
		return
	end
	local mb = GUI:WndCreateWnd(0, "MsgBox_"..name, 1800000280, 0, 0)
	if mb ~= 0 then
		GUI:WndSetSizeM(mb, 277, 211)
		GUI:WndSetIsESCClose(mb, false)
		GUI:WndSetMoveWithLBM(mb)
		GUI:WndSetMagicUI(mb, 1)
		CenterWnd(mb)
	end
	_GUIHandle = GUI:RichEditCreate(mb, "textRE", 20, 46, 233, 105)
	if _GUIHandle ~= 0 then 
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:RichEditSetCurFont(_GUIHandle, "TitleFont1")
		GUI:RichEditSetTotalLine(_GUIHandle, 6)
		local offset = math.ceil((233 - CL:GetFontStrWidth("TitleFont1", "您被  "..text.."  杀死了"))/2)
		if offset < 0 then
			offset = 0
		end
		GUI:RichEditAppendString(_GUIHandle, "\n\n#OFFSET<X:"..offset..",Y:0>#您被  #COLORCOLOR_RED#"..text.."#COLORCOLOREND#  杀死了\n\n")
	end
	local bLen = #btn_
	for i = 1, bLen do
		_GUIHandle = GUI:ButtonCreate(mb, btn_[i], 1800000150, 92+(i-(bLen+1)/2)*100, 152)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle, 84, 32)
			GUI:WndSetTextOffset(_GUIHandle, -1, -1)
			GUI:WndSetTextM(_GUIHandle, btn_[i])
			GUI:WndSetTextColorM(_GUIHandle, 4293317252)
			if next(btnFun_) ~= nil and btnFun_[i] ~= 0 then
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, btnFun_[i])
			else
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "luaWndClose")
			end
		end
		if i == 2 then
			_GUIHandle = GUI:RichEditCreate(mb, "Text"..i, 93+(i-(bLen+1)/2)*100, 125, 80, 20)
			if _GUIHandle ~= 0 then
				if tonumber(param) == 0 then
					GUI:RichEditAppendString(_GUIHandle, "#COLORCOLOR_GREENG#消耗#COLORCOLOREND##COLORCOLOR_RED#200#COLORCOLOREND##COLORCOLOR_GREENG#元宝 #COLORCOLOREND# ")
				else
					GUI:RichEditAppendString(_GUIHandle, "#COLORCOLOR_GREENG#剩余 #COLORCOLOREND##COLORCOLOR_RED#"..param.. "#COLORCOLOREND##COLORCOLOR_GREENG# 次#COLORCOLOREND# ")
				end	
				GUI:WndSetEnableM(_GUIHandle, false)
			end
		end	
	end	
end