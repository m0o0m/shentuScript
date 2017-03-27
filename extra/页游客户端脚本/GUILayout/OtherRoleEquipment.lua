OtherRoleEquipment = {}

function OtherRoleEquipment.main()
local ui = "<form> <dialog OnInit='OtherRoleEquipment.UIInit' id='OtherRoleEquipment' image='1805900006' x='224' y='169' w='449' h='504' center='true' esc_close='true' magic='1' drag='true' revmsg='true'>"
	.."	<image id='TitleImg' image='1805900012' x='177' y='6' w='96' h='29' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='BackImg' image='1805900007' x='34' y='49' w='381' h='429' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='NameImg' image='1805900017' x='128' y='59' w='196' h='39' check_point='0' revmsg='true'/>"
	.."	<edit id='RoleNameEdit' x='164' y='68' w='122' h='18' canedit='false' align='center' revmsg='true' enable='false' text_color='#DED7C7' font='system'/>"
	.."	<edit id='FamilyEdit' x='165' y='95' w='123' h='20' canedit='false' align='center' revmsg='true' enable='false' text_color='#DED7C7' font='system'/>"
	.."	<edit id='JobEdit' x='319' y='58' w='90' h='18' canedit='false' revmsg='true' enable='false' text_color='#DED7C7' font='system'/>"
	.."	<edit id='LevelEdit' x='319' y='84' w='90' h='18' canedit='false' revmsg='true' enable='false' text_color='#DED7C7' font='system'/>"
	.."<itemctrl id='Equiment0' use_back='1805900037' x='49' y='167' w='42' h='42' rbtn_use='true' enable='true' revmsg='true' tip='头盔'/>"
	.."<itemctrl id='Equiment13' x='49' y='230' w='42' h='42' use_back='1805900026' rbtn_use='true' enable='true' revmsg='true' param='13' tip='武器'/>"
	.."<itemctrl id='Equiment14' x='49' y='293' w='42' h='42' use_back='1805900027' rbtn_use='true' enable='true' revmsg='true' param='14' tip='衣服'/>"
	.."<itemctrl id='Equiment6' x='49' y='357' w='42' h='42' use_back='1805900029' rbtn_use='true' enable='true' revmsg='true' param='6' tip='护腕'/>"
	.."<itemctrl id='Equiment8' x='49' y='419' w='42' h='42' use_back='1805900030' rbtn_use='true' enable='true' revmsg='true' param='8' tip='戒指'/>"
	.."<itemctrl id='Equiment10' x='110' y='419' w='42' h='42' use_back='1805900031' rbtn_use='true' enable='true' revmsg='true' param='10' tip='符咒'/>"
	.."<itemctrl id='Equiment4' x='171' y='419' w='42' h='42' use_back='1805900034' rbtn_use='true' enable='true' revmsg='true' param='4' tip='灵珠'/>"
	.."<itemctrl id='Equiment5' x='232' y='419' w='42' h='42' use_back='1805900032' rbtn_use='true' enable='true' revmsg='true' param='5' tip='腰带'/>"
	.."<itemctrl id='Equiment11' x='293' y='419' w='42' h='42' use_back='1805900033' rbtn_use='true' enable='true' revmsg='true' param='11' tip='鞋子'/>"
	.."<itemctrl id='Equiment9' x='354' y='419' w='42' h='42' use_back='1805900030' rbtn_use='true' enable='true' revmsg='true' param='9' tip='戒指'/>"
	.."<itemctrl id='Equiment7' x='354' y='357' w='42' h='42' use_back='1805900029' rbtn_use='true' enable='true' revmsg='true' param='7' tip='护腕'/>"
	.."<itemctrl id='Equiment3' x='354' y='293' w='42' h='42' use_back='1805900035' rbtn_use='true' enable='true' revmsg='true' param='3' tip='勋章'/>"
	.."<itemctrl id='Equiment15' x='354' y='230' w='42' h='42' use_back='1805900038' rbtn_use='true' enable='true' revmsg='true' param='15' tip='宝珠'/>"
	.."<itemctrl id='Equiment1' x='354' y='167' w='42' h='42' use_back='1805900036' rbtn_use='true' enable='true' revmsg='true' param='1' tip='项链'/>"
	.."<itemctrl id='Equiment16' x='293' y='357' w='42' h='42' use_back='1805900034' rbtn_use='true' enable='true' revmsg='true' param='16' tip='盾牌'/>"
	.."<itemctrl id='Equiment19' x='110' y='357' w='42' h='42' use_back='1805900036' rbtn_use='true' enable='true' revmsg='true' param='19' tip='吊坠'/>"
	.."<itemctrl id='Equiment2' use_back='-1' x='164' y='120' w='100' h='60' rbtn_use='true' big_icon='true' enable='true' offx='212' offy='243' revmsg='true' param='2' tip='翅膀展示'/>"
	.."<itemctrl id='Equimentclothes' x='175' y='150' w='80' use_back='-1' h='170' rbtn_use='true' big_icon='true' offx='215' offy='243' revmsg='true' enable='false'/>"
	.."<itemctrl id='Equimentweapons' x='141' y='120' w='50' use_back='-1' h='240' rbtn_use='true' big_icon='true' offx='215' offy='243' revmsg='true' enable='false'/>"
	.."<itemctrl id='Equimentshields' x='231' y='214' w='49' use_back='-1' h='62' rbtn_use='true' big_icon='true' offx='232' offy='255' revmsg='true' enable='false'/>"
	.."<image id='image0' image='0' x='215' y='243' w='265' h='304' check_point='0' enable='false'/>"
	.."	<button id='Close' image='1805900080' x='395' y='4' w='34' h='38' OnLButtonUp='luaWndClose' revmsg='true'/>"
	.." </dialog>"
	.."</form>"

	
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

