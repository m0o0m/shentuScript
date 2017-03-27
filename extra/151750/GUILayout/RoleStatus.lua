RoleStatus = {}
function RoleStatus.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _Parent = GUI:WndCreateWnd(_Parent,"RoleStatus",0,604,290	)
    if _Parent ~= 0 then
		GUI:WndSetFlagsM(_Parent, flg_wndBase_useBkBuffer)
        GUI:WndSetSizeM(_Parent, 498, 200)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"PhyDefEdit",270,6,200,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MagicDefineEdit",270,36,200, 20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"PhyAttackEdit",10,6,200, 20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MagicAttacEdit",10,36,200, 20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"DaoAttacEdit",10,66,200, 20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MissEdit",10,96,200,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HitEdit",270,96,200, 20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"ExtremAtcEdit",10,126,200, 20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"RoleLucky",270,126,200, 20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"ATTACK_SPEED_Edit",10,156,200, 20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MOVE_SPEED_Edit",270,156,200, 20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"WeightEdit",10,186,200, 20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"RoleWareWeightEdit",270,186,200, 20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HandPowerEdit",10,216,200, 20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    RoleStatus.UIInit(_Parent)
end

--UI Logic Code Start
function RoleStatus.UIInit(_Handle)
    RoleStatus.WndHandle = _Handle
    RegisterUIEvent(LUA_EVENT_PROPERTYDATA, "RoleStatus_PropDataChange", RoleStatus.propDataChange)

    
    _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "PhyDefEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_DEF) then 
            Property = LuaRet
        end 
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_DEF) then 
            max_Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"物理防御: ".. Property.." - "..max_Property)        
    end

    _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "MagicDefineEdit")
    if _GUIHandle ~= 0 then    
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_DEF) then 
            Property = LuaRet
        end  
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_DEF) then 
            max_Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"魔法防御: ".. Property.." - "..max_Property)
    end
    
    local PhyAttacMax = 0
    local MagicAttacMax = 0
    local DaoAttacMax = 0
    
    _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "PhyAttackEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_ATK) then 
            Property = LuaRet
        end  
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_ATK) then 
            max_Property = LuaRet
            PhyAttacMax = max_Property
        end        
        GUI:EditSetTextM(_GUIHandle,"物理攻击: ".. Property.." - "..max_Property)        
    end

    _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "MagicAttacEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_ATK) then 
            Property = LuaRet
        end  
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_ATK) then 
            max_Property = LuaRet
            MagicAttacMax = max_Property
        end        
        GUI:EditSetTextM(_GUIHandle,"魔法攻击: ".. Property.." - "..max_Property)
    end

    _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "DaoAttacEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_TAO_ATK) then 
            Property = LuaRet
        end  
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_TAO_ATK) then 
            max_Property = LuaRet
            DaoAttacMax = max_Property
        end        
        GUI:EditSetTextM(_GUIHandle,"道术攻击: ".. Property.." - "..max_Property)    
    end

    _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "JobEdit")
    if 0 ~= _GUIHandle then
        GUI:EditSetTextM(_GUIHandle,"职业："..RDJOBName[Job])
        if Job==RDJob["战士"] then
            RoleEquiment.ShowNumber(PhyAttacMax)
        elseif Job==RDJob["法师"] then
            RoleEquiment.ShowNumber(MagicAttacMax)
        elseif Job==RDJob["道士"] then
            RoleEquiment.ShowNumber(DaoAttacMax)
        end
    end
    
    _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "MissEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MISS) then 
            Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"闪避: ".. Property)
    end
    
    _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "HitEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_HIT) then 
            Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"命中: ".. Property)    
    end
    
    _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "ExtremAtcEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_BURST) then 
            Property = LuaRet
        end      
        GUI:EditSetTextM(_GUIHandle,"暴击: ".. Property)    
    end
    
    _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "RoleLucky")
    if _GUIHandle ~= 0 then    
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_LUCK_CURSE) then 
            Property = LuaRet
        end      
        GUI:EditSetTextM(_GUIHandle,"幸运值: ".. Property)    
    end
    
    _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "ATTACK_SPEED_Edit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_ATTACK_SPEED_PCT) then 
            Property = LuaRet
        end       
        GUI:EditSetTextM(_GUIHandle,"攻击速度: +".. Property.."%")
    end

    _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "MOVE_SPEED_Edit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MOVE_SPEED_PCT) then 
            Property = LuaRet
        end          
        GUI:EditSetTextM(_GUIHandle,"移动速度: +".. Property.."%")
    end

    _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "WeightEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_WEIGHT) then 
            Property = LuaRet
        end   
         if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_WEIGHT) then 
            max_Property = LuaRet
        end         
        GUI:EditSetTextM(_GUIHandle,"背包重量: +".. Property.."-"..max_Property)
    end

    _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "RoleWareWeightEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_EQUIP_WEIGHT) then 
            Property = LuaRet
        end   
         if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_EQUIP_WEIGHT) then 
            max_Property = LuaRet
        end         
        GUI:EditSetTextM(_GUIHandle,"穿戴重量: +".. Property.."-"..max_Property)
    end

    _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "HandPowerEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_BRAWN) then 
            Property = LuaRet
        end   
         if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_BRAWN) then 
            max_Property = LuaRet
        end         
        GUI:EditSetTextM(_GUIHandle,"腕力: +".. Property.."-"..max_Property)
    end
end


