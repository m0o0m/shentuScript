function PlayerReliveMain()
    local _PlayerStatus = CL:GetPlayerStatus()
    if _PlayerStatus == 3 then 
        CL:SetCurFont("SIMLI18")
            local _DeviceWidth = CL:GetScreenWidth()
        local _DeviceHeight = CL:GetScreenHeight()
        local _TextureWidth = CL:GetTextureWidth(1900190018)
    
        if _TextureWidth > 0 then 
            CL:DrawImage((_DeviceWidth - _TextureWidth) / 2, _DeviceHeight * 0.66, 1900190018)
        end
    
        local _KillerName = CL:GetKillerName()
        if _KillerName ~= "" then
            local _OutText = "Äú±»".._KillerName.."»÷°ÜÁË"
            local _Color = CL:GetColor("BGREENG")
            CL:TextOut((_DeviceWidth - 120) / 2, _DeviceHeight * 0.66 - 20, _OutText, _Color)
        end
    
        local _MainWnd = GUI:WndFindWindow(0, "GameMainInterface")
        if _MainWnd ~= 0 then
            local _ButtonHandle = GUI:WndFindChildM(_MainWnd, "ReliveButton")
            if _ButtonHandle == 0 then 
                _ButtonHandle = GUI:ButtonCreate(_MainWnd, "ReliveButton", 1900001104, 
                (_DeviceWidth - 96) / 2, _DeviceHeight * 0.66 + 40)
                if _ButtonHandle ~= 0 then
                    GUI:WndRegistScript(_ButtonHandle, RDWndBaseCL_mouse_lbUp, "PlayerReliveDoRelive")
                end
            end
        end
        CL:SetCurFont("system")
    else
        local _MainWnd = GUI:WndFindWindow(0, "GameMainInterface")
        if _MainWnd ~= 0 then
            local _ButtonHandle = GUI:WndFindChildM(_MainWnd, "ReliveButton")
            if _ButtonHandle ~= 0 then 
                GUI:WndClose(_ButtonHandle)
            end
        end
    end
end


function PlayerReliveDoRelive()
    CL:DoPlayerRelive()
end