OtaCrystal ={}
local ui = "<form default_parent = 'CrystalSystem'> <dialog OnInit='OtaCrystal.UIInit' id='OtaCrystal' image='1803700017' x='34' y='81' w='564' h='342' revmsg='true'>"
	.."	<image id='backimg1' image='1803700013' x='121' y='115' w='72' h='72' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='entity_item' x='126' y='120' w='62' h='62' use_back='-1' rbtn_use='true' enable='true' OnItemMoveIn = 'OtaCrystal.OnMoveIn' OnLButtonDown='OtaCrystal.itemClick' revmsg='true' count='0'/>"
	.."	<image id='backimg2' image='1803700013' x='383' y='115' w='72' h='72' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='template_item' x='388' y='120' w='62' use_back='-1' h='62' rbtn_use='true' enable='true' revmsg='true'/>"
	
	.."	<image id='img1' image='1803700002' x='391' y='83' w='60' h='36' check_point='0' revmsg='true'/>"
	.."	<edit id='entity_item_num' x='148' y='183' w='27' h='22' revmsg='true' text_color='#C2B6A0' font='system'/>"
	
	.."	<button id='ota_btn1' image='1803700007' x='240' y='250' w='88' h='31' OnLButtonUp='OtaCrystal.otaStone' revmsg='true' text='升 级' enable='false' text_color='#C2B6A0'/>"
	--.."	<button id='ota_btn2' image='1803700007' x='376' y='235' w='88' h='31' OnLButtonUp='OtaCrystal.btn2Clicked' revmsg='true' text='立刻升级' text_color='#C2B6A0'/>"
	.."	<image id='TestWndChild_13' image='1800800003' x='290' y='213' w='103' h='21' revmsg='true'/>"
	.."	<image id='bind_gold_img' image='1806600014' x='291' y='215' w='23' h='18' check_point='0' revmsg='true'/>"
	.."	<edit id='gold_num' x='312' y='215' w='59' h='17' revmsg='true' text_color='#C2B6A0' text='0' font='system'/>"
	.."	<edit id='tt' x='218' y='216' w='59' h='17' revmsg='true' text_color='#C2B6A0' text='消耗金币：' font='system'/>"
	.."	<image id='img2' image='1800000366' x='270' y='125' w='43' h='58' check_point='0' revmsg='true'/>"
	.."	<image id='arrowMagic' image='3020200700' type='animate' x='262' y='125' w='43' h='58' check_point='0'/>"

	.."	<edit id='itemName' x='383' y='190' w='100' h='15' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<image id='aMagic' image='3020300900' type='animate' x='163' y='-19' w='193' h='313'/>"
	
	.."	<richedit id='buy' x='472' y='280' w='68' h='20' text='#SELECT#快捷购买#SELECTEND#' OnLButtonUp='OtaCrystal.buy' revmsg='true' font='system'/>"
	.." </dialog>"
	.."</form>"
	
function OtaCrystal.main()
	GenFormByString(ui)
end

OtaCrystal.itemlist = {"级物攻宝石","级魔攻宝石","级道攻宝石","级物防宝石","级魔防宝石","级生命宝石"}


--UI Logic Code Start
function OtaCrystal.UIInit(_Handle)
	OtaCrystal.handle = _Handle
	OtaCrystal.num = 0                         --可升级宝石数量
	OtaCrystal.Maxnum = 0
	OtaCrystal.flag = 0                        --标志位
	OtaCrystal.Crystal_nowlevel = 2            --宝石当前等级
	OtaCrystal.otaIndex = 2                    --表索引（立刻升级）
	OtaCrystal.keyname2 = ""                   --升级后宝石
	OtaCrystal.costGold = 0                    --升级所需金币
	OtaCrystal.ReqNum = 0                      --立刻升级所需宝石数量
	--OtaCrystal.updateBtn()
	OtaCrystal.firstClicked = 0
	

	local handle = GUIWndFindChildM(_Handle,"ota_btn1")   
	if handle ~= 0 then 
		GUIButtonSetStateTextColor(handle,0,MakeARGB(255, 192, 182, 160))
		GUIButtonSetStateTextColor(handle,2,MakeARGB(255, 237, 192, 161))
	end
	
	--UI:Lua_SubmitForm("宝石升级表单","InitialItemList","")
