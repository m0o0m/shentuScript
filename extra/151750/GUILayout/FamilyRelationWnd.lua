FamilyRelationWnd = {}
function FamilyRelationWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"FamilyRelationWnd",0,0,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,16, 16)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"bg1",1832800009,43,82)
	if _GUIHandle ~= 0 then
		GUI:ImageSetFitSize(_GUIHandle, true)
		GUI:WndSetSizeM(_GUIHandle,500, 360)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"bg2",1832800009,563,82)
	if _GUIHandle ~= 0 then
		GUI:ImageSetFitSize(_GUIHandle, true)
		GUI:WndSetSizeM(_GUIHandle,500, 360)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"TitleBg1",1850500021,88,90)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,406, 40)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"TitleBg2",1850500021,628,90)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,406, 40)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Title1",252,96,100,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255,255,215,0))
		GUI:EditSetTextM(_GUIHandle,"联盟行会")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Title12",782,96,100,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255,255,215,0))
		GUI:EditSetTextM(_GUIHandle,"敌对行会")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"AddAlly",1850000307,130,450)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"行会结盟")
		GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"DelAlly",1850000307,330,450)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"取消结盟")
		GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
	end

	_GUIHandle = GUI:ListBoxCreate(_Parent, "FamilyAllyLB", 55, 130, 480, 326)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"AddEnemy",1850000307,650,450)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"行会敌对")
		GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"DelEnemy",1850000307,850,450)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"取消敌对")
		GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
	end

	_GUIHandle = GUI:ListBoxCreate(_Parent, "FamilyEnemyLB", 575, 130, 480, 326)
    if _GUIHandle ~= 0 then
    end

	FamilyRelationWnd.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyRelationWnd.UIInit(_Handle)
end
FamilyRelationWnd.main()




