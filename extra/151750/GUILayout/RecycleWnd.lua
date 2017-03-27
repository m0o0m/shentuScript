Recycle = {}

local color = {}
color.text1 = GUI:MakeARGB(255,243,185,117)
color.text2 = GUI:MakeARGB(255,198,192,163)
color.white =  GUI:MakeARGB(255,255,255,255)
color.green = GUI:MakeARGB(255,55,181,111)
color.blue = GUI:MakeARGB(255,0,128,255)
color.red = GUI:MakeARGB(255,255,0,0)
color.purple = GUI:MakeARGB(255,128,0,255)
color.orange = GUI:MakeARGB(255,255,125,0)

function Recycle.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()
	local _GUIHandle = 0

	_Parent = GUI:WndCreateWnd(_Parent,"Recycle",0,0,0)
	if _Parent ~= 0 then
		GUI:ImageSetAroundImage(_Parent, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
		GUI:WndSetSizeM(_Parent,_DeviceSizeX, _DeviceSizeY)
		GUI:WndSetMoveWithLBM(_Parent)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_1",0,30,63)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle,1850700035,1850700037,1850700041,1850700043,1850700039,1850700036,1850700042,1850700038,1850700040)
		GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX-60, _DeviceSizeY-193)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"GUI_HEAD",555,15,80,20)
	if _GUIHandle ~= 0 then 
		GUI:EditSetTextM(_GUIHandle,"回 收")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 242, 186, 118))
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_HEAD_LEFT",1850100038,445,15)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_HEAD_RIGHT",1850100039,615,15)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX-60,8)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Recycle.Close")
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"Right",0,571,82)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle,1850700026,1850700028,1850700032,1850700034,1850700030,1850700027,1850700033,1850700029,1850700031)
		GUI:WndSetSizeM(_GUIHandle,514, 342)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"Left",0,51,82)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle,1850700026,1850700028,1850700032,1850700034,1850700030,1850700027,1850700033,1850700029,1850700031)
		GUI:WndSetSizeM(_GUIHandle,514, 342)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"Left_Head_Back",1850500021,110,83)
	if _GUIHandle ~= 0 then
		
	end

	_GUIHandle = GUI:EditCreate(_Parent,"Left_Head",280,90,80,20)
	if _GUIHandle ~= 0 then 
		GUI:EditSetTextM(_GUIHandle,"背 包")
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 242, 186, 118))
	end 

	
	Recycle.DetailWnd = GUI:WndCreateWnd(_Parent,"DetailWnd",0,630,83)
	if Recycle.DetailWnd ~= 0 then
		GUI:WndSetVisible(Recycle.DetailWnd, false)
	end
	
	_GUIHandle = GUI:ImageCreate(Recycle.DetailWnd,"Right_Head_Back",1850500021,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end


	_GUIHandle = GUI:EditCreate(Recycle.DetailWnd,"Right_Head",14,13,400,20)
	if _GUIHandle ~= 0 then 
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:EditSetTextM(_GUIHandle,"铂金戒指")
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 242, 186, 118))
	end 

	_GUIHandle = GUI:ItemCtrlCreate(Recycle.DetailWnd,"ItemE",1850400004,-9,75,66,66)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		RDItemCtrlSetGUIDataPropByKeyName(Recycle.DetailWnd, "ItemE", "霸业神剑", 0, false)
	end

	_GUIHandle = GUI:EditCreate(Recycle.DetailWnd,"Type",90,80,80,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"类型:")
		GUI:WndSetTextColorM(_GUIHandle, 4294573201)
	end 

	_GUIHandle = GUI:EditCreate(Recycle.DetailWnd,"E_name",150,80,80,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"戒指")
		GUI:WndSetTextColorM(_GUIHandle, 4294573201)
	end 

	_GUIHandle = GUI:EditCreate(Recycle.DetailWnd,"E_bind",200,80,80,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 52, 164, 99))
	end 

	_GUIHandle = GUI:EditCreate(Recycle.DetailWnd,"E_job",90,122,80,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"职业:")
		GUI:WndSetTextColorM(_GUIHandle, 4294573201)
	end 

	_GUIHandle = GUI:EditCreate(Recycle.DetailWnd,"E_job_num",150,122,80,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"战士")
		GUI:WndSetTextColorM(_GUIHandle, 4294573201)
	end

	_GUIHandle = GUI:EditCreate(Recycle.DetailWnd,"E_level",255,122,80,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"等级:")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, 4294573201)
	end

	_GUIHandle = GUI:EditCreate(Recycle.DetailWnd,"E_level_num",310,122,80,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"99")
		GUI:WndSetTextColorM(_GUIHandle, 4294573201)
	end

	_GUIHandle = GUI:RichEditCreate(Recycle.DetailWnd,"Basic_Info",0,175,400,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Re_Euip_1",1850000307,819,436)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"批量回收")
		GUI:WndSetTextColorM(_GUIHandle, color.text1)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Recycle.Show_RecycleAllWnd")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Re_Euip_2",1850000307,939,436)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"回收")
		GUI:WndSetTextColorM(_GUIHandle, color.text1)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Recycle.RecycleConfirm")
	end

	-------批量回收弹框start--------------------
	local _Handle = GUI:ImageCreate(_Parent,"Recycle_All_Wnd", 0, 575, 108)
	if _Handle ~= 0 then
		GUI:WndSetVisible(_Handle, false)
		GUI:ImageSetAroundImage(_Handle,1850600070,1850600072,1850600076,1850600078,1850600074,1850600071,1850600077,1850600073,1850600075)
		GUI:WndSetSizeM(_Handle,217, 429)
		GUI:WndSetMoveWithLBM(_Handle)
	end

	_GUIHandle = GUI:ImageCreate(_Handle,"BgImage", 0, 16, 19)
	if _GUIHandle ~= 0 then 
		GUI:ImageSetAroundImage(_GUIHandle,1850900016,1850900018,1850900022,1850900024,1850900020,1850900017,1850900023,1850900019,1850900021)
		GUI:WndSetSizeM(_GUIHandle, 186, 328)
	end

	_GUIHandle = GUI:ButtonCreate(_Handle,"Sure",1850000307,55,360)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"确定")
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Recycle.RecycleEquip")
		GUI:WndSetTextColorM(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:CheckBoxCreate(_Handle,"CheckBox1",1850000272,"白色装备",42,33)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 1)
	end

	_GUIHandle = GUI:CheckBoxCreate(_Handle,"CheckBox2",1850000272,"绿色装备",42,83)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetTextColorM(_GUIHandle, color.green)
	end

	_GUIHandle = GUI:CheckBoxCreate(_Handle,"CheckBox3",1850000272,"蓝色装备",42,133)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetTextColorM(_GUIHandle, color.blue)
	end

	_GUIHandle = GUI:CheckBoxCreate(_Handle,"CheckBox4",1850000272,"紫色装备",42,183)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetTextColorM(_GUIHandle, color.purple)
	end

	_GUIHandle = GUI:CheckBoxCreate(_Handle,"CheckBox5",1850000272,"橙色装备",42,233)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndSetTextColorM(_GUIHandle, color.orange)
	end

	_GUIHandle = GUI:ImageCreate(_Handle,"line",1851300000,31,283)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:CheckBoxCreate(_Handle,"CheckBox6",1850000272,"红色装备",42,300)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndSetTextColorM(_GUIHandle, color.red)
	end

	-------批量回收弹框end--------------------
	Recycle.UIInit(_Parent)
