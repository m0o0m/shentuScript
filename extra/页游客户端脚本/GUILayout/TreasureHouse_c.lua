TreasureHouse_c = {}

function TreasureHouse_c.main()
	if GetWindow(nil,"TreasureHouse_c") ~= 0 then
		TreasureHouse_c.closeWnd()
	else
		local UI = "<form>"
		.. "<dialog OnInit='TreasureHouse_c.UIInit' id='TreasureHouse_c'  magic='1'  center='true'  image='1803500007' x='0' y='0' w='904' h='508' esc_close='true' drag='true' revmsg='true'>"
		.. "<image id='img_bodyBg' image='1803500008' x='42' y='125' w='546' h='351' revmsg='true' enable='false'/>"
		.. "<image id='img_bz' image='1803500011' x='397.5' y='15' w='109' h='66' revmsg='true' enable='false'/>"
		.. "<image id='img_yb' image='1803500012' x='62' y='88' w='51' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_ybNum1' image='0' x='190' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_ybNum2' image='0' x='180' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_ybNum3' image='0' x='170' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_ybNum4' image='0' x='160' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_ybNum5' image='0' x='150' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_ybNum6' image='0' x='140' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_ybNum7' image='0' x='130' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_ybNum8' image='0' x='120' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_ybNum9' image='0' x='110' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_bzScore' image='1803500013' x='240' y='88' w='90' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_bzScoreNum1' image='0' x='407' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_bzScoreNum2' image='0' x='397' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_bzScoreNum3' image='0' x='387' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_bzScoreNum4' image='0' x='377' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_bzScoreNum5' image='0' x='367' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_bzScoreNum6' image='0' x='357' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_bzScoreNum7' image='0' x='347' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_bzScoreNum8' image='0' x='337' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='img_bzScoreNum9' image='0' x='327' y='88' w='15' h='20' revmsg='true' enable='false'/>"
		.. "<image id='imgTitle1' image='1803500058' x='80' y='155' w='135' h='22' revmsg='true' enable='false'/>"
		.. "<image id='imgTitle2' image='1803500015' x='210' y='148' w='100' h='32' revmsg='true' enable='false'/>"
		.. "<image id='imgTitle3' image='1803500016' x='310' y='148' w='100' h='32' revmsg='true' enable='false'/>"
		.. "<image id='imgTitle4' image='1803500017' x='410' y='148' w='100' h='32' revmsg='true' enable='false'/>"
		.. "<image id='Msg_bg' image='1803500009' x='590' y='140' w='272' h='337' revmsg='true' enable='false'/>"
		.. "<image id='RED1' image='1803500032' x='607' y='146' w='249' h='38' revmsg='true' enable='false'/>"
		.. "<image id='my_reward' image='1803500033' x='670' y='150' w='128' h='27' revmsg='true' enable='false'/>"
		.. "<image id='RED2' image='1803500032' x='607' y='300' w='249' h='38' revmsg='true' enable='false'/>"
		.. "<image id='sever_reward' image='1803500034' x='670' y='304' w='128' h='27' revmsg='true' enable='false'/>"
		.. "<image id='item_bg1' x='104' y='180' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>"
		.. "<image id='item_bg2' x='104' y='248' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>"
		.. "<image id='item_bg3' x='104' y='316' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>"
		.. "<image id='item_bg4' x='172' y='180' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>"
		.. "<image id='item_bg5' x='172' y='248' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>"
		.. "<image id='item_bg6' x='172' y='316' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>"
		.. "<image id='item_bg7' x='401' y='180' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>"
		.. "<image id='item_bg8' x='401' y='248' w='48' h='68' image='1803500019' revmsg='true' enable='false'/>"
		.. "<image id='item_bg9' x='401' y='316' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>"
		.. "<image id='item_bg10' x='469' y='180' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>"
		.. "<image id='item_bg11' x='469' y='248' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>"
		.. "<image id='item_bg12' x='469' y='316' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>"
		
		.. "<itemctrl id='item_tb1' x='115' y='187' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>"
		.. "<itemctrl id='item_tb2' x='115' y='255' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>"
		.. "<itemctrl id='item_tb3' x='115' y='323' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>"
		.. "<itemctrl id='item_tb4' x='183' y='187' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>"
		.. "<itemctrl id='item_tb5' x='183' y='255' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>"
		.. "<itemctrl id='item_tb6' x='183' y='323' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>"
		.. "<itemctrl id='item_tb7' x='412' y='187' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>"
		.. "<itemctrl id='item_tb8' x='412' y='255' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>"
		.. "<itemctrl id='item_tb9' x='412' y='323' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>"
		.. "<itemctrl id='item_tb10' x='480' y='187' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>"
		.. "<itemctrl id='item_tb11' x='480' y='255' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>"
		.. "<itemctrl id='item_tb12' x='480' y='323' w='47' h='48' use_back='0' auto_manage='true' nable='true' revmsg='true'/>"
		
		.. "<image id='item_magic1' x='139' y='212' w='57' h='57' image='3020110000' revmsg='true' enable='false'/>"
		.. "<image id='item_magic2' x='139' y='280' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
		.. "<image id='item_magic3' x='139' y='348' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
		.. "<image id='item_magic4' x='207' y='212' w='68' h='68' image='3020110000'  revmsg='true' enable='false'/>"
		.. "<image id='item_magic5' x='207' y='280' w='68' h='68' image='3020110000'  revmsg='true' enable='false'/>"
		.. "<image id='item_magic6' x='207' y='348' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
		.. "<image id='item_magic7' x='436' y='212' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
		.. "<image id='item_magic8' x='436' y='280' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
		.. "<image id='item_magic9' x='436' y='348' w='68' h='68' image='3020110000'  revmsg='true' enable='false'/>"
		.. "<image id='item_magic10' x='504' y='212' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
		.. "<image id='item_magic11' x='504' y='280' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
		.. "<image id='item_magic12' x='504' y='348' w='68' h='68' image='3020110000'  revmsg='true' enable='false'/>"
		
		.. "<button id='close' image='1803400011' x='865' y='40' w='34' h='33' OnLButtonUp='TreasureHouse_c.closeWnd' revmsg='true'/>"
		.. "<button id='btn_itemExc' image='1803500061' x='450' y='88' w='89' h='22' OnLButtonUp='TreasureHouse_c.List' revmsg='true'/>"
		.. "<button id='Btn_TreBag' image='1803500035' x='605' y='85' w='123' h='56' OnLButtonUp='TreasureHouse_c.ShowTreBag' revmsg='true'/>"
		.. "<button id='Btn_Recharge' image='1803500039' x='725' y='85' w='123' h='56' OnLButtonUp='TreasureHouse_c.ReCharge' revmsg='true'/>"
		.. "<button id='btnSeek1' image='1803500020' x='90' y='380' w='116' h='44' OnLButtonUp='TreasureHouse_c.Seek' revmsg='true'/>"
		.. "<button id='btnSeek2' image='1803500024' x='256' y='380' w='116' h='44' OnLButtonUp='TreasureHouse_c.Seek' revmsg='true'/>"
		.. "<button id='btnSeek3' image='1803500028' x='422' y='380' w='116' h='44' OnLButtonUp='TreasureHouse_c.Seek' revmsg='true'/>"
		.. "<edit id='seek_yb1' x='110' y='430' w='80' h='20' revmsg='true' text='消耗200元宝' text_color ='#DDC615' enable='false'/>"
		.. "<edit id='seek_yb2' x='276' y='430' w='80' h='20' revmsg='true' text='消耗1000元宝' text_color ='#DDC615' enable='false'/>"
		.. "<edit id='seek_yb3' x='442' y='430' w='80' h='20' revmsg='true' text='消耗2000元宝' text_color ='#DDC615' enable='false'/>" 
		.. "<richedit id='edit_MyTreasure1' x='620' y='180' w='220' h='20' revmsg='true' text=''/>" 
		.. "<richedit id='edit_MyTreasure2' x='620' y='205' w='220' h='20' revmsg='true' text=''/>"
		.. "<richedit id='edit_MyTreasure3' x='620' y='230' w='220' h='20' revmsg='true' text=''/>"
		.. "<richedit id='edit_MyTreasure4' x='620' y='255' w='220' h='20' revmsg='true' text=''/>"
		.. "<richedit id='edit_MyTreasure5' x='620' y='280' w='220' h='20' revmsg='true' text=''/>"
		.. "<richedit id='edit_sysTreasure1' x='620' y='335' w='220' h='20' revmsg='true' text=''/>"
		.. "<richedit id='edit_sysTreasure2' x='620' y='360' w='220' h='20' revmsg='true' text=''/>"
		.. "<richedit id='edit_sysTreasure3' x='620' y='385' w='220' h='20' revmsg='true' text=''/>"
		.. "<richedit id='edit_sysTreasure4' x='620' y='410' w='220' h='20' revmsg='true' text=''/>"
		.. "<richedit id='edit_sysTreasure5' x='620' y='435' w='220' h='20' revmsg='true' text=''/>"
		.. "</dialog>"
		.. "</form>" 
		GenFormByString(UI)
	end
