TreasureBag_c = {}

function TreasureBag_c.main()
	if GetWindow(nil,"TreasureBag_c") ~= 0 then
		TreasureBag_c.closeWnd()
	else
		local ui = "<form> <dialog OnInit='TreasureBag_c.UIInit' id='TreasureBag_c' image='1803500010' x='0' y='0' w='444' h='469' esc_close='true' drag='true' revmsg='true'>"
		.."	<image id='img_bag' image='1803500060' x='165' y='-15' w='138' h='45' revmsg='true' enable='false'/>"
		.."	<button id='btn_itemType1' image='1803500053' x='40' y='31' w='72' h='29' OnLButtonUp='TreasureBag_c.ShowMyTreasureByType' revmsg='true' param='1' text='全 部'/>"
		.."	<button id='btn_itemType2' image='1803500053' x='115' y='31' w='72' h='29' OnLButtonUp='TreasureBag_c.ShowMyTreasureByType' revmsg='true' param='2' text='道 具'/>"
		.."	<button id='btn_itemType3' image='1803500053' x='190' y='31' w='72' h='29' OnLButtonUp='TreasureBag_c.ShowMyTreasureByType' revmsg='true' param='3' text='装 备'/>"
		.."	<itemctrl id='imageCtrl11' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='31' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl12' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='79' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl13' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='127' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl14' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='175' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl15' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='223' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl16' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='271' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl17' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='319' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl18' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='367' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl21' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='31' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl22' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='79' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl23' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='127' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl24' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='175' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl25' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='223' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl26' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='271' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl27' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='319' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl28' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='367' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl31' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='31' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl32' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='79' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl33' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='127' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl34' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='175' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl35' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='223' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl36' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='271' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl37' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='319' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl38' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='367' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl41' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='31' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl42' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='79' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl43' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='127' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl44' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='175' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl45' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='223' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl46' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='271' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl47' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='319' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl48' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='367' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl51' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='31' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl52' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='79' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl53' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='127' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl54' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='175' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl55' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='223' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl56' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='271' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl57' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='319' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl58' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='367' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl61' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='31' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl62' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='79' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl63' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='127' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl64' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='175' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl65' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='223' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl66' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='271' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl67' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='319' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl68' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='367' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl71' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='31' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl72' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='79' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl73' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='127' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl74' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='175' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl75' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='223' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl76' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='271' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl77' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='319' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<itemctrl id='imageCtrl78' use_back='1803500057' OnLButtonDbClick='TreasureBag_c.clickItem' x='367' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<button id='btn_get' image='1803500045' x='200' y='400' w='107' h='41' OnLButtonUp='TreasureBag_c.GetEquip' revmsg='true'/>"
		.."	<button id='btn_sort' image='1803500049' x='310' y='400' w='107' h='41' OnLButtonUp='TreasureBag_c.Sort' revmsg='true'/>"
		.."	<button id='btn_close' image='1803400011' x='405' y='4' w='26' h='26' OnLButtonUp='TreasureBag_c.closeWnd' revmsg='true'/>"
		
		.."	<button id='pagedown' image='1800000094' x='83' y='410' w='20' h='19' OnLButtonUp='TreasureBag_c.pagedown' revmsg='true' enable='false' text_color='#C2B6A0'/>"
		.."	<button id='pageup' image='1800000098' x='171' y='410' w='20' h='19' OnLButtonUp='TreasureBag_c.pageup' revmsg='true' text_color='#C2B6A0'/>"
		.."	<image id='pageimg' image='1800000279' x='109' y='402' w='58' h='34' check_point='0' revmsg='true'/>"
		.."	<richedit id='page' x='128' y='412' w='28' h='21' text='1/5' revmsg='true' font='system'/>"
		.."	<image id='TestWndChild_0' tip='双击领取物品' image='1800000297' x='36' y='405' w='27' h='30' revmsg='true'/>"
		.." </dialog>"
		.."</form>"
		GenFormByString(ui)
	end
end

