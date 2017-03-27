RoleEquiment = {}
function RoleEquiment.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _GUIHandle = GUI:ImageCreate(_Parent,"RoleBg",1850300034,47,57)
    if _GUIHandle ~= 0 then
    end

    -- _GUIHandle = GUI:ImageCreate(_Parent,"GoldImg",1850300005,45,16)
    -- if _GUIHandle ~= 0 then
    -- end

    -- _GUIHandle = GUI:EditCreate(_Parent,"GoldEdit",90,16,0,0)
    -- if _GUIHandle ~= 0 then
    -- end

    -- _GUIHandle = GUI:ImageCreate(_Parent,"YuanBaoImg",1850300006,195,16)
    -- if _GUIHandle ~= 0 then
    -- end

    -- _GUIHandle = GUI:EditCreate(_Parent,"IngotEdit",240,16,0,0)
    -- if _GUIHandle ~= 0 then
    -- end

    -- _GUIHandle = GUI:ImageCreate(_Parent,"BindYuanBaoImg",1850300007,345,16)
    -- if _GUIHandle ~= 0 then
    -- end

    -- _GUIHandle = GUI:EditCreate(_Parent,"BindIngotEdit",390,16,0,0)
    -- if _GUIHandle ~= 0 then
    -- end
   
	_GUIHandle = GUI:ImageCreate(_Parent,"StatusImage",1850300000,577,82)
    if _GUIHandle ~= 0 then
    end


    -- _GUIHandle = GUI:EditCreate(_Parent,"RoleName",290,100,100,29)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndSetEnableM(_GUIHandle, false)
    --     GUI:WndSetParam(_GUIHandle, 0)
    --     GUI:EditSetCanEdit(_GUIHandle, false)
    --     GUI:EditSetFontCenter(_GUIHandle)
    -- end

    _GUIHandle = GUI:RichEditCreate(_Parent,"FamilyEdit",190,70,200,30)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
	
	--等级
	
    _GUIHandle = GUI:EditCreate(_Parent,"LevelEdit",606,118,100,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

 --    --战斗力(攻击力)
	-- _GUIHandle = GUI:EditCreate(_Parent,"BattleStaticEdit",806,118,100,20)
 --    if _GUIHandle ~= 0 then
	-- 	GUI:EditSetTextM(_GUIHandle,"攻击：")
	-- 	GUI:WndSetEnableM(_GUIHandle, false)
 --        GUI:WndSetParam(_GUIHandle, 0)
 --        GUI:EditSetCanEdit(_GUIHandle, false)
	-- 	GUI:WndSetTextColorM(_GUIHandle, 4291736418)
 --    end
	
    -- _GUIHandle = GUI:EditCreate(_Parent,"BattleEdit",747,118,100,20)
    -- if _GUIHandle ~= 0 then
    -- end


    --经验值
    _GUIHandle = GUI:ImageCreate(_Parent,"ExpBackImg",1850300001,712,162)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerEXPNew",1850300002,715,163)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"ExpStaticTextEdit",606,160,100,20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"经验值：")
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
       -- GUI:EditSetFontCenter(_GUIHandle)
	   GUI:WndSetTextColorM(_GUIHandle, 4291736418)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"ExpEdit",712,163,350,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end


    --生命值
    _GUIHandle = GUI:ImageCreate(_Parent,"BloodBackImg",1850300001,712,217)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BloodImg",1850300003,715,218)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HpStaticTextEdit",606,215,100,20)
    if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"生命值：")
		GUI:WndSetTextColorM(_GUIHandle, 4291736418)
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HpEdit",712,218,350,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end

    --魔法值
    _GUIHandle = GUI:ImageCreate(_Parent,"MagicBackImg",1850300001,712,249)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"MagicImg",1850300004,715,250)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MpStaticEdit",606,247,100,20)
    if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"魔法值：")
		GUI:WndSetTextColorM(_GUIHandle, 4291736418)
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        --GUI:EditSetFontCenter(_GUIHandle)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MpEdit",712,250,350,20)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
----

 


    --头盔背景
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg0",1850300036,67,96)
    if _GUIHandle ~= 0 then
    end
    
    --翅膀背景
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg1",1850300037,67,180)
    if _GUIHandle ~= 0 then
    end
    
    --武器背景
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg2",1850300038,67,264)
    if _GUIHandle ~= 0 then
    end
    
    --护腕背景1
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg3",1850300045,67,348)
    if _GUIHandle ~= 0 then
    end
    
    --戒指背景1
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg4",1850300040,67,432)
    if _GUIHandle ~= 0 then
    end
    
    --项链背景
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg5",1850300035,451,96)
    if _GUIHandle ~= 0 then
    end
    
    --勋章背景
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg6",1850300044,451,180)
    if _GUIHandle ~= 0 then
    end
    
    --衣服背景
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg7",1850300047,451,264)
    if _GUIHandle ~= 0 then
    end
    
    --护腕背景2
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg8",1850300045,451,348)
    if _GUIHandle ~= 0 then
    end
    
    --坐骑背景
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg9",1850300041,144,432)
    if _GUIHandle ~= 0 then
    end
    
    --腰带背景
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg10",1850300042,221,432)
    if _GUIHandle ~= 0 then
    end
    
    --鞋子背景
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg11",1850300043,298,432)
    if _GUIHandle ~= 0 then
    end
    
    --法宝守护背景
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg12",1850300048,375,432)
    if _GUIHandle ~= 0 then
    end
    
    --戒指背景2
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg13",1850300040,452,432)
    if _GUIHandle ~= 0 then
    end

    --宝石背景s
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg14",1850300039,149,349)
    if _GUIHandle ~= 0 then
    end
    
    --符咒背景
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg15",1850300046,373,351)
    if _GUIHandle ~= 0 then
    end
	