OtherRoleEquipment.WndHandle = 0
OtherRoleEquipment.UseShield = true
OtherRoleEquipment.ManHairTable = 
{
	1890900000, 
    1890900000,
    1890900000
}


OtherRoleEquipment.WomanHairTable = 
{
	1890920000, 
    1890920000,
    1890920000
}

OtherRoleEquipment.Open = false


function OtherRoleEquipment.UIInit(_Handle)
	OtherRoleEquipment.WndHandle = _Handle
	GUIWndSetSizeM(_Handle, 418, 504)

end

function OtherRoleEquipment.propData()
	local _Gender = as3.tolua(LuaParam[1])
	local _Name = as3.tolua(LuaParam[2])
	local _Level = as3.tolua(LuaParam[3])
	local _Job = as3.tolua(LuaParam[4])
	local _Family = as3.tolua(LuaParam[5])
	OtherRoleEquipment.WndHandle = GUIWndFindWindow(0, "OtherRoleEquipment")
	--dbg("otherRole")
	_GUIHandle = GUIWndFindWindow(OtherRoleEquipment.WndHandle, "image0")--头盔
	if _GUIHandle ~= 0 then
        GUIImageSetDrawCenter(_GUIHandle,true)
		if _Gender == 1 then
			GUIWndSetImageID(_GUIHandle, OtherRoleEquipment.ManHairTable[_Job])
		else
			GUIWndSetImageID(_GUIHandle, OtherRoleEquipment.WomanHairTable[_Job])
		end
	end
	local _GUIHandle = 0
	
	_GUIHandle = GUIWndFindWindow(OtherRoleEquipment.WndHandle, "Equimentweapons")--武器
    if _GUIHandle ~= 0 then
        GUIImageSetDrawCenter(_GUIHandle,true)
    end

	_GUIHandle = GUIWndFindWindow(OtherRoleEquipment.WndHandle, "Equimentshields")--盾牌
    if _GUIHandle ~= 0 then
        GUIImageSetDrawCenter(_GUIHandle,true)
    end
	
    _GUIHandle = GUIWndFindWindow(OtherRoleEquipment.WndHandle, "Equiment2")--翅膀展示
    if _GUIHandle ~= 0 then
        GUIImageSetDrawCenter(_GUIHandle,true)
    end
	
	_GUIHandle = GUIWndFindWindow(OtherRoleEquipment.WndHandle, "Equimentclothes")--衣服
	if _GUIHandle ~= 0 then
		GUIImageSetDrawCenter(_GUIHandle,true)
	end

	-------------------------------START---资源更新后删除----------------------
	local tarPlayerGUID = CLGetViewEquipTarPlayerGUID()
	--if CLGetPlayerPropBase(tarPlayerGUID, ROLE_PROP_CLOTHESID) then
	if CLGetPlayerTargetEquipData() then
		local guid_tb = {}
		guid_tb = getTable(as3.tolua(LuaRet))
		for i = 1, #guid_tb do
			if CLGetItemEntityPropByHandle(guid_tb[i], ITEM_PROP_SUBTYPE) then
				if as3.tolua(LuaRet) == 4 then
					RDItemCtrlFillGUIData(OtherRoleEquipment.WndHandle,"Equimentclothes", guid_tb[i])
					if CLGetItemEntityPropByHandle(guid_tb[i], ITEM_PROP_TIPSICON) then
						local res_number = as3.tolua(LuaRet)
						
						--msg(tostring(res_number))
						res_number = math.floor(tonumber(res_number)/100000000)
						
						if tonumber(res_number) == 19 then
							local handle = GetWindow(OtherRoleEquipment.WndHandle, "image0")
							if handle ~= 0 then
								GUIWndSetPosM(handle, 215, 251) 
							end
						else
							local handle = GetWindow(OtherRoleEquipment.WndHandle, "image0")
							if handle ~= 0 then
								GUIWndSetPosM(handle, 215, 243)
							end
						end
					end
				elseif as3.tolua(LuaRet) == 1 then
					--if UI:Lua_GetItemEntityPropByHandle(guid_tb[i], ITEM_PROP_ENTITY_GUID) then
						--local _GUID = as3.tolua(LuaRet)
					RDItemCtrlFillGUIData(OtherRoleEquipment.WndHandle,"Equimentweapons" , guid_tb[i])
						--RDItemCtrlSetGUIDataPropByGUID(OtherRoleEquipment.WndHandle,"Equimentweapons" , _GUID)
					--end
					Is_weap = 1
				elseif as3.tolua(LuaRet) == 15 then
					RDItemCtrlFillGUIData(OtherRoleEquipment.WndHandle,"Equimentshields" , guid_tb[i])
				end
			end
		end
		if Is_weap == 1 then
			local handle = GetWindow(OtherRoleEquipment.WndHandle, "Equimentweapons")
			if tonumber(res_number) == 19  then
				if handle ~= 0 then
					if _Gender == 1 then
						GUIItemCtrlSetBigIconOffset(handle, 217, 249)
					else
						GUIItemCtrlSetBigIconOffset(handle, 217, 247)
					end
				end	
			else
				if handle ~= 0 then
					if _Gender == 1 then
						GUIItemCtrlSetBigIconOffset(handle, 209, 241)
					else
						GUIItemCtrlSetBigIconOffset(handle, 215, 243)
					end
				end
			end
		end
	end
	
	----------------------------------END-------------------------
	    --_GUIHandle = GUIWndFindWindow(_Handle, "Equiment13")--武器

	
	_GUIHandle = GUIWndFindWindow(OtherRoleEquipment.WndHandle, "Equimentclothes")--衣服
    if _GUIHandle ~= 0 then
        --GUIImageSetDrawCenter(_GUIHandle,true)

        if _Gender == 1 then
            GUIItemCtrlSetDefaultImage(_GUIHandle, 1890900006)
        else
            GUIItemCtrlSetDefaultImage(_GUIHandle, 1890900007)
        end
    end
	
	local _GUIHandle = GUIWndFindWindow(OtherRoleEquipment.WndHandle, "JobEdit")
    if 0 ~= _GUIHandle then
		GUIEditSetTextM(_GUIHandle,"职业："..RDJOBName[_Job])
    end
	
	_GUIHandle = GUIWndFindWindow(OtherRoleEquipment.WndHandle, "LevelEdit")
    if 0 ~= _GUIHandle then
		GUIEditSetTextM(_GUIHandle,"等级：".._Level)
    end
	
	_GUIHandle = GUIWndFindWindow(OtherRoleEquipment.WndHandle, "FamilyEdit")
    if 0 ~= _GUIHandle then
		GUIEditSetTextM(_GUIHandle,_Family)
    end
	
	_GUIHandle = GUIWndFindWindow(OtherRoleEquipment.WndHandle, "RoleNameEdit")
    if 0 ~= _GUIHandle then
		GUIEditSetTextM(_GUIHandle,_Name)
    end
end

RegisterUIEvent(LUA_EVENT_OTHERROLEDATA, "OtherRoleEquipment_OtherRoleData", OtherRoleEquipment.propData)		--其他玩家数据

OtherRoleEquipment.main()