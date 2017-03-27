GameProtectSetting = {}
function GameProtectSetting.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931100015,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,583, 262)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox0",1930001014,34,41,130,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox1",1930001014,34,72,130,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox2",1930001014,34,104,129,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox3",1930001014,34,138,129,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox4",1930001014,345,42,128,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox5",1930001014,345,74,130,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox6",1930001014,345,104,130,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox7",1930001014,345,138,130,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check0",1930001000,"",7,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check1",1930001000,"",7,73)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check2",1930001000,"",7,106)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check3",1930001000,"",7,138)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check4",1930001000,"",316,43)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check5",1930001000,"",316,73)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check6",1930001000,"",316,104)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check7",1930001000,"",316,137)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check8",1930001000,"",7,227)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check9",1930001000,"",294,227)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit0",170,45,44,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit1",170,75,34,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit2",170,107,33,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit3",170,140,32,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit4",479,46,34,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit5",479,75,37,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit6",479,106,35,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit7",479,141,35,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit8",90,229,41,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit9",379,229,38,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit0",212,45,46,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit1",212,75,48,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit2",212,107,46,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit3",212,140,46,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit4",522,46,38,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit5",522,75,36,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit6",522,106,37,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit7",522,141,38,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox8",1930001014,174,228,103,17,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900038)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox9",1930001014,460,226,105,19,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900038)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"DataType",1930001000,"",249,1)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetText(_GUIHandle,"使用百分比")
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    GameProtectSetting.UIInit(_Parent)
end

--UI Logic Code Start
function GameProtectSetting.UIInit(_Handle)
end
GameProtectSetting.main()




