OtaCrystal = {}
function OtaCrystal.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"OtaCrystal",1803700018,227,81)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,371, 342)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"list_Img",1803700019,-191,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"up_page",1800000094,-148,320)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtaCrystal.up_btn")
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"down_page",1800000098,-59,320)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtaCrystal.down_btn")
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"crystal_text",-101,321,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"级宝石")
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"backimg1",1803700013,68,109)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"entity_item",0,77,118,53,53)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtaCrystal.itemClick")
    end
     
    _GUIHandle = GUI:ImageCreate(_Parent,"backimg2",1803700013,239,109)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"template_item",0,248,118,53,53)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img1",1803700002,246,76)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"entity_item_num",94,176,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"up_btn",1800000094,76,199)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtaCrystal.selectNum")
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"down_btn",1800000098,115,199)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtaCrystal.selectNum")
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"optNum",102,201,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"0")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ota_btn1",1803700007,60,228)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtaCrystal.otaStone")
        GUI:WndSetTextM(_GUIHandle,"升 级")
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ota_btn2",1803700007,231,228)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtaCrystal.btn2Clicked")
        GUI:WndSetTextM(_GUIHandle,"立刻升级")  
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img2",1800000398,240,202)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"gold_num",263,202,59,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"0")
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"bind_gold_img",1800000366,169,117)
    if _GUIHandle ~= 0 then
    end
     
    _GUIHandle = GUI:RichEditCreate(_Parent,"item_text1",-180,10,100,17)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtaCrystal.putTemplateCrystal")
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"item_text2",-180,38,100,17)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtaCrystal.putTemplateCrystal")
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"item_text3",-180,66,100,17)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtaCrystal.putTemplateCrystal")
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"item_text4",-180,94,100,17)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtaCrystal.putTemplateCrystal")
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"item_text5",-180,122,100,17)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtaCrystal.putTemplateCrystal")
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"item_text6",-180,150,100,17)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtaCrystal.putTemplateCrystal")
        GUI:RichEditAppendString(_GUIHandle, "")
    end
     
    _GUIHandle = GUI:EditCreate(_Parent,"nowlevel",-119,321,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DEditCL_str_change, "OtaCrystal.inputNum")
        GUI:EditSetTextM(_GUIHandle,"2")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"itemName",238,183,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"itemnum1",-42,10,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, 4285577296)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"itemnum2",-42,38,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, 4285577296)
    end  
    
    _GUIHandle = GUI:EditCreate(_Parent,"itemnum3",-42,66,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, 4285577296)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"itemnum4",-42,94,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, 4285577296)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"itemnum5",-42,122,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, 4285577296)
    end
 
    _GUIHandle = GUI:EditCreate(_Parent,"itemnum6",-42,150,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, 4285577296)
    end
    
	_GUIHandle = GUI:EditCreate(_Parent, "msg", 174, 195, 0, 0)
	if _GUIHandle ~= 0 then 	
		GUI:EditSetTextColor(_GUIHandle, 4294901760)
		GUI:EditSetFontCenter(_GUIHandle)
	end		

    
    OtaCrystal.UIInit(_Parent)
end

--UI Logic Code Start
OtaCrystal.itemlist = {"级物攻宝石","级魔攻宝石","级道攻宝石","级物防宝石","级魔防宝石","级生命宝石"}

function OtaCrystal.UIInit(_Handle)
	OtaCrystal.handle = _Handle
	OtaCrystal.num = 0                         --可升级宝石数量
	OtaCrystal.Maxnum = 0
	OtaCrystal.flag = 0                        --标志位
	OtaCrystal.Crystal_nowlevel = 2            --宝石当前等级
	OtaCrystal.otaIndex = 2                    --表索引（立刻升级）
	OtaCrystal.keyname1 = ""                   --升级前宝石
	OtaCrystal.keyname2 = ""                   --升级后宝石
	OtaCrystal.costGold = 0                    --升级所需金币
	OtaCrystal.ReqNum = 0                      --立刻升级所需宝石数量
	OtaCrystal.updateBtn()
	local _GUIHandle = GUI:WndFindChildM(OtaCrystal.handle, "entity_item")
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByType(_GUIHandle, nil, ITEMGUIDATA_INVALIDATE, true)
	end
	_GUIHandle = GUI:WndFindChildM(OtaCrystal.handle, "template_item")
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByType(_GUIHandle, nil, ITEMGUIDATA_INVALIDATE, true)
	end
	UI:Lua_SubmitForm("宝石升级表单","InitialItemList","")
end

