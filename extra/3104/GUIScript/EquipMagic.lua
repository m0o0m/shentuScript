--�Զ��庯��,����GUID��λ�����ͻ�ȡװ������Ч--
function UserGetEquipMagic(GUID, SiteType)
	--����װ����, ��SiteTypeΪ1; ���ڰ�����, ��SiteTypeΪ2
	if SiteType ~= 1 and SiteType ~= 2 then
		return 0;
	end
	
	local magic, Type, SubType, ItemId, KeyName, Name, Identy, RefineLv= 0, 0, 0, 0, "", "", "", 0;
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_TYPE) then
		Type = LuaRet;			--������
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_SUBTYPE) then
		SubType = LuaRet;		--������
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ENTITY_ID) then
		ItemId = LuaRet;		--ģ��ID
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_KEYNAME) then
		KeyName = LuaRet;		--������
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ENTITY_NAME) then
		Name = LuaRet;			--����
	end	
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ITEMIDENTIFIER) then
		Identy = LuaRet;		--��Ʒ��ʶ
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_EQUIP_REFINELEVEL) then
		RefineLv = LuaRet;		--�����ȼ�
	end
	
	local enhandle = 0;
	if UI:Lua_GetItemEntityHandleByGUID(GUID) then
		enhandle = LuaRet;
	end
	
	--[[if enhandle ~= 0 then
		if UI:Lua_GetItemEntityCustomVarInt(enhandle, "IntVarTest") then
			if LuaRet == 1 then
				--��ȡ����Int�ͱ���, ���ݸñ���ֵ����Ч
			end
		end
		
		if UI:Lua_GetItemEntityCustomVarStr(enhandle, "StrVarTest") then
			if LuaRet == "xxx" then
				--��ȡ����Str�ͱ���, ���ݸñ���ֵ����Ч
			end
		end
	end--]]
	
	if Type == 1 then
		if SiteType == 1 then		--��װ����
			if KeyName == "��������" then
				magic = 3020110200;
			end
			
		elseif SiteType == 2 then	--�ڰ�����
			if KeyName == "��������" then
				magic = 3020110200;
			end
		end
	end
	
	return magic;
end
-------------------------------------------
-----------�������������޸�----------------
-------------------------------------------
EquipMagic = {};

EquipMagic.OnOpenRole = function()
	local handle = GetWindow(nil, "RoleGUI,RoleEquiment");
	EquipMagic.ShowMagic(handle, "Equiment", 17);
end

EquipMagic.OnOpenPackage = function()
	local handle = GetWindow(nil, "Package");
	EquipMagic.ShowMagic(handle, "Item", 39);
end

EquipMagic.OnOpenWarehouse = function()
	local handle = GetWindow(nil, "WareHouse");
	EquipMagic.ShowMagic(handle, "Item", 39);
end

EquipMagic.OnOpenAdvWarehouse = function()
	local handle = GetWindow(nil, "AdvWareHouse");
	EquipMagic.ShowMagic(handle, "Item", 49);
end

EquipMagic.ShowMagic = function(this, Id, n)
	if this == 0 then
		return;
	end
	
	for i = 0, n do
		local handle = GetWindow(this, Id..i);
		if handle ~= 0 then
			local GUID = RDItemCtrlGetGUIDataPropByType(handle, nil, ITEMGUIDATA_ITEMGUID);
			EquipMagic.UpdateMagic(handle, GUID);
		end
	end
end

EquipMagic.UpdateMagic = function(this, GUID)

	if GUID ~= 0 and GUID ~= "0" then
		local magic, SiteType = 0, 0;
		local UIID = WndGetID(this);
		if UIID:find("Equiment") then
			SiteType = 1;
		elseif UIID:find("Item") then
			SiteType = 2;
		end
		
		if UserGetEquipMagic ~= nil then
			magic = UserGetEquipMagic(GUID, SiteType);
		end
		local SubType = 0
		if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_SUBTYPE) then
			SubType = LuaRet		--������
		end
		local id = WndGetID(this, nil).."_effect"
		if magic ~= 0 then
			
			if tonumber(magic) == 3020110200 or tonumber(magic) == 3020110100 or tonumber(magic) == 3020110000 then
				local _GUIHandle = GUI:ImageCreate(this,id,magic,-18, -20)
				WndSetCanRevMsg(_GUIHandle, nil, false)
				GUI:ImageSetTransfrom(_GUIHandle, 6000, 6000,0)	
				
			else
				local  _GUIHandle = 0
				if SiteType == 1 and SubType == 4 then
					_GUIHandle = GUI:ImageCreate(this,id,magic,-95, -110)		
				else
					_GUIHandle = GUI:ImageCreate(this,id,magic,-5, -6)
				end	
				WndSetCanRevMsg(_GUIHandle, nil, false)				
				GUI:ImageSetAnimateEnable(_GUIHandle, true, 100)	
				
			end	
		else
			
			WndClose(this, id)
		end
	end
end

EquipMagic.OnItemIn = function()
	local this = LuaParam[1];
	local GUID = LuaParam[3];
	EquipMagic.UpdateMagic(this, GUID);
end

EquipMagic.OnItemOut = function()
	local this = LuaParam[1];
	WndDelEffect(this);
end

EquipMagic.OnClickSettle = function(this)
	local parent = WndGetParent(this);
	local n = 39;
	if WndGetID(parent) == "AdvWareHouse" then
		n = 49;
	end
	
	EquipMagic.ShowMagic(parent, "Item", n);
end

EquipMagic.OnLoadLayout = function()
	local file = LuaParam[1];
	local this = LuaParam[2];
	if file:find("HeroEquiment") then
		UI:Lua_AddDelayTask("EquipMagic.ShowMagic("..this..", \"Equiment\", 17)", 0, 1);
	elseif file:find("HeroPackage") then
		UI:Lua_AddDelayTask("EquipMagic.ShowMagic("..this..", \"Item\", 39)", 0, 1);
	end
end

RegisterUIEvent(LUA_EVENT_OPENROLEGUI, "�򿪽�ɫ", EquipMagic.OnOpenRole);
RegisterUIEvent(LUA_EVENT_OPENPAKAGEGUI, "�򿪰���", EquipMagic.OnOpenPackage);
RegisterUIEvent(LUA_EVENT_OPENWAREHOUSEGUI, "�򿪲ֿ�", EquipMagic.OnOpenWarehouse);
RegisterUIEvent(LUA_EVENT_OPENADVWAREHOUSEGUI, "�򿪸߼��ֿ�", EquipMagic.OnOpenAdvWarehouse);
RegisterUIEvent(LUA_EVENT_ITEMCTRLIN, "������Ʒ��", EquipMagic.OnItemIn);
RegisterUIEvent(LUA_EVENT_ITEMCTRLOUT, "�뿪��Ʒ��", EquipMagic.OnItemOut);
RegisterUIEvent(LUA_EVENT_WNDLOADLAYOUT, "���ز���", EquipMagic.OnLoadLayout);