end

Recycle.ClipWndHandle = 0
Recycle.nowIndex = -1
Recycle.tSelItems = {}--用于记录选中哪些
--UI Logic Code Start
function Recycle.UIInit(_Handle)
	Recycle.WndHandle = _Handle
	local ClipWndHandle = GUI:WndCreateWnd(_Handle, "PackageItemList", 0, 120, 135)
	if ClipWndHandle ~= 0 then
		GUI:WndSetFlagsM(ClipWndHandle, flg_wndBase_useBkBuffer)
		GUI:WndSetSizeM(ClipWndHandle, 425, 255)
		Recycle.ClipWndHandle = ClipWndHandle
	end
	Recycle.List()
end

function Recycle.RecycleEquip()
	local tbl = {}
	for i = 1, 6 do
		local _GUIHandle = GetWindow(Recycle.WndHandle, "Recycle_All_Wnd,CheckBox"..i)
		if _GUIHandle ~= 0 then
			tbl[i] = GUI:CheckBoxGetCheck(_GUIHandle)
		end
	end
	UI:Lua_SubmitForm("手游装备回收表单", "recycleALL", serialize(tbl))
end

function Recycle.Show_RecycleAllWnd(_Handle)
	if GUI:ButtonGetIsActivePageBtn(_Handle) then
		GUI:ButtonSetIsActivePageBtn(_Handle, false)
		local _GUIHandle = GUI:WndFindWindow(Recycle.WndHandle, "Recycle_All_Wnd")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
		end
	else
		GUI:ButtonSetIsActivePageBtn(_Handle, true)
		local _GUIHandle = GUI:WndFindWindow(Recycle.WndHandle, "Recycle_All_Wnd")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, true)
		end
	end
end



