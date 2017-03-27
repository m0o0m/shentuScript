
FamilyWnd_Warehouse = {}

FamilyWnd_Warehouse.localString = {}
local l = FamilyWnd_Warehouse.localString
l.myPackage = "我的背包"
l.donateTip = "向右拖拽物品捐献装备"
l.familyWarehouse = "行会仓库"
l.exchangeTip = "向左拖拽物品获取装备"
l.donate = "捐献"
l.tenThousand = "万"
l.donateMoney = "捐献金币"
l.donateEquipment = "捐献装备"
l.donateScore = "贡献值"
l.showCanExchange = "显示可兑换"
l.showSelfClass = "显示本职业"
l.exchangeEquipment = "兑换装备"

function FamilyWnd_Warehouse.main()
	local _Parent = LuaGlobal["AttachPartent"]
	GUI:WndRegistScript(_Parent, RDWndBaseCL_wnd_close, "FamilyWnd_Warehouse.wndClose")
	local _GUIHandle = 0
	_GUIHandle = GUI:ImageCreate(_Parent, "FamilyWnd_Warehouse", 1802100005, 13, 76)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"myPackageEdit",23,9,90,21)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, 4294939396)
		GUI:EditSetTextM(_GUIHandle, l.myPackage) 
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"donateTipEdit",157,9,150,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle, l.donateTip) 
	end	
	
	_GUIHandle = GUI:EditCreate(_Parent,"familyWarehouseEdit",363,9,87,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, 4294939396)
		GUI:EditSetTextM(_GUIHandle, l.familyWarehouse) 
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"exchangeTipEdit",515,9,150,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle, l.exchangeTip) 
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"leftArrowImg",1800000366,308,100)
	if _GUIHandle ~= 0 then GUI:WndSetCanRevMsg(_GUIHandle, false) end	
	_GUIHandle = GUI:ImageCreate(_Parent,"rightArrowImg",1800000367,308,214)
	if _GUIHandle ~= 0 then GUI:WndSetCanRevMsg(_GUIHandle, false) end
	
	_GUIHandle = GUI:EditCreate(_Parent,"donateEdit",9, 387,46,23)
	if _GUIHandle ~= 0 then 
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle, l.donate) 
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"donateMoneyEditBakImg",1800000279,80,382)
	if _GUIHandle ~= 0 then GUI:WndSetCanRevMsg(_GUIHandle, false) end
	
	_GUIHandle = GUI:EditCreate(_Parent,"donateMoneyEdit",91,388,46,23)
	
	_GUIHandle = GUI:ImageCreate(_Parent,"moneyTypeImg",1800000052,50,394)
	if _GUIHandle ~= 0 then GUI:WndSetCanRevMsg(_GUIHandle, false) end
	
	_GUIHandle = GUI:EditCreate(_Parent,"moneyUnitEdit",141,390,15,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle, l.tenThousand) 
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"donateMoneyBtn",1800000150,217, 383)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 84, 32)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetTextM(_GUIHandle, l.donateMoney)
	end
	--[[
	_GUIHandle = GUI:ButtonCreate(_Parent,"donateEquipmentBtn",1800000150,277,461)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 84, 32)
		GUI:WndSetTextColorM(_GUIHandle, webColor.whiteText)
		GUI:WndSetTextM(_GUIHandle, l.donateEquipment)
	end--]]
--[[	
	_GUIHandle = GUI:ButtonCreate(_Parent,"exchangeEquipmentBtn",1800000150,567,461)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 84, 32)
		GUI:WndSetTextColorM(_GUIHandle, webColor.whiteText)
		GUI:WndSetTextM(_GUIHandle, l.exchangeEquipment)
	end--]]
	
	_GUIHandle = GUI:EditCreate(_Parent,"donateScore_f",468,389,69,21)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle, l.donateScore) 
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"donateScoreEdit",532,389,45,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, 4280656732)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"warehousePgUpBtn",1800000094,433,337)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 20, 19)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"warehousePgDownBtn",1800000098,517,337)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 20, 19)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"warehousePgEditBackImg",1800000279,459,327)
	if _GUIHandle ~= 0 then GUI:WndSetCanRevMsg(_GUIHandle, false) end
	
	_GUIHandle = GUI:EditCreate(_Parent,"warehousePgEdit",480,332,53,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:CheckBoxCreate(_Parent,"showCanExchangeCB",1800000176, l.showCanExchange,553,319)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	_GUIHandle = GUI:CheckBoxCreate(_Parent,"showSelfClassCB",1800000176,l.showSelfClass,553,340)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	for i = 1, 6 do
		for j = 1, 6 do
			_GUIHandle = GUI:ItemCtrlCreate(_Parent, "myItem"..((i-1)*6+j), 0, j*48-35, i*48-18, 48, 48)
			if _GUIHandle ~= 0 then
				GUI:ItemCtrlSetBackImageID(_GUIHandle, 1800000138)
			end
		end
	end
	
	for i = 1, 6 do
		for j = 1, 6 do
			_GUIHandle = GUI:ItemCtrlCreate(_Parent, "warehouseItem"..((i-1)*6+j), 0, j*48+311, i*48-18, 48, 48)
			if _GUIHandle ~= 0 then
				GUI:ItemCtrlSetBackImageID(_GUIHandle, 1800000138)
			end
		end
	end


	_GUIHandle = GUI:ButtonCreate(_Parent,"warehouseMyPgUpBtn",1800000094,433 - 350,337)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 20, 19)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"warehouseMyPgDownBtn",1800000098,517 - 350,337)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 20, 19)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"warehouseMyPgEditBackImg",1800000279,459 - 350,327)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false) 
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"warehouseMyPgEdit",480 - 350,332,53,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

		
	FamilyWnd_Warehouse.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyWnd_Warehouse.UIInit(_Parent)
	FamilyWnd_Warehouse._wnd = _Parent
	FamilyWnd._nowPage = _Handle
	CL:FamilyInfoRequest(128,"FamilyWnd_行会仓库", "FamilyWnd_Warehouse.getFamilyBasicInfo")
end


 function FamilyWnd_Warehouse.getFamilyBasicInfo()
	FamilyWnd_Warehouse.createTime = LuaParam[1]
	FamilyWnd_Warehouse.guid = LuaParam[2]
	FamilyWnd_Warehouse.memberNum = LuaParam[3]
	FamilyWnd_Warehouse.name = LuaParam[4]
	FamilyWnd_Warehouse.selfTitleID = LuaParam[5]
	FamilyWnd_Warehouse.updateFamilyWarehouse()
end

function FamilyWnd_Warehouse.updateFamilyWarehouse()
	if FamilyWnd_Warehouse.selfTitleID ~= 1 then
		local handle = GUI:WndFindChildM(FamilyWnd_Warehouse._wnd,"destroyItem")
		GUI:WndSetVisible(handle, false)
	end
end

function FamilyWnd_Warehouse.wndClose()
	local wnd = GUI:WndFindWindow(0, "FamilyWnd_Warehouse") 
	if wnd == 0 then
		FamilyWnd_Warehouse = nil
	end
end

FamilyWnd_Warehouse.main()