TreasureBag_c.WndHandle = 0
TreasureBag_c.AllTreasure = {}  	--所有物品
TreasureBag_c.EquipTreasure = {} 	--装备
TreasureBag_c.ItemTreasure = {} 	--道具
TreasureBag_c.BTN_TabItem = {}		--上侧标签栏
TreasureBag_c.myItemList = {}		--物品框
TreasureBag_c.BtnTypeFlag = 0		--分类标签（1.全部 2.道具 3.装备）
TreasureBag_c.ClickItemHandle = 0		--被点击的物品框位置索引（1 - 56）
TreasureBag_c.ClickItemName = ""		--被点击的物品框KeyName
TreasureBag_c.page = 1
TreasureBag_c.getitem = {}    --一键领取
function TreasureBag_c.UIInit(_GUIHandle)
	TreasureBag_c.WndHandle = _GUIHandle
	CenterWnd(_GUIHandle)
	GUIWndSetSizeM(_GUIHandle, 444, 469)
	TreasureBag_c.page = 1
	for i = 1, 3 do
		TreasureBag_c.BTN_TabItem[i] = GetWindow(TreasureBag_c.WndHandle, "btn_itemType" .. i)
		GUIButtonSetStateTextColor(TreasureBag_c.BTN_TabItem[i],0,MakeARGB(255, 107, 91, 80))
		GUIButtonSetStateTextColor(TreasureBag_c.BTN_TabItem[i],2,MakeARGB(255, 206, 178, 98))
	end
	for i = 1, 7 do
		TreasureBag_c.myItemList[i] = {}
		for j = 1, 8 do
			TreasureBag_c.myItemList[i][j] = GetWindow(TreasureBag_c.WndHandle, "imageCtrl" .. i .. j)  
			GUIWndSetParam(TreasureBag_c.myItemList[i][j], (i - 1) * 8 + j)
		end
	end
	GUIButtonSetIsActivePageBtn(TreasureBag_c.BTN_TabItem[1], true)
	TreasureBag_c.BtnTypeFlag = 1 
	reset_two_relationWnd(TreasureHouse_c.WndHandle, _GUIHandle)

	UI:Lua_SubmitForm("TreasureBag_s", "getAllTreasure", "")