function Recycle.List()
	local tbl = {} --所有道具表
	Recycle.tEquip = {} --装备GUID表
	Recycle.tSelItems = {} --选中装备记录表
	if CL:GetPackageItemGUIDList() then
		tbl = LuaRet
		for i = 1, #tbl do
			if CL:GetItemEntityPropByGUID(tbl[i], ITEM_PROP_TYPE) then
				if LuaRet == 1 then
					if CL:GetItemEntityPropByGUID(tbl[i], ITEM_PROP_SUBTYPE) then
						if LuaRet < 10 and LuaRet ~= 5 and LuaRet ~= 12 and LuaRet ~= 15 then
							Recycle.tEquip[#Recycle.tEquip + 1] = tbl[i]
						end
					end
				end
			end
		end
	end
	local row = math.ceil(#Recycle.tEquip/5)
	local index = 1
	for i = 1, row do
		for j = 1, 5 do
			if Recycle.tEquip[index] ~= nil then
				Recycle.tSelItems[index] = 0
				local _GUIHandle = GUI:ItemCtrlCreate(Recycle.ClipWndHandle,"Item"..index,1850400004, (j-1)*80, (i-1)*80,66,66)
				if _GUIHandle ~= 0 then
					RDItemCtrlSetGUIDataPropByGUID(Recycle.ClipWndHandle, "Item"..index, Recycle.tEquip[index])
				end
				_GUIHandle = GUI:WndCreateWnd(Recycle.ClipWndHandle,"Cover"..index, 0, (j-1)*80, (i-1)*80)
				if _GUIHandle ~= 0 then
					GUI:WndSetSizeM(_GUIHandle, 66,66)
					GUI:WndSetParam(_GUIHandle, index)
					GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Recycle.selectItem")
					_GUIHandle = GUI:ImageCreate(_GUIHandle, "HighLight", 1850400005, 4, 4)
					if _GUIHandle ~= 0 then
						GUI:WndSetEnableM(_GUIHandle, false)
						GUI:WndSetVisible(_GUIHandle, false)
						_GUIHandle = GUI:ImageCreate(_GUIHandle, "Sign", 1851300001, 22, 24)
						if _GUIHandle ~= 0 then
							GUI:WndSetEnableM(_GUIHandle, false)
						end
					end
				end
				index = index + 1
			else
				break
			end
		end
	end
end

function Recycle.selectItem(_Handle)
	local tColor = {["WHITE"] = color.white, ["GREENG"] = color.green, ["BLUE"] = color.blue, ["RED"] = color.red, ["PURPLE"] = color.purple, ["ORANGE"] = color.orange}
	GUI:WndSetVisible(Recycle.DetailWnd, true)
	local param = tonumber(GUI:WndGetParam(_Handle))
	local _GUIHandle = GUI:WndFindWindow(_Handle, "HighLight")
	if _GUIHandle ~= 0 then
		if GUI:WndGetVisible(_GUIHandle) then
			GUI:WndSetVisible(_GUIHandle, false)
			Recycle.tSelItems[param] = 0
		else
			GUI:WndSetVisible(_GUIHandle, true)
			Recycle.tSelItems[param] = 1
		end
	end

	--填充右边界面
	_GUIHandle = GUI:WndFindWindow(Recycle.DetailWnd, "Basic_Info")
	if _GUIHandle ~= 0 then
		GUI:RichEditClear(_GUIHandle)
	end
	RDItemCtrlSetGUIDataPropByGUID(Recycle.DetailWnd, "ItemE", Recycle.tEquip[param])
	if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_SUBTYPE) then
		local sub_type = LuaRet
		_GUIHandle = GUI:WndFindWindow(Recycle.DetailWnd, "E_name")
		if _GUIHandle ~= 0 then
			if sub_type == 1 then
				GUI:EditSetTextM(_GUIHandle, "武器")
			elseif sub_type == 2 then
				GUI:EditSetTextM(_GUIHandle, "头盔")
			elseif sub_type == 3 then
				GUI:EditSetTextM(_GUIHandle, "护腕")
			elseif sub_type == 4 then
				GUI:EditSetTextM(_GUIHandle, "衣服")
			elseif sub_type == 6 then
				GUI:EditSetTextM(_GUIHandle, "鞋子")
			elseif sub_type == 7 then
				GUI:EditSetTextM(_GUIHandle, "腰带")
			elseif sub_type == 8 then
				GUI:EditSetTextM(_GUIHandle, "项链")
			elseif sub_type == 9 then
				GUI:EditSetTextM(_GUIHandle, "戒指")
			elseif sub_type == 18 then
				GUI:EditSetTextM(_GUIHandle, "吊坠")
			end
		end
	end

	if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_ENTITY_IS_BOUND) then
		if LuaRet then
			_GUIHandle = GUI:WndFindWindow(Recycle.DetailWnd, "E_bind")
			if _GUIHandle ~= 0 then
				GUI:EditSetTextM(_GUIHandle, "(绑定)")
			end
		else
			_GUIHandle = GUI:WndFindWindow(Recycle.DetailWnd, "E_bind")
			if _GUIHandle ~= 0 then
				GUI:EditSetTextM(_GUIHandle, "(非绑定)")
			end
		end
	end
	local job = 0
	if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_JOB) then
		job = LuaRet
		_GUIHandle = GUI:WndFindWindow(Recycle.DetailWnd, "E_job_num")
		if _GUIHandle ~= 0 then
			if job == 1 then
				GUI:EditSetTextM(_GUIHandle, "战士")
			elseif job == 2 then
				GUI:EditSetTextM(_GUIHandle, "法师")
			elseif job == 3 then
				GUI:EditSetTextM(_GUIHandle, "道士")
			else
				GUI:EditSetTextM(_GUIHandle, "无限制")
			end
		end
	end
	if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_LEVEL) then
		_GUIHandle = GUI:WndFindWindow(Recycle.DetailWnd, "E_level_num")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, ""..LuaRet)
		end
	end
	if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_NAME) then
		local name = LuaRet
		_GUIHandle = GUI:WndFindWindow(Recycle.DetailWnd, "Right_Head")
		if _GUIHandle ~= 0 then
			if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_EQUIP_REFINELEVEL) then
				local refineLevel = LuaRet
				if refineLevel ~= 0 then
					GUI:EditSetTextM(_GUIHandle, name.." + "..refineLevel)
				else
					GUI:EditSetTextM(_GUIHandle, name)
				end
				if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_COLOR) then
					msg(LuaRet)
					if tColor[LuaRet] ~= nil then
						GUI:WndSetTextColorM(_GUIHandle, tColor[LuaRet])
					end
				end
			end
		end
	end

	if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_MAXPHYATK) then
		local maxAtk = LuaRet
		if maxAtk ~= 0 then
			_GUIHandle = GUI:WndFindWindow(Recycle.DetailWnd, "Basic_Info")
			if _GUIHandle ~= 0 then
				if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_MINPHYATK) then
					GUI:RichEditAppendString(_GUIHandle, "物攻："..LuaRet.." - "..maxAtk.."\n")
				end
			end
		end
	end
	if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_MAXMAGATK) then
		local max = LuaRet
		if max ~= 0 then
			_GUIHandle = GUI:WndFindWindow(Recycle.DetailWnd, "Basic_Info")
			if _GUIHandle ~= 0 then
				if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_MINMAGATK) then
					GUI:RichEditAppendString(_GUIHandle, "魔攻："..LuaRet.." - "..max.."\n")
				end
			end
		end
	end
	if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_MAXTAOATK) then
		local max = LuaRet
		if max ~= 0 then
			_GUIHandle = GUI:WndFindWindow(Recycle.DetailWnd, "Basic_Info")
			if _GUIHandle ~= 0 then
				if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_MINTAOATK) then
					GUI:RichEditAppendString(_GUIHandle, "道攻："..LuaRet.." - "..max.."\n")
				end
			end
		end
	end
	if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_MAXPHYDEF) then
		local max = LuaRet
		if max ~= 0 then
			_GUIHandle = GUI:WndFindWindow(Recycle.DetailWnd, "Basic_Info")
			if _GUIHandle ~= 0 then
				if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_MINPHYDEF) then
					GUI:RichEditAppendString(_GUIHandle, "物防："..LuaRet.." - "..max.."\n")
				end
			end
		end
	end
	if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_MAXMAGDEF) then
		local max = LuaRet
		if max ~= 0 then
			_GUIHandle = GUI:WndFindWindow(Recycle.DetailWnd, "Basic_Info")
			if _GUIHandle ~= 0 then
				if CL:GetItemEntityPropByGUID(Recycle.tEquip[param], ITEM_PROP_MINMAGDEF ) then
					GUI:RichEditAppendString(_GUIHandle, "魔防："..LuaRet.." - "..max.."\n")
				end
			end
		end
	end
end

function Recycle.RecycleConfirm()
	MessageBox(1, "确定要回收选中装备吗？", "Recycle.RecycleSubmit()", nil, false)
end

function Recycle.RecycleSubmit()
	local tbl = {} --选中的装备GUID表
	for i =1, #Recycle.tSelItems do
		if Recycle.tSelItems[i] == 1 then
			if UI:Lua_GUID2Str(Recycle.tEquip[i]) then
				tbl[#tbl + 1] = LuaRet
			end
		end
	end
	if #tbl ~= 0 then
		UI:Lua_SubmitForm("手游装备回收表单", "recycle_SelectEquip", serialize(tbl))
	end
end

function Recycle.Close()
	GUI:WndClose(Recycle.WndHandle)
end

function Recycle.reGenerate()
	--重新填充装备列表
	if Recycle.ClipWndHandle ~= nil then
		GUI:WndDlgClear(Recycle.ClipWndHandle)
	end
	Recycle.List()
end

Recycle.main()