end
  
--UI Logic Code Start
TreasureHouse_c.WndHandle = 0
local img_Num = {1801500161, 1801500162, 1801500163, 1801500164, 1801500165, 1801500166, 1801500167, 1801500168, 1801500169, 1801500170}
--元宝数图片句柄
TreasureHouse_c.IMG_YBNUM = {}
--探宝积分图片句柄
TreasureHouse_c.IMG_BZSCORENUM = {}
--展示装备物品句柄
TreasureHouse_c.ITEM_TB = {}
--探宝个人所得编辑框句柄
TreasureHouse_c.EDIT_MYTREASURE = {}
--全服探宝记录句柄
TreasureHouse_c.EDIT_SYSTREASURE = {}

function TreasureHouse_c.UIInit(_GUIHandle)
	
	TreasureHouse_c.WndHandle = _GUIHandle
	CenterWnd(_GUIHandle)
	GUIWndSetSizeM(_GUIHandle, 904, 508)
	for i = 1, 9 do
		TreasureHouse_c.IMG_YBNUM[i] = GetWindow(TreasureHouse_c.WndHandle, "img_ybNum" .. i)
		TreasureHouse_c.IMG_BZSCORENUM[i] = GetWindow(TreasureHouse_c.WndHandle, "img_bzScoreNum" .. i)
	end
	for i = 1, 12 do
		TreasureHouse_c.ITEM_TB[i] = GetWindow(TreasureHouse_c.WndHandle, "item_tb" .. i)
		local handle = GetWindow(_GUIHandle,"item_magic"..i)
		if handle ~= 0 then	
			GUIImageSetDrawCenter(handle,true)		
			GUIImageSetAnimateEnable(handle, true, 150)
			GUIImageSetTransfrom(handle, 7800, 8000,0)	
		end	
	end
	for i = 1, 5 do
		TreasureHouse_c.EDIT_MYTREASURE[i] = GetWindow(TreasureHouse_c.WndHandle, "edit_MyTreasure" .. i)
		TreasureHouse_c.EDIT_SYSTREASURE[i] = GetWindow(TreasureHouse_c.WndHandle, "edit_sysTreasure" .. i)
	end
	local tb = {1, 5, 10}
	for i = 1, 3 do
		local handle = GetWindow(_GUIHandle, "btnSeek" .. i)
		GUIWndSetHint(handle, "<font color='#B8A085'>探宝" .. tb[i] .. "次，需消耗" .. tb[i]*200 .. "元宝，增加" .. tb[i] .."点宝藏积分</font>")
	end
	TreasureHouse_c.SetYB() 									--显示元宝数量
	TreasureHouse_c.SetTreasure() 								--显示展示商品
	TreasureHouse_c.TbScore = as3.tolua(FormParam[3])
	TreasureHouse_c.SetBzScore(TreasureHouse_c.TbScore) 		--显示宝藏积分
	local personalDisplay_txt = as3.tolua(FormParam[4])           
	local personalDisplay = deserialize(personalDisplay_txt)  
	TreasureHouse_c.MsgMyTreasureRecord(personalDisplay)		--显示个人探宝所得
	local allDisplay_txt = as3.tolua(FormParam[5]) 
	local allDisplay = deserialize(allDisplay_txt) 
	TreasureHouse_c.SetTreasureMsg(allDisplay)					--显示全服探宝所得
	if GUIWndAddTimerBrief(TreasureHouse_c.WndHandle, 10000, "UI:Lua_SubmitForm(\"TreasureHouse_s\",\"setTreasureMsg\", \"\")") then
		--code there
	end
	
	local handle_bag = GetWindow(nil, "TreasureBag_c")
	if handle_bag ~= 0 then
		reset_two_relationWnd(_GUIHandle, handle_bag)
	end
