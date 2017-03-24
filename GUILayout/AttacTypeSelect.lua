AttacTypeSelect = {}
function AttacTypeSelect.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"AttacTypeSelect",0,-2,1)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,47, 106)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage",1805800010,3,-1)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 124)
		GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"AttacType1",1805800011,8,3)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 17)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"AttacType2",1805800011,8,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 17)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"AttacType3",1805800011,8,37)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 17)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"AttacType4",1805800011,8,54)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 17)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"AttacType5",1805800011,8,71)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 17)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"AttacType6",1805800011,8,88)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 17)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"AttacType7",1805800011,8,105)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 17)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    
    
    AttacTypeSelect.UIInit(_Parent)
end

--UI Logic Code Start
AttacTypeSelect.AttackModeTable = {
{"全体", 0},
{"和平", 1},
{"组队", 2},
{"行会", 3},
{"善恶", 4},
{"联盟", 5},
{"阵营", 6}
}
function AttacTypeSelect.UIInit(_Handle)
    GUI:WndSetPopupMenu(_Handle)
    AttacTypeSelect.WndHandle = _Handle
    GUI:WndSetPosM(AttacTypeSelect.WndHandle, 40, 120)
    for i = 1, #(AttacTypeSelect.AttackModeTable) do
        local _GUIHandle = GUI:WndFindChildM(_Handle, "AttacType"..i)
        if _GUIHandle ~= 0 then  
            GUI:WndSetSizeM(_GUIHandle, 32, 17)
            GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,200,200,200))
            GUI:ButtonSetStateTextColor(_GUIHandle, 1, GUI:MakeARGB(255,0,255,0))
            GUI:WndSetTextM(_GUIHandle, PlayerHeaderInfo.attackModeTable[i][1])
            GUI:WndSetParam(_GUIHandle, PlayerHeaderInfo.attackModeTable[i][2])
            GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "AttacTypeSelect.OnAttacSelect")
        end
    end
end

function AttacTypeSelect.OnAttacSelect(_h)
    CL:ChangeAttacMod(GUI:WndGetParam(_h))
    GUI:WndSetPosM(AttacTypeSelect.WndHandle, -200, -200)
    GUI:WndSetVisible(AttacTypeSelect.WndHandle, false)
end
AttacTypeSelect.main()