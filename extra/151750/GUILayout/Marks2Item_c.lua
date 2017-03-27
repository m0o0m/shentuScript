Marks2Item_c = {}
function Marks2Item_c.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"Marks2Item_c",1803500001,98,19)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,720, 509)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"title",1801500160,289,3)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"opt_btn5",1800000368,359,49)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.itemOpt")
		GUI:WndSetTextM(_GUIHandle,"其他")
		GUI:WndSetParam(_GUIHandle, 5)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"opt_btn1",1800000368,39,49)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.itemOpt")
		GUI:WndSetTextM(_GUIHandle,"神兵")
		GUI:WndSetParam(_GUIHandle, 1)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"opt_btn3",1800000368,198,49)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.itemOpt")
		GUI:WndSetTextM(_GUIHandle,"男女互换")
		GUI:WndSetParam(_GUIHandle, 3)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"opt_btn4",1800000368,278,49)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.itemOpt")
		GUI:WndSetTextM(_GUIHandle,"首饰")
		GUI:WndSetParam(_GUIHandle, 4)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"opt_btn2",1800000368,118,49)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.itemOpt")
		GUI:WndSetTextM(_GUIHandle,"神甲")
		GUI:WndSetParam(_GUIHandle, 2)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"item_btn1",1803500003,18,80)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.item_btn")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"item_btn2",1803500003,18,170)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.item_btn")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"item_btn3",1803500003,18,260)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.item_btn")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"item_btn4",1803500003,18,350)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.item_btn")
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_name_bg1",1803500002,113,97)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_name_bg2",1803500002,113,187)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_name_bg3",1803500002,113,278)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_name_bg4",1803500002,113,370)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"item_name1",120,95,206,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontM(_GUIHandle,"SIMLI18")
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"get_btn1",1800000081,370,115)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.exchangeItem")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"item_name2",120,185,206,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontM(_GUIHandle,"SIMLI18")
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"get_btn2",1800000081,370,205)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.exchangeItem")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"item_name3",120,275,206,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontM(_GUIHandle,"SIMLI18")
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"get_btn3",1800000081,370,295)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.exchangeItem")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"item_name4",120,368,206,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontM(_GUIHandle,"SIMLI18")
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"get_btn4",1800000081,370,385)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.exchangeItem")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"up_btn",1800000094,182,455)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.up_btn")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"down_btn",1800000098,262,455)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.dowm_btn")
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_151",1800000279,203,446)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"page_text",221,457,34,15)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"text1",526,85,0,0)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"宝 藏 积 分 说 明")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle,MakeARGB(255, 241, 231, 97))
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"text2",526,260,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle,MakeARGB(255, 241, 231, 97))
		GUI:EditSetTextM(_GUIHandle,"全 服 兑 换 记 录")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"text3",476,119,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"拥有宝藏积分：")
		GUI:WndSetTextColorM(_GUIHandle,MakeARGB(255, 228, 193, 159))
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"text4",476,150,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"获得积分途径：")
		GUI:WndSetTextColorM(_GUIHandle,MakeARGB(255, 228, 193, 159))
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"text5",514,183,78,18)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"text6",514,202,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"武器升级保留强化和注灵，但不保留幸运值")
		GUI:WndSetTextColorM(_GUIHandle,MakeARGB(255, 206, 178, 98))
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"tag_img1",1800900039,482,185)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"tag_img2",1800900039,482,213)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"close",1800000043,681,4)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Marks2Item_c.closeWnd")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"player_score",557,125,54,13)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"item_text1",115,141,250,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"item_text2",115,231,250,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"item_text3",115,321,250,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"item_text4",115,414,250,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"itemBack1",1800000385,34,96)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl1",0,39,100,57,57)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetProp(_GUIHandle,nil, true, true, true, true, false, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 57, 57)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"itemBack2",1800000385,34,186)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl2",0,39,190,57,57)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetProp(_GUIHandle,nil, true, true, true, true, false, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 57, 57)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"itemBack3",1800000385,34,276)
	if _GUIHandle ~= 0 then
	end	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl3",0,39,280,57,57)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetProp(_GUIHandle,nil, true, true, true, true, false, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 57, 57)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"itemBack4",1800000385,34,366)
	if _GUIHandle ~= 0 then
	end		
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl4",0,39,370,57,57)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetProp(_GUIHandle,nil, true, true, true, true, false, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 57, 57)
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"shownText1",478,295,200,40)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"shownText2",478,333,200,40)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"shownText3",478,371,200,40)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:RichEditCreate(_Parent,"shownText4",478,409,200,40)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"shownText5",478,447,200,40)
	if _GUIHandle ~= 0 then
	end
	
	Marks2Item_c.UIInit(_Parent)