end

function OtaCrystal.down_btn()
	--msg("下一页"..OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked = OtaCrystal.firstClicked + 1
	OtaCrystal.flag = 1
	OtaCrystal.num = 0
	OtaCrystal.Maxnum = 0
	local _GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"nowlevel")            --下一页
	if _GUIHandle ~= 0 then
		OtaCrystal.Crystal_nowlevel = GUIEditGetInt(_GUIHandle)
		if OtaCrystal.Crystal_nowlevel < 10 then
			OtaCrystal.Crystal_nowlevel = OtaCrystal.Crystal_nowlevel + 1
		end
	end
	--OtaCrystal.showItemlist(OtaCrystal.Crystal_nowlevel)
	UI:Lua_SubmitForm("宝石升级表单","InitialItemList","")
	--OtaCrystal.cleanUI()
end

function OtaCrystal.up_btn()
	--msg("上一页"..OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked = OtaCrystal.firstClicked + 1
	OtaCrystal.flag = 1
	OtaCrystal.num = 0
	OtaCrystal.Maxnum = 0
	local _GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"nowlevel")            --上一页
	if _GUIHandle ~= 0 then
		OtaCrystal.Crystal_nowlevel = GUIEditGetInt(_GUIHandle)
		if OtaCrystal.Crystal_nowlevel > 2 and OtaCrystal.Crystal_nowlevel <= 10 then
			OtaCrystal.Crystal_nowlevel = OtaCrystal.Crystal_nowlevel - 1
		end
	end
	--OtaCrystal.showItemlist(OtaCrystal.Crystal_nowlevel)
	UI:Lua_SubmitForm("宝石升级表单","InitialItemList","")
	--OtaCrystal.cleanUI()
end

function OtaCrystal.showItemlist(Crystal_level)
	--msg("显示列表"..OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked= OtaCrystal.firstClicked + 1
	local _GUIHandle = 0
	local itemHandle = 0
	for i = 1 , #OtaCrystal.itemlist do
		_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemWin,itemButton"..i..",item_text")              --宝石列表显示
		if _GUIHandle ~=0 then 
			GUIRichEditClear(_GUIHandle)
			GUIRichEditAppendString(_GUIHandle,Crystal_level..OtaCrystal.itemlist[i])
			
		end
		itemHandle = GUIWndFindWindow(OtaCrystal.handle,"itemWin,itemButton"..i..",itemShow")              --宝石物品显示
		if itemHandle ~= 0 then
			RDItemCtrlSetGUIDataByKeyName(itemHandle,Crystal_level..OtaCrystal.itemlist[i], 0, false)    --预览框填充
		end
	end
	_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"nowlevel")
	GUIEditSetInt(_GUIHandle,Crystal_level)
	
	--if OtaCrystal.flag == 0 then
		OtaCrystal.num = 0
		local itmename = Crystal_level.."级物攻宝石"
		local GUIHandle = 0
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"template_item")
			if GUIHandle ~= 0 then 
				RDItemCtrlSetGUIDataByKeyName(GUIHandle,itmename, 0, false)    --预览物品框填充
			end
		local strs = strsplit(itmename, "级")
		local str1 = strs[1]
		local str2 = strs[2]
		local str = "" .. (tonumber(str1)-1).."级"..str2
		OtaCrystal.otaIndex = (tonumber(str1)-1)
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"entity_item")
		if GUIHandle ~= 0 then
			RDItemCtrlSetGUIDataByKeyName(GUIHandle,str, 0, false)    --消耗框填充
		end
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemName")    --显示 预览 物品 的keyname
		if GUIHandle ~= 0 then
			GUIEditSetTextM(GUIHandle,itmename)
			OtaCrystal.keyname2 = itmename
		end
		if OtaCrystal.flag == 0 then OtaCrystal.flag = 1 return end
		UI:Lua_SubmitForm("宝石升级表单","getItemNum",str .."#".. str1)
		--OtaCrystal.flag = 1
	--	return
	--end
	
	--OtaCrystal.updateBtn()
end

