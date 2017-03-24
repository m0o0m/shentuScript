HeroEuiment = {}

HeroEuiment.UseShield = true

function HeroEuiment.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = _Parent

    local _BackImage = GUI:ImageCreate(_GUIHandle, "GUI_2", 1906200035, -4, 0)
    if _BackImage ~= 0 then
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment1",-1,235,123,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"项链")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,1)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment2",-1,34,173,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"翅膀")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,2)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment3",-1,235,173,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"勋章")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,3)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment4",-1,84,323,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"守护")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,4)
    end


    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment5",-1,134,323,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"腰带")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,5)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment6",-1,34,223,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"护腕")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,6)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment7",-1,235,223,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"护腕")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,7)
    end    


    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment8",-1,34,273,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"戒指")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,8)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment9",-1,235,273,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"戒指")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,9)
    end


    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment10",-1,34,323,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"符咒")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,10)
    end


    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment11",-1,184,323,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"鞋子")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,11)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment12",-1,235,323,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"坐骑")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,12)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment17",-1,34,130,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"时装")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,17)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "HatShow", -1, 149, 90, 42, 42)
    if _GUIHandle ~= 0 then
	    
        GUI:WndSetHint(_GUIHandle, "斗笠展示")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,true)
        GUI:WndSetCanRevMsg(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 4)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 188, 188)
        GUI:ImageSetDrawCenter(_GUIHandle,true)
		GUI:ImageSetTransfrom(_GUIHandle,6800,6800,0) --图片缩放比例大小接口 7000是缩放70%
		--GUI:ItemCtrlSetIconSize(_GUIHandle, 16, 16)
    end
	

	
    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment18", -1, 329, 73, 42, 42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "斗笠")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,18)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"WingShow",-1,121,155,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"翅膀展示")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment14",-1,129,207,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"衣服")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,14)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment13",-1,84,231,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"武器")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,13)
    end


    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment15",-1,235,74,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"武器")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,15)
    end


    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment0",-1,124,90,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"头盔")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,0)
    end
	
	if HeroEuiment.UseShield then
		_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment16",-1,131,224,32,32)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "HeroEuiment.ItemOnRBTNUp")
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroEuiment.ItemOnLBTNUp")
			GUI:WndSetHint(_GUIHandle,"盾牌")
			GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
			GUI:WndSetParam(_GUIHandle,16)
		end
	end 

    local _RoleNameEdit = GUI:EditCreate(_Parent, "RoleName", 84, 22, 131, 19)
    if _RoleNameEdit ~= 0 then
        GUI:EditSetCanEdit(_RoleNameEdit, false)
        GUI:EditSetFontCenter(_RoleNameEdit)
    end

    local _FamilyNameEdit = GUI:RichEditCreate(_Parent, "FamilyNameEdit", 56, 48, 187, 16)
    if _FamilyNameEdit ~= 0 then
        GUI:RichEditSetEditEnable(_FamilyNameEdit, false)
        GUI:WndAddFlags(_FamilyNameEdit, 2097192)
    end


    _BackImage = GUI:ImageCreate(_Parent, "EnhanceLv", 0, 139, 75)
    if _BackImage ~= 0 then
    end

    _BackImage = GUI:ImageCreate(_Parent, "EnhanceMagic", 1088400000, 117, 53)
    if _BackImage ~= 0 then
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"ShowFashion",1900112013,"显示时装",117,300)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "HeroEuiment.FashionShowChange")
        GUI:WndSetTextM(_GUIHandle,"显示时装")
        GUI:WndSetTextColorM(_GUIHandle,4290950816)
        GUI:CheckBoxSetAutoChange(_GUIHandle,true)
    end

    HeroEuiment.UIInit(_Parent)
end




--UI Logic Code Start
function HeroEuiment.UIInit(_Parent)
   local _Handle = _Parent
   local _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment0")
   if _GUIHandle ~= 0 then
        GUI:WndSetPosM(_GUIHandle, 120, 115)
        GUI:WndSetSizeM(_GUIHandle, 34, 34)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 3)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 144, 175)
        GUI:ImageSetDrawCenter(_GUIHandle,true)

        local _HeroGUID = CL:GetCurHeroGUID();
        if CL:GetPlayerProperty32(_HeroGUID, 181) then
            local _Gender = LuaRet
            if _Gender == 1 then
                GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990401250)
            else
                GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990401251)
            end 
        end
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment13")
    if _GUIHandle ~= 0 then
        GUI:WndSetPosM(_GUIHandle, 55, 55)
        GUI:WndSetSizeM(_GUIHandle, 50, 240)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 1)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 144, 175)
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment14")
    if _GUIHandle ~= 0 then
        GUI:WndSetPosM(_GUIHandle, 95, 150)
        GUI:WndSetSizeM(_GUIHandle, 80, 170)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 2)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 144, 175)
        GUI:ImageSetDrawCenter(_GUIHandle,true)

        local _HeroGUID = CL:GetCurHeroGUID();
        if CL:GetPlayerProperty32(_HeroGUID, 181) then
            local _Gender = LuaRet
            if _Gender == 1 then
                GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990401001)
            else
                GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990401002)
            end
        end
    end
	
	_GUIHandle = GUI:WndFindWindow(_Handle, "Equiment16")
    if _GUIHandle ~= 0 then
        GUI:WndSetPosM(_GUIHandle, 120, 150)
        GUI:WndSetSizeM(_GUIHandle, 70, 110)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 1)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 144, 175)
        GUI:ImageSetDrawCenter(_GUIHandle,true)
		--GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1890500200)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "WingShow")
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle,false)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 4)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 144, 175)
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end

    local _ShowFashionHandle = GUI:WndFindWindow(_Handle, "ShowFashion")
    if _ShowFashionHandle ~= 0 then
        local _ShowFashion = CL:HeroGetShowFashion()
        GUI:CheckBoxSetCheck(_ShowFashionHandle, _ShowFashion)
    end

    local _EditHandle = GUI:WndFindWindow(_Handle, "RoleName")
    if 0 ~= _EditHandle then
        GUI:WndSetTextColorM(_EditHandle,4290950816)
    end
end

function HeroEuiment.FashionShowChange(_Handle,_Param)
    local _ShowFashion = GUI:CheckBoxGetCheck(_Handle)
    CL:HeroShowFashion(_ShowFashion)
end


HeroEuiment.main()