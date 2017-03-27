AttacTypeSelect = {}
function AttacTypeSelect.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"AttacTypeSelect",0,289,50)
    if _Parent ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage",1850000369,0,0)
    if _GUIHandle ~= 0 then
    end

     _GUIHandle = GUI:ImageCreate(_Parent,"AttacType1",1850000375,15,18)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"AttacType2",1850000370,15,57)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"AttacType3",1850000372,15,96)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"AttacType4",1850000373,15,135)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"AttacType5",1850000371,15,174)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"AttacType6",1850000416,15,213)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"AttacType7",1850000417,15,252)
    if _GUIHandle ~= 0 then
    end

	_GUIHandle = GUI:ImageCreate(_Parent,"HighLight1",1850000376,15,18)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"HighLight2",1850000376,15,57)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"HighLight3",1850000376,15,96)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"HighLight4",1850000376,15,135)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"HighLight5",1850000376,15,174)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"HighLight6",1850000376,15,213)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"HighLight7",1850000376,15,252)
    if _GUIHandle ~= 0 then
    end


    _GUIHandle = GUI:EditCreate(_Parent,"AttacTypeEdit1",137,38,260,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"对任何玩家都能造成伤害")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"AttacTypeEdit2",137,77,260,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"不对任何玩家造成伤害")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"AttacTypeEdit3",137,112,260,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"对队伍外的玩家造成伤害")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"AttacTypeEdit4",137,155,260,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"对行会外的玩家造成伤害")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"AttacTypeEdit5",137,194,260,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"只对红名和褐名的玩家造成伤害")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"AttacTypeEdit6",137,233,260,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"对敌对行会的玩家造成伤害")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"AttacTypeEdit7",137,272,260,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"对阵营外的玩家造成伤害")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"TipsEdit",45,311,300,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"恶意杀死其他玩家将受到系统惩罚")
    end



    AttacTypeSelect.UIInit(_Parent)
end

--UI Logic Code Start
AttacTypeSelect.attackModeTable = {
    {"全体", 0},
    {"和平", 1},
    {"组队", 2},
    {"行会", 3},
    {"善恶", 4},
    {"联盟", 5},
    {"阵营", 6}
}

function AttacTypeSelect.UIInit(_Handle)
    AttacTypeSelect.WndHandle = _Handle
    AttacTypeSelect.OnSetAllVisible()

    if CL:GetPlayerSelfProperty32(ROLE_PROP32_ATK_MODE) then
        local idx = PlayerHeaderInfo.attackModeTable[LuaRet+1][2] + 1
        local _HighHandle = GUI:WndFindChildM( AttacTypeSelect.WndHandle , "HighLight"..idx)
        if _HighHandle ~= 0 then
            GUI:WndSetVisible(_HighHandle,true)
        end
    end

    for i = 1, #(AttacTypeSelect.attackModeTable) do
        local _GUIHandle = GUI:WndFindChildM(_Handle, "AttacType"..i)
        if _GUIHandle ~= 0 then
            GUI:WndSetParam(_GUIHandle, AttacTypeSelect.attackModeTable[i][2])
            GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "AttacTypeSelect.OnAttacSelect")
        end
    end
end

function AttacTypeSelect.OnAttacSelect(_h)
    AttacTypeSelect.OnSetAllVisible()
    local idx = GUI:WndGetParam(_h) + 1
    local _GUIHandle = GUI:WndFindChildM( AttacTypeSelect.WndHandle , "HighLight"..idx)
    if _GUIHandle ~= 0 then
         GUI:WndSetVisible(_GUIHandle,true)
    end
    CL:ChangeAttacMod(GUI:WndGetParam(_h))
    GUI:WndSetVisible(AttacTypeSelect.WndHandle, false)
end

function AttacTypeSelect.OnSetAllVisible()
    for i = 1, #(AttacTypeSelect.attackModeTable) do
        local _GUIHandle = GUI:WndFindChildM( AttacTypeSelect.WndHandle , "HighLight"..i)
        if _GUIHandle ~= 0 then
            GUI:WndSetVisible(_GUIHandle,false)
        end
    end
end

AttacTypeSelect.main()