function OtaCrystal.updateBtn() 
	--msg("更新按钮"..OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked= OtaCrystal.firstClicked + 1
	local GUIHandle = 0       
	local _GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"nowlevel")        --按钮状态更新
	OtaCrystal.Crystal_nowlevel = GUIEditGetInt(_GUIHandle)
	_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"up_page")
	if OtaCrystal.Crystal_nowlevel == 2 then
		GUIWndSetEnableM(_GUIHandle, false)
	else
		GUIWndSetEnableM(_GUIHandle, true)
	end
	_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"down_page") 
	if OtaCrystal.Crystal_nowlevel == 10 then
		GUIWndSetEnableM(_GUIHandle, false)
	else
		GUIWndSetEnableM(_GUIHandle, true)
	end
	_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"up_btn")
	
	if OtaCrystal.num == 1 or OtaCrystal.num == 0 then
		GUIWndSetEnableM(_GUIHandle, false)
	else
		GUIWndSetEnableM(_GUIHandle, true)
	end
	_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"down_btn")
	if OtaCrystal.num == OtaCrystal.Maxnum or OtaCrystal.num == 0 then
		GUIWndSetEnableM(_GUIHandle, false)
	else
		GUIWndSetEnableM(_GUIHandle, true)
	end
	
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemName")
	local Itemname = EditGetText(GUIHandle)
	_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"ota_btn2")
	if OtaCrystal.num >= 1 or Itemname == "" then
		GUIWndSetEnableM(_GUIHandle, false)
	else
		GUIWndSetEnableM(_GUIHandle, true)
	end
	_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"ota_btn1")
	if Itemname == "" or OtaCrystal.num == 0  then
		GUIWndSetEnableM(_GUIHandle, false)
	else
		GUIWndSetEnableM(_GUIHandle, true)
	end
end

function OtaCrystal.inputNum(h)
	--msg("页码改变")
	GUIEditSetMaxCharNum(h, 2)
	OtaCrystal.flag = 1
	local a = 2
	if GUIEditGetInt(h) >=2 and GUIEditGetInt(h) <= 10 then
		a = GUIEditGetInt(h)
	else
		if GUIEditGetInt(h) < 2 then
			a = 2
		end
		if GUIEditGetInt(h) > 10 then
			a = 10
		end
	end
	--a = GUIEditGetInt(h)
	--OtaCrystal.showItemlist(a)
	UI:Lua_SubmitForm("宝石升级表单","InitialItemList","")
	--OtaCrystal.cleanUI()

end

function OtaCrystal.OnMoveIn(this, GUIData, DragIn, _GUID, ItemId, _KeyName, ItemPos, IsBound, Count)
	
	OtaCrystal.num = 0		
	local mainType = 0 
	local subType = 0
	if _GUID ~= "" then
		if CLGetItemEntityPropByGUID(_GUID, ITEM_PROP_TYPE) then				--根据guid获取主类型
			mainType = as3.tolua(LuaRet)									--1为装备，4为材料	
		end
		if CLGetItemEntityPropByGUID(_GUID, ITEM_PROP_SUBTYPE) then	
			subType = as3.tolua(LuaRet)
		end
	end
	
	if mainType == 5 and subType == 6 then
		local strs = strsplit(_KeyName, "级")
		local str1 = strs[1]
		local str2 = strs[2]
		OtaCrystal.otaIndex = tonumber(str1)
		if tonumber(str1) < 10 then
			local a = tonumber(str1)                 --升级后宝石等级
			
			local str = "" .. a .."级"..str2
			local GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"entity_item")
			if GUIHandle ~= 0 then
				RDItemCtrlSetGUIDataByKeyName(GUIHandle,str, 0, false)    --左侧宝石框填充
			end
			a = a+1
			local str = "" .. a .."级"..str2
			local GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"template_item")
			if GUIHandle ~= 0 then
				RDItemCtrlSetGUIDataByKeyName(GUIHandle,str, 0, false)    --预览框填充
			end
			GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemName")    --显示 预览 物品 的keyname
			if GUIHandle ~= 0 then
				GUIEditSetTextM(GUIHandle,str)
				OtaCrystal.keyname2 = str
			end
			UI:Lua_SubmitForm("宝石升级表单","getItemNum",_KeyName .."#"..a)
			return false
		else
			OtaCrystal.msg(3)
		end
	else
		OtaCrystal.msg(8)
	end											
