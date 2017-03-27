HeroProtect = {}
function HeroProtect.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"HeroProtect",0,199,161)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1906200037,-4,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,503, 390)
    end

    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox0",1906300014,59,22,130,20,150)
    if _GUIHandle ~= 0 then
        --GUI:ComboBoxSetListFillImage(_GUIHandle,15)
        --GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end

    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox1",1906300014,58,51,130,20,150)
    if _GUIHandle ~= 0 then
        --GUI:ComboBoxSetListFillImage(_GUIHandle,15)
        --GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end

    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox2",1906300014,58,81,129,20,150)
    if _GUIHandle ~= 0 then
        --GUI:ComboBoxSetListFillImage(_GUIHandle,15)
        --GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end

    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox3",1906300014,58,111,129,20,150)
    if _GUIHandle ~= 0 then
       -- GUI:ComboBoxSetListFillImage(_GUIHandle,15)
        --GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end

    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox4",1906300014,58,165,128,20,150)
    if _GUIHandle ~= 0 then
       -- GUI:ComboBoxSetListFillImage(_GUIHandle,15)
        --GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end

    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox5",1906300014,58,195,130,20,150)
    if _GUIHandle ~= 0 then
        --GUI:ComboBoxSetListFillImage(_GUIHandle,15)
        --GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end

    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox6",1906300014,58,225,130,20,150)
    if _GUIHandle ~= 0 then
       -- GUI:ComboBoxSetListFillImage(_GUIHandle,15)
        --GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end

    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox7",1906300014,58,255,130,20,150)
    if _GUIHandle ~= 0 then
        --GUI:ComboBoxSetListFillImage(_GUIHandle,15)
        --GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check0",1900112013,"",35,23)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,18, 18)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check1",1900112013,"",34,51)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,18, 18)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check2",1900112013,"",34,82)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,18, 18)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check3",1900112013,"",34,112)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,18, 18)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check4",1900112013,"",34,167)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,18, 18)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check5",1900112013,"",34,195)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,18, 18)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check6",1900112013,"",34,226)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,18, 18)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check7",1900112013,"",34,256)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,18, 18)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check8",1900112013,"",30,314)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,18, 18)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check9",1900112013,"",264,314)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,18, 18)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit0",230,23,50,13)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit1",230,54,51,13)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit2",230,85,53,13)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit3",230,115,51,13)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit4",230,168,48,13)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit5",230,199,46,13)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit6",230,229,48,13)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit7",230,259,47,13)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit8",120,315,63,18)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit9",343,315,62,15)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit0",390,24,46,13)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit1",390,53,48,13)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit2",390,83,46,13)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit3",390,113,46,13)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit4",390,166,46,13)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit5",390,197,47,13)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit6",390,227,62,14)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit7",390,257,60,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"DataType",1900112013,"",370,340)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,18, 18)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end

    HeroProtect.UIInit(_Parent)
end

--UI Logic Code Start
function HeroProtect.UIInit(_Handle)
end
HeroProtect.main()




