--
-- Author: miyezng
-- Date: 2016-08-22 11:22:27
--
LoginGUI = {}
function LoginGUI.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage",1910100099,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1280, 800)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end

    local _TextureWidth = CL:GetTextureWidth(1040600000)
    local _TextureHeight = CL:GetTextureHeight(1040600000)
    local _ImageHandle1 = GUI:ImageCreate(_Parent, "Fire", 1040600000, 0, 0)
    if _ImageHandle1 ~= 0 then
        GUI:ImageSetAnimateEnable(_ImageHandle1, true, 100)
        if _TextureWidth > 0  and _TextureHeight > 0 then
            GUI:WndSetPosByDeviceSize(_ImageHandle1, false, false)
            local _NewSizeX = _TextureWidth * _DeviceSizeX / 1280;
            local _NewSizeY = _TextureHeight * _DeviceSizeY / 800;
            GUI:WndSetSizeM(_ImageHandle1, _NewSizeX, _NewSizeY)
            GUI:ImageSetFitSize(_ImageHandle1, true)
        end
    end


    _GUIHandle = GUI:ImageCreate(_Parent,"LoginBack",1910100066,380,455)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,200, 150)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_wnd_visible, "LoginGUI.onOpenDoor")
    end


    _GUIHandle = GUI:EditCreate(_Parent,"LoginName",450,475,127,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end



    _GUIHandle = GUI:EditCreate(_Parent,"LoginPassWord",450,501,127,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end



    _GUIHandle = GUI:ButtonCreate(_Parent,"Confirm",1910100082,415,540)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,90, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"SaveLoginName",1910100067,"",595,472)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle," «∑Ò±£¥Ê’ ∫≈")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,18, 18)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end



    _GUIHandle = GUI:ButtonCreate(_Parent,"Back",1910100086,530,540)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,90, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Register",1910100073,421,580)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,90, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ChangePassWord",1910100078,535,580)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,90, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Keyboard",1910100069,595,500)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle," π”√»Ìº¸≈Ã")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,27, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    LoginGUI.UIInit(_Parent)
end

--UI Logic Code Start
function LoginGUI.UIInit(_Parent)
    local wnds = {"LoginBack", "LoginName", "LoginPassWord", "Confirm", "SaveLoginName", "Back", "Register", "ChangePassWord", "Keyboard"}
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()
    local offX = (_DeviceSizeX - 1024) / 2
    local offY = (_DeviceSizeY - 768) / 2
    for i,v in ipairs(wnds) do
        local _Handle = GUI:WndFindChildM(_Parent, v)
        if 0 ~= _Handle then
            local x, y = 0, 0
            if GUI:WndGetPosM(_Handle) then
                x = LuaRet[1]
                y = LuaRet[2]
            end
            x = x + offX
            y = y + offY
            GUI:WndSetPosM(_Handle, x, y)
        end
    end
end

function LoginGUI.onOpenDoor(_Handle)
    local _Parent = GUI:WndGetParentM(_Handle)
    local _BackImage = GUI:WndFindChildM(_Parent, "BackImage")
    local posX, posY, width, height = 0, 0, 0, 0
    if GUI:WndGetPosM(_BackImage) then
        posX, poxY = LuaRet[1], LuaRet[2]
    end
    if GUI:WndGetSizeM(_BackImage) then
        width, height = LuaRet[1], LuaRet[2]
    end

    local _DoorEffect = GUI:ImageCreate(_Parent, "DoorEffect", 1040500000, posX, posY)
    if _DoorEffect ~= 0 then
        GUI:WndSetSizeM(_DoorEffect, width, height)
        GUI:ImageSetFitSize(_DoorEffect, true)
        GUI:ImageSetAnimate(_DoorEffect, 60, 1, "0")
    end

    local _GUIHandle = GUI:WndFindChildM(_Parent, "Fire")
    if 0 ~= _GUIHandle then
        GUI:WndMoveToParentTop(_GUIHandle)
    end

    local _Handle = GUI:ImageCreate(_Parent, "DoorEffectMask", 1042500000, posX, posY)
    if _Handle ~= 0 then
        GUI:WndSetSizeM(_Handle, width, height)
        GUI:ImageSetFitSize(_Handle, true)
        GUI:ImageSetAnimate(_Handle, 60, 1, "0")
    end
end

LoginGUI.main()