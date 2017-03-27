RoleEquipment = {}

function RoleEquipment.main()
	local ui = "<form default_parent='RoleGUI'><dialog id='RoleEquipment' image='0' x='14' y='42' w='637' h='504' revmsg='true' OnInit='RoleEquipment.UIInit' OnClose='RoleEquipment.wndClose'>"
	.."<image id='BackImg' image='1800900001' x='0' y='0' w='81' h='29' revmsg='true' enable='false'/>"
	.."<image id='NameImg' image='1800900018' x='111' y='20' w='154' h='38' revmsg='true'/>"
	.."<edit id='RoleNameEdit' image='0' x='127' y='31' w='122' h='18' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<edit id='FamilyEdit' image='0' x='127' y='58' w='123' h='20' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<edit id='TitleEdit1' image='0' x='436' y='55' w='120' h='18' canedit='false' revmsg='true' enable='false' text_color=#FFFF00 text='主属性' font='system' align='center'/>"
	.."<edit id='JobEdit' image='0' x='286' y='16' w='90' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 font='system'/>"
	.."<edit id='LevelEdit' image='0' x='286' y='42' w='90' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 font='system'/>"
	.."<edit id='TitleEdit2' image='0' x='436' y='266' w='120' h='18' canedit='false' revmsg='true' enable='false' text_color=#FFFF00 text='副属性' font='system' align='center'/>"
	.."<image id='NumberBackImg' image='1800900019' x='389' y='2' w='215' h='49' revmsg='true'/>"
	.."<image id='NumberMagicImg' image='3000101600' x='347' y='-30' w='300' h='100' type='animate' revmsg='true'/>"
	.."<image id='AttackImg' image='1801500094' x='393' y='6' w='78' h='37' revmsg='true'/>"
	.."<image id='Number1' image='1801500106' x='475' y='14' w='23' h='28' revmsg='true'/>"
	.."<image id='Number2' image='1801500106' x='500' y='14' w='23' h='28' revmsg='true'/>"
	.."<image id='Number3' image='1801500106' x='525' y='14' w='23' h='28' revmsg='true'/>"
	.."<image id='Number4' image='1801500106' x='550' y='14' w='23' h='28' revmsg='true'/>"
	.."<image id='Number5' image='1801500106' x='575' y='14' w='23' h='28' revmsg='true'/>"
	.."<image id='BloodBackImg' image='1800900020' x='463' y='82' w='134' h='17' revmsg='true'/>"
	.."<image id='BloodImg' image='1800900021' x='465' y='84' w='130' h='13' revmsg='true'/>"
	.."<edit id='HpEdit' image='0' x='465' y='84' w='130' h='13' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<edit id='NameEdit1' image='0' x='396' y='82' w='65' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 text='生命值：' font='system'/>"
	.."<edit id='NameEdit2' image='0' x='396' y='104' w='65' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 text='魔法值：' font='system'/>"
	.."<edit id='NameEdit3' image='0' x='396' y='126' w='65' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 text='内功值：' font='system'/>"
	.."<edit id='NameEdit4' image='0' x='396' y='148' w='65' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 text='物理防御：' font='system'/>"
	.."<edit id='NameEdit5' image='0' x='396' y='172' w='65' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 text='魔法防御：' font='system'/>"
	.."<edit id='NameEdit6' image='0' x='396' y='196' w='65' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 text='物理攻击：' font='system'/>"
	.."<edit id='NameEdit7' image='0' x='396' y='220' w='65' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 text='魔法攻击：' font='system'/>"
	.."<edit id='NameEdit8' image='0' x='396' y='244' w='65' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 text='道术攻击：' font='system'/>"
	.."<edit id='NameEdit9' image='0' x='396' y='296' w='65' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 text='闪避：' font='system'/>"
	.."<edit id='NameEdit10' image='0' x='396' y='320' w='65' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 text='命中：' font='system'/>"
	.."<edit id='NameEdit11' image='0' x='396' y='344' w='65' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 text='暴击：' font='system'/>"
	.."<edit id='NameEdit12' image='0' x='396' y='368' w='65' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 text='幸运：' font='system'/>"
	.."<edit id='NameEdit13' image='0' x='396' y='392' w='65' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 text='暴击伤害：' font='system'/>"
	.."<edit id='NameEdit14' image='0' x='396' y='416' w='65' h='18' canedit='false' revmsg='true' enable='false' text_color=#CEB362 text='移动速度：' font='system'/>"
	.."<image id='MagicBackImg' image='1800900022' x='463' y='104' w='134' h='17' revmsg='true'/>"
	.."<image id='MagicImg' image='1800900023' x='465' y='106' w='130' h='13' revmsg='true'/>"
	.."<edit id='MpEdit' image='0' x='465' y='106' w='130' h='13' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<image id='InnerBackImg' image='1800900024' x='463' y='126' w='134' h='17' revmsg='true'/>"
	.."<image id='InnerImg' image='1800900025' x='465' y='128' w='130' h='13' revmsg='true'/>"
	.."<edit id='InnerEdit' image='0' x='465' y='128' w='130' h='13' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<image id='ContentImg1' image='1800900026' x='466' y='145' w='127' h='22' revmsg='true'/>"
	.."<edit id='PhyDefEdit' image='0' x='473' y='149' w='112' h='14' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<image id='ContentImg2' image='1800900026' x='466' y='169' w='127' h='22' revmsg='true'/>"
	.."<edit id='MagicDefineEdit' image='0' x='473' y='174' w='112' h='14' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<image id='ContentImg3' image='1800900026' x='466' y='193' w='127' h='22' revmsg='true'/>"
	.."<edit id='PhyAttacEdit' image='0' x='473' y='197' w='112' h='14' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<image id='ContentImg4' image='1800900026' x='466' y='217' w='127' h='22' revmsg='true'/>"
	.."<edit id='MagicAttacEdit' image='0' x='473' y='221' w='112' h='14' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<image id='ContentImg5' image='1800900026' x='466' y='241' w='127' h='22' revmsg='true'/>"
	.."<edit id='DaoAttacEdit' image='0' x='473' y='245' w='112' h='14' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<image id='ContentImg6' image='1800900026' x='466' y='294' w='127' h='22' revmsg='true'/>"
	.."<edit id='MissEdit' image='0' x='473' y='298' w='112' h='14' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<image id='ContentImg7' image='1800900026' x='466' y='318' w='127' h='22' revmsg='true'/>"
	.."<edit id='HitEdit' image='0' x='473' y='322' w='112' h='14' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<image id='ContentImg8' image='1800900026' x='466' y='342' w='127' h='22' revmsg='true'/>"
	.."<edit id='ExtremAtcEdit' image='0' x='473' y='346' w='112' h='14' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<image id='ContentImg9' image='1800900026' x='466' y='366' w='127' h='22' revmsg='true'/>"
	.."<edit id='RoleLucky' image='0' x='473' y='370' w='112' h='14' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<image id='ContentImg10' image='1800900026' x='466' y='390' w='127' h='22' revmsg='true'/>"
	.."<edit id='burstharm' image='0' x='473' y='394' w='112' h='14' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<image id='ContentImg11' image='1800900026' x='466' y='414' w='127' h='22' revmsg='true'/>"
	.."<edit id='MOVE_SPEED_Edit' image='0' x='473' y='418' w='112' h='14' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<itemctrl id='Equiment2' x='136' y='93' w='100' h='60' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' param='2' tip='翅膀展示' enable='true' big_icon='true' offx='189' offy='174'/>"
	.."<itemctrl id='Equimentclothes' x='189' y='174' w='80' h='170'  use_back='-1'   enable='false' big_icon='true' offx='189' offy='174' />"
	.."<itemctrl id='Equimentweapons' x='189' y='174' w='50' h='240'  use_back='-1' enable='false' big_icon='true' offx='181' offy='168' />"
	.."<itemctrl id='Equiment16' x='216' y='183' w='32' h='32' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' param='16' enable='true' big_icon='true' offx='189' offy='174'/>"
	.."<image id='image0' image='0' x='189' y='174' w='265' h='304' enable='false'/>" --发型
	.."<itemctrl id='Equiment0' x='21' y='133' w='42' h='42' auto_manage='true' rbtn_use='true' use_back='1800900014' revmsg='true' param='0' tip='头盔' enable='true'/>"
	.."<itemctrl id='Equiment14' x='21' y='259' w='42' h='42' auto_manage='true' rbtn_use='true' use_back='1800900014' revmsg='true' param='14' tip='衣服' enable='true'/>"
	.."<itemctrl id='Equiment6' x='21' y='322' w='42' h='42' auto_manage='true' rbtn_use='true' use_back='1800900008' revmsg='true' param='6' tip='护腕' enable='true'/>"
	.."<itemctrl id='Equiment13' x='21' y='196' w='42' h='42' auto_manage='true' rbtn_use='true' use_back='1800900014' revmsg='true' param='13' tip='武器' enable='true'/>"
	.."<itemctrl id='Equiment8' x='21' y='385' w='42' h='42' auto_manage='true' rbtn_use='true' use_back='1800900009' revmsg='true' param='8' tip='戒指' enable='true'/>"
	.."<itemctrl id='Equiment10' x='82' y='385' w='42' h='42' auto_manage='true' rbtn_use='true' use_back='1800900010' revmsg='true' param='10' tip='符咒' enable='true'/>"
	.."<itemctrl id='Equiment4' x='145' y='385' w='42' h='42' auto_manage='true' rbtn_use='true' use_back='1800900017' revmsg='true' param='4' tip='守护' enable='true'/>"
	.."<itemctrl id='Equiment5' x='204' y='385' w='42' h='42' auto_manage='true' rbtn_use='true' use_back='1800900011' revmsg='true' param='5' tip='腰带' enable='true'/>"
	.."<itemctrl id='Equiment11' x='265' y='385' w='42' h='42' auto_manage='true' rbtn_use='true' use_back='1800900012' revmsg='true' param='11' tip='鞋子' enable='true'/>"
	.."<itemctrl id='Equiment9' x='326' y='385' w='42' h='42' auto_manage='true' rbtn_use='true' use_back='1800900009' revmsg='true' param='9' tip='戒指' enable='true'/>"
	.."<itemctrl id='Equiment7' x='326' y='322' w='42' h='42' auto_manage='true' rbtn_use='true' use_back='1800900008' revmsg='true' param='7' tip='护腕' enable='true'/>"
	.."<itemctrl id='Equiment3' x='326' y='259' w='42' h='42' auto_manage='true' rbtn_use='true' use_back='1800900014' revmsg='true' param='3' tip='勋章' enable='true'/>"
	.."<itemctrl id='Equiment15' x='326' y='196' w='42' h='42' auto_manage='true' rbtn_use='true' use_back='1800900013' revmsg='true' param='15' tip='宝珠' enable='true'/>"
	--.."<itemctrl id='Equiment12' x='326' y='133' w='42' h='42' auto_manage='true' rbtn_use='true' use_back='1800900011' revmsg='true' param='12' tip='坐骑' enable='true'/>"
	.."<itemctrl id='Equiment1' x='326' y='133' w='42' h='42' auto_manage='true' rbtn_use='true' use_back='1800900015' revmsg='true' param='1'  tip='项链' enable='true'/>"
	.."</dialog></form>"
	GenFormByString(ui)