function OtaCrystal.down_btn()
	OtaCrystal.flag = 1
	OtaCrystal.num = 0
	OtaCrystal.Maxnum = 0
	local _GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"nowlevel")            --下一页
	if _GUIHandle ~= 0 then
		OtaCrystal.Crystal_nowlevel = GUI:EditGetInt(_GUIHandle)
		if OtaCrystal.Crystal_nowlevel < 12 then
			OtaCrystal.Crystal_nowlevel = OtaCrystal.Crystal_nowlevel + 1
		end
	end
	OtaCrystal.showItemlist(OtaCrystal.Crystal_nowlevel)
	UI:Lua_SubmitForm("宝石升级表单","InitialItemList","")
	OtaCrystal.cleanUI()
end

function OtaCrystal.up_btn()
	OtaCrystal.flag = 1
	OtaCrystal.num = 0
	OtaCrystal.Maxnum = 0
	local _GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"nowlevel")            --上一页
	if _GUIHandle ~= 0 then
		OtaCrystal.Crystal_nowlevel = GUI:EditGetInt(_GUIHandle)
		if OtaCrystal.Crystal_nowlevel > 2 then
			OtaCrystal.Crystal_nowlevel = OtaCrystal.Crystal_nowlevel - 1
		end
	end
	OtaCrystal.showItemlist(OtaCrystal.Crystal_nowlevel)
	UI:Lua_SubmitForm("宝石升级表单","InitialItemList","")
	OtaCrystal.cleanUI()
end

function OtaCrystal.showItemlist(Crystal_level)
	local _GUIHandle = 0
	for i = 1 , #OtaCrystal.itemlist do
		_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"item_text"..i)              --宝石列表显示
		if _GUIHandle ~=0 then 
			GUI:RichEditClear(_GUIHandle)
			GUI:RichEditAppendString(_GUIHandle,Crystal_level..OtaCrystal.itemlist[i])
		end
	end
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"nowlevel")
	GUI:EditSetInt(_GUIHandle,Crystal_level)
	OtaCrystal.updateBtn()
end

function OtaCrystal.updateBtn()  
	local _GUIHandle = 0       
	local _GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"nowlevel")        --按钮状态更新
	OtaCrystal.Crystal_nowlevel = GUI:EditGetInt(_GUIHandle)
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"up_page")
	if OtaCrystal.Crystal_nowlevel == 2 then
		GUI:WndSetEnableM(_GUIHandle, false)
	else
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"down_page") 
	if OtaCrystal.Crystal_nowlevel == 12 then
		GUI:WndSetEnableM(_GUIHandle, false)
	else
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"up_btn")
	
	if OtaCrystal.num == 1 or OtaCrystal.num == 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	else
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"down_btn")
	if OtaCrystal.num == OtaCrystal.Maxnum or OtaCrystal.num == 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	else
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"itemName")
	local Itemname = EditGetText(_GUIHandle)
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"ota_btn2")
	if OtaCrystal.num >= 1 or Itemname == "" then
		GUI:WndSetEnableM(_GUIHandle, false)
	else
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"ota_btn1")
	if Itemname == "" or OtaCrystal.num == 0  then
		GUI:WndSetEnableM(_GUIHandle, false)
	else
		GUI:WndSetEnableM(_GUIHandle, true)
	end
end

function OtaCrystal.inputNum(h)
	OtaCrystal.flag = 1
	local a = 0
	if GUI:EditGetInt(h) >=2 and GUI:EditGetInt(h) <= 12 then
		a = GUI:EditGetInt(h)
		OtaCrystal.showItemlist(a)
		UI:Lua_SubmitForm("宝石升级表单","InitialItemList","")
		OtaCrystal.cleanUI()
	end
end