end

function TreasureHouse_c.SetYB()
	for k = 1, 9 do
		ImageSetImageID(TreasureHouse_c.WndHandle, "img_ybNum" .. k, 0)  --clear
	end
	if CLGetPlayerSelfProperty64(ROLE_PROP64_INGOT) then
		local yb = as3.tolua(LuaRet)
		yb = tonumber(yb)
		if yb == 0 then
			ImageSetImageID(TreasureHouse_c.WndHandle, "img_ybNum9", img_Num[10])
			return
		end
		local leftNum = 0
		local tb_leftNum = {}
		local posFlag = 1
		--逆向取数
		while yb > 0 do
			leftNum = yb % 10
			yb = math.floor(yb/10)
			if leftNum == 0 then
				leftNum = 10
			end
			tb_leftNum[posFlag] = leftNum
			posFlag = posFlag + 1
		end
		local startPoint = 9 - #tb_leftNum + 1
		local pointFlag = 1
		for i = startPoint, 9 do
			ImageSetImageID(TreasureHouse_c.WndHandle, "img_ybNum" .. i, img_Num[tb_leftNum[pointFlag]])
			pointFlag = pointFlag + 1 
		end
	end
end

function TreasureHouse_c.SetBzScore(tbscore)
	local score = tonumber(tbscore)
	if score == 0 then
		ImageSetImageID(TreasureHouse_c.WndHandle, "img_bzScoreNum9", img_Num[10])
		return 
	end
	local leftScore = 0
	local tb_leftNum = {}
	local posFlag = 1
	while score > 0 do
		leftScore = score % 10
		score = math.floor(score/10)
		if leftScore == 0 then
			leftScore = 10
		end
		tb_leftNum[posFlag] = leftScore
		posFlag = posFlag + 1
	end
	local startPoint = 9 - #tb_leftNum + 1
	local pointFlag = 1
	for i = startPoint, 9 do
		ImageSetImageID(TreasureHouse_c.WndHandle, "img_bzScoreNum" .. i, img_Num[tb_leftNum[pointFlag]])
		pointFlag = pointFlag + 1
	end
