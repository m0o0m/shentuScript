FamilyTitleWnd = {}
function FamilyTitleWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"FamilyTitleWnd",0,0,0)
	if _Parent ~= 0 then
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"image1",1832800009,50,72)
	if _GUIHandle ~= 0 then
		GUI:ImageSetFitSize(_GUIHandle, true)
		GUI:WndSetSizeM(_GUIHandle,600, 420)
	end

	_GUIHandle = GUI:ListBoxCreate(_Parent, "TitleListLB", 66, 92, 580, 400)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"NewTitle",1850000307,800,200)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"创建封号")
		GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"EditTitle",1850000307,800,300)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"编辑封号")
		GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"EraseTitle",1850000307,800,400)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"删除封号")
		GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
	end

	FamilyTitleWnd.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyTitleWnd.UIInit(_Handle)
end
FamilyTitleWnd.main()




