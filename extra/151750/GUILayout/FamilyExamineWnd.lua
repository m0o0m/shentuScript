FamilyExamineWnd = {}
function FamilyExamineWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"FamilyExamineWnd",0,0,0)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"Bg",1832800009,50,106)
	if _GUIHandle ~= 0 then
		GUI:ImageSetFitSize(_GUIHandle, true)
		GUI:WndSetSizeM(_GUIHandle,1012, 350)
	end
		
	_GUIHandle = GUI:EditCreate(_Parent,"",170,76,0,0)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle,  GUI:MakeARGB(255,255,215,0))
		GUI:EditSetTextM(_GUIHandle,"姓名")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"",400,76,0,0)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle,  GUI:MakeARGB(255,255,215,0))
		GUI:EditSetTextM(_GUIHandle,"等级")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"",600,76,0,0)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle,  GUI:MakeARGB(255,255,215,0))
		GUI:EditSetTextM(_GUIHandle,"职业")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"",880,76,0,0)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle,  GUI:MakeARGB(255,255,215,0))
		GUI:EditSetTextM(_GUIHandle,"操作")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"PrevBtn",1850600088,480,450)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"NextBtn",1850600092,614,450)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"PageEdit",564,474,0,0)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"1")
		GUI:EditSetFontCenter(_GUIHandle)
	end

	FamilyExamineWnd.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyExamineWnd.UIInit(_Handle)
end
FamilyExamineWnd.main()