end

--UI Logic Code Start

--UI界面用装备索引
--	site_helmet,   /// 头盔0
--	site_necklace, /// 项链1
--	site_wings,    /// 翅膀2
--	site_medal,    /// 勋章3
--	site_amulet,   /// 守护4
--	site_shoulder, /// 护肩5
--	site_wrist_0,  /// 护腕0 6
--	site_wrist_1,  /// 护腕1 7
--	site_ring_0,   /// 戒指0 8
--	site_ring_1,   /// 戒指1 9
--	site_juju,     /// 符咒10
--	site_shoes,    /// 鞋子11
--	site_mount,    /// 坐骑12
--	site_weapon,   /// 武器13
--	site_armor,    /// 衣服14
--	site_gem,      /// 宝石15
--	site_shield,   /// 盾牌16
--	site_jewelry,   /// 时装17
--	site_hat,       /// 斗笠18
--	site_gloves,    /// 手套19
--	site_jewelry,   /// 珠宝20
RoleEquipment.ArmorSite = 5

RoleEquipment.WndHandle = 0
RoleEquipment.UseShield = true
RoleEquipment.ManHairTable = 
{
    1890900000, 
    1890900002,
    1890900004
}


RoleEquipment.WomanHairTable = 
{
    1890900001, 
    1890900003,
    1890900005
}

