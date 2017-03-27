OtherRoleEuiment = {}

OtherRoleEuiment.Items = 
{
	{1820400098, 323, 232, 1, "项链"}, 
	{1820400094, 23, 282, 2, "翅膀"}, 
	{1820400091, 323, 282, 3, "勋章"}, 
	{1820400101, 123, 382, 4, "守护"}, 
	{1820400100, 173, 382, 5, "腰带"}, 
	{1820400097, 23, 332, 6, "护腕"}, 
	{1820400097, 323, 332, 7, "护腕"}, 
	{1820400092, 23, 382, 8, "戒指"}, 
	{1820400092, 323, 382, 9, "戒指"}, 
	{1820400102, 73, 382, 10, "符咒"}, 
	{1820400095, 223, 382, 11, "鞋子"}, 
	{1820400096, 273, 382, 12, "坐骑"}, 
	{1820400099, 23, 232, 15, "宝石"}, 
{1820400099, 23, 182, 18, "守护"},
	{0, 99,235, "WingShow", "翅膀展示", 4, 32, 32}, 
	{0, 142, 189, 14, "衣服", 2, 80, 170}, 
	{0, 102, 94, 13, "武器", 1, 50, 240}, 
	{0, 189, 237, 16, "盾牌", 1, 70, 110}, 
	{0, 167, 154, 0, "头盔", 3, 34, 34}, 
};

function OtherRoleEuiment.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = _Parent

    local _BackImage = GUI:ImageCreate(_GUIHandle, "GUI_2", 1820400135, 0, 0)
    if _BackImage ~= 0 then
		GUI:WndSetCanRevMsg(_BackImage, false)
    end

	local _ButtonHandle = GUI:ButtonCreate(_GUIHandle, "Close", 1930001002, 350, 5)
	if _ButtonHandle ~= 0 then
		GUI:WndRegistScript(_ButtonHandle, RDWndBaseCL_mouse_lbUp, "OtherRoleEuiment.CloseBtnUp")
	end
	
	for k, v in ipairs(OtherRoleEuiment.Items) do
		if v[1] ~= 0 then
			GUI:ImageCreate(_Parent, "ItemBack"..k, v[1], v[2]-3, v[3]-3);
		end
		
		local wnd = type(v[4]) == "number" and "Equiment"..v[4] or v[4];
		local param = tonumber(v[4]) or 1;
		local _GUIHandle = GUI:ItemCtrlCreate(_Parent,wnd,-1,v[2],v[3],34,34);
		if _GUIHandle ~= 0 then
			GUI:WndSetHint(_GUIHandle,v[5]);
			GUI:ItemCtrlSetRBtnUse(_GUIHandle,false);
			GUI:WndSetParam(_GUIHandle,param-1);
			
			if v[6] ~= nil then
				GUI:WndSetSizeM(_GUIHandle, v[7], v[8]);
				GUI:ItemCtrlSetBigIcon(_GUIHandle, v[6]);
				GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 183, 224);
				GUI:ImageSetDrawCenter(_GUIHandle,true);
				
				if v[4] == 0 then
					if _Gender == 1 then
						GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990401250)
					else
						GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990401251)
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

    local _RoleNameEdit = GUI:EditCreate(_Parent, "RoleName", 120, 35, 131, 18)
    if _RoleNameEdit ~= 0 then
        GUI:WndSetEnableM(_RoleNameEdit, false)
        GUI:EditSetFontCenter(_RoleNameEdit)
    end

	local _RoleLevelEdit = GUI:EditCreate(_Parent, "RoleLevel", 16, 70, 25, 17)
    if _RoleLevelEdit ~= 0 then
        GUI:WndSetEnableM(_RoleLevelEdit, false)
        GUI:EditSetFontCenter(_RoleLevelEdit)
    end

    local _FamilyNameEdit = GUI:RichEditCreate(_Parent, "FamilyNameEdit", 100, 80, 187, 16)
    if _FamilyNameEdit ~= 0 then
        GUI:RichEditSetEditEnable(_FamilyNameEdit, false)
        GUI:WndAddFlags(_FamilyNameEdit, 2097152)
    end


    _BackImage = GUI:ImageCreate(_Parent, "EnhanceLv", 0, 183, 110)
    if _BackImage ~= 0 then
    end

    _BackImage = GUI:ImageCreate(_Parent, "EnhanceMagic", 1088400000, 161, 86)
    if _BackImage ~= 0 then
    end

	local _FashionBtn = GUI:ButtonCreate(_Parent, "FashionBtn", 1820400110, 320, 70)
	if _FashionBtn ~= 0 then
		GUI:WndRegistScript(_FashionBtn, RDWndBaseCL_mouse_lbUp, "OtherRoleEuiment.FashinBtnOnLBTNUp")
    end

	local _TextColor = CL:MakeARGB(255, 194, 182, 160)
	local _FriendBtn = GUI:ButtonCreate(_Parent, "Friend", 1820400126, 39, 451)
	if _FriendBtn ~= 0 then
		GUI:WndRegistScript(_FriendBtn, RDWndBaseCL_mouse_lbUp, "OtherRoleEuiment.FriendBtnOnLBTNUp")
		GUI:WndSetTextM(_FriendBtn, "好 友")
		GUI:WndSetTextColorM(_FriendBtn, _TextColor)
    end

	local _TradeBtn = GUI:ButtonCreate(_Parent, "Trade", 1820400126, 144, 451)
	if _TradeBtn ~= 0 then
		GUI:WndRegistScript(_TradeBtn, RDWndBaseCL_mouse_lbUp, "OtherRoleEuiment.TradeBtnOnLBTNUp")
		GUI:WndSetTextM(_TradeBtn, "交 易")
		GUI:WndSetTextColorM(_TradeBtn, _TextColor)
    end

	local _PrivateTalkBtn = GUI:ButtonCreate(_Parent, "PrivateTalk", 1820400126, 249, 451)
	if _PrivateTalkBtn ~= 0 then
		GUI:WndRegistScript(_PrivateTalkBtn, RDWndBaseCL_mouse_lbUp, "OtherRoleEuiment.PrivateTalkBtnOnLBTNUp")
		GUI:WndSetTextM(_PrivateTalkBtn, "对 话")
		GUI:WndSetTextColorM(_PrivateTalkBtn, _TextColor)
    end

    OtherRoleEuiment.UIInit(_Parent)
