PlayerTitle = {}
function PlayerTitle.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1910300004,33,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,240, 326)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetCanRevMsg(_GUIHandle, false);
    end
    
    _GUIHandle = GUI:ListBoxCreate(_Parent, "TitlesLB", 40, 65, 295, 110)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"CurTitleEdit",100,35,140,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ShowTitle",1910000001,40,190)
    if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"ÏÔÊ¾³ÆºÅ")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,65, 23)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HideTitle",1910000001,120,190)
    if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"Òþ²Ø³ÆºÅ")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,65, 23)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"CurTitleDescRE",45,240,282,64)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    PlayerTitle.UIInit(_Parent)
end
    
    

--UI Logic Code Start
function PlayerTitle.UIInit(_Handle)
	GUI:WndRegistScript(_Handle, RDWndBaseCL_wnd_visible, "PlayerTitle.OnVisible");
end

function PlayerTitle.OnVisible(_Handle)
	local _Other = GUI:WndFindWindow(_Handle, "parent,RoleOther");
	if 0 ~= _Other then
		GUI:WndSetVisible(_Other, GUI:WndGetVisible(_Handle));
		GUI:WndMoveToParentTop(_Other);
	end
end
    
    
PlayerTitle.main()