RoleEquipment.Open = false

function RoleEquipment.UIInit(_Handle)
	RoleEquipment.WndHandle = _Handle
	RoleEquipment.Open = true
	UI:Lua_SubmitForm("角色表单", "main", "")
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleSkill")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	local _GUIHandle = GetWindow(nil,"RoleSkillChoose")
	if  _GUIHandle ~= 0   then
		GUIWndClose(_GUIHandle)
	end
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleRein")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	local _GUIHandle = GetWindow(nil,"RoleReinPoint")
	if  _GUIHandle ~= 0   then
		GUIWndClose(_GUIHandle)
	end
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleInner")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	RegisterUIEvent(LUA_EVENT_PROPERTYDATALIST, "RoleEquipment_PropDataChange", RoleEquipment.propDataChange)		--玩家数据改变
	--暴击伤害数据更新 （穿装备和脱装备事件）
	RegisterUIEvent(LUA_EVENT_ONEQUIPMENT, "RoleEquipment_穿装备", "RoleEquipment.onequipment")
	RegisterUIEvent(LUA_EVENT_OFFEQUIPMENT, "RoleEquipment_脱装备", "RoleEquipment.offequipment")
	local _GUIHandle = 0
	
	_GUIHandle = GetWindow(nil,"RoleGUI,TitleImg")
	if _GUIHandle ~= 0 then
		GUIWndSetImageID(_GUIHandle, 1801500028)
	end
	
	for i = 1, 4 do
		_GUIHandle = GetWindow(nil,"RoleGUI,StateBtn_"..i)
		GUIButtonSetIsActivePageBtn(_GUIHandle, false)
	end		
	_GUIHandle = GetWindow(nil,"RoleGUI,StateBtn_1")--按钮
	GUIButtonSetIsActivePageBtn(_GUIHandle, true)
	WndMoveToParentTop(_GUIHandle)
	
	local _Gender = 1
	if CLGetPlayerSelfPropBase(ROLE_PROP_SEX) then 
		_Gender = as3.tolua(LuaRet)
	end

    local Job = 1
    if CLGetPlayerSelfPropBase(ROLE_PROP_JOB) then 
        Job = as3.tolua(LuaRet)
    end
	_GUIHandle = GUIWndFindWindow(_Handle, "image0")--发型
	if _GUIHandle ~= 0 then
       GUIImageSetDrawCenter(_GUIHandle,true)

		if _Gender == 1 then
			GUIWndSetImageID(_GUIHandle, RoleEquipment.ManHairTable[Job])
			--GUIItemCtrlSetDefaultImage(_GUIHandle, RoleEquipment.ManHairTable[Job])
		else
			GUIWndSetImageID(_GUIHandle, RoleEquipment.WomanHairTable[Job])
            --GUIItemCtrlSetDefaultImage(_GUIHandle, RoleEquipment.WomanHairTable[Job])
		end
    end

    _GUIHandle = GUIWndFindWindow(_Handle, "Equimentweapons")--武器
    if _GUIHandle ~= 0 then
        GUIImageSetDrawCenter(_GUIHandle,true)
    end

	_GUIHandle = GUIWndFindWindow(_Handle, "Equiment16")--盾牌
    if _GUIHandle ~= 0 then
        GUIImageSetDrawCenter(_GUIHandle,true)
    end

    _GUIHandle = GUIWndFindWindow(_Handle, "Equimentclothes")--衣服
    if _GUIHandle ~= 0 then
        GUIImageSetDrawCenter(_GUIHandle,true)
		if _Gender == 1 then
			GUIItemCtrlSetDefaultImage(_GUIHandle, 1890900006)
		else
			GUIItemCtrlSetDefaultImage(_GUIHandle, 1890900007)
		end
    end

    _GUIHandle = GUIWndFindWindow(_Handle, "Equiment2")--翅膀展示
    if _GUIHandle ~= 0 then
        GUIImageSetDrawCenter(_GUIHandle,true)
    end

    _GUIHandle = GUIWndFindWindow(_Handle, "RoleNameEdit")
    if 0 ~= _GUIHandle then
		local Property = 0
		if CLGetPlayerSelfPropBase(ROLE_PROP_ROLENAME) then 
			Property = as3.tolua(LuaRet)
		end 
		GUIEditSetTextM(_GUIHandle,Property)
    end
	
	_GUIHandle = GUIWndFindWindow(_Handle, "FamilyEdit")
    if 0 ~= _GUIHandle then
		local Property = 0
		if CLGetPlayerSelfPropBase(ROLE_PROP_FAMILY_NAME) then 
			Property = as3.tolua(LuaRet)
		end 
		GUIEditSetTextM(_GUIHandle,Property)
    end
	
	_GUIHandle = GUIWndFindWindow(_Handle, "LevelEdit")
    if 0 ~= _GUIHandle then
		local Property = 0
		if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
			Property = as3.tolua(LuaRet)
		end 
		GUIEditSetTextM(_GUIHandle,"等级："..Property)
    end
	
	_GUIHandle = GUIWndFindWindow(_Handle, "HpEdit")
	if _GUIHandle ~= 0 then	
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_HP) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_HP) then 
			max_Property = as3.tolua(LuaRet)
		end        
		GUIEditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)	
		_GUIHandle = GUIWndFindWindow(_Handle, "BloodImg")
		local value = 0
		if max_Property > 0 then
			value = Property/max_Property
		end
		if value > 0 then
			GUIWndSetVisible(_GUIHandle,true)
			GUIImageSetDrawRect(_GUIHandle,0,value,0,1)
		else
			GUIWndSetVisible(_GUIHandle,false)
		end
	end

	_GUIHandle = GUIWndFindWindow(_Handle, "MpEdit")
	if _GUIHandle ~= 0 then
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MP) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_MP) then 
			max_Property = as3.tolua(LuaRet)
		end        
		GUIEditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)	
		_GUIHandle = GUIWndFindWindow(_Handle, "MagicImg")
		local value = 0
		if max_Property > 0 then
			value = Property/max_Property
		end
		if value > 0 then
			GUIWndSetVisible(_GUIHandle,true)
			GUIImageSetDrawRect(_GUIHandle,0,value,0,1)
		else
			GUIWndSetVisible(_GUIHandle,false)
		end		
	end
	
	_GUIHandle = GUIWndFindWindow(_Handle, "InnerEdit")
	if _GUIHandle ~= 0 then
		local Property = 0
		local max_Property = 0
		GUIEditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)	
		_GUIHandle = GUIWndFindWindow(_Handle, "InnerImg")
		GUIWndSetVisible(_GUIHandle,false)		
	end
	
	_GUIHandle = GUIWndFindWindow(_Handle, "PhyDefEdit")
	if _GUIHandle ~= 0 then
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_DEF) then 
			Property = as3.tolua(LuaRet)
		end 
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_DEF) then 
			max_Property = as3.tolua(LuaRet)
		end        
		GUIEditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)		
	end

	_GUIHandle = GUIWndFindWindow(_Handle, "MagicDefineEdit")
	if _GUIHandle ~= 0 then	
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_DEF) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_DEF) then 
			max_Property = as3.tolua(LuaRet)
		end        
		GUIEditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)
	end
	
	local PhyAttacMax = 0
	local MagicAttacMax = 0
	local DaoAttacMax = 0
	
	_GUIHandle = GUIWndFindWindow(_Handle, "PhyAttacEdit")
	if _GUIHandle ~= 0 then
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_ATK) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_ATK) then 
			max_Property = as3.tolua(LuaRet)
			PhyAttacMax = max_Property
		end        
		GUIEditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)		
	end

	_GUIHandle = GUIWndFindWindow(_Handle, "MagicAttacEdit")
	if _GUIHandle ~= 0 then
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_ATK) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_ATK) then 
			max_Property = as3.tolua(LuaRet)
			MagicAttacMax = max_Property
		end        
		GUIEditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)
	end

	_GUIHandle = GUIWndFindWindow(_Handle, "DaoAttacEdit")
	if _GUIHandle ~= 0 then
		local Property = 0
		local max_Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MIN_TAO_ATK) then 
			Property = as3.tolua(LuaRet)
		end  
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_TAO_ATK) then 
			max_Property = as3.tolua(LuaRet)
			DaoAttacMax = max_Property
		end        
		GUIEditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)	
	end

	_GUIHandle = GUIWndFindWindow(_Handle, "JobEdit")
    if 0 ~= _GUIHandle then
		GUIEditSetTextM(_GUIHandle,"职业："..RDJOBName[Job])
		if Job==RDJob["战士"] then
			RoleEquipment.ShowNumber(PhyAttacMax)
		elseif Job==RDJob["法师"] then
			RoleEquipment.ShowNumber(MagicAttacMax)
		elseif Job==RDJob["道士"] then
			RoleEquipment.ShowNumber(DaoAttacMax)
		end
    end
	
	_GUIHandle = GUIWndFindWindow(_Handle, "MissEdit")
	if _GUIHandle ~= 0 then
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MISS) then 
			Property = as3.tolua(LuaRet)
		end        
		GUIEditSetTextM(_GUIHandle,"".. Property)
	end
	
	_GUIHandle = GUIWndFindWindow(_Handle, "HitEdit")
	if _GUIHandle ~= 0 then
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_HIT) then 
			Property = as3.tolua(LuaRet)
		end        
		GUIEditSetTextM(_GUIHandle,"".. Property)	
	end
	
	_GUIHandle = GUIWndFindWindow(_Handle, "ExtremAtcEdit")
	if _GUIHandle ~= 0 then
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_BURST) then 
			Property = as3.tolua(LuaRet)
			Property = Property/100
		end      
		GUIEditSetTextM(_GUIHandle,"".. Property..'%')	
	end
	
	_GUIHandle = GUIWndFindWindow(_Handle, "RoleLucky")
	if _GUIHandle ~= 0 then	
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_LUCK_CURSE) then 
			Property = as3.tolua(LuaRet)
		end      
		GUIEditSetTextM(_GUIHandle,"".. Property)	
	end
	
	--[[_GUIHandle = GUIWndFindWindow(_Handle, "ATTACK_SPEED_Edit")
	if _GUIHandle ~= 0 then
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_ATTACK_SPEED_PCT) then 
			Property = as3.tolua(LuaRet)
		end       
		GUIEditSetTextM(_GUIHandle,"+".. Property.."%")
	end--]]
	
	RoleEquipment.burstharm_updata()
	
	_GUIHandle = GUIWndFindWindow(_Handle, "MOVE_SPEED_Edit")
	if _GUIHandle ~= 0 then
		local Property = 0
		if CLGetPlayerSelfProperty32(ROLE_PROP32_MOVE_SPEED_PCT) then 
			Property = as3.tolua(LuaRet)
		end          
		GUIEditSetTextM(_GUIHandle,"+".. Property.."%")
	end 
	
	-------------------------------START---资源更新后删除----------------------
	if as3.tolua(UI:Lua_GetPlayerSelfEquipData()) then
		guid_tb  = getTable(as3.tolua(LuaRet)) 
		local res_number = 0
		local Is_weap = 0
		for i = 1, #guid_tb do
			local item_handle = CLGetItemTemplateHandleByGUID(guid_tb[i]) 
			if CLGetItemTemplatePropByHandle(item_handle, ITEM_PROP_SUBTYPE) then
				if as3.tolua(LuaRet) == 4 then
					RDItemCtrlSetGUIDataPropByGUID(_Handle,"Equimentclothes", guid_tb[i])	
					if CLGetItemTemplatePropByHandle(item_handle, ITEM_PROP_BIGICON) then
						res_number = as3.tolua(LuaRet)
						res_number = math.floor(tonumber(res_number)/100000000)
						if tonumber(res_number) == 19 then
							--clothesIs_true = false
							local handle = GetWindow(RoleEquipment.WndHandle, "image0")
							if handle ~= 0 then
								GUIWndSetPosM(handle, 189, 182) 
							end
						else
							local handle = GetWindow(RoleEquipment.WndHandle, "image0")
							if handle ~= 0 then
								GUIWndSetPosM(handle, 189, 174) 
							end			
						end
					end
				elseif as3.tolua(LuaRet) == 1 then
						RDItemCtrlSetGUIDataPropByGUID(RoleEquipment.WndHandle,"Equimentweapons" , guid_tb[i])	
						Is_weap = 1
				end	
			end	
		end
		if Is_weap == 1 then
			local handle = GetWindow(RoleEquipment.WndHandle, "Equimentweapons")
			if tonumber(res_number) == 19  then		
				if handle ~= 0 then
					GUIItemCtrlSetBigIconOffset(handle, 189, 174)
				end	
			else
				if handle ~= 0 then
					GUIItemCtrlSetBigIconOffset(handle, 181, 168)
				end					
			end
		end	
	end
