--UI½çÃæÓÃ×°±¸Ë÷Òý
--	site_helmet,   /// Í·¿ø0
--	site_necklace, /// ÏîÁ´1
--	site_wings,    /// ³á°ò2
--	site_medal,    /// Ñ«ÕÂ3
--	site_amulet,   /// ÊØ»¤4
--	site_shoulder, /// »¤¼ç5
--	site_wrist_0,  /// »¤Íó0 6
--	site_wrist_1,  /// »¤Íó1 7
--	site_ring_0,   /// ½äÖ¸0 8
--	site_ring_1,   /// ½äÖ¸1 9
--	site_juju,     /// ·ûÖä10
--	site_shoes,    /// Ð¬×Ó11
--	site_mount,    /// ×øÆï12
--	site_weapon,   /// ÎäÆ÷13
--	site_armor,    /// ÒÂ·þ14
--	site_gem,      /// ±¦Ê¯15
--	site_shield,   /// ¶ÜÅÆ16
--	site_jewelry,   /// Ê±×°17
--	site_hat,       /// ¶·óÒ18
--	site_gloves,    /// ÊÖÌ×19
--	site_jewelry,   /// Öé±¦20



RoleEuiment = {}

RoleEuiment.ManHairTable = 
{
    1990401250, 
    1990401250,
    1990401250, 
    1990401250,
    1990401250, 
    1990401250,
    1990401250, 
    1990401250,    
    1990401250, 
    1990401250
}


RoleEuiment.WomanHairTable = 
{
    1990401251, 
    1990401251,
    1990401251, 
    1990401251,
    1990401251, 
    1990401251,
    1990401251, 
    1990401251,    
    1990401251, 
    1990401251
}

RoleEuiment.Items = 
{
	{1820400098, 309, 175, 1, "ÏîÁ´"}, 
	{1820400094, 9, 225, 2, "³á°ò"}, 
	{1820400091, 309, 225, 3, "Ñ«ÕÂ"}, 
	{1820400101, 109, 325, 4, "¹ÙÓ¡"}, 
	{1820400100, 159, 325, 5, "Ñü´ø"}, 
	{1820400097, 9, 275, 6, "»¤Íó"}, 
	{1820400097, 309, 275, 7, "»¤Íó"}, 
	{1820400092, 9, 325, 8, "½äÖ¸"}, 
	{1820400092, 309, 325, 9, "½äÖ¸"}, 
	{1820400102, 59, 325, 10, "·ûÖä"}, 
	{1820400095, 209, 325, 11, "Ð¬×Ó"}, 
	{1820400096, 259, 325, 12, "×øÆï"}, 
	{1820400099, 9, 175, 15, "±¦Ê¯"},
	{1820400099, 9, 125, 18, "ÊØ»¤"}, 
	{0, 85,178, "WingShow", "³á°òÕ¹Ê¾", 4, 32, 32}, 
	{0, 128, 132, 14, "ÒÂ·þ", 2, 80, 170}, 
	{0, 88, 37, 13, "ÎäÆ÷", 1, 50, 240}, 
	{0, 175, 180, 16, "¶ÜÅÆ", 1, 70, 110}, 
	{0, 153, 97, 0, "Í·¿ø", 3, 34, 34}, 
};

function RoleEuiment.main()
    local _Parent = LuaGlobal["AttachPartent"]
	RoleEuiment.Parent = GUI:WndGetParentM(_Parent)
	
	local _Gender = 1
	if CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) then 
		_Gender = LuaRet
	end

    local _HairIndex = 1
    if CL:GetPlayerSelfPropBase(ROLE_PROP_HAIRSTYLE) then 
        _HairIndex = LuaRet + 1
        if _HairIndex > #RoleEuiment.ManHairTable then
            _HairIndex = 1
        end
    end
	
	for k, v in ipairs(RoleEuiment.Items) do
		if v[1] ~= 0 then
			GUI:ImageCreate(_Parent, "ItemBack"..k, v[1], v[2]-3, v[3]-3);
		end
		
		local wnd = type(v[4]) == "number" and "Equiment"..v[4] or v[4];
		local param = tonumber(v[4]) or 1;
		local _GUIHandle = GUI:ItemCtrlCreate(_Parent,wnd,-1,v[2],v[3],34,34);
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp");
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp");
			GUI:WndSetHint(_GUIHandle,v[5]);
			GUI:ItemCtrlSetRBtnUse(_GUIHandle,false);
			GUI:WndSetParam(_GUIHandle,param-1);
			
			if v[6] ~= nil then
				GUI:WndSetSizeM(_GUIHandle, v[7], v[8]);
				GUI:ItemCtrlSetBigIcon(_GUIHandle, v[6]);
				GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 169, 167);
				GUI:ImageSetDrawCenter(_GUIHandle,true);
				
				if v[4] == 0 then
					if _Gender == 1 then
						GUI:ItemCtrlSetDefaultImage(_GUIHandle, RoleEuiment.ManHairTable[_HairIndex]);
					else
						GUI:ItemCtrlSetDefaultImage(_GUIHandle, RoleEuiment.WomanHairTable[_HairIndex]);
					end
				elseif v[4] == 14 then
					if _Gender == 1 then
						GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990401001);
					else
						GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990401002);
					end
				elseif v[4] == "WingShow" then
					GUI:WndSetCanRevMsg(_GUIHandle,false);
				end
			end
		end
	end

	local _RoleLevelEdit = GUI:EditCreate(_Parent, "RoleLevel", 0, 15, 34, 19)
    if _RoleLevelEdit ~= 0 then
        GUI:EditSetCanEdit(_RoleLevelEdit, false)
        GUI:EditSetFontCenter(_RoleLevelEdit)
    end

    local _FamilyNameEdit = GUI:RichEditCreate(_Parent, "FamilyNameEdit", 102, 20, 151, 16)
    if _FamilyNameEdit ~= 0 then
        GUI:RichEditSetEditEnable(_FamilyNameEdit, false)
        GUI:WndAddFlags(_FamilyNameEdit, 2097152)
    end


    GUI:ImageCreate(_Parent, "EnhanceLv", 1900800055, 167, 55)
    GUI:ImageCreate(_Parent, "EnhanceMagic", 1088400000, 145, 28)
	
	local _FashionBtn = GUI:ButtonCreate(_Parent, "FashionBtn", 1820400110, 310, 10)
	if _FashionBtn ~= 0 then
		GUI:WndRegistScript(_FashionBtn, RDWndBaseCL_mouse_lbUp, "RoleEuiment.FashinBtnOnLBTNUp")
    end
	
	--[[local _EnhanceBtn = GUI:ButtonCreate(_Parent, "EnhanceBtn", 1820400114, 310, 30)
	if _EnhanceBtn ~= 0 then
		GUI:WndRegistScript(_EnhanceBtn, RDWndBaseCL_mouse_lbUp, "RoleEuiment.EnhanceBtnOnLBTNUp")
    end--]]
end

function RoleEuiment.FashinBtnOnLBTNUp()
	UI:Lua_OpenWindow(RoleEuiment.Parent, "FashionEquiment.lua")
end

function RoleEuiment.EnhanceBtnOnLBTNUp()
	CL:OnEhanceRolePreperyWindow()
end

function RoleEuiment.ItemOnRBTNUp()
	
end

function RoleEuiment.ItemOnLBTNUp()
	
end

RoleEuiment.main()