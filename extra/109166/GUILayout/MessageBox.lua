--
-- Author: miyezng
-- Date: 2016-08-24 15:17:22
--
MessageBoxEx = {}
function MessageBoxEx.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1932300049,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,453, 162)
        GUI:ImageSetAroundImage(_GUIHandle, 1913100001, 1913100003, 1913100005, 1913100007, 1913100009, 1913100002, 1913100006, 1913100004, 1913100008)
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"MessageText",40,32,371,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"MessageBox_OK",1910000001,258,110)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"确  定")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"MessageBox_Cancle",1910000001,347,110)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"取  消")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"GUICheck",1932300020,"",58,109)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"MessageBox_Close",1932300034,422,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
    end
    
    MessageBoxEx.UIInit(_Parent)
end

--UI Logic Code Start
function MessageBoxEx.UIInit(_Handle)
end
MessageBoxEx.main()