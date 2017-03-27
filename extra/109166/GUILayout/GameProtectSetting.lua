--
-- Author: miyezng
-- Date: 2016-08-29 15:08:16
--
GameProtectSetting = {}
function GameProtectSetting.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1912900003,20,8)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,583, 262)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox0",1910000012,43,52,130,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1910000008,1910000012,1910000016,0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox1",1910000012,43,79,130,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1910000008,1910000012,1910000016,0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox2",1910000012,43,106,129,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1910000008,1910000012,1910000016,0)
    end
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox3",1910000012,43,132,129,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1910000008,1910000012,1910000016,0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox4",1910000012,320,52,128,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1910000008,1910000012,1910000016,0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox5",1910000012,320,79,130,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1910000008,1910000012,1910000016,0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox6",1910000012,320,106,130,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1910000008,1910000012,1910000016,0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox7",1910000012,320,132,130,20,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900039)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1910000008,1910000012,1910000016,0)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check0",1912900013,"",25,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check1",1912900013,"",25,83)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check2",1912900013,"",25,111)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check3",1912900013,"",25,136)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check4",1912900013,"",301,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check5",1912900013,"",301,83)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check6",1912900013,"",301,111)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check7",1912900013,"",301,136)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check8",1912900013,"",25,210)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check9",1912900013,"",299,210)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit0",180,55,44,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit1",180,82,34,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit2",180,109,33,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit3",180,135,32,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit4",458,55,34,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit5",458,82,37,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit6",458,109,35,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit7",458,135,35,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit8",92,207,41,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit9",365,208,38,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit0",240,55,46,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit1",240,82,48,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit2",240,109,46,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit3",240,135,46,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit4",516,55,38,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit5",516,82,36,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit6",516,109,37,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"DelayEdit7",516,135,38,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox8",1930001014,190,208,103,17,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900038)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1910000008,1910000012,1910000016,0)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox9",1930001014,462,207,105,19,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900038)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1910000008,1910000012,1910000016,0)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"DataType",1930001000,"",479,171)
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