function RoleStatus.propDataChange()
    local _GUIHandle = 0
    local Property = 0
    local max_Property = 0
    local PhyAttacMax = 0
    local MagicAttacMax = 0
    local DaoAttacMax = 0
    
    
    if LuaParam[2] == ROLE_PROP32_MIN_PHY_DEF or LuaParam[2] == ROLE_PROP32_MAX_PHY_DEF then
        _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "PhyDefEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_DEF) then 
                Property = LuaRet
            end 
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_DEF) then 
                max_Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"物理防御: ".. Property.." - "..max_Property)        
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MIN_MAG_DEF or LuaParam[2] == ROLE_PROP32_MAX_MAG_DEF then
        _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "MagicDefineEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_DEF) then 
                Property = LuaRet
            end  
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_DEF) then 
                max_Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"魔法防御: ".. Property.." - "..max_Property)
        end
    end 
    
    local Job = 0
    
    if LuaParam[2] == ROLE_PROP32_MIN_PHY_ATK or LuaParam[2] == ROLE_PROP32_MAX_PHY_ATK then
        _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "PhyAttackEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_ATK) then 
                Property = LuaRet
            end  
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_ATK) then 
                max_Property = LuaRet
                PhyAttacMax = max_Property
            end     

            if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then 
                Job = LuaRet
            end             
            if Job==RDJob["战士"] then
                --这里是设置战斗力的
               -- RoleStatus.ShowNumber(PhyAttacMax)
            end            
            GUI:EditSetTextM(_GUIHandle,"物理攻击: ".. Property.." - "..max_Property)        
        end
    end 

    if LuaParam[2] == ROLE_PROP32_MIN_MAG_ATK or LuaParam[2] == ROLE_PROP32_MAX_MAG_ATK then
        _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "MagicAttacEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_ATK) then 
                Property = LuaRet
            end  
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_ATK) then 
                max_Property = LuaRet
                MagicAttacMax = max_Property
            end       
            if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then 
                Job = LuaRet
            end             
            if Job==RDJob["法师"] then
                --RoleStatus.ShowNumber(MagicAttacMax)
            end
            GUI:EditSetTextM(_GUIHandle,"魔法攻击: ".. Property.." - "..max_Property)
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MIN_TAO_ATK or LuaParam[2] == ROLE_PROP32_MAX_TAO_ATK then
        _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "DaoAttacEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_TAO_ATK) then 
                Property = LuaRet
            end  
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_TAO_ATK) then 
                max_Property = LuaRet
                DaoAttacMax = max_Property
            end      
            if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then 
                Job = LuaRet
            end             
            if Job==RDJob["道士"] then
                --RoleStatus.ShowNumber(DaoAttacMax)    
            end                
            GUI:EditSetTextM(_GUIHandle,"道术攻击: ".. Property.." - "..max_Property)    
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MISS then
        _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "MissEdit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MISS) then 
                Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"闪避: ".. Property)
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_HIT then
        _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "HitEdit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_HIT) then 
                Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"命中: ".. Property)    
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_BURST then
        _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "ExtremAtcEdit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_BURST) then 
                Property = LuaRet
            end      
            GUI:EditSetTextM(_GUIHandle,"暴击: ".. Property)    
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_LUCK_CURSE then
        _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "RoleLucky")
        if _GUIHandle ~= 0 then    
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_LUCK_CURSE) then 
                Property = LuaRet
            end      
            GUI:EditSetTextM(_GUIHandle,"幸运值: ".. Property)    
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_ATTACK_SPEED_PCT then
        _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "ATTACK_SPEED_Edit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_ATTACK_SPEED_PCT) then 
                Property = LuaRet
            end       
            GUI:EditSetTextM(_GUIHandle,"攻击速度: +".. Property.."%")
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MOVE_SPEED_PCT then
        _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "MOVE_SPEED_Edit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MOVE_SPEED_PCT) then 
                Property = LuaRet
            end          
            GUI:EditSetTextM(_GUIHandle,"移动速度: +".. Property.."%")
        end
    end 

    if LuaParam[2] == ROLE_PROP32_WEIGHT then
        _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "WeightEdit")
        if _GUIHandle ~= 0 then
            local Property = 0
            local max_Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_WEIGHT) then 
                Property = LuaRet
            end   
             if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_WEIGHT) then 
                max_Property = LuaRet
            end         
            GUI:EditSetTextM(_GUIHandle,"背包重量: +".. Property.."-"..max_Property)
        end
    end

    if LuaParam[2] == ROLE_PROP32_EQUIP_WEIGHT then
        _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "RoleWareWeightEdit")
        if _GUIHandle ~= 0 then
            local Property = 0
            local max_Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_EQUIP_WEIGHT) then 
                Property = LuaRet
            end   
             if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_EQUIP_WEIGHT) then 
                max_Property = LuaRet
            end         
            GUI:EditSetTextM(_GUIHandle,"穿戴重量: +".. Property.."-"..max_Property)
        end
    end

    if LuaParam[2] == ROLE_PROP32_BRAWN then
        _GUIHandle = GUI:WndFindWindow(RoleStatus.WndHandle, "HandPowerEdit")
        if _GUIHandle ~= 0 then
            local Property = 0
            local max_Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_BRAWN) then 
                Property = LuaRet
            end   
             if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_BRAWN) then 
                max_Property = LuaRet
            end         
            GUI:EditSetTextM(_GUIHandle,"腕力: +".. Property.."-"..max_Property)
        end
    end
end


RoleStatus.main()






