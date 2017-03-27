WingWnd = {}
function WingWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	_Parent = GUI:WndCreateWnd(_Parent,"WingWnd",0,0,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,0, 0)
	end
	
	--大背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
		GUI:ImageSetAroundImage(_GUIHandle, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
	end
	
	--第二层背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage0",0,(_DeviceSizeX - 1076)/2,64)
	if _GUIHandle ~= 0 then
				GUI:WndSetSizeM(_GUIHandle, 1076, 446)

		GUI:ImageSetAroundImage(_GUIHandle, 1850700035, 1850700037, 1850700041, 1850700043, 1850700039, 1850700036, 1850700042, 1850700038, 1850700040)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,(_DeviceSizeX - 1076)/2 + 24,82)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,512, 354)
		GUI:ImageSetAroundImage(_GUIHandle, 1850900016, 1850900018, 1850900022, 1850900024, 1850900020, 1850900017, 1850900023, 1850900019, 1850900021)

	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,(_DeviceSizeX - 1076)/2 + 540,82)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,512, 354)
		GUI:ImageSetAroundImage(_GUIHandle, 1850900016, 1850900018, 1850900022, 1850900024, 1850900020, 1850900017, 1850900023, 1850900019, 1850900021)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"wing_Lefttitle",1850100038,(_DeviceSizeX - 1076)/2 + 385,20)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"wing_title",1801500083,(_DeviceSizeX - 1076)/2 + 500,24)
	if _GUIHandle ~= 0 then
	end
	
		_GUIHandle = GUI:ImageCreate(_Parent,"wing_Righttitle",1850100039,(_DeviceSizeX - 1076)/2 + 595,20)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"wing_edit",(_DeviceSizeX - 1076)/2 + 176,104,200,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:EditSetTextM(_GUIHandle,"羽翼名称 9阶")
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"wing_edit3",(_DeviceSizeX - 1076)/2 + 746,85,100,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:EditSetTextM(_GUIHandle,"下阶属性")
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"wing_edit2",(_DeviceSizeX - 1076)/2 + 120,350,100,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:EditSetTextM(_GUIHandle,"消耗：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"dangq_image",1852100036,(_DeviceSizeX - 1076)/2 + 645, 84)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:EditCreate(_Parent,"edit_atk",(_DeviceSizeX - 1076)/2 + 620,197,60,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:EditSetTextM(_GUIHandle,"攻击：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"edit_fan",(_DeviceSizeX - 1076)/2 + 620,240,80,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:EditSetTextM(_GUIHandle,"物防：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"edit_mo",(_DeviceSizeX - 1076)/2 + 620,283,80,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:EditSetTextM(_GUIHandle,"魔防：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"num_atk",(_DeviceSizeX - 1076)/2 + 678,198,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"999 - 999")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"num_fan",(_DeviceSizeX - 1076)/2 +678,241,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"999 - 999")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"num_mo",(_DeviceSizeX - 1076)/2 + 678, 284, 100, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"999 - 999")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

		_GUIHandle = GUI:EditCreate(_Parent,"num_atk_next",(_DeviceSizeX - 1076)/2 + 780, 198, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,48,171,104))
		GUI:EditSetTextM(_GUIHandle,"(+999 - 999)")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"num_fan_next",(_DeviceSizeX - 1076)/2 +780, 241, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,48,171,104))
		GUI:EditSetTextM(_GUIHandle,"(+999 - 999)")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"num_mo_next",(_DeviceSizeX - 1076)/2 + 780, 284, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,48,171,104))
		GUI:EditSetTextM(_GUIHandle,"(+999 - 999)")
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"yu_back",3000100500,(_DeviceSizeX - 1076)/2 + 83, 164)
	if _GUIHandle ~= 0 then
		GUI:ImageSetFitSize(_GUIHandle, true)
		
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"yu_image",1891410018,(_DeviceSizeX - 1076)/2 + 337, 328)
	if _GUIHandle ~= 0 then
		GUI:ImageSetFitSize(_GUIHandle, true)
		GUI:WndSetSizeM(_GUIHandle,64, 64)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"yu_edit",(_DeviceSizeX - 1076)/2 + 409, 360, 60, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"20/20")
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"gold_image",1850300005,(_DeviceSizeX - 1076)/2 + 203, 356)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:EditCreate(_Parent,"gold_edit",(_DeviceSizeX - 1076)/2 + 245, 359, 100, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"99999")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"jindut_back",1802300003,(_DeviceSizeX - 1076)/2 + 180, 313)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"jindut",1802300004,(_DeviceSizeX - 1076)/2 + 197,317)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, true)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"peiy_edit",(_DeviceSizeX - 1076)/2 + 252, 312, 50, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"0")
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end

	_GUIHandle = GUI:CheckBoxCreate(_Parent,"zid",1850000272," 材料不足自动购买", (_DeviceSizeX - 1076)/2 + 165,386)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WingWnd.GetCheckState")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"begin_button",1850000307,(_DeviceSizeX - 1076)/2 + 735,445)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WingWnd.begin")
		GUI:WndSetTextM(_GUIHandle,"开始培养")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Auto_button",1850000307,(_DeviceSizeX - 1076)/2 + 875,445)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WingWnd.Auto")
		GUI:WndSetTextM(_GUIHandle,"自动培养")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"TRAIN_BTN_PROMPT",1804600019,552,436)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"培养翅膀")
		GUI:WndSetVisible(_GUIHandle, false)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"TRAIN_BTN_PROMPT",1850000307,(_DeviceSizeX - 1076)/2 + 70,445)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"规则")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WingWnd.tips")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 70, 8)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WingWnd.closeWnd")
	end
	
	WingWnd.UIInit(_Parent)
