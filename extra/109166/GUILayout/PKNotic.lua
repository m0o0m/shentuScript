--
-- Author: miyezng
-- Date: 2016-09-22 11:29:11
--
PKNotic = {}
function PKNotic.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",0,0,29)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,453, 162)
        GUI:ImageSetAroundImage(_GUIHandle, 1913100001, 1913100003, 1913100005, 1913100007, 1913100009, 1913100002, 1913100006, 1913100004, 1913100008)
    end


    _GUIHandle = GUI:ButtonCreate(_Parent,"Btn",1910000001,348,149)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"确  定")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884516)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckBox",1930001000,"同意自由对战",212,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"同意自由对战")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,98, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4294967295)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end



    _GUIHandle = GUI:RichEditCreate(_Parent,"Edit",32,62,385,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditAppendString(_GUIHandle, "本游戏区为自由对战模式，遵守游戏规则可以获得更多的游戏体验")
        GUI:RichEditSetEditEnable(_GUIHandle, false)
    end



    PKNotic.UIInit(_Parent)
end

--UI Logic Code Start
function PKNotic.UIInit(_Handle)
end
PKNotic.main()