--------------------
  _GUIHandle = GUI:ItemCtrlCreate(_Parent,"WingShow",0,217,100,100,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"翅膀展示")
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,100, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		--GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 273,198)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ImageSetTransfrom(_GUIHandle, 15000, 15000, 0)
    end 
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equimentclothes",0,228,130,84,174)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"衣服")
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetParam(_GUIHandle, 14)
        GUI:WndSetSizeM(_GUIHandle,80, 170)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        --GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 280,215)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:WndSetMouseEnableIN(_GUIHandle, false)
		GUI:ImageSetTransfrom(_GUIHandle, 15000, 15000, 0)
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equimentweapons",0,232,164,60,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"武器")
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetParam(_GUIHandle, 13)
        GUI:WndSetSizeM(_GUIHandle,50, 240)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ImageSetTransfrom(_GUIHandle, 15000, 15000, 0)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 240,205)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:WndSetMouseEnableIN(_GUIHandle, false)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equimentshields",0,232,130,84,174)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"盾牌")
        GUI:WndSetParam(_GUIHandle, 16)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        --GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 295,200)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ImageSetTransfrom(_GUIHandle, 15000, 15000, 0)
    end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"image0",0,170,120)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,265, 304)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetTransfrom(_GUIHandle, 15000, 15000, 0)
	end
	
	------

	

	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment0",0,67,96,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"头盔")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment1",0,451,96,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"项链")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment2",0,67,180,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"翅膀")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end
 
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment3",0,451,180,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"勋章")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment4",0,375,432,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"守护")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment5",0,221,432,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"护肩")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment6",0,67,348,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"护腕")
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment7",0,451,348,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"护腕")
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment8",0,67,432,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"戒指")
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment9",0,452,432,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"戒指")
        GUI:WndSetParam(_GUIHandle, 9)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end   
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment10",0,373,351,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"符咒")
        GUI:WndSetParam(_GUIHandle, 10)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment11",0,298,432,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"鞋子")
        GUI:WndSetParam(_GUIHandle, 11)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment12",0,144,432,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"坐骑")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        --GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end

    
    
        _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment13",0,67,264,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"武器")
        GUI:WndSetParam(_GUIHandle, 13)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment14",0,451,264,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"衣服")
        GUI:WndSetParam(_GUIHandle, 14)
        GUI:WndSetSizeM(_GUIHandle,72,72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end 

    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment15",0,149,349,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"宝石")
        GUI:WndSetParam(_GUIHandle, 15)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)
    end
        
   --[[ 
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment16",0,206,194,72,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"盾牌")
        GUI:WndSetParam(_GUIHandle, 16)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        --GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 186,198)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end--]]



	
    UI:Lua_OpenWindow(_Parent,"RoleStatus.lua")

    RoleEquiment.UIInit(_Parent)