end

--UI Logic Code Start

WingWnd.WndHandle = 0
WingWnd.wing = {}
WingWnd.yug = {} --羽根
WingWnd.gold = {}
WingWnd.pei = {}
WingWnd.level = 0
WingWnd.peiy = 0
WingWnd.yugnum = 0
WingWnd.DelayTaskId = nil
function WingWnd.UIInit(_Handle)
	msg("执行到了WingWnd.UIInit")
	WingWnd.WndHandle = _Handle 
	--CenterWnd(WingWnd.WndHandle)
	--GUI:WndRegistScript(_Handle, RDWndBaseCL_wnd_close, "WingWnd.Winclose")
	--local _handle =  GetWindow(_Handle,"zid",nil)
	--GUI:WndSetHint(_handle, "羽毛30元宝每根 ")
	UI:Lua_SubmitForm("翅膀升阶表单", "main", "")
end

function WingWnd.closeWnd(_handle)
	GUI:WndClose(WingWnd.WndHandle)
end

function WingWnd.GetCheckState(_GUIhandle)
	local _Istrue = GUI:CheckBoxGetCheck(_GUIhandle)
	if _Istrue then
		WndDelEffect(_GUIhandle)
	else
		WndAddEffect(WingWnd.WndHandle, "zid", 3020100000, -2, -2, 100, 0)
	end
end

function wing_data(data)
	msg("执行到了wing_data")
	WingWnd.wing = data[1]
	WingWnd.yug = data[2]
	WingWnd.gold = data[3]
	WingWnd.pei = data[4]
	WingWnd.level = data[5]
	WingWnd.peiy = data[6]
	WingWnd.yugnum  = data[7]
	WingWnd.dc = data[8]
	wing_update(WingWnd.level,WingWnd.peiy)
end

