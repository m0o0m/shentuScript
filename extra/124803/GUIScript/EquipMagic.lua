--�Զ��庯��,����GUID��λ�����ͻ�ȡװ������Ч--
function UserGetEquipMagic(GUID, SiteType)
	--����װ����, ��SiteTypeΪ1; ���ڰ�����, ��SiteTypeΪ2
	if SiteType ~= 1 and SiteType ~= 2 then
		return 0;
	end
	
	local magic, Type, SubType, ItemId, KeyName, Name, Identy, RefineLv= 0, 0, 0, 0, "", "", "", 0;
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_TYPE) then
		Type = LuaRet;			--Type:������
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_SUBTYPE) then
		SubType = LuaRet;		--SubType:������
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ENTITY_ID) then
		ItemId = LuaRet;		--ItemId:ģ��ID
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_KEYNAME) then
		KeyName = LuaRet;		--KeyName:������
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ENTITY_NAME) then
		Name = LuaRet;			--Name:����
	end	
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ITEMIDENTIFIER) then
		Identy = LuaRet;		--Identy:��Ʒ��ʶ
	end
	
	if UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_EQUIP_REFINELEVEL) then
		RefineLv = LuaRet;		--RefineLv:�����ȼ�
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
	
	--Type:������ SubType:������ ItemId:ģ��ID KeyName:������ Name:���� Identy:��Ʒ��ʶ RefineLv:�����ȼ�
	if Type == 1 then
		if SiteType == 1 then		--��װ����
			--if SubType ~= 1 and SubType ~= 2 and SubType ~= 3 and SubType ~= 4 and SubType ~= 6 and SubType ~= 7 and SubType ~= 8 and SubType ~= 9 and SubType ~= 10 then
				--magic = 1003000000;	
			--end	
			--[[if KeyName == "��ͽս��"then
				magic = 1085200000;
			end]]
			if KeyName == "��ͽս��(��)"then
				magic = 1064700000;
			end
			if KeyName == "��ͽս��(Ů)"then
				magic = 1064700000;
			end
			if KeyName == "��ͽ����(ս)"then
				magic = 1069200000;
			end
			if KeyName == "��ͽ��ָ(ս)"then
				magic = 1069200000;
			end
			if KeyName == "��ͽ����(ս)"then
				magic = 1069200000;
			end
			if KeyName == "��ͽ����(ս)"then
				magic = 1069200000;
			end
			if KeyName == "��ͽ֮ѥ(ս)"then
				magic = 1069200000;
			end
			if KeyName == "����ѫ��01��"then
				magic = 1069200000;
			end
			--[[if KeyName == "��ͽ����"then
				magic = 1085200000;
			end]]
			if KeyName == "��ͽ����(��)"then
				magic = 1064700000;
			end
			if KeyName == "��ͽ����(Ů)"then
				magic = 1064700000;
			end
			if KeyName == "��ͽ����(��)"then
				magic = 1069400000;
			end
			if KeyName == "��ͽ��ָ(��)"then
				magic = 1069400000;
			end
			if KeyName == "��ͽ����(��)"then
				magic = 1069400000;
			end
			if KeyName == "��ͽ����(��)"then
				magic = 1069400000;
			end
			if KeyName == "��ͽ֮ѥ(��)"then
				magic = 1069400000;
			end
			if KeyName == "����ѫ��01��"then
				magic = 1069400000;
			end
			if KeyName == "��ͽ����"then
				magic = 1085200000;
			end
			if KeyName == "��ͽ����(��)"then
				magic = 1064700000;
			end
			if KeyName == "��ͽ����(Ů)"then
				magic = 1064700000;
			end
			if KeyName == "��ͽ����(��)"then
				magic = 1069300000;
			end
			if KeyName == "��ͽ��ָ(��)"then
				magic = 1069300000;
			end
			if KeyName == "��ͽ����(��)"then
				magic = 1069300000;
			end
			if KeyName == "��ͽ����(��)"then
				magic = 1069300000;
			end
			if KeyName == "��ͽ֮ѥ(��)"then
				magic = 1069300000;
			end
			if KeyName == "����ѫ��01��"then
				magic = 1069300000;
			end
			--[[if KeyName == "ɱ��ս��"then
				magic = 1074700000;
			end]]
			if KeyName == "ɱ��ս��(��)"then
				magic = 1085100000;
			end
			if KeyName == "ɱ��ս��(Ů)"then
				magic = 1085100000;
			end
			if KeyName == "ɱ��ս��"then
				magic = 1066700000;
			end
			if KeyName == "ɱ��ս��"then
				magic = 1066700000;
			end
			if KeyName == "ɱ��ս��"then
				magic = 1066700000;
			end
			if KeyName == "ɱ��ս��"then
				magic = 1066700000;
			end
			if KeyName == "ɱ��սѥ"then
				magic = 1066700000;
			end
			if KeyName == "����ս��"then
				magic = 1066700000;
			end
			--[[if KeyName == "ɱ�����"then
				magic = 1074600000;
			end]]
			if KeyName == "ɱ�����(��)"then
				magic = 1050900000;
			end
			if KeyName == "ɱ�����(Ů)"then
				magic = 1050900000;
			end
			if KeyName == "ɱ�����"then
				magic = 1066600000;
			end
			if KeyName == "ɱ�����"then
				magic = 1066600000;
			end
			if KeyName == "ɱ�����"then
				magic = 1066600000;
			end
			if KeyName == "ɱ�����"then
				magic = 1066600000;
			end
			if KeyName == "ɱ���ѥ"then
				magic = 1066600000;
			end
			if KeyName == "����ħ��"then
				magic = 1066600000;
			end
			--[[if KeyName == "ɱ����"then
				magic = 1074300000;
			end]]
			if KeyName == "ɱ����(��)"then
				magic = 1050800000;
			end
			if KeyName == "ɱ����(Ů)"then
				magic = 1050800000;
			end
			if KeyName == "ɱ����"then
				magic = 1068300000;
			end
			if KeyName == "ɱ�񷨽�"then
				magic = 1068300000;
			end
			if KeyName == "ɱ����"then
				magic = 1068300000;
			end
			if KeyName == "ɱ�񷨴�"then
				magic = 1068300000;
			end
			if KeyName == "ɱ��ѥ"then
				magic = 1068300000;
			end
			if KeyName == "�������"then
				magic = 1068300000;
			end
			--[[if KeyName == "����"then
				magic = 1019000000;
			end]]
			if KeyName == "����ս��(��)"then
				magic = 1017600000;
			end
			if KeyName == "����ս��(Ů)"then
				magic = 1017600000;
			end
			if KeyName == "����ս��"then
				magic = 1069000000;
			end
			if KeyName == "����ѫ��"then
				magic = 1069000000;
			end
			if KeyName == "����ս��"then
				magic = 1069000000;
			end
			if KeyName == "����ս��"then
				magic = 1069000000;
			end
			if KeyName == "����սѥ"then
				magic = 1069000000;
			end
			if KeyName == "����ս��"then
				magic = 1069000000;
				end
			--[[if KeyName == "ĩ��"then
				magic = 1019000000;
			end]]
			if KeyName == "ĩ�շ���(��)"then
				magic = 1017600000;
			end
			if KeyName == "ĩ�շ���(Ů)"then
				magic = 1017600000;
			end
			if KeyName == "ĩ�շ���"then
				magic = 1069000000;
			end
			if KeyName == "����ħ��"then
				magic = 1069000000;
			end
			if KeyName == "ĩ�շ���"then
				magic = 1069000000;
			end
			if KeyName == "ĩ�շ���"then
				magic = 1069000000;
			end
			if KeyName == "ĩ�շ�ѥ"then
				magic = 1069000000;
			end
			if KeyName == "ĩ�շ���"then
				magic = 1069000000;
				end
			--[[if KeyName == "����"then
				magic = 1019000000;
			end]]
			if KeyName == "��������(��)"then
				magic = 1017600000;
			end
			if KeyName == "��������(Ů)"then
				magic = 1017600000;
			end
			if KeyName == "��������"then
				magic = 1069000000;
			end
			if KeyName == "��֮��"then
				magic = 1069000000;
			end
			if KeyName == "��������"then
				magic = 1069000000;
			end
			if KeyName == "��������"then
				magic = 1069000000;
			end
			if KeyName == "������ѥ"then
				magic = 1069000000;
			end
			if KeyName == "��������"then
				magic = 1069000000;
			end
			--[[if KeyName == "������"then
				magic = 1077900000;
				end]]
			if KeyName == "����ս��(��)��"then
				magic = 1017600000;
			end
			if KeyName == "����ս��(Ů)��"then
				magic = 1017600000;
			end
			if KeyName == "����սѥ��"then
				magic = 1067300000;
			end
			if KeyName == "����ս����"then
				magic = 1067300000;
			end
			if KeyName == "����ս����"then
				magic = 1067300000;
			end
			if KeyName == "����ս����"then
				magic = 1067300000;
			end
			if KeyName == "����ս����"then
				magic = 1067300000;
			end
			--[[if KeyName == "ĩ����"then
				magic = 1077900000;
				end]]
			if KeyName == "ĩ�շ���(Ů)��"then
				magic = 1017600000;
			end
			if KeyName == "ĩ�շ���(��)��"then
				magic = 1017600000;
			end
			if KeyName == "ĩ�շ�ѥ��"then
				magic = 1067300000;
			end
			if KeyName == "ĩ�շ�����"then
				magic = 1067300000;
			end
			if KeyName == "ĩ�շ�����"then
				magic = 1067300000;
			end
			if KeyName == "ĩ�շ�����"then
				magic = 1067300000;
			end
			if KeyName == "ĩ�շ�����"then
				magic = 1067300000;
			end
			--[[if KeyName == "������"then
				magic = 1077900000;
				end]]
			if KeyName == "��������(Ů)��"then
				magic = 1017600000;
			end
			if KeyName == "��������(��)��"then
				magic = 1017600000;
			end
			if KeyName == "������ѥ��"then
				magic = 1067300000;
			end
			if KeyName == "����������"then
				magic = 1067300000;
			end
			if KeyName == "����������"then
				magic = 1067300000;
			end
			if KeyName == "����������"then
				magic = 1067300000;
			end
			if KeyName == "����������"then
				magic = 1067300000;
			end
			if KeyName == "�����"then
				magic = 1067800000;
			end
			if KeyName=="��������(Ů)(7��)" or KeyName=="��������(��)(7��)" or KeyName=="��������(Ů)" or KeyName=="��������(��)" then
					magic = 1085100000
				end
		elseif SiteType == 2 then	--�ڰ�����
		if KeyName=="��������(Ů)(7��)" or KeyName=="��������(��)(7��)" or KeyName=="��������(Ů)" or KeyName=="��������(��)" then
					magic = 1067600000
				end
				if KeyName=="����֮��(7��)" or KeyName=="����֮��" or KeyName=="�������(7��)" or KeyName=="�������" then
					magic = 1067600000
				end
				if KeyName=="��������(7��)" or KeyName=="��������(7��)" or KeyName=="����֮��(7��)" then
					magic = 1067600000
				end
				if KeyName=="��������" or KeyName=="��������" or KeyName=="����֮��" then
					magic = 1067600000
				end
			if KeyName == "��ͽս��"then
				magic = 1069200000;
			end
			if KeyName == "��ͽս��(��)"then
				magic = 1069200000;
			end
			if KeyName == "��ͽս��(Ů)"then
				magic = 1069200000;
			end
			if KeyName == "��ͽ����(ս)"then
				magic = 1069200000;
			end
			if KeyName == "��ͽ��ָ(ս)"then
				magic = 1069200000;
			end
			if KeyName == "��ͽ����(ս)"then
				magic = 1069200000;
			end
			if KeyName == "��ͽ����(ս)"then
				magic = 1069200000;
			end
			if KeyName == "��ͽ֮ѥ(ս)"then
				magic = 1069200000;
			end
			if KeyName == "����ѫ��01��"then
				magic = 1069200000;
			end
			if KeyName == "��ͽͷ��(ս)"then
				magic = 1069200000;
			end
			if KeyName == "��ͽ����"then
				magic = 1069400000;
			end
			if KeyName == "��ͽͷ��(��)"then
				magic = 1069400000;
			end
			if KeyName == "��ͽ����(��)"then
				magic = 1069400000;
			end
			if KeyName == "��ͽ����(Ů)"then
				magic = 1069400000;
			end
			if KeyName == "��ͽ����(��)"then
				magic = 1069400000;
			end
			if KeyName == "��ͽ��ָ(��)"then
				magic = 1069400000;
			end
			if KeyName == "��ͽ����(��)"then
				magic = 1069400000;
			end
			if KeyName == "��ͽ����(��)"then
				magic = 1069400000;
			end
			if KeyName == "��ͽ֮ѥ(��)"then
				magic = 1069400000;
			end
			if KeyName == "ѪӰѫ��2"then
				magic = 1069400000;
			end
			if KeyName == "��ͽ����"then
				magic = 1069300000;
			end
			if KeyName == "��ͽͷ��(��)"then
				magic = 1069300000;
			end
			if KeyName == "��ͽ����(��)"then
				magic = 1069300000;
			end
			if KeyName == "��ͽ����(Ů)"then
				magic = 1069300000;
			end
			if KeyName == "��ͽ����(��)"then
				magic = 1069300000;
			end
			if KeyName == "��ͽ��ָ(��)"then
				magic = 1069300000;
			end
			if KeyName == "��ͽ����(��)"then
				magic = 1069300000;
			end
			if KeyName == "��ͽ����(��)"then
				magic = 1069300000;
			end
			if KeyName == "��ͽ֮ѥ(��)"then
				magic = 1069300000;
			end
			if KeyName == "ѪӰѫ��3"then
				magic = 1069300000;
			end
			if KeyName == "ɱ��ս��"then
				magic = 1066700000;
			end
			if KeyName == "ɱ��ս��"then
				magic = 1066700000;
			end
			if KeyName == "ɱ��ս��(��)"then
				magic = 1066700000;
			end
			if KeyName == "ɱ��ս��(Ů)"then
				magic = 1066700000;
			end
			if KeyName == "ɱ��ս��"then
				magic = 1066700000;
			end
			if KeyName == "ɱ��ս��"then
				magic = 1066700000;
			end
			if KeyName == "ɱ��ս��"then
				magic = 1066700000;
			end
			if KeyName == "ɱ��ս��"then
				magic = 1066700000;
			end
			if KeyName == "ɱ��սѥ"then
				magic = 1066700000;
			end
			if KeyName == "����ս��"then
				magic = 1066700000;
			end
			if KeyName == "ɱ�����"then
				magic = 1066600000;
			end
			if KeyName == "ɱ�����"then
				magic = 1066600000;
			end
			if KeyName == "ɱ�����(��)"then
				magic = 1066600000;
			end
			if KeyName == "ɱ�����(Ů)"then
				magic = 1066600000;
			end
			if KeyName == "ɱ�����"then
				magic = 1066600000;
			end
			if KeyName == "ɱ�����"then
				magic = 1066600000;
			end
			if KeyName == "ɱ�����"then
				magic = 1066600000;
			end
			if KeyName == "ɱ�����"then
				magic = 1066600000;
			end
			if KeyName == "ɱ���ѥ"then
				magic = 1066600000;
			end
			if KeyName == "����ħ��"then
				magic = 1066600000;
			end
			if KeyName == "ɱ����"then
				magic = 1068300000;
			end
			if KeyName == "ɱ�񷨿�"then
				magic = 1068300000;
			end
			if KeyName == "ɱ����(��)"then
				magic = 1068300000;
			end
			if KeyName == "ɱ����(Ů)"then
				magic = 1068300000;
			end
			if KeyName == "ɱ����"then
				magic = 1068300000;
			end
			if KeyName == "ɱ�񷨽�"then
				magic = 1068300000;
			end
			if KeyName == "ɱ����"then
				magic = 1068300000;
			end
			if KeyName == "ɱ�񷨴�"then
				magic = 1068300000;
			end
			if KeyName == "ɱ��ѥ"then
				magic = 1068300000;
			end
			if KeyName == "ɱ��ѥ"then
				magic = 1068300000;
			end
			if KeyName == "����"then
				magic = 1069000000;
			end
			if KeyName == "����ս��"then
				magic = 1069000000;
			end
			if KeyName == "����ս��(��)"then
				magic = 1069000000;
			end
			if KeyName == "����ս��(Ů)"then
				magic = 1069000000;
			end
			if KeyName == "����ս��"then
				magic = 1069000000;
			end
			if KeyName == "��֮��"then
				magic = 1069000000;
			end
			if KeyName == "����ս��"then
				magic = 1069000000;
			end
			if KeyName == "����ս��"then
				magic = 1069000000;
			end
			if KeyName == "����սѥ"then
				magic = 1069000000;
			end
			if KeyName == "����ս��"then
				magic = 1069000000;
				end
			if KeyName == "ĩ��"then
				magic = 1069000000;
			end
			if KeyName == "ĩ�շ���"then
				magic = 1069000000;
			end
			if KeyName == "ĩ�շ���(��)"then
				magic = 1069000000;
			end
			if KeyName == "ĩ�շ���(Ů)"then
				magic = 1069000000;
			end
			if KeyName == "ĩ�շ���"then
				magic = 1069000000;
			end
			if KeyName == "����ħ��"then
				magic = 1069000000;
			end
			if KeyName == "ĩ�շ���"then
				magic = 1069000000;
			end
			if KeyName == "ĩ�շ���"then
				magic = 1069000000;
			end
			if KeyName == "ĩ�շ�ѥ"then
				magic = 1069000000;
			end
			if KeyName == "ĩ�շ���"then
				magic = 1069000000;
				end
			if KeyName == "����"then
				magic = 1069000000;
			end
			if KeyName == "��������"then
				magic = 1069000000;
			end
			if KeyName == "��������(��)"then
				magic = 1069000000;
			end
			if KeyName == "��������(Ů)"then
				magic = 1069000000;
			end
			if KeyName == "��������"then
				magic = 1069000000;
			end
			if KeyName == "��������"then
				magic = 1069000000;
			end
			if KeyName == "��������"then
				magic = 1069000000;
			end
			if KeyName == "��������"then
				magic = 1069000000;
			end
			if KeyName == "������ѥ"then
				magic = 1069000000;
			end
			if KeyName == "��������"then
				magic = 1069000000;
			end
			if KeyName == "������"then
				magic = 1067300000;
				end
			if KeyName == "����ս��(��)��"then
				magic = 1067300000;
				end
			if KeyName == "����ս��(Ů)��"then
				magic = 1067300000;
			end
			if KeyName == "����սѥ��"then
				magic = 1067300000;
			end
			if KeyName == "����ս����"then
				magic = 1067300000;
			end
			if KeyName == "����ս����"then
				magic = 1067300000;
			end
			if KeyName == "����ս����"then
				magic = 1067300000;
			end
			if KeyName == "����ս����"then
				magic = 1067300000;
			end
			if KeyName == "ĩ����"then
				magic = 1067300000;
			end
			if KeyName == "ĩ�շ���(Ů)��"then
				magic = 1067300000;
			end
			if KeyName == "ĩ�շ���(��)��"then
				magic = 1067300000;
			end
			if KeyName == "ĩ�շ�ѥ��"then
				magic = 1067300000;
			end
			if KeyName == "ĩ�շ�����"then
				magic = 1067300000;
			end
			if KeyName == "ĩ�շ�����"then
				magic = 1067300000;
			end
			if KeyName == "ĩ�շ�����"then
				magic = 1067300000;
			end
			if KeyName == "ĩ�շ�����"then
				magic = 1067300000;
			end
			if KeyName == "������"then
				magic = 1067300000;
			end
			if KeyName == "��������(Ů)��"then
				magic = 1067300000;
			end
			if KeyName == "��������(��)��"then
				magic = 1067300000;
			end
			if KeyName == "������ѥ��"then
				magic = 1067300000;
			end
			if KeyName == "����������"then
				magic = 1067300000;
			end
			if KeyName == "����������"then
				magic = 1067300000;
			end
			if KeyName == "����������"then
				magic = 1067300000;
			end
			if KeyName == "����������"then
				magic = 1067300000;
			end
			if KeyName == "����������"then
				magic = 1067300000;
			end
			if KeyName == "ĩ�շ�����"then
				magic = 1067300000;
			end
			if KeyName == "����ս����"then
				magic = 1067300000;
			end
			if KeyName == "��Ԩ���"then
				magic = 1067300000;
			end
			if KeyName == "��Ԩ����"then
				magic = 1067300000;
			end
			if KeyName == "��Ԩ��ѥ"then
				magic = 1067300000;
			end
			if KeyName == "�����"then
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
-----------�������������޸�----------------
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
				--�˴��ɵ�������ͷ����Ч��ƫ��
			elseif id == 13 then
				--�˴��ɵ�������������Ч��ƫ��
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

RegisterUIEvent(LUA_EVENT_OPENROLEGUI, "�򿪽�ɫ", EquipMagic.OnOpenRole);
RegisterUIEvent(LUA_EVENT_OPENPAKAGEGUI, "�򿪰���", EquipMagic.OnOpenPackage);
RegisterUIEvent(LUA_EVENT_OPENWAREHOUSEGUI, "�򿪲ֿ�", EquipMagic.OnOpenWarehouse);
RegisterUIEvent(LUA_EVENT_OPENADVWAREHOUSEGUI, "�򿪸߼��ֿ�", EquipMagic.OnOpenAdvWarehouse);
RegisterUIEvent(LUA_EVENT_ITEMCTRLIN, "������Ʒ��", EquipMagic.OnItemIn);
RegisterUIEvent(LUA_EVENT_ITEMCTRLOUT, "�뿪��Ʒ��", EquipMagic.OnItemOut);
RegisterUIEvent(LUA_EVENT_WNDLOADLAYOUT, "���ز���", EquipMagic.OnLoadLayout);