end


--UI Logic Code Start

--UI界面用装备索引
--  site_helmet,   /// 头盔0
--  site_necklace, /// 项链1
--  site_wings,    /// 翅膀2
--  site_medal,    /// 勋章3
--  site_amulet,   /// 守护4
--  site_shoulder, /// 护肩5
--  site_wrist_0,  /// 护腕0 6
--  site_wrist_1,  /// 护腕1 7
--  site_ring_0,   /// 戒指0 8
--  site_ring_1,   /// 戒指1 9
--  site_juju,     /// 符咒10
--  site_shoes,    /// 鞋子11
--  site_mount,    /// 坐骑12
--  site_weapon,   /// 武器13
--  site_armor,    /// 衣服14
--  site_gem,      /// 宝石15
--  site_shield,   /// 盾牌16
--  site_jewelry,   /// 时装17
--  site_hat,       /// 斗笠18
--  site_gloves,    /// 手套19
--  site_jewelry,   /// 珠宝20
RoleEquiment.ArmorSite = 5

RoleEquiment.WndHandle = 0
RoleEquiment.UseShield = true
RoleEquiment.ManHairTable = 
{
    1890900000, 
    1890900002,
    1890900004
}


RoleEquiment.WomanHairTable = 
{
    1890900001, 
    1890900003,
    1890900005
}

RoleEquiment.Open = false