function wing_update(inde,peiy)
	msg("执行到了wing_update")
	if inde < 5 then
		WndAddEffect(WingWnd.WndHandle, "zid", 3020100000, -2, -2, 100, 0)
		WndAddEffect(WingWnd.WndHandle, "begin_button", 3020100700, -13, -8, 100, 0)
	end
	
	local tab_jie = {"零阶","一阶","二阶","三阶","四阶","五阶","六阶","七阶","八阶","九阶","十阶"}
	local tab = {}
	local index = inde + 1
	local temp1 = 0 

	if index == #WingWnd.wing then                 --当翅膀顶级时
		local _handle =  GetWindow(WingWnd.WndHandle,"level_btn1",nil)
		GUI:WndSetTextM(_handle, tab_jie[index])
		UI:Lua_Log("执行到了wing_update"..tab_jie[index])
		local temp = CL:GetItemTemplateHandleByKeyName(WingWnd.wing[index])
		local name = ""
		if CL:GetItemTemplatePropByHandle(temp,ITEM_PROP_NAME) then
			name = LuaRet
		end
		local _handle =  GetWindow(WingWnd.WndHandle,"wing_edit",nil)
		EditSetText(_handle,nil,name)
		local image = 0
		if CL:GetItemTemplatePropByHandle(temp,14) then
			image = LuaRet
		end
		ImageSetImageID(WingWnd.WndHandle,"dangq_image",image)
		UI:Lua_Log("执行到了设置羽毛图片。ID = "..image)
		local _handle =  GetWindow(WingWnd.WndHandle,"dangq_image",nil)
		GUI:ImageSetDrawCenter(_handle,true)
		
		local tab1 = {{80,81},{76,77},{78,79}}
		local ms = {"攻击","物防","魔防"}
		local str = ""
		for i = 1 , 3 do 
			local mi = 0 
			local ma = 0
			if CL:GetItemTemplatePropByHandle(temp,tab1[i][1]) then
				ma = LuaRet
			end
			if CL:GetItemTemplatePropByHandle(temp,tab1[i][2]) then
				mi = LuaRet
			end
			local _handle =  GetWindow(WingWnd.WndHandle,"edit"..i,nil)
			EditSetText(_handle,nil,mi.." - "..ma)
		end

		local tab_visible = {"gold_edit","yug_num","yug_one","level_edit2","wing_edit2","jindut","wing_edit3","edit_pei","peiy_edit","jindut_back","edit_miaos","edit_miaos1","yu_image","gold_image","zid","begin_button","Auto_button"}
		for i=1 ,#tab_visible do 
			local _hand = GetWindow(WingWnd.WndHandle,tab_visible[i],nil)
			if _hand ~= 0 then 
				GUI:WndSetVisible(_hand,false)
			end 
		end
		return 
	end
	
	local _handle =  GetWindow(WingWnd.WndHandle,"level_btn1",nil)
	GUI:WndSetTextM(_handle, tab_jie[index])
	
	local _handle =  GetWindow(WingWnd.WndHandle,"level_btn2",nil)
	GUI:WndSetTextM(_handle, tab_jie[index + 1])
	
	local _handle =  GetWindow(WingWnd.WndHandle,"yug_one",nil)
	EditSetText(_handle,nil,"/ "..WingWnd.yug[index])
	
	local _handle =  GetWindow(WingWnd.WndHandle,"gold_edit",nil)
	EditSetText(_handle,nil,""..WingWnd.gold[index])
	
	local temp = CL:GetItemTemplateHandleByKeyName(WingWnd.wing[index])
	local name = ""
	if CL:GetItemTemplatePropByHandle(temp,ITEM_PROP_NAME) then
		name = LuaRet
	end
	local _handle =  GetWindow(WingWnd.WndHandle,"wing_edit",nil)
	EditSetText(_handle,nil,name)
	
	local image = 0
	if CL:GetItemTemplatePropByHandle(temp,14) then
		image = LuaRet
	end
	
	UI:Lua_Log("2222执行到了设置羽毛图片。ID = "..image)
	ImageSetImageID(WingWnd.WndHandle,"dangq_image",image)
	local image1 = 0
	if index < #WingWnd.wing then
	
		temp1 = CL:GetItemTemplateHandleByKeyName(WingWnd.wing[index + 1])
		UI:Lua_Log("GetItemTemplateHandleByKeyName"..WingWnd.wing[index + 1]..", index = "..index..", temp1 = "..temp1) 
		local name1 = ""
		if CL:GetItemTemplatePropByHandle(temp1,ITEM_PROP_NAME) then
			name1 = LuaRet
		end
		local _handle1 =  GetWindow(WingWnd.WndHandle,"wing_edit2",nil)
		EditSetText(_handle1,nil,name1)
		UI:Lua_Log("name1"..name1..", _handle1 = ".._handle1)
		if CL:GetItemTemplatePropByHandle(temp1,14) then
			image1 = LuaRet
		end
	else
		image1 = 1802300006
	end
	local tab1 = {{80,81},{76,77},{78,79}}
	local ms = {"攻击","物防","魔防"}
	local str = GetTipBegin()
	for i = 1 , 3 do 
		local mi = 0 
		local ma = 0
		if CL:GetItemTemplatePropByHandle(temp,tab1[i][1]) then
			ma = LuaRet
		end
		if CL:GetItemTemplatePropByHandle(temp,tab1[i][2]) then
			mi = LuaRet
		end
		local _handle =  GetWindow(WingWnd.WndHandle,"edit"..i,nil)
		EditSetText(_handle,nil,mi.." - "..ma)
		if temp1 ~= 0 then 
			if CL:GetItemTemplatePropByHandle(temp1,tab1[i][1]) then
				ma = LuaRet
			end
			if CL:GetItemTemplatePropByHandle(temp1,tab1[i][2]) then
				mi = LuaRet
			end
			_handle =  GetWindow(WingWnd.WndHandle,"Nextedit"..i,nil)
			EditSetText(_handle,nil,mi.." - "..ma)
		end
	end
	peiy_update(index,peiy,WingWnd.yugnum)