function OtaCrystal.OnMoveIn(this, GUIData, DragIn, _GUID, ItemId, _KeyName, ItemPos, IsBound, Count)
	if DragIn then
		return false
	end
	OtaCrystal.num = 0		
	local mainType = 0 
	local subType = 0
	if _GUID ~= "" then
		if CL:GetItemEntityPropByGUID(_GUID, ITEM_PROP_TYPE) then				--根据guid获取主类型
			mainType = LuaRet									--1为装备，4为材料	
		end
		if CL:GetItemEntityPropByGUID(_GUID, ITEM_PROP_SUBTYPE) then	
			subType = LuaRet
		end
	end
	if mainType == 4 and subType == 6 then
		local strs = strsplit(_KeyName, "级")
		local str1 = strs[1]
		local str2 = strs[2]
		OtaCrystal.otaIndex = tonumber(str1)
		if tonumber(str1) < 12 then
			local a = tonumber(str1)+1                 --升级后宝石等级
			local str = "" .. a .."级"..str2
			local _GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"template_item")
			if _GUIHandle ~= 0 then
				OtaCrystal.InitItemInfoByKeyName(_GUIHandle,str)    --预览框填充
			end
			_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"itemName")    --显示 预览 物品 的keyname
			if _GUIHandle ~= 0 then
				GUI:EditSetTextM(_GUIHandle,str)
				OtaCrystal.keyname1 = _KeyName
				OtaCrystal.keyname2 = str
			end
			UI:Lua_SubmitForm("宝石升级表单","getItemNum",_KeyName .."#"..a)
			return true
		else
			OtaCrystal.msg(3)
		end
	else
		msg("请放入宝石")
	end											
end

function OtaCrystal.putTemplateCrystal(h)
	OtaCrystal.num = 0
	local itmename = GUI:RichEditGetAllString(h)
	local _GUIHandle = 0
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"template_item")
	if _GUIHandle ~= 0 then
		OtaCrystal.InitItemInfoByKeyName(_GUIHandle,itmename)    --预览物品框填充
	end
	local strs = strsplit(itmename, "级")
	local str1 = strs[1]
	local str2 = strs[2]
	local str = "" .. (tonumber(str1)-1).."级"..str2
	OtaCrystal.otaIndex = (tonumber(str1)-1)
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"entity_item")
	if _GUIHandle ~= 0 then
		OtaCrystal.InitItemInfoByKeyName(_GUIHandle,str)    --消耗框填充
	end
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"itemName")    --显示 预览 物品 的keyname
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,itmename)
		OtaCrystal.keyname1 = str
		OtaCrystal.keyname2 = itmename
	end
	UI:Lua_SubmitForm("宝石升级表单","getItemNum",str .."#".. str1)
end

function OtaCrystal.setparam()
	OtaCrystal.Crystal_nowlevel = 2
	OtaCrystal.num = 0
	UI:Lua_SubmitForm("宝石升级表单","InitialItemList","")
end

function OtaCrystal.showNextLevelEnableList(tab)
	if #tab ~= 0 then
		local minLevel = 12                                --如果升级后的宝石能继续升级，显示列表
		for k =1 , #tab do
			local t = strsplit(tab[k], ":")
			local _t = strsplit(t[1], "级")
			local number =tonumber(_t[1]) + 1
			if number < minLevel then
				minLevel = number
			end
		end
	OtaCrystal.showItemlist(minLevel)
	end
	OtaCrystal.showCrystalNum(tab)
end


function OtaCrystal.showCrystalNum(tab)
	local _GUIHandle = 0
	local CrystalName = ""
	if OtaCrystal.flag == 0 then             --初始化显示宝石列表
		if #tab ~= 0 then
			local minLevel = 12
			for k =1 , #tab do
				local t = strsplit(tab[k], ":")
				local _t = strsplit(t[1], "级")
				local number =tonumber(_t[1]) + 1
				if number < minLevel then
					minLevel = number
				end
			end
		OtaCrystal.showItemlist(minLevel)
		end
	end
	
	for i = 1 ,6 do
		_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"itemnum" .. i)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle,"")                                        --初始化可升级宝石数量
		end
		_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"item_text" .. i)
		if _GUIHandle ~= 0 then
			GUI:RichEditSetDefaultTextColor(_GUIHandle,MakeARGB(255,172,168,0))         --初始化颜色
		end
	end
	for i = 1 , 6 do
		_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"item_text" .. i)
		if _GUIHandle ~= 0 then
			CrystalName = GUI:RichEditGetAllString(_GUIHandle)
		end
		for j = 1 , #tab do
			local a = strsplit(tab[j], ":")
			local itemName = a[1]
			local itemNum = a[2]
			local strs = strsplit(itemName, "级")
			local str1 = strs[1]
			local str2 = strs[2]
			itemName = "" .. (tonumber(str1)+1).."级"..str2
			if CrystalName == itemName then
				_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"itemnum" .. i)
				if _GUIHandle ~= 0 then
					GUI:EditSetTextM(_GUIHandle,"（".. itemNum .."）")
					_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"item_text" .. i)
					if _GUIHandle ~= 0 then
						GUI:RichEditSetDefaultTextColor(_GUIHandle,MakeARGB(255,112,184,80))     
					end
				end
			end
		end
	end
	OtaCrystal.showItemlist(OtaCrystal.Crystal_nowlevel)