--UI Logic Code Start
function RoleEquiment.UIInit(_Handle)
    RoleEquiment.WndHandle = _Handle
	RoleEquiment.Open = true
	UI:Lua_SubmitForm("角色表单", "main", "")
    RegisterUIEvent(LUA_EVENT_PROPERTYDATA, "RoleEquiment_PropDataChange", RoleEquiment.propDataChange)
    RegisterUIEvent(LUA_EVENT_PROPERTYDATA64, "RoleEquiment_PropDataChange", RoleEquiment.propDataChange64)       --玩家数据改变
	RegisterUIEvent(LUA_EVENT_ONEQUIPMENT, "RoleEquiment_穿装备", "RoleEquiment.onequipment")
	RegisterUIEvent(LUA_EVENT_OFFEQUIPMENT, "RoleEquiment_脱装备", "RoleEquiment.offequipment")
    
	
	
    local _GUIHandle = 0
    _GUIHandle = GUI:WndFindChildM(_Handle, "ExpEdit")
    if _GUIHandle ~= 0 then
        GUI:EditSetLimitStringSize(_GUIHandle, false)
    end
    _GUIHandle = GUI:WndFindWindow(_Handle, "EffectImg")
	if _GUIHandle ~= 0 then
	    GUI:ImageSetRenderState(_GUIHandle, 1)
    end

	local _Gender = 0
    if CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) then 
        _Gender = LuaRet
    end

    local Job = 1
    if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then 
        Job = LuaRet
    end
    --[[_GUIHandle = GUI:WndFindWindow(_Handle, "Equiment0")--头盔
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)

        if _Gender == 1 then
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, RoleEquiment.ManHairTable[Job])
        else
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, RoleEquiment.WomanHairTable[Job])
        end
    end--]]

    _GUIHandle = GUI:WndFindWindow(_Handle, "image0")--发型
	if _GUIHandle ~= 0 then
       GUI:ImageSetDrawCenter(_GUIHandle,true)
		if _Gender == 1 then
			GUI:WndSetImageID(_GUIHandle, RoleEquiment.ManHairTable[Job])
		else
			GUI:WndSetImageID(_GUIHandle, RoleEquiment.WomanHairTable[Job])
		end
    end
	
    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment13")--武器
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "Equimentshields")--盾牌
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment14")--衣服
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        if _Gender == 1 then
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1890900006)
        else
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1890900007)
        end
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "WingShow")--翅膀展示
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end
	
	local _ShowFashionHandle = GUI:WndFindWindow(_Handle, "ShowFashion")
    if _ShowFashionHandle ~= 0 then
        local _ShowFashion = CL:GetShowFashion()
        GUI:CheckBoxSetCheck(_ShowFashionHandle, _ShowFashion)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "RoleName")
    if 0 ~= _GUIHandle then
        local Property = 0
        if CL:GetPlayerSelfPropBase(ROLE_PROP_ROLENAME) then 
            Property = LuaRet
        end 
        GUI:EditSetTextM(_GUIHandle,Property)
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "FamilyEdit")
    if 0 ~= _GUIHandle then
        local Property = 0
        if CL:GetPlayerSelfPropBase(ROLE_PROP_FAMILY_NAME) then 
            Property = LuaRet
        end 
        if Property ~= 0 and Property ~= "" then 
            GUI:EditSetTextM(_GUIHandle,"行会："..Property)
        else
            GUI:EditSetTextM(_GUIHandle,"行会：无行会")
        end
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "LevelEdit")
    if 0 ~= _GUIHandle then
        local Property = 0
        if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
            Property = LuaRet
        end 
        GUI:EditSetTextM(_GUIHandle,"等级："..Property)
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "HpEdit")
    if _GUIHandle ~= 0 then    
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_HP) then 
            Property = LuaRet
        end  
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_HP) then 
            max_Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)    
        _GUIHandle = GUI:WndFindWindow(_Handle, "BloodImg")
        local value = 0
        if max_Property > 0 then
            value = Property/max_Property
        end
        if value > 0 then
            GUI:WndSetVisible(_GUIHandle,true)
            GUI:ImageSetDrawRect(_GUIHandle,0,value,0,1)
        else
            GUI:WndSetVisible(_GUIHandle,false)
        end
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "MpEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MP) then 
            Property = LuaRet
        end  
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MP) then 
            max_Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)    
        _GUIHandle = GUI:WndFindWindow(_Handle, "MagicImg")
        local value = 0
        if max_Property > 0 then
            value = Property/max_Property
        end
        if value > 0 then
            GUI:WndSetVisible(_GUIHandle,true)
            GUI:ImageSetDrawRect(_GUIHandle,0,value,0,1)
        else
            GUI:WndSetVisible(_GUIHandle,false)
        end        
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "InnerEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        GUI:EditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)    
        _GUIHandle = GUI:WndFindWindow(_Handle, "InnerImg")
        GUI:WndSetVisible(_GUIHandle,false)        
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "PhyDefEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_DEF) then 
            Property = LuaRet
        end 
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_DEF) then 
            max_Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)        
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "MagicDefineEdit")
    if _GUIHandle ~= 0 then    
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_DEF) then 
            Property = LuaRet
        end  
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_DEF) then 
            max_Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)
    end
    
    local PhyAttacMax = 0
    local MagicAttacMax = 0
    local DaoAttacMax = 0
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "PhyAttacEdit")
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
        GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)        
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "MagicAttacEdit")
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
        GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "DaoAttacEdit")
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
        GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)    
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "JobEdit")
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
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "MissEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MISS) then 
            Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property)
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "HitEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_HIT) then 
            Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property)    
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "ExtremAtcEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_BURST) then 
            Property = LuaRet
        end      
        GUI:EditSetTextM(_GUIHandle,"".. string.format("%.2f", Property/100).."%")
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "RoleLucky")
    if _GUIHandle ~= 0 then    
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_LUCK_CURSE) then 
            Property = LuaRet
        end      
        GUI:EditSetTextM(_GUIHandle,"".. Property)    
    end
    
    _GUIHandle = GUI:WndFindWindow(_Handle, "MOVE_SPEED_Edit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MOVE_SPEED_PCT) then 
            Property = LuaRet
        end          
        GUI:EditSetTextM(_GUIHandle,"+".. Property.."%")
    end
	
    _GUIHandle = GUI:WndFindWindow(_Handle, "GoldEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty64(ROLE_PROP64_GOLD) then 
            Property = LuaRet
        end  
         GUI:EditSetTextM(_GUIHandle,Property)   
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "IngotEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty64(ROLE_PROP64_INGOT) then 
            Property = LuaRet
        end  
         GUI:EditSetTextM(_GUIHandle,Property)   
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "BindIngotEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty64(ROLE_PROP64_BIND_INGOT) then 
            Property = LuaRet
        end  
         GUI:EditSetTextM(_GUIHandle,Property)   
    end
    
--
  _GUIHandle = GUI:WndFindWindow(_Handle, "HpTextEdit")
    if _GUIHandle ~= 0 then    
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_HP) then 
            Property = LuaRet
        end  
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_HP) then 
            max_Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)    
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "MpTextEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MP) then 
            Property = LuaRet
        end  
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MP) then 
            max_Property = LuaRet
        end        
        GUI:EditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)           
    end	
	