end

function OtaCrystal.putTemplateCrystal(this)
	OtaCrystal.num = 0
	local h = GetWindow(this, "item_text")
	local itmename = GUIRichEditGetAllString(h)
	local GUIHandle = 0
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"template_item")
		if GUIHandle ~= 0 then 
			RDItemCtrlSetGUIDataByKeyName(GUIHandle,itmename, 0, false)    --预览物品框填充
		end
	local strs = strsplit(itmename, "级")
	local str1 = strs[1]
	local str2 = strs[2]
	local str = "" .. (tonumber(str1)-1).."级"..str2
	OtaCrystal.otaIndex = (tonumber(str1)-1)
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"entity_item")
	if GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataByKeyName(GUIHandle,str, 0, false)    --消耗框填充
	end
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemName")    --显示 预览 物品 的keyname
	if GUIHandle ~= 0 then
		GUIEditSetTextM(GUIHandle,itmename)
		OtaCrystal.keyname2 = itmename
	end
	UI:Lua_SubmitForm("宝石升级表单","getItemNum",str .."#".. str1)
end

function OtaCrystal.setparam()
	--msg("回到第一页"..OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked = OtaCrystal.firstClicked + 1
	OtaCrystal.Crystal_nowlevel = 2
	OtaCrystal.num = 0
	UI:Lua_SubmitForm("宝石升级表单","InitialItemList","")
end

function OtaCrystal.showNextLevelEnableList(tab)
	--msg("显示下一级"..OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked = OtaCrystal.firstClicked + 1
	if #tab ~= 0 then
		local minLevel = 10                                --如果升级后的宝石能继续升级，显示列表
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
	--msg("计算该显示哪页"..OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked = OtaCrystal.firstClicked + 1
	local GUIHandle = 0
	local CrystalName = ""
	local minLevel = 10
	if OtaCrystal.flag == 0 then             --初始化显示宝石列表
		if #tab ~= 0 then
			for k =1 , #tab do
				local t = strsplit(tab[k], ":")
				local _t = strsplit(t[1], "级")
				local number =tonumber(_t[1]) + 1
				if number < minLevel then
					minLevel = number
				end
			end
		--msg("minlevel="..minLevel)
		--msg("nowlevel="..OtaCrystal.Crystal_nowlevel)
		OtaCrystal.Crystal_nowlevel = minLevel
		OtaCrystal.showItemlist(minLevel)
		--return
		end
	end

	for i = 1 ,6 do
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,itemWin,"itemWin,itemButton"..i..",itemnum")
		if GUIHandle ~= 0 then
			GUIEditSetTextM(GUIHandle,"")                                        --初始化可升级宝石数量
		end
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemWin,itemButton"..i..",item_text")
		if GUIHandle ~= 0 then
			GUIRichEditSetDefaultTextColor(GUIHandle,MakeARGB(255,172,168,0))         --初始化颜色
		end
	end
	for i = 1 , 6 do
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemWin,itemButton"..i..",item_text")
		if GUIHandle ~= 0 then
			CrystalName = GUIRichEditGetAllString(GUIHandle)
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
				GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemWin,itemButton"..i..",itemnum")
				if GUIHandle ~= 0 then
					GUIEditSetTextM(GUIHandle,"（".. itemNum .."）")
					GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemWin,itemButton"..i..",item_text")
					if GUIHandle ~= 0 then
						--msg("set color???")
						GUIRichEditSetDefaultTextColor(GUIHandle,MakeARGB(255,112,184,80))     
					end
				end
			end
		end
	end
	OtaCrystal.showItemlist(OtaCrystal.Crystal_nowlevel)
	--********************************************************--
--[[	local str = ""..OtaCrystal.Crystal_nowlevel.."级物攻宝石"
	local uih = GUIWndFindWindow(OtaCrystal.handle,"template_item")
	if uih ~= 0 then
		RDItemCtrlSetGUIDataByKeyName(uih,str, 0, false)    --预览框填充
	end
	uih = GUIWndFindWindow(OtaCrystal.handle,"itemName")    --显示 预览 物品 的keyname
	if uih ~= 0 then
		GUIEditSetTextM(uih,str)
		OtaCrystal.keyname2 = str
	end
	uih = GUIWndFindWindow(OtaCrystal.handle,"entity_item")
	if uih ~= 0 then
		str = ""..(OtaCrystal.Crystal_nowlevel-1).."级物攻宝石"
		RDItemCtrlSetGUIDataByKeyName(uih,str, 0, false)    
	end
	UI:Lua_SubmitForm("宝石升级表单","getItemNum",str .."#"..(OtaCrystal.Crystal_nowlevel-1))--]]
	
	--*********************************************************--
end

function OtaCrystal.selectNum(h) 
	local index = GUIWndGetParam(h)       --选择要升级的宝石数量
	local GUIHandle = 0
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"optNum")
	OtaCrystal.num = GUIEditGetInt(GUIHandle)
	if index == 1 then
		OtaCrystal.num = OtaCrystal.num - 1
		GUIEditSetInt(GUIHandle,OtaCrystal.num)
	elseif index == 2 then
		OtaCrystal.num = OtaCrystal.num + 1
		GUIEditSetInt(GUIHandle,OtaCrystal.num)
	end 
	if OtaCrystal.costGold ~= 0 and OtaCrystal.num ~= 0 then
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"gold_num")           --显示消耗金币
		local totalGold = OtaCrystal.costGold * OtaCrystal.num
		GUIEditSetInt(GUIHandle,totalGold)
	end
	
	OtaCrystal.updateBtn()