----------------------------------END-------------------------
end

RoleEquipment.imageid = {1801500098,1801500099,1801500100,1801500101,1801500102,1801500103,1801500104,1801500105,1801500106,1801500097}
function RoleEquipment.ShowNumber(value)
	local str = tostring(value) 
	local length = string.len(str)
	local _GUIHandle = 0
	if length<=5 and length>0 then
		local start = 6-length
		local index = 1;
		for i = 1, start do
			_GUIHandle=GUIWndFindChildM(RoleEquipment.WndHandle, "Number"..i)
			GUIWndSetVisible(_GUIHandle,false)
		end
		local a = 0 
		for i = start, 5 do
			_GUIHandle=GUIWndFindChildM(RoleEquipment.WndHandle, "Number"..i)
			GUIWndSetVisible(_GUIHandle,true)			
			a = tonumber(string.sub(str,index,index))
			if a == 0 then
				a = 10
			end
			GUIWndSetImageID(_GUIHandle, RoleEquipment.imageid[a])
			index=index+1;
		end	
	else
		for i = 1, 4 do
			_GUIHandle=GUIWndFindChildM(RoleEquipment.WndHandle, "Number"..i)
			GUIWndSetVisible(_GUIHandle,false)
		end
		_GUIHandle=GUIWndFindChildM(RoleEquipment.WndHandle, "Number5")
		GUIWndSetVisible(_GUIHandle,true)
		GUIWndSetImageID(_GUIHandle, 1801500097)
	end
	