end



--UI Logic Code Start

OtherRoleEuiment.WndHandle = 0
function OtherRoleEuiment.UIInit(_Parent)
	OtherRoleEuiment.WndHandle = _Parent
	GUI:WndCalSize(_Parent)
   local _Handle = _Parent

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


function OtherRoleEuiment.FashinBtnOnLBTNUp()
	UI:Lua_OpenWindow(OtherRoleEuiment.WndHandle, "OtherFashionEquiment.lua")
end

function OtherRoleEuiment.CloseBtnUp(_Handle,_Param)
	local _ParentHandle = GUI:WndGetParentM(_Handle)
	if _ParentHandle ~= 0 then 
		GUI:WndClose(_ParentHandle)
	end
end

function OtherRoleEuiment.FriendBtnOnLBTNUp(_Handle,_Param)
	local _EditHandle = GUI:WndFindWindow(OtherRoleEuiment.WndHandle, "RoleName")
    if 0 ~= _EditHandle then
		local _PlayerName = GUI:EditGetTextM(_EditHandle)
		CL:LogicAddFriend(_PlayerName)
    end
end

function OtherRoleEuiment.TradeBtnOnLBTNUp(_Handle,_Param)
	local _ViewPlayerGUID = CL:GetViewEquipTarPlayerGUID()
	if _ViewPlayerGUID ~= "" then
		CL:DoTrade(_ViewPlayerGUID)
	end
end

function OtherRoleEuiment.PrivateTalkBtnOnLBTNUp(_Handle,_Param)
	local _EditHandle = GUI:WndFindWindow(OtherRoleEuiment.WndHandle, "RoleName")
    if 0 ~= _EditHandle then
		local _PlayerName = GUI:EditGetTextM(_EditHandle)
		CL:LogicSendPrivateTalk(_PlayerName)
    end
end

OtherRoleEuiment.main()