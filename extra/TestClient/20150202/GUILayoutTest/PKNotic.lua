PKNotic = {}
function PKNotic.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1932500106,0,29)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,453, 162)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Btn",1932500102,348,149)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"ȷ  ��")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884516)
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckBox",1932500100,"ͬ�����ɶ�ս",212,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"ͬ�����ɶ�ս")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,98, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4294967295)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"Edit",32,62,385,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditAppendString(_GUIHandle, "����Ϸ��Ϊ���ɶ�սģʽ��������Ϸ������Ի�ø������Ϸ����")
		GUI:RichEditSetEditEnable(_GUIHandle, false)
    end
    
    
    
    PKNotic.UIInit(_Parent)
end

--UI Logic Code Start
function PKNotic.UIInit(_Handle)
end
PKNotic.main()