end

function peiy_update(inde,peiy,yugnum)
    local index = tonumber(inde)
    local _handle =  GetWindow(WingWnd.WndHandle,"yug_num",nil)
    EditSetText(_handle,nil,""..tostring(yugnum))
    
    local _handle = GetWindow(WingWnd.WndHandle,"peiy_edit",nil)
    EditSetText(_handle,nil,tostring(peiy))
    local _jindutImage = GetWindow(WingWnd.WndHandle,"jindut",nil)
    if _jindutImage ~= 0 then
        local value = 0
        if tonumber(peiy) > 0 then
            local a = tonumber(peiy)
            local b = tonumber(WingWnd.pei[index])
            value = a/b
        end
        if value > 0 then
            GUI:WndSetVisible(_jindutImage,true)
            GUI:ImageSetDrawRect(_jindutImage,0,value,0,1)
        else
            GUI:WndSetVisible(_jindutImage,false)
        end
    end 
end 

function WingWnd.HidePrompt()
    local handle = GetWindow(WingWnd.WndHandle, "TRAIN_BTN_PROMPT")
    if handle ~= 0 then
        GUI:WndSetVisible(handle,false)
    end
end

function WingWnd.begin(_handle)
    local _Istrue = false
    local _GUIhandle = GetWindow(WingWnd.WndHandle,"zid",nil)
    if GUI:CheckBoxGetCheck(_GUIhandle) then
        _Istrue = LuaRet
    end
    local index = 0 
    if _Istrue then
        index = 1
    end
    UI:Lua_SubmitForm("翅膀升阶表单", "begin", ""..index)
end 


function WingWnd.Auto(_handle)
    
    local _Istrue = false
    local _GUIhandle = GetWindow(WingWnd.WndHandle,"zid",nil)
    if GUI:CheckBoxGetCheck(_GUIhandle) then
        _Istrue = LuaRet
    end
    local index = 0 
    if _Istrue then
        index = 1
    end
    local str = GUI:WndGetText(_handle)
    if str == "自动培养" then
        GUI:WndSetTextM(_handle,"停止培养")
    else
        GUI:WndSetTextM(_handle,"自动培养")
    end
    UI:Lua_SubmitForm("翅膀升阶表单", "Auto_begin", ""..index)
    
end 

function WingWnd.msgbox()
    luaMsgBox.new("元宝", "很抱歉，您的元宝不足", {"前往充值", "取消"}, {"WingWnd.chongz", "WingWnd.out"}, "")
end

function WingWnd.chongz(h)
	CL:OpenUrlUseIEByType(3)
	local parentHandle = GUI:WndGetParentM(h)
	if parentHandle ~= 0 then GUI:WndClose(parentHandle) end
end

function WingWnd.out(h)
	local parentHandle = GUI:WndGetParentM(h)
	if parentHandle ~= 0 then GUI:WndClose(parentHandle) end
end

function WingWnd.msg_up(str)
	local _handle = GUI:WndFindChildM(WingWnd.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, str)
	end
	if WingWnd.DelayTaskId ~= nil then
		CL:DelDelayTask(WingWnd.DelayTaskId)
		WingWnd.DelayTaskId = nil
	end
	WingWnd.DelayTaskId = CL:AddDelayTask("WingWnd.clear()", 3000, 1)
end 

function WingWnd.clear()
	local _handle = GUI:WndFindChildM(WingWnd.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, "")
	end
end


function WingWnd.Changetext()
	local _GUIhandle = GetWindow(WingWnd.WndHandle,"Auto_button",nil)
	GUI:WndSetTextM(_GUIhandle,"自动培养")
end

function WingWnd.Winclose()
	UI:Lua_SubmitForm("翅膀升阶表单", "WinClose", "")
end

WingWnd.main()