end
function TreasureBag_c.clickItem(_handle)
	
	local itemNum = tonumber(GUIWndGetParam(_handle))+(TreasureBag_c.page-1)*56
	local tb = {}
	if TreasureBag_c.BtnTypeFlag == 1 then
		tb = TreasureBag_c.AllTreasure
	elseif TreasureBag_c.BtnTypeFlag == 2 then
		tb = TreasureBag_c.ItemTreasure
	elseif TreasureBag_c.BtnTypeFlag == 3 then
		tb = TreasureBag_c.EquipTreasure
	end
	if tonumber(itemNum) <= tonumber(#tb) then
		TreasureBag_c.ClickItemHandle = _handle
		TreasureBag_c.ClickItemName = tb[itemNum]
		UI:Lua_SubmitForm("TreasureBag_s", "getItem", tb[itemNum])
	end
	for i=#TreasureBag_c.getitem,1 ,-1 do 
		if TreasureBag_c.getitem[i] == TreasureBag_c.ClickItemName then 
			table.remove(TreasureBag_c.getitem,i)
			break
		end
	end 
	
end

function TreasureBag_c.RemoveAitem()
	
	local clickPos = GUIWndGetParam(TreasureBag_c.ClickItemHandle)+(TreasureBag_c.page-1)*56
	local length = 0
	--GUIItemCtrlClearItemData(TreasureBag_c.ClickItemHandle)

	length = #TreasureBag_c.AllTreasure
	--[[if length > 0 then
		for i = 1, length do
			if TreasureBag_c.AllTreasure[i] == TreasureBag_c.ClickItemName then
				table.remove(TreasureBag_c.AllTreasure, i)
				--TreasureBag_c.AllTreasure[i] = ""
				break
			end
		end
	end--]]
	TreasureBag_c.AllTreasure[clickPos] = ""
	GUIItemCtrlClearItemData(TreasureBag_c.ClickItemHandle)
	local model = CLGetItemTemplateHandleByKeyName(TreasureBag_c.ClickItemName)
	if CLGetItemTemplatePropByHandle(model, ITEM_PROP_TYPE) then
		local itemType = as3.tolua(LuaRet)
		if itemType == 1 then
			length = #TreasureBag_c.EquipTreasure
			if length > 0 then
				for i = 1, length do
					if TreasureBag_c.EquipTreasure[i] == TreasureBag_c.ClickItemName then
						--table.remove(TreasureBag_c.EquipTreasure, i)
						TreasureBag_c.EquipTreasure[i] = ""
						break
					end
				end
			end
		else
			length = #TreasureBag_c.ItemTreasure
			if length > 0 then
				for i = 1, length do
					if TreasureBag_c.ItemTreasure[i] == TreasureBag_c.ClickItemName then
						--table.remove(TreasureBag_c.ItemTreasure, i)
						TreasureBag_c.ItemTreasure[i] = ""
						break
					end
				end
			end
		end
	end

	--TreasureBag_c.UI(TreasureBag_c.BtnTypeFlag )
end

function TreasureBag_c.UI(index)
	local getItemTb = {}
	if tonumber(index) == 1 then
		getItemTb = TreasureBag_c.AllTreasure
	elseif tonumber(index) == 2 then
		getItemTb = TreasureBag_c.ItemTreasure
	else 
		getItemTb = TreasureBag_c.EquipTreasure
	end
	TreasureBag_c.ClearTreasureBag() 
	local s = 1
	for i=1,7 do  
		for j=1,8 do 
			if s-1 < #getItemTb then  
				local hand = GetWindow(TreasureBag_c.WndHandle, "imageCtrl" .. i .. j ) 
				RDItemCtrlSetGUIDataByKeyName(hand, getItemTb[s], 1, false) 
				s = s + 1
			end
		end 
	end
end

function TreasureBag_c.SortTab(itemList)
	TreasureBag_c.ClearTreasureBag()
	TreasureBag_c.AllTreasure = {}
	TreasureBag_c.EquipTreasure = {}
	TreasureBag_c.ItemTreasure = {}
	local tb_type = {}
	for i = 1, #itemList do 
		if itemList ~= nil and itemList ~= "" then 
			TreasureBag_c.AllTreasure[#TreasureBag_c.AllTreasure+1]=itemList[i]
			local mouldHandle = CLGetItemTemplateHandleByKeyName(itemList[i])
			if CLGetItemTemplatePropByHandle(mouldHandle, ITEM_PROP_TYPE) then
				tb_type[i] = as3.tolua(LuaRet)
				if tb_type[i] == 1 then
					TreasureBag_c.EquipTreasure[#TreasureBag_c.EquipTreasure+1]=itemList[i]
				else
					TreasureBag_c.ItemTreasure[#TreasureBag_c.ItemTreasure+1]=itemList[i]
				end
			end
		end
	end 
	TreasureBag_c.pagefun()
end

function TreasureBag_c.SortMyTreasure(itemList)
	--每次调用前清空

	TreasureBag_c.AllTreasure = {}
	TreasureBag_c.EquipTreasure = {}
	TreasureBag_c.ItemTreasure = {}	
	TreasureBag_c.getitem = {}
	local tb_handel = {}
	local tb_type = {}
	local a = 1
	for i = 1, 7 do
		for j = 1, 8 do 
			GUIItemCtrlClearItemData(TreasureBag_c.myItemList[i][j]) 
			GUIWndDbClick(TreasureBag_c.myItemList[i][j]) 
			tb_handel[a] = TreasureBag_c.myItemList[i][j]
			a = a + 1
		end
	end
	for i = 1, #itemList do
		TreasureBag_c.getitem[#TreasureBag_c.getitem+1]= itemList[i+(TreasureBag_c.page-1)*56]
		RDItemCtrlSetGUIDataByKeyName(tb_handel[i], itemList[i+(TreasureBag_c.page-1)*56], 1, false)
		local mouldHandle = CLGetItemTemplateHandleByKeyName(itemList[i])
		if CLGetItemTemplatePropByHandle(mouldHandle, ITEM_PROP_TYPE) then
			tb_type[i] = as3.tolua(LuaRet)
		end
		table.insert(TreasureBag_c.AllTreasure, itemList[i])
		if tb_type[i] == 1 then
			table.insert(TreasureBag_c.EquipTreasure, itemList[i])
		else 
			table.insert(TreasureBag_c.ItemTreasure, itemList[i])
		end
	end
	TreasureBag_c.BtnTypeFlag = 1	
	for i = 1, 3 do
		if TreasureBag_c.BTN_TabItem[i] ~= 0 then
			if i == 1 then
				GUIButtonSetIsActivePageBtn(TreasureBag_c.BTN_TabItem[i], true)
			else
				GUIButtonSetIsActivePageBtn(TreasureBag_c.BTN_TabItem[i], false)
			end
		end
	end
end

function TreasureBag_c.ClearTreasureBag() --清空宝藏仓库
	for i = 1, 7 do
		for j = 1, 8 do
			GUIItemCtrlClearItemData(TreasureBag_c.myItemList[i][j])
			GUIWndDbClick(TreasureBag_c.myItemList[i][j])
			--GUIWndRegistScript(TreasureBag_c.myItemList[i][j], RDWndBaseCL_mouse_lbDbClick, "TreasureBag_c.clickItem")
		end
	end
end

function TreasureBag_c.ShowMyTreasureByType(_handle)
	TreasureBag_c.ClearTreasureBag()
	TreasureBag_c.getitem = {}
	TreasureBag_c.Update(_handle)
	local btn_type = GUIWndGetParam(_handle)
	--收集物品框句柄
	local tbb_handel = {}
	local a = 1
	for i = 1, 7 do
		for j = 1, 8 do
			tbb_handel[a] = TreasureBag_c.myItemList[i][j]
			a = a + 1
		end
	end
	--1为全部，2为其他，3为装备
	local index = (TreasureBag_c.page-1)*56+1
	for i = index, index+55 do
		if btn_type == 1 then
			if TreasureBag_c.AllTreasure[i] ~= nil and TreasureBag_c.AllTreasure[i] ~= "" then 
				TreasureBag_c.getitem[#TreasureBag_c.getitem+1] = TreasureBag_c.AllTreasure[i]
				RDItemCtrlSetGUIDataByKeyName(tbb_handel[i-(TreasureBag_c.page-1)*56], TreasureBag_c.AllTreasure[i], 1, false)
			end
		elseif btn_type == 2 then 
			if TreasureBag_c.ItemTreasure[i] ~= nil and TreasureBag_c.ItemTreasure[i] ~= "" then 
				TreasureBag_c.getitem[#TreasureBag_c.getitem+1] = TreasureBag_c.ItemTreasure[i]
				RDItemCtrlSetGUIDataByKeyName(tbb_handel[i-(TreasureBag_c.page-1)*56], TreasureBag_c.ItemTreasure[i], 1, false)
			end
		else
			if TreasureBag_c.EquipTreasure[i] ~= nil and TreasureBag_c.EquipTreasure[i] ~= "" then 
				TreasureBag_c.getitem[#TreasureBag_c.getitem+1] = TreasureBag_c.EquipTreasure[i]
				RDItemCtrlSetGUIDataByKeyName(tbb_handel[i-(TreasureBag_c.page-1)*56], TreasureBag_c.EquipTreasure[i], 1, false)
			end
		end
	end 
end

function TreasureBag_c.pagedown()
	if TreasureBag_c.page >1 then 
		TreasureBag_c.page = TreasureBag_c.page-1
		TreasureBag_c.pagefun()
	end
end

function TreasureBag_c.pageup()
	
	if  TreasureBag_c.page<5 then 
		TreasureBag_c.page = TreasureBag_c.page+1
		TreasureBag_c.pagefun()
	end
end

function TreasureBag_c.pagefun()
	
	local _Handle =GetWindow(nil,"TreasureBag_c,pagedown")   
	if TreasureBag_c.page == 1 then 
		GUIWndSetEnableM(_Handle, false)
	else 
		GUIWndSetEnableM(_Handle, true)
	end
	_Handle =GetWindow(nil,"TreasureBag_c,pageup")  
	if TreasureBag_c.page == 5 then 
		GUIWndSetEnableM(_Handle, false)
	else 
		GUIWndSetEnableM(_Handle, true)
	end
	
	_Handle =GetWindow(nil,"TreasureBag_c,page")     
	if _Handle ~= 0 then 
		GUIRichEditClear(_Handle)
		GUIRichEditAppendString(_Handle,TreasureBag_c.page.."/5")
	end
	for i=1,3 do 
		_Handle =GetWindow(nil,"TreasureBag_c,btn_itemType"..i)
		local Is_true = ButtonGetIsActivePageBtn(_Handle) 
		if Is_true then 
			TreasureBag_c.ShowMyTreasureByType(_Handle)
		end
	end
end


function TreasureBag_c.GetEquip()
--[[	 
	local getItemTb = {}
	if TreasureBag_c.BtnTypeFlag == 1 then
		getItemTb = TreasureBag_c.AllTreasure
	elseif TreasureBag_c.BtnTypeFlag == 2 then
		getItemTb = TreasureBag_c.ItemTreasure
	else 
		getItemTb = TreasureBag_c.EquipTreasure
	end--]]
--[[	for i = 1, 7 do
		TreasureBag_c.myItemList[i] = {}
		for j = 1, 8 do 
			local keyname = RDItemCtrlGetGUIDataKeyName(TreasureBag_c.WndHandle, "imageCtrl" .. i .. j)
			if keyname ~= "" then 
				
			end
		end
	end--]] 
	
	UI:Lua_SubmitForm("TreasureBag_s", "getTreasure",serialize(TreasureBag_c.getitem))
end

function TreasureBag_c.Sort(_handle)

	local equipTableLength = #TreasureBag_c.EquipTreasure
	local itemTableLength = #TreasureBag_c.ItemTreasure
	local j = 1
	for i = 1, equipTableLength + itemTableLength do
		if i <= equipTableLength then
			TreasureBag_c.AllTreasure[i] = TreasureBag_c.EquipTreasure[i]
		else
			TreasureBag_c.AllTreasure[i] = TreasureBag_c.ItemTreasure[j]
			j = j + 1
		end
	end
	UI:Lua_SubmitForm("TreasureBag_s", "sortTreasure", serialize(TreasureBag_c.EquipTreasure))
	--UI:Lua_SubmitForm("TreasureBag_s", "getAllTreasure", "")
	
	TreasureBag_c.page = 2
	TreasureBag_c.pagedown()
	CLAddDelayTask("TreasureBag_c.Enable()", 5000, 1)
	local handle = GetWindow(nil,"TreasureBag_c,btn_sort")
	if handle ~= 0 then 
		GUIWndSetEnableM(handle,false)
	end
end

function TreasureBag_c.Enable()  
	local handle = GetWindow(nil,"TreasureBag_c,btn_sort")
	if handle ~= 0 then 
		GUIWndSetEnableM(handle,true)
	end
end

function TreasureBag_c.Update(_handle)
	for i = 1, #TreasureBag_c.BTN_TabItem do
		if TreasureBag_c.BTN_TabItem[i] == _handle then
			GUIButtonSetIsActivePageBtn(_handle, true)
			TreasureBag_c.BtnTypeFlag = i
		else
			GUIButtonSetIsActivePageBtn(TreasureBag_c.BTN_TabItem[i], false)
		end
	end
end

function TreasureBag_c.Msg_Box(msg)
	luaMsgBox.new("探宝仓库", msg, {"确定", "取消"}, {0, 0}, "")
end

function TreasureBag_c.out(h)
	luaWndClose(h)
end

function TreasureBag_c.closeWnd()		--关闭窗口
	local handle_house = GetWindow(nil, "TreasureHouse_c")
	reset_two_relationWnd(handle_house, 0)
	local handle = GetWindow(nil,"TreasureBag_c")
	if handle ~= 0 then
		GUIWndClose(handle)
	end	
end

TreasureBag_c.main()