end

Marks2Item_c.WndHandle = 0
Marks2Item_c.BtnHandle = 0

Marks2Item_c.nowpage1 = 1
Marks2Item_c.index = 1
--UI Logic Code Start
function Marks2Item_c.UIInit(_Handle)
	Marks2Item_c.WndHandle = _Handle
	CenterWnd(Marks2Item_c.WndHandle)
	UI:Lua_Log("FormParam[1] = "..FormParam[1])

	Marks2Item_c.param1 = deserialize(FormParam[1])                                             --服务端传来的item表
	Marks2Item_c.totalpage1 = math.ceil(#Marks2Item_c.param1[1]/4)                                         --通过item个数判断页码数
	Marks2Item_c.item_num = #Marks2Item_c.param1[1]                                                         --item的个数
	Marks2Item_c.isExistbag = deserialize(FormParam[3])                                          --玩家背包是否存在兑换所需的item（所有） （放在一个表里，存在=1，不存在=0）
	Marks2Item_c.is_Existbag = Marks2Item_c.isExistbag[1]                                                    --玩家背包是否存在兑换所需的item （神兵）  初始化时默认界面为神兵界面
	Marks2Item_c.tb_score = tonumber(deserialize(FormParam[2]))                                  --服务端传来的玩家探宝积分
	if FormParam[4] ~= nil then 
		local tab = deserialize(FormParam[4])
		Marks2Item_c.setExchangeMsg(tab)                                                                      --全服兑换记录初始化
	end	
	ButtonSetIsActivePageBtn(Marks2Item_c.WndHandle,"opt_btn1",true)                                           --初始化时默认选中“神兵”这个按钮 （变红）
	for i = 1 , 5 do 
		local handle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"opt_btn"..i)
		if handle ~= 0 then
			GUI:ButtonSetStateTextColor(handle,0,MakeARGB(255, 107, 91, 80))
			GUI:ButtonSetStateTextColor(handle,1,MakeARGB(255, 107, 91, 80))
			GUI:ButtonSetStateTextColor(handle,2,MakeARGB(255, 206, 178, 98))
		end
	end

	Marks2Item_c.stable()                                                                                      --固定部分UI显示
	
	Marks2Item_c.updateUI()                 --页面更新
	
	if GUI:WndAddTimerBrief(Marks2Item_c.WndHandle, 10000, "UI:Lua_SubmitForm(\"Marks2Item_s\",\"setExchangeMsg\", \"\")") then    --设置定时器，每10秒钟刷新一次全服兑换记录
		Marks2Item_c.time_id = LuaRet
	end
	GUI:WndRegistScript(_Handle, RDWndBaseCL_wnd_close, "Marks2Item_c.cleartime")                                  --窗口关闭时清除定时器
end