end

function OtaCrystal.selectNum(h) 
	local index = GUI:WndGetParam(h)       --选择要升级的宝石数量
	local _GUIHandle = 0
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"optNum")
	OtaCrystal.num = GUI:EditGetInt(_GUIHandle)
	if index == 1 then
		OtaCrystal.num = OtaCrystal.num - 1
		GUI:EditSetInt(_GUIHandle,OtaCrystal.num)
	elseif index == 2 then
		OtaCrystal.num = OtaCrystal.num + 1
		GUI:EditSetInt(_GUIHandle,OtaCrystal.num)
	end 
	if OtaCrystal.costGold ~= 0 and OtaCrystal.num ~= 0 then
		_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"gold_num")           --显示消耗金币
		local totalGold = OtaCrystal.costGold * OtaCrystal.num
		GUI:EditSetInt(_GUIHandle,totalGold)
	end
	
	OtaCrystal.updateBtn()
end



function OtaCrystal.OwnNum(num,gold)                       --自己有用的宝石材料数量、升级所需的金钱
	local _GUIHandle = 0
	local reqNum = 0
	if gold ~= nil then
		if gold >= 10000 and gold <= 60000 then
			reqNum = 4
		elseif gold >= 70000 and gold <= 90000 then
			reqNum = 3
		else
			reqNum = 2 
		end
	end
	OtaCrystal.ReqNum = reqNum - num
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"entity_item_num")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,num.."/".. reqNum)
	end
	OtaCrystal.Maxnum = math.floor(num/reqNum)
	if OtaCrystal.Maxnum > 0 then
		_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"optNum")
		OtaCrystal.num = 1 
		GUI:EditSetInt(_GUIHandle,OtaCrystal.num)
	else
		_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"optNum")
		OtaCrystal.num = 0
		GUI:EditSetInt(_GUIHandle,0)
	end
	if gold ~= nil then
		OtaCrystal.costGold = tonumber(gold)
		_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"gold_num")           --显示消耗金币
		local totalGold = 0
		if OtaCrystal.num ~= 0 then
			totalGold = OtaCrystal.costGold * OtaCrystal.num
		else
			totalGold = OtaCrystal.costGold
		end
		GUI:EditSetInt(_GUIHandle,totalGold)
	end
	OtaCrystal.updateBtn()
end

function OtaCrystal.otaStone()
	local _GUIHandle = 0
	local a = 0
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"optNum")
	if _GUIHandle ~= 0 then
		a = GUI:EditGetInt(_GUIHandle)                             --玩家要升级的宝石数量
		if a > 0 then	
			local totalgold = OtaCrystal.costGold * OtaCrystal.num
			UI:Lua_SubmitForm("宝石升级表单","offerItem",a .."#".. OtaCrystal.keyname2)
		end
	end
end


function OtaCrystal.btn2Clicked(_handle)
	local ReqYbList = {20,80,320,1280,5120,20480,81920,245760,737280,2211840,4423680}   --立刻升级所花元宝表
	local totalYb = OtaCrystal.ReqNum * ReqYbList[OtaCrystal.otaIndex]
	luaMsgBox.new("宝石升级", "是否花费" .. totalYb .. "元宝和" .. OtaCrystal.costGold .. "金币（绑金）直接升级", {"是", "否"}, {"OtaCrystal.getCrystalViaYb", 0}, _handle)
end

function OtaCrystal.getCrystalViaYb(_handle)
	UI:Lua_SubmitForm("宝石升级表单","getStoneViaYB",OtaCrystal.keyname2)
	local handle = GUI:WndGetParentM(_handle)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