---
    _GUIHandle = GUI:WndFindWindow(_Handle, "LevelEdit")
    if 0 ~= _GUIHandle then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_LEVEL) then 
            Property = LuaRet
        end 
        GUI:EditSetTextM(_GUIHandle,"等级："..Property)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "BattleEdit")
    if 0 ~= _GUIHandle then
        GUI:EditSetTextM(_GUIHandle,"") 
    end	
	
	RoleEquiment.burstharm_updata()	--更新暴击伤害
	RoleEquiment.HideWeapon()
	RoleEquiment.ShowWeapon()
    RoleEquiment.updateExp(true)
end
RoleEquiment.imageid = {1805900066,1805900067,1805900068,1805900069,1805900070,1805900071,1805900072,1805900073,1805900074,1805900065}
function RoleEquiment.ShowNumber(value)
    local str = tostring(value) 
    local length = string.len(str)
    local _GUIHandle = 0
    if length<=5 and length>0 then
        local start = 6-length
        local index = 1;
        for i = 1, start do
            _GUIHandle=GUI:WndFindChildM(RoleEquiment.WndHandle, "Number"..i)
            GUI:WndSetVisible(_GUIHandle,false)
        end
        local a = 0 
        for i = start, 5 do
            _GUIHandle=GUI:WndFindChildM(RoleEquiment.WndHandle, "Number"..i)
            GUI:WndSetVisible(_GUIHandle,true)            
            a = tonumber(string.sub(str,index,index))
            if a == 0 then
                a = 10
            end
            GUI:WndSetImageID(_GUIHandle, RoleEquiment.imageid[a])
            index=index+1;
        end    
    else
        for i = 1, 4 do
            _GUIHandle=GUI:WndFindChildM(RoleEquiment.WndHandle, "Number"..i)
            GUI:WndSetVisible(_GUIHandle,false)
        end
        _GUIHandle=GUI:WndFindChildM(RoleEquiment.WndHandle, "Number5")
        GUI:WndSetVisible(_GUIHandle,true)
        GUI:WndSetImageID(_GUIHandle, 1801500097)
    end
    
end