end



function OtaCrystal.OwnNum(num,gold)                       --自己有用的宝石材料数量、升级所需的金钱
	--msg("自己拥有和所需金钱".. OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked = OtaCrystal.firstClicked + 1
	local GUIHandle = 0
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
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"entity_item_num")
	if GUIHandle ~= 0 then
		GUIEditSetTextM(GUIHandle,num.."/".. reqNum)
	end
	OtaCrystal.Maxnum = math.floor(num/reqNum)
	if OtaCrystal.Maxnum > 0 then
		--GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"optNum")
		OtaCrystal.num = 1 
		--GUIEditSetInt(GUIHandle,OtaCrystal.num)
		--msg("set option number")
	else
		--GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"optNum")
		OtaCrystal.num = 0
		--GUIEditSetInt(GUIHandle,0)
	end
	if gold ~= nil then
		OtaCrystal.costGold = tonumber(gold)
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"gold_num")           --显示消耗金币
		local totalGold = 0
		if OtaCrystal.num ~= 0 then
			totalGold = OtaCrystal.costGold * OtaCrystal.num
		else
			totalGold = OtaCrystal.costGold
		end
		GUIEditSetInt(GUIHandle,totalGold)
	end
	handle = GUIWndFindWindow(OtaCrystal.handle,"ota_btn2")
	if handle ~= 0 then
		GUIWndSetEnableM(handle,true)
	end
	OtaCrystal.updateBtn()
end

function OtaCrystal.otaStone()
	local GUIHandle = 0
	local a = 1
	--GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"optNum")
	--if GUIHandle ~= 0 then
		--a = GUIEditGetInt(GUIHandle)                             --玩家要升级的宝石数量
		--if a > 0 then	
			local totalgold = OtaCrystal.costGold * OtaCrystal.num
			UI:Lua_SubmitForm("宝石升级表单","offerItem",a .."#".. OtaCrystal.keyname2)
		--end
	--end
end


function OtaCrystal.btn2Clicked(_handle)
	local ReqYbList = {20,80,320,1280,5120,20480,81920,245760,737280,2211840,4423680}   --立刻升级所花元宝表
	local totalYb = OtaCrystal.ReqNum * ReqYbList[OtaCrystal.otaIndex]
	luaMsgBox.new("宝石升级", "是否花费" .. totalYb .. "元宝和" .. OtaCrystal.costGold .. "金币（绑金）直接升级", {"是", "否"}, {"OtaCrystal.getCrystalViaYb", 0}, _handle)
end