-------------------------------------------主页面更新----------------------------------------
function Marks2Item_c.updateUI()
	local GUIHandle = 0
	local a = (Marks2Item_c.nowpage1-1)*4
	local itemNumber = 4
	local itemName = ""
	local _Handle = 0
	if Marks2Item_c.item_num >= 4 then 
		itemNumber = 4
	else
		itemNumber = Marks2Item_c.item_num
	end
	for i = 1, itemNumber do
		GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"item_name"..i)
		_Handle = CL:GetItemTemplateHandleByKeyName(Marks2Item_c.param1[Marks2Item_c.index][i+4*(Marks2Item_c.nowpage1-1)][1])
		if _Handle ~= 0 then
			if CL:GetItemTemplatePropByHandle(_Handle,1) then
				itemName = LuaRet
			end
		end
		if GUIHandle ~= 0 then
			GUI:EditSetTextM(GUIHandle,itemName)              --item名称显示
		end
		
		GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"itemctrl"..i)
		if GUIHandle ~= 0 then
			RDItemCtrlSetGUIDataPropByKeyName(GUIHandle,nil,Marks2Item_c.param1[Marks2Item_c.index][i+4*(Marks2Item_c.nowpage1-1)][1], 1, false)    --物品框填充
		end

		GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"get_btn"..i)               --兑换按钮设置
		if GUIHandle ~= 0 then
			if (Marks2Item_c.tb_score > Marks2Item_c.param1[Marks2Item_c.index][i+4*(Marks2Item_c.nowpage1-1)][3] or Marks2Item_c.tb_score == Marks2Item_c.param1[Marks2Item_c.index][i+4*(Marks2Item_c.nowpage1-1)][3]) and tonumber(Marks2Item_c.is_Existbag[i+a]) == 1 then
				GUI:WndSetTextM(GUIHandle,"兑换")
				if GUIHandle ~= 0 then
					GUI:WndSetEnableM(GUIHandle, true)
				end	
			else
				GUI:WndSetTextM(GUIHandle,"积分不足")
				if GUIHandle ~= 0 then
					GUI:WndSetEnableM(GUIHandle, false)
				end
			end
			if Marks2Item_c.BtnHandle == GUIHandle then                   --点击兑换按钮
				UI:Lua_SubmitForm("Marks2Item_s","getItem",Marks2Item_c.param1[Marks2Item_c.index][i+4*(Marks2Item_c.nowpage1-1)][1].."#"..tostring(Marks2Item_c.index))
				--msg("测试消息1："..Marks2Item_c.index)
				--msg("测试消息2："..Marks2Item_c.param1[Marks2Item_c.index][i+4*(Marks2Item_c.nowpage1-1)][1])			
			end
		end
		
		GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"item_text"..i)         --兑换所需消耗品及积分显示
		if GUIHandle ~= 0 then
			GUI:RichEditClear(GUIHandle)
			if Marks2Item_c.index < 5 then
				_Handle = CL:GetItemTemplateHandleByKeyName(Marks2Item_c.param1[Marks2Item_c.index][i+4*(Marks2Item_c.nowpage1-1)][2])
				if CL:GetItemTemplatePropByHandle(_Handle,1) then
					itemName = LuaRet
				end
				GUI:WndSetTextColorM(GUIHandle,MakeARGB(255, 228, 193, 159))
				GUI:EditSetTextM(GUIHandle,"消耗："..itemName.."  +  "..Marks2Item_c.param1[Marks2Item_c.index][i+4*(Marks2Item_c.nowpage1-1)][3].."宝藏积分")
				GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"item_name"..i)
			else
				GUI:WndSetTextColorM(GUIHandle,MakeARGB(255, 228, 193, 159))
				GUI:EditSetTextM(GUIHandle,"消耗："..Marks2Item_c.param1[Marks2Item_c.index][i+4*(Marks2Item_c.nowpage1-1)][3].."宝藏积分")
				GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"item_name"..i)
			end
		end
	end			

	Marks2Item_c.scoreUpdate(Marks2Item_c.tb_score) --显示玩家的探宝积分
	
	
	Marks2Item_c.BtnHandle = 0
end

function Marks2Item_c.scoreUpdate(score)
	GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"player_score")      --显示玩家的探宝积分
	if GUIHandle ~= 0 then 
		GUI:EditSetTextM(GUIHandle,tostring(score))
	end
	Marks2Item_c.tb_score = score
end