function RoleEquiment.propDataChange()
    local _GUIHandle = 0
    local Property = 0
    local max_Property = 0
    local PhyAttacMax = 0
    local MagicAttacMax = 0
    local DaoAttacMax = 0
    
    if LuaParam[2] == ROLE_PROP32_HP or LuaParam[2] == ROLE_PROP32_MAX_HP then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "HpEdit")
        if _GUIHandle ~= 0 then 
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_HP) then 
                Property = LuaRet
            end  
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_HP) then 
                max_Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)  
            _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "BloodImg")
            local value = 0
            if max_Property > 0 then
                value = Property/max_Property
            end
            if value > 0 then
                GUI:WndSetVisible(_GUIHandle,true)
                GUI:ImageSetDrawRect(_GUIHandle,0,value,0,1)
            else
                GUI:WndSetVisible(_GUIHandle,false)
            end
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MP or LuaParam[2] == ROLE_PROP32_MAX_MP then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MpEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MP) then 
                Property = LuaRet
            end  
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MP) then 
                max_Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)  
            _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MagicImg")
            local value = 0
            if max_Property > 0 then
                value = Property/max_Property
            end
            if value > 0 then
                GUI:WndSetVisible(_GUIHandle,true)
                GUI:ImageSetDrawRect(_GUIHandle,0,value,0,1)
            else
                GUI:WndSetVisible(_GUIHandle,false)
            end     
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MIN_PHY_DEF or LuaParam[2] == ROLE_PROP32_MAX_PHY_DEF then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "PhyDefEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_DEF) then 
                Property = LuaRet
            end 
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_DEF) then 
                max_Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)        
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MIN_MAG_DEF or LuaParam[2] == ROLE_PROP32_MAX_MAG_DEF then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MagicDefineEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_DEF) then 
                Property = LuaRet
            end  
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_DEF) then 
                max_Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)
        end
    end 
    
    local Job = 0
    
    if LuaParam[2] == ROLE_PROP32_MIN_PHY_ATK or LuaParam[2] == ROLE_PROP32_MAX_PHY_ATK then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "PhyAttacEdit")
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
                RoleEquiment.ShowNumber(PhyAttacMax)
            end            
            GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)        
        end
    end 

    if LuaParam[2] == ROLE_PROP32_MIN_MAG_ATK or LuaParam[2] == ROLE_PROP32_MAX_MAG_ATK then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MagicAttacEdit")
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
                RoleEquiment.ShowNumber(MagicAttacMax)
            end
            GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MIN_TAO_ATK or LuaParam[2] == ROLE_PROP32_MAX_TAO_ATK then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "DaoAttacEdit")
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
                RoleEquiment.ShowNumber(DaoAttacMax)    
            end                
            GUI:EditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)    
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MISS then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MissEdit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MISS) then 
                Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"".. Property)
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_HIT then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "HitEdit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_HIT) then 
                Property = LuaRet
            end        
            GUI:EditSetTextM(_GUIHandle,"".. Property)    
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_BURST then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "ExtremAtcEdit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_BURST) then 
                Property = LuaRet
            end      
            GUI:EditSetTextM(_GUIHandle,"".. Property)    
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_LUCK_CURSE then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "RoleLucky")
        if _GUIHandle ~= 0 then    
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_LUCK_CURSE) then 
                Property = LuaRet
            end      
            GUI:EditSetTextM(_GUIHandle,"".. Property)    
        end
    end 
    
    if LuaParam[2] == ROLE_PROP32_MOVE_SPEED_PCT then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MOVE_SPEED_Edit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MOVE_SPEED_PCT) then 
                Property = LuaRet
            end          
            GUI:EditSetTextM(_GUIHandle,"+".. Property.."%")
        end
    end 

    CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID)
    if LuaParam[1] == LuaRet then
        if LuaParam[2] == ROLE_PROP32_LEVEL then
            GameMainBar.updateExp(false)
        end
    end
end

function RoleEquiment.propDataChange64()
    if LuaParam[2] == ROLE_PROP64_EXP then
        GameMainBar.updateExp(true)
    end
end

