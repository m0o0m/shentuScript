--自定义函数,根据GUID及位置类型获取装备的特效--
function UserGetEquipMagic(GUID, SiteType)
	--若在装备栏, 则SiteType为1; 若在包裹栏, 则SiteType为2
	if SiteType ~= 1 and SiteType ~= 2 then
		return 0;
	end
	
	local magic, Type, SubType, ItemId, KeyName, Name, Identy, RefineLv= 0, 0, 0, 0, "", "", "", 0;
	if as3.tolua(UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_TYPE)) then
		Type = as3.tolua(LuaRet);			--Type:主类型
	end
	
	if as3.tolua(UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_SUBTYPE)) then
		SubType = as3.tolua(LuaRet);		--SubType:子类型
	end
	
	if as3.tolua(UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ENTITY_ID)) then
		ItemId = as3.tolua(LuaRet);		--ItemId:模板ID
	end
	
	if as3.tolua(UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_KEYNAME)) then
		KeyName = as3.tolua(LuaRet);		--KeyName:索引名
	end
	
	if as3.tolua(UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ENTITY_NAME)) then
		Name = as3.tolua(LuaRet);			--Name:名称
	end	
	
	if as3.tolua(UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ITEMIDENTIFIER)) then
		Identy = as3.tolua(LuaRet);		--Identy:物品标识
	end
	
	if as3.tolua(UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_EQUIP_REFINELEVEL)) then
		RefineLv = as3.tolua(LuaRet);		--RefineLv:精炼等级
	end
	
	local enhandle = 0;
	if as3.tolua(UI:Lua_GetItemEntityHandleByGUID(GUID)) then
		enhandle = as3.tolua(LuaRet);
	end
	
	--[[if enhandle ~= 0 then
		if as3.tolua(UI:Lua_GetItemEntityCustomVarInt(enhandle, "IntVarTest")) then
			if as3.tolua(LuaRet) == 1 then
				--获取道具Int型变量, 根据该变量值加特效
			end
		end
		
		if as3.tolua(UI:Lua_GetItemEntityCustomVarStr(enhandle, "StrVarTest")) then
			if as3.tolua(LuaRet) == "xxx" then
				--获取道具Str型变量, 根据该变量值加特效
			end
		end
	end--]]
	
	--Type:主类型 SubType:子类型 ItemId:模板ID KeyName:索引名 Name:名称 Identy:物品标识 RefineLv:精炼等级
	if Type == 1 then
		if SiteType == 1 then		--在装备栏
			--[[if SubType ~= 1 and SubType ~= 2 and SubType ~= 4 then
				magic = 1066300000;
			end
			if SubType == 4 then
				magic = 1019600000;
			end--]]
		elseif SiteType == 2 then	--在包裹中
			--[[if KeyName == "木剑" then
				magic = 1069700000;
			end
			if RefineLv >= 9 then
				magic = 1069700000;
			end--]]
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
	EquipMagic.ShowMagic(handle, "Equiment", 15);
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
		
		if magic ~= 0 then
			local x, y = 0, 0;
			local WndId = WndGetID(this);
			local id = tonumber(WndId:sub(9));
			if id == 0 then
				--此处可单独调整头盔特效的偏移
			elseif id == 13 then
				--此处可单独调整武器特效的偏移
			elseif id == 14 then
				x, y = 22, 10;
			elseif id == 17 then
				magic = 0;
			end
			if magic ~= 0 then
				WndAddEffect(this, nil, magic, x, y, 150);
				local effect = GetWindow(this, WndGetID(this).."_effect");
				WndMoveToParentTop(effect);
				if WndAttach(effect) then
					UI:Lua_WndSetSizeM(32, 32);
					UI:Lua_ImageSetDrawCenter(1);
				end
			end
		else
			WndDelEffect(this);
		end
	end
end

EquipMagic.OnItemIn = function()
	local this = as3.tolua(LuaParam[1]);
	local GUID = as3.tolua(LuaParam[3]);
	EquipMagic.UpdateMagic(this, GUID);
end

EquipMagic.OnItemOut = function()
	local this = as3.tolua(LuaParam[1]);
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
	local file = as3.tolua(LuaParam[1]);
	local this = as3.tolua(LuaParam[2]);
	if file:find("HeroEquiment") then
		UI:Lua_AddDelayTask("EquipMagic.ShowMagic("..this..", \"Equiment\", 15)", 0, 1);
	elseif file:find("HeroPackage") then
		UI:Lua_AddDelayTask("EquipMagic.ShowMagic("..this..", \"Item\", 39)", 0, 1);
	end
end

--RegisterUIEvent(LUA_EVENT_OPENROLEGUI, "打开角色", EquipMagic.OnOpenRole);
--RegisterUIEvent(LUA_EVENT_OPENPAKAGEGUI, "打开包裹", EquipMagic.OnOpenPackage);
--RegisterUIEvent(LUA_EVENT_OPENWAREHOUSEGUI, "打开仓库", EquipMagic.OnOpenWarehouse);
--RegisterUIEvent(LUA_EVENT_OPENADVWAREHOUSEGUI, "打开高级仓库", EquipMagic.OnOpenAdvWarehouse);
--RegisterUIEvent(LUA_EVENT_ITEMCTRLIN, "进入物品框", EquipMagic.OnItemIn);
--RegisterUIEvent(LUA_EVENT_ITEMCTRLOUT, "离开物品框", EquipMagic.OnItemOut);
--RegisterUIEvent(LUA_EVENT_WNDLOADLAYOUT, "加载布局", EquipMagic.OnLoadLayout);