end

function RoleEquipment.propDataChange()
	local _GUIHandle = 0
	local Property = 0
	local max_Property = 0
	local PhyAttacMax = 0
	local MagicAttacMax = 0
	local DaoAttacMax = 0
	local PropertyTab = getTable(as3.tolua(LuaParam[1]))
	for i = 1 , #PropertyTab do 
		local Propertytab = getTable(PropertyTab[i])
		if as3.tolua(Propertytab[1]) == ROLE_PROP32_HP or as3.tolua(Propertytab[1]) == ROLE_PROP32_MAX_HP then
			_GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "HpEdit")
			if _GUIHandle ~= 0 then	
				if CLGetPlayerSelfProperty32(ROLE_PROP32_HP) then 
					Property = as3.tolua(LuaRet)
				end  
				if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_HP) then 
					max_Property = tonumber(as3.tolua(LuaRet)) 
				end        
				GUIEditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)	
				_GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "BloodImg")
				local value = 0
				if max_Property > 0 then
					value = Property/max_Property
				end
				if value > 0 then
					GUIWndSetVisible(_GUIHandle,true)
					GUIImageSetDrawRect(_GUIHandle,0,value,0,1)
				else
					GUIWndSetVisible(_GUIHandle,false)
				end
			end
		end	
		
		if as3.tolua(Propertytab[1]) == ROLE_PROP32_MP or as3.tolua(Propertytab[1]) == ROLE_PROP32_MAX_MP then
			_GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "MpEdit")
			if _GUIHandle ~= 0 then
				if CLGetPlayerSelfProperty32(ROLE_PROP32_MP) then 
					Property = as3.tolua(LuaRet)
				end  
				if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_MP) then 
					max_Property = tonumber(as3.tolua(LuaRet))
				end        
				GUIEditSetTextM(_GUIHandle,"".. Property.." / "..max_Property)	
				_GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "MagicImg")
				local value = 0
				if max_Property > 0 then
					value = Property/max_Property
				end
				if value > 0 then
					GUIWndSetVisible(_GUIHandle,true)
					GUIImageSetDrawRect(_GUIHandle,0,value,0,1)
				else
					GUIWndSetVisible(_GUIHandle,false)
				end		
			end
		end	
		
		
		if as3.tolua(Propertytab[1]) == ROLE_PROP32_MIN_PHY_DEF or as3.tolua(Propertytab[1]) == ROLE_PROP32_MAX_PHY_DEF then
			_GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "PhyDefEdit")
			if _GUIHandle ~= 0 then
				if CLGetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_DEF) then 
					Property = as3.tolua(LuaRet)
				end 
				if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_DEF) then 
					max_Property = as3.tolua(LuaRet)
				end        
				GUIEditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)		
			end
		end 
		
		if as3.tolua(Propertytab[1]) == ROLE_PROP32_MIN_MAG_DEF or as3.tolua(Propertytab[1]) == ROLE_PROP32_MAX_MAG_DEF then
			_GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "MagicDefineEdit")
			if _GUIHandle ~= 0 then
				if CLGetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_DEF) then 
					Property = as3.tolua(LuaRet)
				end  
				if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_DEF) then 
					max_Property = as3.tolua(LuaRet)
				end        
				GUIEditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)
			end
		end 
		
		local Job = 0
		
		if as3.tolua(Propertytab[1]) == ROLE_PROP32_MIN_PHY_ATK or as3.tolua(Propertytab[1]) == ROLE_PROP32_MAX_PHY_ATK then
			_GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "PhyAttacEdit")
			if _GUIHandle ~= 0 then
				if CLGetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_ATK) then 
					Property = as3.tolua(LuaRet)
				end  
				if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_ATK) then 
					max_Property = as3.tolua(LuaRet)
					PhyAttacMax = max_Property
				end     

				if CLGetPlayerSelfPropBase(ROLE_PROP_JOB) then 
					Job = as3.tolua(LuaRet)
				end 			
				if Job==RDJob["战士"] then
					RoleEquipment.ShowNumber(PhyAttacMax)
				end			
				GUIEditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)		
			end
		end 

		if as3.tolua(Propertytab[1]) == ROLE_PROP32_MIN_MAG_ATK or as3.tolua(Propertytab[1]) == ROLE_PROP32_MAX_MAG_ATK then
			_GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "MagicAttacEdit")
			if _GUIHandle ~= 0 then
				if CLGetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_ATK) then 
					Property = as3.tolua(LuaRet)
				end  
				if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_ATK) then 
					max_Property = as3.tolua(LuaRet)
					MagicAttacMax = max_Property
				end       
				if CLGetPlayerSelfPropBase(ROLE_PROP_JOB) then 
					Job = as3.tolua(LuaRet)
				end 			
				if Job==RDJob["法师"] then
					RoleEquipment.ShowNumber(MagicAttacMax)
				end
				GUIEditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)
			end
		end 
		
		if as3.tolua(Propertytab[1]) == ROLE_PROP32_MIN_TAO_ATK or as3.tolua(Propertytab[1]) == ROLE_PROP32_MAX_TAO_ATK then
			_GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "DaoAttacEdit")
			if _GUIHandle ~= 0 then
				if CLGetPlayerSelfProperty32(ROLE_PROP32_MIN_TAO_ATK) then 
					Property = as3.tolua(LuaRet)
				end  
				if CLGetPlayerSelfProperty32(ROLE_PROP32_MAX_TAO_ATK) then 
					max_Property = as3.tolua(LuaRet)
					DaoAttacMax = max_Property
				end      
				if CLGetPlayerSelfPropBase(ROLE_PROP_JOB) then 
					Job = as3.tolua(LuaRet)
				end 			
				if Job==RDJob["道士"] then
					RoleEquipment.ShowNumber(DaoAttacMax)	
				end				
				GUIEditSetTextM(_GUIHandle,"".. Property.." - "..max_Property)	
			end
		end 
		
		if as3.tolua(Propertytab[1]) == ROLE_PROP32_MISS then
			_GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "MissEdit")
			if _GUIHandle ~= 0 then
				local Property = 0
				if CLGetPlayerSelfProperty32(ROLE_PROP32_MISS) then 
					Property = as3.tolua(LuaRet)
				end        
				GUIEditSetTextM(_GUIHandle,"".. Property)
			end
		end 
		
		if as3.tolua(Propertytab[1]) == ROLE_PROP32_HIT then
			_GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "HitEdit")
			if _GUIHandle ~= 0 then
				local Property = 0
				if CLGetPlayerSelfProperty32(ROLE_PROP32_HIT) then 
					Property = as3.tolua(LuaRet)
				end        
				GUIEditSetTextM(_GUIHandle,"".. Property)	
			end
		end 
		
		if as3.tolua(Propertytab[1]) == ROLE_PROP32_BURST then
			_GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "ExtremAtcEdit")
			if _GUIHandle ~= 0 then
				local Property = 0
				if CLGetPlayerSelfProperty32(ROLE_PROP32_BURST) then 
					Property = as3.tolua(LuaRet)
					Property = Property/100
				end      
				GUIEditSetTextM(_GUIHandle,"".. Property..'%')	
			end
		end 
		
		if as3.tolua(Propertytab[1]) == ROLE_PROP32_LUCK_CURSE then
			_GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "RoleLucky")
			if _GUIHandle ~= 0 then	
				local Property = 0
				if CLGetPlayerSelfProperty32(ROLE_PROP32_LUCK_CURSE) then 
					Property = as3.tolua(LuaRet)
				end      
				GUIEditSetTextM(_GUIHandle,"".. Property)	
			end
		end 
		
	--[[	if as3.tolua(Propertytab[1]) == ROLE_PROP32_ATTACK_SPEED_PCT then
			_GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "ATTACK_SPEED_Edit")
			if _GUIHandle ~= 0 then
				local Property = 0
				if CLGetPlayerSelfProperty32(ROLE_PROP32_ATTACK_SPEED_PCT) then 
					Property = as3.tolua(LuaRet)
				end       
				GUIEditSetTextM(_GUIHandle,"+".. Property.."%")
			end
		end --]]
		
		if as3.tolua(Propertytab[1]) == ROLE_PROP32_MOVE_SPEED_PCT then
			_GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "MOVE_SPEED_Edit")
			if _GUIHandle ~= 0 then
				local Property = 0
				if CLGetPlayerSelfProperty32(ROLE_PROP32_MOVE_SPEED_PCT) then 
					Property = as3.tolua(LuaRet)
				end          
				GUIEditSetTextM(_GUIHandle,Property.."%")
			end
		end 
	end	
