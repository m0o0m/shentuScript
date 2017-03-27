FamilyJoinItem = {}
function FamilyJoinItem.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"FamilyJoinItem",0,0,0)
	if _Parent ~= 0 then
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"",1832800009,0,0)
	if _GUIHandle ~= 0 then
		GUI:ImageSetFitSize(_GUIHandle, true)
		GUI:WndSetSizeM(_GUIHandle,990, 50)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"PlayerName",98,12,160,30)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"PlayerName")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"PlayerLevel",346,12,160,30)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"PlayerLevel")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"PlayerJob",550,12,160,30)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"PlayerJob")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"ButtonOK",1852100032,740,2)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"ButtonCancel",1852100028,860,2)
	if _GUIHandle ~= 0 then
	end

	FamilyJoinItem.UIInit(_Parent)
end

--
--UI Logic Code Start
function FamilyJoinItem.UIInit(_Handle)
end
FamilyJoinItem.main()