end

function TreasureHouse_c.SetTreasure()
	local ZhiZunEquip_txt = as3.tolua(FormParam[1])           --至尊套
	local ZhiZunEquip = deserialize(ZhiZunEquip_txt)          --反序列化成lua对象
	local BayeEquip_txt = as3.tolua(FormParam[2])
	local BayeEquip = deserialize(BayeEquip_txt)
	for i = 1, #TreasureHouse_c.ITEM_TB do
		if i <= 6 then
			if i < 4 then
				RDItemCtrlSetGUIDataByKeyName(TreasureHouse_c.ITEM_TB[i], ZhiZunEquip[i], 1, false)  
			elseif CLGetPlayerSelfPropBase(ROLE_PROP_SEX) then
				local sex = as3.tolua(LuaRet)
				RDItemCtrlSetGUIDataByKeyName(TreasureHouse_c.ITEM_TB[i], ZhiZunEquip[i][sex], 1, false) 
			end
		end
		if i > 6 then 
			local j = i - 6
			if i ~= 10 then
				RDItemCtrlSetGUIDataByKeyName(TreasureHouse_c.ITEM_TB[i], BayeEquip[j], 1, false)
			elseif CLGetPlayerSelfPropBase(ROLE_PROP_SEX) then
				local sex = as3.tolua(LuaRet)
				RDItemCtrlSetGUIDataByKeyName(TreasureHouse_c.ITEM_TB[i], BayeEquip[j][sex], 1, false)
			end
		end
	end
end

function TreasureHouse_c.Seek(_handle) 		--探宝
	local yb = 0
	for i = 1, 3 do
		local handle = GetWindow(TreasureHouse_c.WndHandle, "btnSeek" .. i)
		if handle == _handle then
			if i == 1 then
				yb = 200
			elseif i == 2 then
				yb = 1000
			else
				yb = 2000
			end
		end
	end 
	if yb ~= 0 then
		UI:Lua_SubmitForm("TreasureHouse_s", "seekTreasure", yb)	
	end
end

function TreasureHouse_c.MsgMyTreasureRecord(display)
	if #display == 0 then
		return
	end
	for i = 1, 5 do
		GUIRichEditClear(TreasureHouse_c.EDIT_MYTREASURE[i])
	end
	for i = 1, #display do
		local modelHandle = CLGetItemTemplateHandleByKeyName(display[i])
		CLGetItemTemplatePropByHandle(modelHandle, ITEM_PROP_NAME)
		local itemName = as3.tolua(LuaRet)
		GUIRichEditAppendString(TreasureHouse_c.EDIT_MYTREASURE[i], "获得了:#COLORCOLOR_RED#".. itemName .. "#COLOREND#")
	end
end