end 

function RoleEquipment.burstharm_updata()
		local _GUIHandle = GUIWndFindWindow(RoleEquipment.WndHandle, "burstharm")
		if _GUIHandle ~= 0 then
			local itemlist = {}
			if UI:Lua_GetPlayerSelfEquipData() then
				if type(as3.tolua(LuaRet)) == "number" then 
					GUIEditSetTextM(_GUIHandle,"0") 
					return 
				end
				itemlist = getTable(as3.tolua(LuaRet))
			end
			if #itemlist ~= 0 then 
				for i = 1 , #itemlist do 
					if CL:GetItemEntityPropByGUID(itemlist[i],4) then 
						local subtype = as3.tolua(LuaRet)
						if  subtype == 13 then
							local Entity = CLGetItemEntityHandleByGUID(itemlist[i])
							local burstharm = CLGetItemEntityCustomVarInt(Entity, "burstharm")
							
							GUIEditSetTextM(_GUIHandle,"".. burstharm)
							break
						else
							GUIEditSetTextM(_GUIHandle,"0")
						end
					end
				end
			end      
		end
end
function RoleEquipment.onequipment()
	local site =  as3.tolua(LuaParam[4])
	if site == SITE_AMULET then 
		local _GUIHandle = GetWindow(nil,"RoleGUI,RoleEquipment")
		if _GUIHandle ~= 0 then 
			RoleEquipment.burstharm_updata()
		end
	end