function Marks2Item_c.stable()

	local text5 = GUI:WndFindWindow(Marks2Item_c.WndHandle,"text5")
	if text5 ~=0 then
		GUI:RichEditAppendString(text5,"#SELECT#".."探宝赠送".."#SELECTEND#")	 --探宝链接
		GUI:WndRegistScript(text5, RDWndBaseCL_mouse_lbUp, "Marks2Item_c.openTB")
	end
	
	local page_text = GUI:WndFindWindow(Marks2Item_c.WndHandle,"page_text")   
	if page_text ~= 0 then
		GUI:RichEditAppendString(page_text,Marks2Item_c.nowpage1.."/"..Marks2Item_c.totalpage1)	  --页码显示
	end
	Marks2Item_c.btnEnable_set()
end


function Marks2Item_c.getParam(score,_isExistlist)  --更新兑换按钮
	local houseHandle = GetWindow(nil, "TreasureHouse_c")
	if houseHandle ~= 0 then
		TreasureHouse_c.SetBzScore(score)
	end
	Marks2Item_c.tb_score = score
	Marks2Item_c.is_Existbag = _isExistlist[Marks2Item_c.index]
	Marks2Item_c.updateUI()
end


function Marks2Item_c.fanye()         --翻页
	Marks2Item_c.btnEnable_set()
	local page_text = GUI:WndFindWindow(Marks2Item_c.WndHandle,"page_text")
	if page_text ~= 0 then
		GUI:RichEditClear(page_text)
		GUI:RichEditAppendString(page_text,Marks2Item_c.nowpage1.."/"..Marks2Item_c.totalpage1)
	end
	Marks2Item_c.del_widget()
	Marks2Item_c.updateUI()
end	

function Marks2Item_c.btnEnable_set()
	if Marks2Item_c.nowpage1 == 1 then
		local handle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"up_btn")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle, false)
		end
	else
		local handle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"up_btn")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle, true)
		end
	end
	
	if Marks2Item_c.nowpage1 == Marks2Item_c.totalpage1 then
		local handle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"down_btn")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle, false)
		end
	else
		local handle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"down_btn")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle, true)
		end
	end
end



function Marks2Item_c.up_btn()            --上一页
	if Marks2Item_c.nowpage1 > 1 then
		Marks2Item_c.nowpage1 = Marks2Item_c.nowpage1 - 1
		Marks2Item_c.item_num = Marks2Item_c.item_num + 4
	end
	Marks2Item_c.fanye()
end


function Marks2Item_c.dowm_btn()        --下一页
	if Marks2Item_c.item_num > 4 then
		Marks2Item_c.item_num = Marks2Item_c.item_num - 4
		Marks2Item_c.nowpage1 = Marks2Item_c.nowpage1 + 1
	end	
	Marks2Item_c.fanye()	
end


function Marks2Item_c.del_widget()     --刷新控件
	local del_item = {"itemctrl","item_btn","get_btn","item_name","item_text","item_name_bg","itemBack"}
	if Marks2Item_c.item_num < 4 then
		local GUIHandle = 0
		local a = 4 - Marks2Item_c.item_num
		for i = 1,a do
			for j = 1 ,#del_item do
				GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,del_item[j]..(i+Marks2Item_c.item_num))
				if GUIHandle ~=0 then
					GUI:WndSetVisible(GUIHandle, false)
				end
			end
		end
	else 
		for i = 1,4 do
			for j = 1 ,#del_item do
				GUIHandle = GUI:WndFindWindow(Marks2Item_c.WndHandle,del_item[j]..i)
				if GUIHandle ~=0 then
					GUI:WndSetVisible(GUIHandle, true)
				end
			end
		end
	end
end
	

function Marks2Item_c.update(_Handle)   --item_option按钮更新
	
	for i = 1 , 5 do 
		
		local handle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"opt_btn"..i)
		if handle ~= 0 then
			if handle == _Handle then
				ButtonSetIsActivePageBtn(Marks2Item_c.WndHandle,"opt_btn"..i,true)
			else 
				ButtonSetIsActivePageBtn(Marks2Item_c.WndHandle,"opt_btn"..i,false)	
			end
		end
	end
end


