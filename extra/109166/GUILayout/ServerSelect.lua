--
-- Author: miyezng
-- Date: 2016-08-22 11:02:39
--
ServerSelect = {}

function ServerSelect.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = _Parent
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    local _ImageHandle0 = GUI:ImageCreate(_GUIHandle, "BackImage0", 1910100099, 0, 0)
    if _ImageHandle0 ~= 0 then
        GUI:ImageSetFitSize(_ImageHandle0,  true)
        GUI:WndSetSizeM(_ImageHandle0, _DeviceSizeX, _DeviceSizeY)
    end

    local _ImageHandle4 = GUI:ImageCreate(_GUIHandle, "BackImage3", 1910100057, 377, 195)
    if _ImageHandle4 ~= 0 then
        GUI:ImageSetCheckPoint(_ImageHandle4, 0)
        local _TextureWidth = CL:GetTextureWidth(1910100057)
        local _TextureHeight = CL:GetTextureHeight(1910100057)
        if _TextureWidth > 0  and _TextureHeight > 0 then
            GUI:WndSetPosByDeviceSize(_ImageHandle4, true, false)
            local _NewSizeX = _TextureWidth * _DeviceSizeX / 1280;
            local _NewSizeY = _TextureHeight * _DeviceSizeY / 800;
            GUI:WndSetSizeM(_ImageHandle4, _NewSizeX, _NewSizeY)
    
        end
    end

    local _QuiteBtn = GUI:ButtonCreate(_GUIHandle, "Quite", 1910100062, 455, 650)
    if _QuiteBtn ~= 0 then
        GUI:WndRegistScript(_QuiteBtn, RDWndBaseCL_mouse_lbUp, "ServerSelect.QuiteBtnSelect")
        if GUI:WndGetPosM(_QuiteBtn) then 
            local _ImagePosX = LuaRet[1] - 1024 / 2 + _DeviceSizeX / 2
            local _ImagePosY = LuaRet[2] - 768 / 2 + _DeviceSizeY / 2
            GUI:WndSetPosM(_QuiteBtn, _ImagePosX, _ImagePosY)
        end 
    end



    local _ServerCount = CL:GetTestServerNameList(_GUIHandle);
    if _ServerCount > 0 then
        local  _XStartPos = 420
        local _TotalSize = _ServerCount * 80
        local _YStartPos = 175
        _YStartPos = 190 -  _TotalSize / 2 + _YStartPos

        for _Idx = 1, _ServerCount do
            local _ServerName = LuaRet[_Idx]
            local _PosX = _XStartPos - 1024 / 2 + _DeviceSizeX / 2
            local _PosY = _YStartPos - 768 / 2 + _DeviceSizeY / 2

            local _ButtonID = "ServerButton".._Idx
            local _ButtonHandle = GUI:ButtonCreate(_GUIHandle, _ButtonID, 1910100058, _PosX, _PosY);
            if _ButtonHandle ~= 0 then
                GUI:WndSetParam(_ButtonHandle, _Idx)
                GUI:WndRegistScript(_ButtonHandle,RDWndBaseCL_mouse_lbUp, "ServerSelect.ServerBtnSelect")
            end

            local _EditID = "ServerEdit".._Idx
            _PosX = _XStartPos + 10 - 1024 / 2 + _DeviceSizeX / 2 - 15
            _PosY = _YStartPos - 768 / 2 + _DeviceSizeY / 2 + 1
            local _EditHandle = GUI:EditCreate(_GUIHandle, _EditID, _PosX, _PosY,190,38)
            if _EditHandle ~= 0 then
                GUI:EditSetFontCenter(_EditHandle)
                GUI:EditSetFontM(_EditHandle, "SIMLI")
                GUI:EditSetTextM(_EditHandle, _ServerName)
                GUI:WndSetEnableM(_EditHandle, false)
            end 
            _YStartPos = _YStartPos + 40
        end
    end

    local _ImageHandle1 = GUI:ImageCreate(_GUIHandle, "BackImage1", 1040600000, 0, 0)
    if _ImageHandle1 ~= 0 then
        GUI:ImageSetCheckPoint(_ImageHandle1, 0)
        GUI:WndSetCanRevMsg(_ImageHandle1, false)
        GUI:ImageSetAnimateEnable(_ImageHandle1, true, 100)
        local _TextureWidth = CL:GetTextureWidth(1040600000)
        local _TextureHeight = CL:GetTextureHeight(1040600000)
        if _TextureWidth > 0  and _TextureHeight > 0 then
            GUI:WndSetPosByDeviceSize(_ImageHandle1, false, false)
            local _NewSizeX = _TextureWidth * _DeviceSizeX / 1280;
            local _NewSizeY = _TextureHeight * _DeviceSizeY / 800;
            GUI:WndSetSizeM(_ImageHandle1, _NewSizeX, _NewSizeY)
            GUI:ImageSetFitSize(_ImageHandle1, true)
        end
    end
end
ServerSelect.main()


function ServerSelect.ServerBtnSelect(_Handle,_Param)
    if _Handle ~= 0 then 
        local _Index = GUI:WndGetParam(_Handle)
        local _ParentHandle = GUI:WndGetParentM(_Handle)
        if _ParentHandle ~= 0 then
            CL:DoSelectServer(_ParentHandle, _Index)
        end
    end
end

function ServerSelect.QuiteBtnSelect(_Handle,_Param)
    if _Handle ~= 0 then 
        local _ParentHandle = GUI:WndGetParentM(_Handle)
        if _ParentHandle ~= 0 then
            CL:DoServerQuite(_ParentHandle)
        end
    end
end