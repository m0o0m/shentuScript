--自定义函数,根据GUID及位置类型获取装备的特效--
function UserGetEquipMagic(GUID, SiteType)
	--若在装备栏, 则SiteType为1; 若在包裹栏, 则SiteType为2
	if SiteType ~= 1 and SiteType ~= 2 then
		return 0;
	end
	
	local magic, Type, SubType, ItemId, KeyName, Name, Identy, RefineLv= 0, 0, 0, 0, "", "", "", 0;
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_TYPE) then
		Type = LuaRet;			--Type:主类型
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_SUBTYPE) then
		SubType = LuaRet;		--SubType:子类型
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ENTITY_ID) then
		ItemId = LuaRet;		--ItemId:模板ID
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_KEYNAME) then
		KeyName = LuaRet;		--KeyName:索引名
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ENTITY_NAME) then
		Name = LuaRet;			--Name:名称
	end	
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ITEMIDENTIFIER) then
		Identy = LuaRet;		--Identy:物品标识
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_EQUIP_REFINELEVEL) then
		RefineLv = LuaRet;		--RefineLv:精炼等级
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
	
	--Type:主类型 SubType:子类型 ItemId:模板ID KeyName:索引名 Name:名称 Identy:物品标识 RefineLv:精炼等级
	if Type == 1 then
		if SiteType == 1 then		--在装备栏
			--if SubType ~= 1 and SubType ~= 2 and SubType ~= 3 and SubType ~= 4 and SubType ~= 6 and SubType ~= 7 and SubType ~= 8 and SubType ~= 9 and SubType ~= 10 then
				--magic = 1003000000;	
			--end	
			--[[if KeyName == "狂徒战刃"then
				magic = 1085200000;
			end]]
			if KeyName == "狂徒战甲(男)"then
				magic = 1064700000;
			end
			if KeyName == "狂徒战甲(女)"then
				magic = 1064700000;
			end
			if KeyName == "狂徒项链(战)"then
				magic = 1069200000;
			end
			if KeyName == "狂徒戒指(战)"then
				magic = 1069200000;
			end
			if KeyName == "狂徒护腕(战)"then
				magic = 1069200000;
			end
			if KeyName == "狂徒腰带(战)"then
				magic = 1069200000;
			end
			if KeyName == "狂徒之靴(战)"then
				magic = 1069200000;
			end
			if KeyName == "荣誉勋章01号"then
				magic = 1069200000;
			end
			--[[if KeyName == "狂徒道剑"then
				magic = 1085200000;
			end]]
			if KeyName == "狂徒道袍(男)"then
				magic = 1064700000;
			end
			if KeyName == "狂徒道袍(女)"then
				magic = 1064700000;
			end
			if KeyName == "狂徒项链(道)"then
				magic = 1069400000;
			end
			if KeyName == "狂徒戒指(道)"then
				magic = 1069400000;
			end
			if KeyName == "狂徒护腕(道)"then
				magic = 1069400000;
			end
			if KeyName == "狂徒腰带(道)"then
				magic = 1069400000;
			end
			if KeyName == "狂徒之靴(道)"then
				magic = 1069400000;
			end
			if KeyName == "荣誉勋章01号"then
				magic = 1069400000;
			end
			if KeyName == "狂徒法杖"then
				magic = 1085200000;
			end
			if KeyName == "狂徒法袍(男)"then
				magic = 1064700000;
			end
			if KeyName == "狂徒法袍(女)"then
				magic = 1064700000;
			end
			if KeyName == "狂徒项链(法)"then
				magic = 1069300000;
			end
			if KeyName == "狂徒戒指(法)"then
				magic = 1069300000;
			end
			if KeyName == "狂徒护腕(法)"then
				magic = 1069300000;
			end
			if KeyName == "狂徒腰带(法)"then
				magic = 1069300000;
			end
			if KeyName == "狂徒之靴(法)"then
				magic = 1069300000;
			end
			if KeyName == "荣誉勋章01号"then
				magic = 1069300000;
			end
			--[[if KeyName == "杀神战刃"then
				magic = 1074700000;
			end]]
			if KeyName == "杀神战甲(男)"then
				magic = 1085100000;
			end
			if KeyName == "杀神战甲(女)"then
				magic = 1085100000;
			end
			if KeyName == "杀神战链"then
				magic = 1066700000;
			end
			if KeyName == "杀神战戒"then
				magic = 1066700000;
			end
			if KeyName == "杀神战镯"then
				magic = 1066700000;
			end
			if KeyName == "杀神战带"then
				magic = 1066700000;
			end
			if KeyName == "杀神战靴"then
				magic = 1066700000;
			end
			if KeyName == "神域战章"then
				magic = 1066700000;
			end
			--[[if KeyName == "杀神道剑"then
				magic = 1074600000;
			end]]
			if KeyName == "杀神道袍(男)"then
				magic = 1050900000;
			end
			if KeyName == "杀神道袍(女)"then
				magic = 1050900000;
			end
			if KeyName == "杀神道链"then
				magic = 1066600000;
			end
			if KeyName == "杀神道戒"then
				magic = 1066600000;
			end
			if KeyName == "杀神道镯"then
				magic = 1066600000;
			end
			if KeyName == "杀神道带"then
				magic = 1066600000;
			end
			if KeyName == "杀神道靴"then
				magic = 1066600000;
			end
			if KeyName == "神域魔章"then
				magic = 1066600000;
			end
			--[[if KeyName == "杀神法杖"then
				magic = 1074300000;
			end]]
			if KeyName == "杀神法袍(男)"then
				magic = 1050800000;
			end
			if KeyName == "杀神法袍(女)"then
				magic = 1050800000;
			end
			if KeyName == "杀神法链"then
				magic = 1068300000;
			end
			if KeyName == "杀神法戒"then
				magic = 1068300000;
			end
			if KeyName == "杀神法镯"then
				magic = 1068300000;
			end
			if KeyName == "杀神法带"then
				magic = 1068300000;
			end
			if KeyName == "杀神法靴"then
				magic = 1068300000;
			end
			if KeyName == "神域道章"then
				magic = 1068300000;
			end
			--[[if KeyName == "佛屠"then
				magic = 1019000000;
			end]]
			if KeyName == "佛屠战甲(男)"then
				magic = 1017600000;
			end
			if KeyName == "佛屠战甲(女)"then
				magic = 1017600000;
			end
			if KeyName == "佛屠战链"then
				magic = 1069000000;
			end
			if KeyName == "傲视勋章"then
				magic = 1069000000;
			end
			if KeyName == "佛屠战戒"then
				magic = 1069000000;
			end
			if KeyName == "佛屠战镯"then
				magic = 1069000000;
			end
			if KeyName == "佛屠战靴"then
				magic = 1069000000;
			end
			if KeyName == "佛屠战带"then
				magic = 1069000000;
				end
			--[[if KeyName == "末日"then
				magic = 1019000000;
			end]]
			if KeyName == "末日法袍(男)"then
				magic = 1017600000;
			end
			if KeyName == "末日法袍(女)"then
				magic = 1017600000;
			end
			if KeyName == "末日法链"then
				magic = 1069000000;
			end
			if KeyName == "傲视魔章"then
				magic = 1069000000;
			end
			if KeyName == "末日法戒"then
				magic = 1069000000;
			end
			if KeyName == "末日法镯"then
				magic = 1069000000;
			end
			if KeyName == "末日法靴"then
				magic = 1069000000;
			end
			if KeyName == "末日法带"then
				magic = 1069000000;
				end
			--[[if KeyName == "赤霄"then
				magic = 1019000000;
			end]]
			if KeyName == "赤霄道袍(男)"then
				magic = 1017600000;
			end
			if KeyName == "赤霄道袍(女)"then
				magic = 1017600000;
			end
			if KeyName == "赤霄道链"then
				magic = 1069000000;
			end
			if KeyName == "龙之心"then
				magic = 1069000000;
			end
			if KeyName == "赤霄道戒"then
				magic = 1069000000;
			end
			if KeyName == "赤霄道镯"then
				magic = 1069000000;
			end
			if KeyName == "赤霄道靴"then
				magic = 1069000000;
			end
			if KeyName == "赤霄道带"then
				magic = 1069000000;
			end
			--[[if KeyName == "佛屠真"then
				magic = 1077900000;
				end]]
			if KeyName == "佛屠战甲(男)真"then
				magic = 1017600000;
			end
			if KeyName == "佛屠战甲(女)真"then
				magic = 1017600000;
			end
			if KeyName == "佛屠战靴真"then
				magic = 1067300000;
			end
			if KeyName == "佛屠战带真"then
				magic = 1067300000;
			end
			if KeyName == "佛屠战镯真"then
				magic = 1067300000;
			end
			if KeyName == "佛屠战戒真"then
				magic = 1067300000;
			end
			if KeyName == "佛屠战链真"then
				magic = 1067300000;
			end
			--[[if KeyName == "末日真"then
				magic = 1077900000;
				end]]
			if KeyName == "末日法袍(女)真"then
				magic = 1017600000;
			end
			if KeyName == "末日法袍(男)真"then
				magic = 1017600000;
			end
			if KeyName == "末日法靴真"then
				magic = 1067300000;
			end
			if KeyName == "末日法带真"then
				magic = 1067300000;
			end
			if KeyName == "末日法镯真"then
				magic = 1067300000;
			end
			if KeyName == "末日法戒真"then
				magic = 1067300000;
			end
			if KeyName == "末日法链真"then
				magic = 1067300000;
			end
			--[[if KeyName == "赤霄真"then
				magic = 1077900000;
				end]]
			if KeyName == "赤霄道袍(女)真"then
				magic = 1017600000;
			end
			if KeyName == "赤霄道袍(男)真"then
				magic = 1017600000;
			end
			if KeyName == "赤霄道靴真"then
				magic = 1067300000;
			end
			if KeyName == "赤霄道带真"then
				magic = 1067300000;
			end
			if KeyName == "赤霄道镯真"then
				magic = 1067300000;
			end
			if KeyName == "赤霄道戒真"then
				magic = 1067300000;
			end
			if KeyName == "赤霄道链真"then
				magic = 1067300000;
			end
			if KeyName == "死神戒"then
				magic = 1067800000;
			end
			if KeyName=="魅力铠甲(女)(7天)" or KeyName=="魅力铠甲(男)(7天)" or KeyName=="魅力铠甲(女)" or KeyName=="魅力铠甲(男)" then
					magic = 1085100000
				end
		elseif SiteType == 2 then	--在包裹中
		if KeyName=="魅力铠甲(女)(7天)" or KeyName=="魅力铠甲(男)(7天)" or KeyName=="魅力铠甲(女)" or KeyName=="魅力铠甲(男)" then
					magic = 1067600000
				end
				if KeyName=="魅力之翼(7天)" or KeyName=="魅力之翼" or KeyName=="魅力神盾(7天)" or KeyName=="魅力神盾" then
					magic = 1067600000
				end
				if KeyName=="魅力法杖(7天)" or KeyName=="魅力赤扇(7天)" or KeyName=="魅力之刃(7天)" then
					magic = 1067600000
				end
				if KeyName=="魅力法杖" or KeyName=="魅力赤扇" or KeyName=="魅力之刃" then
					magic = 1067600000
				end
			if KeyName == "狂徒战刃"then
				magic = 1069200000;
			end
			if KeyName == "狂徒战甲(男)"then
				magic = 1069200000;
			end
			if KeyName == "狂徒战甲(女)"then
				magic = 1069200000;
			end
			if KeyName == "狂徒项链(战)"then
				magic = 1069200000;
			end
			if KeyName == "狂徒戒指(战)"then
				magic = 1069200000;
			end
			if KeyName == "狂徒护腕(战)"then
				magic = 1069200000;
			end
			if KeyName == "狂徒腰带(战)"then
				magic = 1069200000;
			end
			if KeyName == "狂徒之靴(战)"then
				magic = 1069200000;
			end
			if KeyName == "荣誉勋章01号"then
				magic = 1069200000;
			end
			if KeyName == "狂徒头盔(战)"then
				magic = 1069200000;
			end
			if KeyName == "狂徒道剑"then
				magic = 1069400000;
			end
			if KeyName == "狂徒头盔(道)"then
				magic = 1069400000;
			end
			if KeyName == "狂徒道袍(男)"then
				magic = 1069400000;
			end
			if KeyName == "狂徒道袍(女)"then
				magic = 1069400000;
			end
			if KeyName == "狂徒项链(道)"then
				magic = 1069400000;
			end
			if KeyName == "狂徒戒指(道)"then
				magic = 1069400000;
			end
			if KeyName == "狂徒护腕(道)"then
				magic = 1069400000;
			end
			if KeyName == "狂徒腰带(道)"then
				magic = 1069400000;
			end
			if KeyName == "狂徒之靴(道)"then
				magic = 1069400000;
			end
			if KeyName == "血影勋章2"then
				magic = 1069400000;
			end
			if KeyName == "狂徒法杖"then
				magic = 1069300000;
			end
			if KeyName == "狂徒头盔(法)"then
				magic = 1069300000;
			end
			if KeyName == "狂徒法袍(男)"then
				magic = 1069300000;
			end
			if KeyName == "狂徒法袍(女)"then
				magic = 1069300000;
			end
			if KeyName == "狂徒项链(法)"then
				magic = 1069300000;
			end
			if KeyName == "狂徒戒指(法)"then
				magic = 1069300000;
			end
			if KeyName == "狂徒护腕(法)"then
				magic = 1069300000;
			end
			if KeyName == "狂徒腰带(法)"then
				magic = 1069300000;
			end
			if KeyName == "狂徒之靴(法)"then
				magic = 1069300000;
			end
			if KeyName == "血影勋章3"then
				magic = 1069300000;
			end
			if KeyName == "杀神战刃"then
				magic = 1066700000;
			end
			if KeyName == "杀神战盔"then
				magic = 1066700000;
			end
			if KeyName == "杀神战甲(男)"then
				magic = 1066700000;
			end
			if KeyName == "杀神战甲(女)"then
				magic = 1066700000;
			end
			if KeyName == "杀神战链"then
				magic = 1066700000;
			end
			if KeyName == "杀神战戒"then
				magic = 1066700000;
			end
			if KeyName == "杀神战镯"then
				magic = 1066700000;
			end
			if KeyName == "杀神战带"then
				magic = 1066700000;
			end
			if KeyName == "杀神战靴"then
				magic = 1066700000;
			end
			if KeyName == "神域战章"then
				magic = 1066700000;
			end
			if KeyName == "杀神道剑"then
				magic = 1066600000;
			end
			if KeyName == "杀神道盔"then
				magic = 1066600000;
			end
			if KeyName == "杀神道袍(男)"then
				magic = 1066600000;
			end
			if KeyName == "杀神道袍(女)"then
				magic = 1066600000;
			end
			if KeyName == "杀神道链"then
				magic = 1066600000;
			end
			if KeyName == "杀神道戒"then
				magic = 1066600000;
			end
			if KeyName == "杀神道镯"then
				magic = 1066600000;
			end
			if KeyName == "杀神道带"then
				magic = 1066600000;
			end
			if KeyName == "杀神道靴"then
				magic = 1066600000;
			end
			if KeyName == "神域魔章"then
				magic = 1066600000;
			end
			if KeyName == "杀神法杖"then
				magic = 1068300000;
			end
			if KeyName == "杀神法盔"then
				magic = 1068300000;
			end
			if KeyName == "杀神法袍(男)"then
				magic = 1068300000;
			end
			if KeyName == "杀神法袍(女)"then
				magic = 1068300000;
			end
			if KeyName == "杀神法链"then
				magic = 1068300000;
			end
			if KeyName == "杀神法戒"then
				magic = 1068300000;
			end
			if KeyName == "杀神法镯"then
				magic = 1068300000;
			end
			if KeyName == "杀神法带"then
				magic = 1068300000;
			end
			if KeyName == "杀神法靴"then
				magic = 1068300000;
			end
			if KeyName == "杀神法靴"then
				magic = 1068300000;
			end
			if KeyName == "佛屠"then
				magic = 1069000000;
			end
			if KeyName == "佛屠战盔"then
				magic = 1069000000;
			end
			if KeyName == "佛屠战甲(男)"then
				magic = 1069000000;
			end
			if KeyName == "佛屠战甲(女)"then
				magic = 1069000000;
			end
			if KeyName == "佛屠战链"then
				magic = 1069000000;
			end
			if KeyName == "龙之心"then
				magic = 1069000000;
			end
			if KeyName == "佛屠战戒"then
				magic = 1069000000;
			end
			if KeyName == "佛屠战镯"then
				magic = 1069000000;
			end
			if KeyName == "佛屠战靴"then
				magic = 1069000000;
			end
			if KeyName == "佛屠战带"then
				magic = 1069000000;
				end
			if KeyName == "末日"then
				magic = 1069000000;
			end
			if KeyName == "末日法盔"then
				magic = 1069000000;
			end
			if KeyName == "末日法袍(男)"then
				magic = 1069000000;
			end
			if KeyName == "末日法袍(女)"then
				magic = 1069000000;
			end
			if KeyName == "末日法链"then
				magic = 1069000000;
			end
			if KeyName == "傲视魔章"then
				magic = 1069000000;
			end
			if KeyName == "末日法戒"then
				magic = 1069000000;
			end
			if KeyName == "末日法镯"then
				magic = 1069000000;
			end
			if KeyName == "末日法靴"then
				magic = 1069000000;
			end
			if KeyName == "末日法带"then
				magic = 1069000000;
				end
			if KeyName == "赤霄"then
				magic = 1069000000;
			end
			if KeyName == "赤霄道盔"then
				magic = 1069000000;
			end
			if KeyName == "赤霄道袍(男)"then
				magic = 1069000000;
			end
			if KeyName == "赤霄道袍(女)"then
				magic = 1069000000;
			end
			if KeyName == "赤霄道链"then
				magic = 1069000000;
			end
			if KeyName == "傲视玄章"then
				magic = 1069000000;
			end
			if KeyName == "赤霄道戒"then
				magic = 1069000000;
			end
			if KeyName == "赤霄道镯"then
				magic = 1069000000;
			end
			if KeyName == "赤霄道靴"then
				magic = 1069000000;
			end
			if KeyName == "赤霄道带"then
				magic = 1069000000;
			end
			if KeyName == "佛屠真"then
				magic = 1067300000;
				end
			if KeyName == "佛屠战甲(男)真"then
				magic = 1067300000;
				end
			if KeyName == "佛屠战甲(女)真"then
				magic = 1067300000;
			end
			if KeyName == "佛屠战靴真"then
				magic = 1067300000;
			end
			if KeyName == "佛屠战带真"then
				magic = 1067300000;
			end
			if KeyName == "佛屠战镯真"then
				magic = 1067300000;
			end
			if KeyName == "佛屠战戒真"then
				magic = 1067300000;
			end
			if KeyName == "佛屠战链真"then
				magic = 1067300000;
			end
			if KeyName == "末日真"then
				magic = 1067300000;
			end
			if KeyName == "末日法袍(女)真"then
				magic = 1067300000;
			end
			if KeyName == "末日法袍(男)真"then
				magic = 1067300000;
			end
			if KeyName == "末日法靴真"then
				magic = 1067300000;
			end
			if KeyName == "末日法带真"then
				magic = 1067300000;
			end
			if KeyName == "末日法镯真"then
				magic = 1067300000;
			end
			if KeyName == "末日法戒真"then
				magic = 1067300000;
			end
			if KeyName == "末日法链真"then
				magic = 1067300000;
			end
			if KeyName == "赤霄真"then
				magic = 1067300000;
			end
			if KeyName == "赤霄道袍(女)真"then
				magic = 1067300000;
			end
			if KeyName == "赤霄道袍(男)真"then
				magic = 1067300000;
			end
			if KeyName == "赤霄道靴真"then
				magic = 1067300000;
			end
			if KeyName == "赤霄道带真"then
				magic = 1067300000;
			end
			if KeyName == "赤霄道镯真"then
				magic = 1067300000;
			end
			if KeyName == "赤霄道戒真"then
				magic = 1067300000;
			end
			if KeyName == "赤霄道链真"then
				magic = 1067300000;
			end
			if KeyName == "赤霄道盔真"then
				magic = 1067300000;
			end
			if KeyName == "末日法盔真"then
				magic = 1067300000;
			end
			if KeyName == "佛屠战盔真"then
				magic = 1067300000;
			end
			if KeyName == "深渊神戒"then
				magic = 1067300000;
			end
			if KeyName == "深渊腰带"then
				magic = 1067300000;
			end
			if KeyName == "深渊神靴"then
				magic = 1067300000;
			end
			if KeyName == "死神戒"then
				magic = 1067800000;
			end
			--[[if RefineLv >= 9 then
				magic = 1069700000;
			end]]
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
		UI:Lua_AddDelayTask("EquipMagic.ShowMagic("..this..", \"Equiment\", 15)", 0, 1);
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