RoleRein = {}
function RoleRein.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"RoleRein",0,0,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,16, 16)
	end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TitleImg",1805900011,296,8)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,62, 28)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
	_GUIHandle = GUI:ImageCreate(_Parent,"ReinBackImg",1805900170,35,56)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,592, 473)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ReinLevelImg1",1805900042,254,94)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,157, 31)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"LevelImg1",1805900043,405,95)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,22, 29)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"LevelImg2",0,419,95)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,22, 29)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"ReinBtn",1805900100,279,476)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "RoleRein.ReinB")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,132, 57)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ConsumePointImg",1805900018,279,413)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,130, 22)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"HavePointImg",1805900018,279,446)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,130, 22)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ToImg",1800000366,316,242)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,43, 58)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"NowValueNameEdit1",118,202,65,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:EditSetTextM(_GUIHandle,"物理攻击：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NowValueNameEdit2",118,228,65,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:EditSetTextM(_GUIHandle,"魔法攻击：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NowValueNameEdit3",118,254,65,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:EditSetTextM(_GUIHandle,"道术攻击：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NowValueNameEdit4",118,280,65,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:EditSetTextM(_GUIHandle,"物理防御：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NowValueNameEdit5",118,306,65,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:EditSetTextM(_GUIHandle,"魔法防御：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NowValueNameEdit6",118,332,65,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:EditSetTextM(_GUIHandle,"生命上限：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NowValueEdit1",184,202,80,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NowValueEdit2",184,228,80,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NowValueEdit3",184,254,80,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NowValueEdit4",184,280,80,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NowValueEdit5",184,306,80,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NowValueEdit6",184,332,80,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NextValueNameEdit1",399,202,65,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:EditSetTextM(_GUIHandle,"物理攻击：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NextValueNameEdit2",399,228,65,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:EditSetTextM(_GUIHandle,"魔法攻击：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NextValueNameEdit3",399,254,65,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:EditSetTextM(_GUIHandle,"道术攻击：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NextValueNameEdit4",399,280,65,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:EditSetTextM(_GUIHandle,"物理防御：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NextValueNameEdit5",399,306,65,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:EditSetTextM(_GUIHandle,"魔法防御：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NextValueNameEdit6",399,332,65,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:EditSetTextM(_GUIHandle,"生命上限：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NextValueEdit1",465,202,80,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NextValueEdit2",465,228,80,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NextValueEdit3",465,254,80,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NextValueEdit4",465,280,80,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NextValueEdit5",465,306,80,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NextValueEdit6",465,332,80,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"ConsumePointNameEdit",211,417,65,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:EditSetTextM(_GUIHandle,"修为消耗：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"HavePointNameEdit",211,450,65,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:EditSetTextM(_GUIHandle,"拥有修为：")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"ConvertPointBtn",1800000150,484,450)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "RoleRein.RoleReinPoint")
		GUI:WndSetTextM(_GUIHandle,"获得修为>>")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,84, 32)
		GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"ConsumePointEdit",274,417,140,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"HavePointEdit",274,450,140,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
    
	
	RoleRein.UIInit(_Parent)
end

--UI Logic Code Start

RoleRein.WndHandle = 0
RoleRein.Open = false
RoleRein.image = {1805900044,1805900045,1805900046,1805900047,1805900048,1805900049,1805900050,1805900051,1805900052,1805900043}
function RoleRein.UIInit(_Handle)
	RoleRein.WndHandle = _Handle
	RoleRein.Open = true
	
	UI:Lua_SubmitForm("页游转生表单","show_update","")
end

function RoleRein.update(info)
	RoleRein.attNow = info[1]
	RoleRein.attNext = info[2]
	RoleRein.level = info[3]
	RoleRein.job = info[4]
	RoleRein.repair = info[5]
	RoleRein.needrepair = info[6]
	local tabNow = RoleRein.getvalue(RoleRein.attNow)
	local tabNext = RoleRein.getvalue(RoleRein.attNext)
	EditSetText(RoleRein.WndHandle,"ConsumePointEdit",""..RoleRein.needrepair)
	EditSetText(RoleRein.WndHandle,"HavePointEdit",""..RoleRein.repair)
	if RoleRein.repair < RoleRein.needrepair then
		EditSetTextColor(RoleRein.WndHandle,"HavePointEdit",CL:MakeARGB(255, 255, 0, 0))
	else
		EditSetTextColor(RoleRein.WndHandle,"HavePointEdit",CL:MakeARGB(255, 255, 255, 255))
	end
	RoleRein.SetEdit(tabNow,1)
	RoleRein.SetEdit(tabNext,2)
	local level = tonumber(RoleRein.level)
	if level > 9 then
		local a = math.floor(level / 10)
		local b = level % 10
		if b == 0 then
			b = 10 
		end
		ImageSetImageID(RoleRein.WndHandle,"LevelImg1",RoleRein.image[a])
		ImageSetImageID(RoleRein.WndHandle,"LevelImg2",RoleRein.image[b])
	else
		if level == 0 then
			ImageSetImageID(RoleRein.WndHandle,"LevelImg1",RoleRein.image[10])
		else
			ImageSetImageID(RoleRein.WndHandle,"LevelImg1",RoleRein.image[level])
		end
	end	
end	

function RoleRein.SetEdit(tab,index)
	local id = {"NowValueEdit","NextValueEdit"}
	local a = 1 
	for i = 1 , 6 do 
		if i < 6 then
			EditSetText(RoleRein.WndHandle,""..id[tonumber(index)]..i,""..tab[a].." - "..tab[a + 1])
		else
			EditSetText(RoleRein.WndHandle,""..id[tonumber(index)]..i,""..tab[a])
		end	
		a = a + 2
	end
	
end	

function RoleRein.getvalue(tab)
	local value = {0,0,0,0,0,0,0,0,0,0,0}
	for k , v in pairs(tab) do 
		if k == "11" then
			value[1] = v
		elseif k == "10" then
			value[2] = v
		elseif k == "13" then
			value[3] = v
		elseif k == "12" then
			value[4] = v
		elseif k == "15" then
			value[5] = v
		elseif k == "14" then
			value[6] = v
		elseif k == "7" then
			value[7] = v
		elseif k == "6" then
			value[8] = v
		elseif k == "9" then
			value[9] = v
		elseif k == "8" then
			value[10] = v
		elseif k == "3" then
			value[11] = v								
		end
	end
	return value
end	

function RoleRein.ReinB(_Handle)
	if RoleRein.repair < RoleRein.needrepair then
		local _hand = GetWindow(RoleRein.WndHandle,"ConvertPointBtn" )
		window_msg_up(_hand, "修为不足，无法转生", -250,0,0, MakeARGB(255, 255, 0, 0) , 3)
		return ""
	end
	UI:Lua_SubmitForm("页游转生表单","zhuanshen","")
end
	
function RoleRein.msg_up(msg)
	local _hand = GetWindow(RoleRein.WndHandle,"ConvertPointBtn" )
	window_msg_up(_hand, msg, -250,0,0, MakeARGB(255, 255, 0, 0) , 3)
end

function RoleRein.RoleReinPoint(_Handle)
	local handle = GetWindow(RoleRein.WndHandle,"RoleReinPoint")
	if handle ~= 0 then
		GUI:WndClose(handle)
	else
		UI:Lua_OpenWindow(RoleRein.WndHandle, "RoleReinPoint.lua")
	end
end

function RoleRein.wndClose()
	RoleRein.Open = false
end

RoleRein.main()