function TreasureHouse_c.SetTreasureMsg(str)
	if #str == 0 then
		return
	end
	for i = 1, 5 do
		GUIRichEditClear(TreasureHouse_c.EDIT_SYSTREASURE[i])
	end
	local j = 1
	for i = 1, #str do
		local strs = strsplit(str[i], ":")
		local playerName = strs[1]
		local itemName = strs[2]
		local modelHandle = CLGetItemTemplateHandleByKeyName(itemName)
		CLGetItemTemplatePropByHandle(modelHandle, ITEM_PROP_NAME)
		itemName = as3.tolua(LuaRet)
		GUIRichEditAppendString(TreasureHouse_c.EDIT_SYSTREASURE[j], "#COLORCOLOR_BLUE#" .. playerName .. " #COLOREND#获得：#COLORCOLOR_RED#".. itemName .. "#COLOREND#")
		j = j + 1
	end
end

function TreasureHouse_c.isTreasureBagOpen(itemList)
	local bagHandle = GetWindow(nil, "TreasureBag_c")
	if bagHandle == 0 then
		UI:Lua_OpenWindow(0, "TreasureBag_c.lua")		
		bagHandle = GetWindow(nil, "TreasureBag_c")
		reset_two_relationWnd(TreasureHouse_c.WndHandle, bagHandle)
	else
		for i = 1, 3 do
			local _Handle =GetWindow(nil,"TreasureBag_c,btn_itemType"..i)
			if _Handle~= 0 then 
				local Is_true = ButtonGetIsActivePageBtn(_Handle) 
				if Is_true then 
					if i == 1 and #TreasureBag_c.AllTreasure>(TreasureBag_c.page*56-1) then 
						TreasureBag_c.page=TreasureBag_c.page+1
					elseif i == 3 and #TreasureBag_c.EquipTreasure>(TreasureBag_c.page*56-1) then 
						TreasureBag_c.page=TreasureBag_c.page+1
					elseif i == 2 and #TreasureBag_c.ItemTreasure>(TreasureBag_c.page*56-1) then 
						TreasureBag_c.page=TreasureBag_c.page+1
					end
				end
			end
		end
		TreasureBag_c.SortTab(itemList)
	end 
end

function TreasureHouse_c.List(_handle) 		--道具兑换
	UI:Lua_SubmitForm("Marks2Item_s","openExchangePage","")
end

function TreasureHouse_c.ShowTreBag(_handle)	--宝藏仓库
	UI:Lua_OpenWindow(0, "TreasureBag_c.lua")
--[[	local handle_bag = GetWindow(nil, "TreasureBag_c")
	reset_two_relationWnd(TreasureHouse_c.WndHandle, handle_bag)--]]
end

function TreasureHouse_c.ReCharge(_handle)		--立即充值
	if CLOpenUrlUseIEByType(3) then
		-- coding there
	end
end

function TreasureHouse_c.closeWnd()		--关闭窗口
	   
--[[	local handle_bag = GetWindow(nil, "TreasureBag_c")
	reset_two_relationWnd(0, handle_bag)--]]
	local handle = GetWindow(nil,"TreasureHouse_c")
	if handle ~= 0 then
		GUIWndDelAllTimer(TreasureHouse_c.WndHandle)
		GUIWndClose(handle)
	end	
	local handle = GetWindow(nil,"TreasureBag_c")
	if handle ~= 0 then 
		GUIWndClose(handle)
	end	
end

function TreasureHouse_c.Update2(tbScore, newDisplay, strDataBase)
	local score = tonumber(tbScore)
	local chargeHandle = GetWindow(nil, "Marks2Item_c")
	if chargeHandle ~= 0 then
		Marks2Item_c.scoreUpdate(score)
	end
	TreasureHouse_c.SetYB()
	TreasureHouse_c.SetBzScore(score)
	TreasureHouse_c.MsgMyTreasureRecord(newDisplay)
	TreasureHouse_c.SetTreasureMsg(strDataBase)
	WndAddEffect(TreasureHouse_c.WndHandle,"TreasureHouse_c", 3000100400, 117, 110, 100, 1) 
end

function TreasureHouse_c.Msg_Box()
	luaMsgBox.new("探宝仓库", "宝藏仓库已满,请先清理仓库!", {"确定", "取消"}, {0, 0}, "")
end


function TreasureHouse_c.MsgAttention(tag)
	--tag 1：元宝不足 tag 2：金钱不足
	if tonumber(tag) == 1 then
		luaMsgBox.new("元宝", "    很抱歉，您的元宝不足", {"前往充值", "取消"}, {"TreasureHouse_c.chongz", "TreasureHouse_c.out"}, "")
	else
		msg("next attention")
	end
end



function TreasureHouse_c.chongz(h)
	CLOpenUrlUseIEByType(3)
	luaWndClose(h)
end

function TreasureHouse_c.out(h)
	luaWndClose(h)
end

TreasureHouse_c.main()