function OtaCrystal.getCrystalViaYb(_handle)
	UI:Lua_SubmitForm("宝石升级表单","getStoneViaYB",OtaCrystal.keyname2)
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end

function OtaCrystal.msg(param)
	local GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"ota_btn1")
	local handle = GUIWndFindWindow(OtaCrystal.handle,"ota_btn2")
	if GUIHandle ~= 0 then
		if param == 1 then
			local color = MakeARGB(255,255,0,0)
			window_msg_up(GUIHandle,"升级失败！金币不足",-65,-50,30,color,2)
		elseif param == 2 then 
			local color = MakeARGB(255,255,217,102)
			window_msg_up(GUIHandle,"升级成功！",-66,-50,30,color,2)
			WndAddEffect(OtaCrystal.handle, "ota_btn2", 3006600000, -163, -285, 200, 1) 
			--OtaCrystal.cleanUI()
		elseif param ==3 then
			local color = MakeARGB(255,255,217,102)
			window_msg_up(GUIHandle,"宝石已到最高等级！",-60,-50,30,color,2)
		elseif param ==4 then
			local color = MakeARGB(255,255,0,0)
			window_msg_up(handle,"元宝不足，请打开充值页面充值",-68,-50,30,color,2)
		elseif param ==5 then
			local color = MakeARGB(255,255,0,0)
			window_msg_up(handle,"金币不足",-65,-50,30,color,2)
		elseif param ==6 then
			local color = MakeARGB(255,255,217,102)
			window_msg_up(handle,"升级成功！",-66,-50,30,color,2)
			WndAddEffect(OtaCrystal.handle, "ota_btn2", 3006600000, -163, -285, 200, 1) 
			GUIWndSetEnableM(handle,false)
			--OtaCrystal.cleanUI()
		elseif param ==7 then
			local color = MakeARGB(255,255,0,0)
			window_msg_up(GUIHandle,"背包不足！",20,-50,30,color,2)
			--OtaCrystal.cleanUI()
		elseif param ==8 then
			local color = MakeARGB(255,255,0,0)
			window_msg_up(GUIHandle,"请放入宝石",-70,-50,30,color,2)
		end
	end
end

function OtaCrystal.itemClick()
	local _handle = GUIWndFindWindow(OtaCrystal.handle,"entity_item")
	if _handle ~= 0 then
		GUIItemCtrlClearItemData(_handle)
		local handle = GUIWndFindWindow(OtaCrystal.handle,"template_item")
		if handle ~= 0 then
			GUIItemCtrlClearItemData(handle)
		end
		handle = GUIWndFindWindow(OtaCrystal.handle,"ota_btn2")
		if handle ~= 0 then
			GUIWndSetEnableM(handle,false)
		end
		handle = GUIWndFindWindow(OtaCrystal.handle,"ota_btn1")
		if handle ~= 0 then
			GUIWndSetEnableM(handle,false)
		end
		OtaCrystal.cleanUI()
	end
end


function OtaCrystal.cleanUI()
	local GUIHandle = 0 
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"entity_item_num")
	if GUIHandle ~= 0 then											
		GUIEditSetTextM(GUIHandle,"")								--清空 0/4		
	end
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"entity_item")
	if GUIHandle ~= 0 then
		GUIItemCtrlClearItemData(GUIHandle)                        --消耗框清空
	end
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"template_item")
	if GUIHandle ~= 0 then
		GUIItemCtrlClearItemData(GUIHandle)                        --预览框清空
	end
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"gold_num")
	if GUIHandle ~= 0 then
		GUIEditSetInt(GUIHandle,0)                                --消耗金币清空
	end
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemName")
	if GUIHandle ~= 0 then
		GUIEditSetTextM(GUIHandle,"")                        --keyname清空
	end
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"optNum")
	if GUIHandle ~= 0 then
		GUIEditSetInt(GUIHandle,0)                     --合成数量清空
	end
end

function OtaCrystal.putCry()
	
end

function OtaCrystal.buy()
	--UI:Lua_OpenWindow("", "GoldBuy.lua")
	UI:Lua_OpenWindow(CrystalSystem.WndHandle, "CrystalBuy.lua")
end

OtaCrystal.main()