NpcTalk = {}
function NpcTalk.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUIWndCreateWnd(_Parent,"NpcTalk",1806100012,0,0)
	if _Parent ~= 0 then
		GUIWndSetSizeM(_Parent,361, 524)
		GUIWndSetIsESCClose(_Parent,true)
		GUIWndSetMoveWithLBM(_Parent)
	end
	_GUIHandle = GUIImageCreate(_Parent,"NpcNameImage",0,0,0)
	if _GUIHandle ~= 0 then
		GUIImageSetFitSize(_GUIHandle,true)
		GUIWndSetEnableM(_GUIHandle,false)
	end
	_GUIHandle = GUI:EditCreate(_Parent,"NpcName",130, 11, 128, 25)
	if _GUIHandle ~= 0 then
		GUIWndSetTextColorM(_GUIHandle, MakeARGB(255, 254, 226, 78))
		GUIEditSetFontCenter(_GUIHandle)
	end
	_GUIHandle = GUIRichEditCreate(_Parent,"Content",40,60,307,425)
	_GUIHandle = GUIButtonCreate(_Parent,"Close",1800000068,328,11)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle,24, 24)
	end
end

NpcTalk.main()