------------------------------START---更换新资源后删除该段----------------------	
	if as3.tolua(UI:Lua_GetPlayerSelfEquipData()) then
			guid_tb  = getTable(as3.tolua(LuaRet)) 
			local res_number = 0
			local Is_weap = 0
			for i = 1, #guid_tb do
				local item_handle = CLGetItemTemplateHandleByGUID(guid_tb[i]) 
				if CLGetItemTemplatePropByHandle(item_handle, ITEM_PROP_SUBTYPE) then
					if as3.tolua(LuaRet) == 4 and site == 5 then						
						RDItemCtrlSetGUIDataPropByGUID(RoleEquipment.WndHandle,"Equimentclothes", guid_tb[i])	
						if CLGetItemTemplatePropByHandle(item_handle, ITEM_PROP_BIGICON) then
							res_number = as3.tolua(LuaRet)
							res_number = math.floor(tonumber(res_number)/100000000)
							if tonumber(res_number) == 19 then
								local handle = GetWindow(RoleEquipment.WndHandle, "image0")
								if handle ~= 0 then
									GUIWndSetPosM(handle, 189, 182) 
								end
							else
								local handle = GetWindow(RoleEquipment.WndHandle, "image0")
								if handle ~= 0 then
									GUIWndSetPosM(handle, 189, 174) 
								end
							end
						end
					elseif as3.tolua(LuaRet) == 1 then
						RDItemCtrlSetGUIDataPropByGUID(RoleEquipment.WndHandle,"Equimentweapons" , guid_tb[i])		
						Is_weap = 1
					end	
				end
			end
			if Is_weap == 1 then
				local handle = GetWindow(RoleEquipment.WndHandle, "Equimentweapons")
				if tonumber(res_number) == 19  then		
					if handle ~= 0 then
						GUIItemCtrlSetBigIconOffset(handle, 189, 174)
					end	
				else
					if handle ~= 0 then
						GUIItemCtrlSetBigIconOffset(handle, 181, 168)
					end					
				end
			end	
	end
	