function RoleEquiment.updateExp(flag)
    --msg("RoleEquiment.updateExp 1")
    if CL:GetPlayerSelfProperty64(ROLE_PROP64_EXP) then
       --msg("RoleEquiment.updateExp 2")
        local CurrExp = LuaRet
        if CL:GetSelfUpgradeExp() then
        --msg("RoleEquiment.updateExp 3")
            local UpgradeExp = LuaRet
            if flag == true then
                if UpgradeExp < CurrExp then
                    return  --玩家获得经验升级后，收到经验变化时间早于等级变化，导致获得当前等级错误
                end
            end
            --经验为64位大数字，使用接口进行四则运算
           --msg("RoleEquiment.updateExp 4")
            local CurrExp100 = CL:Multiply(CurrExp, "10000")
            local percent = CL:Divided(CurrExp100, UpgradeExp)
            local fPercent = tonumber(percent) / 10000
            local _GUIHandle = GUI:WndFindChildM(RoleEquiment.WndHandle, "PlayerEXPNew")
            if _GUIHandle ~= 0 then
               --msg("RoleEquiment.updateExp 5")
                GUI:WndSetHintWidth(_GUIHandle, 250)
                GUI:WndSetHint(_GUIHandle, "经验："..CurrExp.."/"..UpgradeExp.."("..string.format("%.2f",fPercent*100).."%)")
                GUI:ImageSetDrawRect(_GUIHandle, 0, fPercent, 0, 1)
            end
        end
    end
end

function RoleEquiment.wndClose()
    RoleEquiment.Open = false
end

function RoleEquiment.ShowWeapon()
	local _Gender = 1
	if CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) then 
		_Gender = LuaRet
	end
	local site =  LuaParam[4]
	if UI:Lua_GetPlayerSelfEquipData() then
		guid_tb  = LuaRet
		local res_number = 0
		local Is_weap = 0
		for i = 1, #guid_tb do
			local item_handle = CL:GetItemTemplateHandleByGUID(guid_tb[i]) 
			if CL:GetItemTemplatePropByHandle(item_handle, ITEM_PROP_SUBTYPE) then
				if LuaRet == 4 then						
					RDItemCtrlSetGUIDataPropByGUID(RoleEquiment.WndHandle,"Equimentclothes", guid_tb[i])
					if CL:GetItemTemplatePropByHandle(item_handle, ITEM_PROP_BIGICON) then
						res_number = LuaRet
						res_number = math.floor(tonumber(res_number)/100000000)
						dbg("1111\\\\\\\\\\\\res_numeber = "..res_number)
						if tonumber(res_number) == 19 then
							local handle = GetWindow(RoleEquiment.WndHandle, "image0")
							if handle ~= 0 then
								GUI:WndSetPosM(handle, 54 + 70 + 23, 46 + 20 - 8) 
							end
						else
							local handle = GetWindow(RoleEquiment.WndHandle, "image0")
							if handle ~= 0 then
								GUI:WndSetPosM(handle, 55 + 70 + 23, 40 + 22) 
							end
						end
					end	
				elseif LuaRet == 1 then
					RDItemCtrlSetGUIDataPropByGUID(RoleEquiment.WndHandle,"Equimentweapons" , guid_tb[i])	
					Is_weap = 1		
                elseif LuaRet == 15 then
                    RDItemCtrlSetGUIDataPropByGUID(RoleEquiment.WndHandle,"Equimentshields" , guid_tb[i])      
				end	
			end
		end
		dbg("////Is_weap = "..Is_weap)
		if Is_weap == 1 then
			local handle = GetWindow(RoleEquiment.WndHandle, "Equimentweapons")
			dbg("////res_numeber = "..res_number)
			if tonumber(res_number) == 19  then		
				
				if handle ~= 0 then
					if _Gender == 1 then
						GUI:ItemCtrlSetBigIconOffset(handle, 186 + 90,198 + 15)
					else
						GUI:ItemCtrlSetBigIconOffset(handle, 186+1 +90, 198+1 + 15)
					end
				end	
			else
				if handle ~= 0 then
					if _Gender == 1 then
						GUI:ItemCtrlSetBigIconOffset(handle, 186-10 + 92, 198-4 + 15)
					else
						GUI:ItemCtrlSetBigIconOffset(handle, 186-1 + 92, 198-2 + 13)
					end
				end					
			end
		end	
	end
end

