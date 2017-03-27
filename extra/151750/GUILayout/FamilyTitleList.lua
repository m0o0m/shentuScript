FamilyTitleList = {}
function FamilyTitleList.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"FamilyTitleList",0,200,20)
	if _Parent ~= 0 then
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"",1832800018,0,0)
	if _GUIHandle ~= 0 then
		GUI:ImageSetFitSize(_GUIHandle, true)
		GUI:WndSetSizeM(_GUIHandle,200, 500)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"ButtonCencel",1832800020,250,465)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"取消")
		GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
	end

	FamilyTitleList.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyTitleList.UIInit(_Handle)
end
FamilyTitleList.main()