function Marks2Item_c.itemOpt(_Handle)                 --根据玩家点击的item传相应的参数
	local Is_true = ButtonGetIsActivePageBtn(_Handle)
	if not Is_true then
		Marks2Item_c.update(_Handle)
	else
		return 
	end
	Marks2Item_c.nowpage1 = 1

	Marks2Item_c.index = GUI:WndGetParam(_Handle)
	Marks2Item_c.totalpage1 = math.ceil(#Marks2Item_c.param1[Marks2Item_c.index]/4)
	Marks2Item_c.item_num = #Marks2Item_c.param1[Marks2Item_c.index]
	Marks2Item_c.is_Existbag = Marks2Item_c.isExistbag[Marks2Item_c.index]

	Marks2Item_c.del_widget()
	Marks2Item_c.fanye()
	
end



function Marks2Item_c.update1(_Handle)    --item 按钮更新
	local handle = 0
	for i = 1 , 4 do 	
		handle = GUI:WndFindWindow(Marks2Item_c.WndHandle,"item_btn"..i)
		if handle ~= 0 then
			if handle == _Handle then
				ButtonSetIsActivePageBtn(Marks2Item_c.WndHandle,"item_btn"..i,true)
			else 
				ButtonSetIsActivePageBtn(Marks2Item_c.WndHandle,"item_btn"..i,false)
			end
		end
	end
end


function Marks2Item_c.item_btn(_Handle)
	local Is_true = ButtonGetIsActivePageBtn(_Handle)
	if not Is_true then
		Marks2Item_c.update1(_Handle)
	end	
end


function Marks2Item_c.exchangeItem(_Handle)  --记录玩家所点击的按钮句柄
	Marks2Item_c.BtnHandle = _Handle
	Marks2Item_c.updateUI()
end


function Marks2Item_c.openTB(_Handle)   --探宝链接
	UI:Lua_SubmitForm("TreasureHouse_s","openTreasureHouse","")
end


function Marks2Item_c.setExchangeMsg(str) --全服兑换记录
	local j = 1
	local _Handle = 0
	local itemType = 0
	local shownText = 0
	for i = 1, 5 do
		shownText = GUI:WndFindWindow(Marks2Item_c.WndHandle,"shownText"..i)
		if shownText ~= 0 then
			GUI:RichEditClear(shownText)
		end
	end

	for i = 1, #str do
		local strs = strsplit(str[i], ":")
		local playerName = strs[1]
		local itemName = strs[2]
		_Handle = CL:GetItemTemplateHandleByKeyName(itemName)
		if CL:GetItemTemplatePropByHandle(_Handle,1) then
			itemName = LuaRet
		end
		if CL:GetItemTemplatePropByHandle(_Handle,3) then
			itemType = LuaRet
		end
		shownText = GUI:WndFindWindow(Marks2Item_c.WndHandle,"shownText"..j)		
		if shownText ~= 0 then
			if itemType == 1 then 
				GUI:RichEditAppendString(shownText, "#COLORCOLOR_BLUE#" .. playerName .. "#COLOREND#" .. "#COLORCOLOR_ORANGE#".." 兑换了 ".."#COLOREND#" .."#COLORCOLOR_RED#".. itemName .. "#COLOREND#".. "#COLORCOLOR_BROWN#" .. " 雄霸天下指日可待 ".. "#COLOREND#")	
			else
				GUI:RichEditAppendString(shownText, "#COLORCOLOR_BLUE#" .. playerName .. "#COLOREND#" .. "#COLORCOLOR_ORANGE#".." 兑换了 ".."#COLOREND#" .."#COLORCOLOR_BGREENG#".. itemName .. "#COLOREND#".. "#COLORCOLOR_BROWN#" .. " 雄霸天下指日可待 ".. "#COLOREND#")
			end
			j = j + 1
		end
	end
end


function Marks2Item_c.closeWnd()     --关闭按钮
	GUI:WndClose(Marks2Item_c.WndHandle)
end


function Marks2Item_c.cleartime()  --关闭定时器
	 CL:DelDelayTask(tonumber(Marks2Item_c.time_id)) 
	--UI:Lua_DelDelayTask(tonumber(Marks2Item_c.time_id))
end

Marks2Item_c.main()