function RoleEquiment.HideWeapon()
	if UI:Lua_GetPlayerSelfEquipData() then
		guid_tb  = LuaRet
		local clothesnum = 0
		local weaponsnum = 0
        local shieldnum = 0
		for i = 1, #guid_tb do
			local item_handle = CL:GetItemTemplateHandleByGUID(guid_tb[i]) 
			if CL:GetItemTemplatePropByHandle(item_handle, ITEM_PROP_SUBTYPE) then
				if LuaRet == 4 then
					clothesnum = 1
				elseif LuaRet == 1 then
					weaponsnum = 1
                elseif LuaRet == 15 then
                    shieldnum = 1
				end			
			end
		end
		if clothesnum == 0 then
			local handle = GUI:WndFindWindow(RoleEquiment.WndHandle, "Equimentclothes")
			if handle ~= 0 then
				GUI:ItemCtrlClearItemData(handle)
				local _Gender = 1
				if CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) then 
					_Gender = LuaRet
				end
				if _Gender == 1 then
					GUI:ItemCtrlSetDefaultImage(handle, 1890900006)
				else
					GUI:ItemCtrlSetDefaultImage(handle, 1890900007)
				end
				local handle = GetWindow(RoleEquiment.WndHandle, "image0")
				if handle ~= 0 then
					dbg("22222\\\\\\\\\\\\res_numeber = "..clothesnum)
					GUI:WndSetPosM(handle, 148, 63) 
				end
				local handle = GetWindow(RoleEquiment.WndHandle, "Equimentweapons")
				if handle ~= 0 then
					if _Gender == 1 then
                        dbg("3333")
						GUI:ItemCtrlSetBigIconOffset(handle, 266, 209)
					else                       
                        dbg("4444")
						GUI:ItemCtrlSetBigIconOffset(handle, 278, 207)
					end
				end					
			end	
		end
		if weaponsnum == 0 then
			local handle = GUI:WndFindWindow(RoleEquiment.WndHandle, "Equimentweapons")
			if handle ~= 0 then
				GUI:ItemCtrlClearItemData(handle)
			end	
		end
        if shieldnum == 0 then
            local handle = GUI:WndFindChildM(RoleEquiment.WndHandle, "Equimentshields")
            if handle ~= 0 then
                GUI:ItemCtrlClearItemData(handle)
            end
        end
	end
end

function RoleEquiment.burstharm_updata()
	local _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "burstharm")
	if _GUIHandle ~= 0 then
		local itemlist = {}
		if UI:Lua_GetPlayerSelfEquipData() then
			if type(LuaRet) == "number" then 
				GUI:EditSetTextM(_GUIHandle,"0") 
				return 
			end
			itemlist = LuaRet
		end
		if #itemlist ~= 0 then 
			for i = 1 , #itemlist do 
				if CL:GetItemEntityPropByGUID(itemlist[i],4) then 
					local subtype = LuaRet
					if  subtype == 13 then
						local Entity = CL:GetItemEntityHandleByGUID(itemlist[i])
						local burstharm = CL:GetItemEntityCustomVarInt(Entity, "burstharm")
						GUI:EditSetTextM(_GUIHandle,"".. burstharm)
						break
					else
						GUI:EditSetTextM(_GUIHandle,"0")
					end
				end
			end
		end      
	end
end

function RoleEquiment.onequipment()
	if not RoleEquiment.Open then
		return
	end
	RoleEquiment.ShowWeapon()
	local site =  LuaParam[4]
	if site == SITE_AMULET then 
		local _GUIHandle = GetWindow(nil,"RoleGUI,RoleEquiment")
		if _GUIHandle ~= 0 then 
			RoleEquiment.burstharm_updata()
		end
	end
end

function RoleEquiment.offequipment()
	if not RoleEquiment.Open then
		return
	end
	RoleEquiment.HideWeapon()
	local site =  LuaParam[4]
	if site == SITE_AMULET then 
		local _GUIHandle = GetWindow(nil,"RoleGUI,RoleEquiment")
		if _GUIHandle ~= 0 then 
			RoleEquiment.burstharm_updata()
		end
	end
end


RoleEquiment.main()