--自定义函数,根据GUID及位置类型获取装备的特效--
function UserGetEquipMagic(GUID, SiteType)
	--若在装备栏, 则SiteType为1; 若在包裹栏, 则SiteType为2
	if SiteType ~= 1 and SiteType ~= 2 then
		return 0;
	end
	
	local magic, Type, SubType, ItemId, KeyName, Name, Identy, RefineLv= 0, 0, 0, 0, "", "", "", 0;
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_TYPE) then
		Type = LuaRet;			--主类型
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_SUBTYPE) then
		SubType = LuaRet;		--子类型
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ENTITY_ID) then
		ItemId = LuaRet;		--模板ID
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_KEYNAME) then
		KeyName = LuaRet;		--索引名
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ENTITY_NAME) then
		Name = LuaRet;			--名称
	end	
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ITEMIDENTIFIER) then
		Identy = LuaRet;		--物品标识
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_EQUIP_REFINELEVEL) then
		RefineLv = LuaRet;		--精炼等级
	end
	
	local enhandle = 0;
	if UI:Lua_GetItemEntityHandleByGUID(GUID) then
		enhandle = LuaRet;
	end
	
	--[[if enhandle ~= 0 then
		if UI:Lua_GetItemEntityCustomVarInt(enhandle, "IntVarTest") then
			if LuaRet == 1 then
				--获取道具Int型变量, 根据该变量值加特效
			end
		end
		
		if UI:Lua_GetItemEntityCustomVarStr(enhandle, "StrVarTest") then
			if LuaRet == "xxx" then
				--获取道具Str型变量, 根据该变量值加特效
			end
		end
	end--]]
	
	if Type == 1 then
		if SiteType == 1 then		--在装备栏
			if KeyName == "陨铁护腕" then
				magic = 3020110200;
			end
			
		elseif SiteType == 2 then	--在包裹中
			if KeyName == "陨铁护腕" then
				magic = 3020110200;
			end
		end
	end
	
	return magic;
end
-------------------------------------------
-----------以下内容请勿修改----------------
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
			SubType = LuaRet		--子类型
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

RegisterUIEvent(LUA_EVENT_OPENROLEGUI, "打开角色", EquipMagic.OnOpenRole);
RegisterUIEvent(LUA_EVENT_OPENPAKAGEGUI, "打开包裹", EquipMagic.OnOpenPackage);
RegisterUIEvent(LUA_EVENT_OPENWAREHOUSEGUI, "打开仓库", EquipMagic.OnOpenWarehouse);
RegisterUIEvent(LUA_EVENT_OPENADVWAREHOUSEGUI, "打开高级仓库", EquipMagic.OnOpenAdvWarehouse);
RegisterUIEvent(LUA_EVENT_ITEMCTRLIN, "进入物品框", EquipMagic.OnItemIn);
RegisterUIEvent(LUA_EVENT_ITEMCTRLOUT, "离开物品框", EquipMagic.OnItemOut);
RegisterUIEvent(LUA_EVENT_WNDLOADLAYOUT, "加载布局", EquipMagic.OnLoadLayout);