function OtaCrystal.msg(param)
	local _GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"ota_btn1")
	local handle = GUI:WndFindWindow(OtaCrystal.handle,"ota_btn2")
	if _GUIHandle ~= 0 then
		if param == 1 then
			local color = MakeARGB(255,255,0,0)
			OtaCrystal.attentionMsg(_GUIHandle,"升级失败！金币不足",color)
		elseif param == 2 then 
			local color = MakeARGB(255,255,217,102)
			OtaCrystal.attentionMsg(_GUIHandle,"升级成功！",color)
			WndAddEffect(OtaCrystal.handle, "ota_btn2", 3006600000, -163, -285, 200, 1)
			OtaCrystal.cleanUI()
		elseif param ==3 then
			local color = MakeARGB(255,255,217,102)
			OtaCrystal.attentionMsg(_GUIHandle,"宝石已到最高等级！",color)
		elseif param ==4 then
			local color = MakeARGB(255,255,0,0)
			OtaCrystal.attentionMsg(handle,"元宝不足，请打开充值页面充值",color)
		elseif param ==5 then
			local color = MakeARGB(255,255,0,0)
			OtaCrystal.attentionMsg(handle,"金币不足",color)
		elseif param ==6 then
			local color = MakeARGB(255,255,217,102)
			_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"ota_btn2")
			OtaCrystal.attentionMsg(_GUIHandle,"升级成功！",color)
			WndAddEffect(OtaCrystal.handle, "ota_btn2", 3006600000, -163, -285, 200, 1)
			GUI:WndSetEnableM(handle,false)
			OtaCrystal.cleanUI()
		elseif param ==7 then
			local color = MakeARGB(255,255,0,0)
			OtaCrystal.attentionMsg(handle,"背包不足！",color)
			--OtaCrystal.cleanUI()
		end
	end
end

function OtaCrystal.itemClick(_handle)
	if _handle ~= 0 then
		GUI:ItemCtrlClearItemData(_handle)
		local handle = GUI:WndFindWindow(OtaCrystal.handle,"template_item")
		if handle ~= 0 then
			GUI:ItemCtrlClearItemData(handle)
		end
		handle = GUI:WndFindWindow(OtaCrystal.handle,"ota_btn2")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle,false)
		end
		handle = GUI:WndFindWindow(OtaCrystal.handle,"ota_btn1")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle,false)
		end
		OtaCrystal.cleanUI()
	end
end


function OtaCrystal.cleanUI()
	local _GUIHandle = 0 
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"entity_item_num")
	if _GUIHandle ~= 0 then											
		GUI:EditSetTextM(_GUIHandle,"")								--清空 0/4		
	end
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"entity_item")
	if _GUIHandle ~= 0 then
		GUI:ItemCtrlClearItemData(_GUIHandle)                        --消耗框清空
	end
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"template_item")
	if _GUIHandle ~= 0 then
		GUI:ItemCtrlClearItemData(_GUIHandle)                        --预览框清空
	end
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"gold_num")
	if _GUIHandle ~= 0 then
		GUI:EditSetInt(_GUIHandle,0)                                --消耗金币清空
	end
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"itemName")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"")                        --keyname清空
	end
	_GUIHandle = GUI:WndFindWindow(OtaCrystal.handle,"optNum")
	if _GUIHandle ~= 0 then
		GUI:EditSetInt(_GUIHandle,0)                     --合成数量清空
	end
end


function OtaCrystal.InitItemInfoByKeyName(_WndHandle, KeyName)
	local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_WndHandle)
	if 0 ~= _ItemDataHandle then
		local _ItemTemplateHandle = CL:GetItemTemplateHandleByKeyName(KeyName)
		if _ItemTemplateHandle ~= 0 then
			if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_TIPSICON) then
				LuaArg = LuaRet
				CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID)
			end
			if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_ID) then
				LuaArg = LuaRet
				CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMID)
			end
		end
		LuaArg = true
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_INVALIDATE)
		LuaArg = 0xFFFF
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)
	end
end

function OtaCrystal.attentionMsg(handle, str, color)
	if GUI:WndGetPosM(handle) then
		local x = LuaRet[1]
		local y = LuaRet[2]
		GUI:WndGetSizeM(handle)
		local w = LuaRet[1]
		local h = LuaRet[2]
		if handle ~= 0 then
			local _GUIHandle = GUI:WndFindChildM(OtaCrystal.handle, "msg")
			if _GUIHandle ~= 0 then
				GUI:EditSetTextColor(_GUIHandle, color)
				if GUI:WndGetPosM(_GUIHandle) then
					GUI:WndSetPosM(_GUIHandle, x - (400-w)/2, y - 30)
					OtaCrystal.msg_up(str)
				end
			end
		end
	end
end

function OtaCrystal.msg_up(str)
	local _handle = GUI:WndFindChildM(OtaCrystal.handle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, str)
	end
	if OtaCrystal.DelayTaskId ~= nil then
		CL:DelDelayTask(OtaCrystal.DelayTaskId)
		OtaCrystal.DelayTaskId = nil
	end
	OtaCrystal.DelayTaskId = CL:AddDelayTask("OtaCrystal.ClearMsg()", 3000, 1)
end

function OtaCrystal.ClearMsg()
	local _handle = GUI:WndFindChildM(OtaCrystal.handle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, "")
	end
end

OtaCrystal.main()