-------------------------------------END----------------------------------------
end

function RoleEquipment.offequipment()
	local guid = as3.tolua(LuaParam[1])
	if CL:GetItemEntityPropByGUID(guid,4) then 
		local subtype = as3.tolua(LuaRet)
		if  subtype == 13 then
			local _GUIHandle = GetWindow(nil,"RoleGUI,RoleEquipment")
			if _GUIHandle ~= 0 then 
				RoleEquipment.burstharm_updata()
			end
		end
	end		
------------------------------START---更换新资源后删除该段----------------------
	if as3.tolua(UI:Lua_GetPlayerSelfEquipData()) then
			guid_tb  = getTable(as3.tolua(LuaRet)) 
			local clothesnum = 0
			local weaponsnum = 0
			for i = 1, #guid_tb do
				local item_handle = CLGetItemTemplateHandleByGUID(guid_tb[i]) 
				if CLGetItemTemplatePropByHandle(item_handle, ITEM_PROP_SUBTYPE) then
					if as3.tolua(LuaRet) == 4 then
						clothesnum = 1
						--[[RDItemCtrlSetGUIDataPropByGUID(RoleEquipment.WndHandle,"Equimentclothes", guid_tb[i])	
						if CLGetItemTemplatePropByHandle(item_handle, ITEM_PROP_BIGICON) then
							local res_number = as3.tolua(LuaRet)
							res_number = math.floor(tonumber(res_number)/100000000)
							--msg(""..res_number)
							if tonumber(res_number) == 19 then
								local handle = GetWindow(RoleEquipment.WndHandle, "image0")
								if handle ~= 0 then
									GUIWndSetPosM(handle, 189, 182) 
								end
							else
								local handle = GetWindow(RoleEquipment.WndHandle, "image0")
								if handle ~= 0 then
									GUIWndSetPosM(handle, 189, 174) 
								end
							end
						end--]]
					elseif as3.tolua(LuaRet) == 1 then
						weaponsnum = 1
						--RDItemCtrlSetGUIDataPropByGUID(RoleEquipment.WndHandle,"Equimentweapons" , guid_tb[i])	
					end			
				end
			end
			if clothesnum == 0 then
				local handle = GUIWndFindWindow(RoleEquipment.WndHandle, "Equimentclothes")
				if handle ~= 0 then
					GUIItemCtrlClearItemData(handle)
					local _Gender = 1
					if CLGetPlayerSelfPropBase(ROLE_PROP_SEX) then 
						_Gender = as3.tolua(LuaRet)
					end
					if _Gender == 1 then
						GUIItemCtrlSetDefaultImage(handle, 1890900006)
					else
						GUIItemCtrlSetDefaultImage(handle, 1890900007)
					end
					local handle = GetWindow(RoleEquipment.WndHandle, "image0")
					if handle ~= 0 then
						GUIWndSetPosM(handle, 189, 174) 
					end
				end	
			end
			if weaponsnum == 0 then
				local handle = GUIWndFindWindow(RoleEquipment.WndHandle, "Equimentweapons")
				if handle ~= 0 then
					GUIItemCtrlClearItemData(handle)
				end	
			end
	end
-------------------------------------END----------------------------------------
end

function RoleEquipment.wndClose()
	RoleEquipment.Open = false
end

RoleEquipment.main()