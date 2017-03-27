Transmit = {}
function Transmit.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = GUI:WndCreateWnd(_Parent,"transmit",1806100012,332,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetMoveWithLBM(_GUIHandle)
		GUI:WndSetSizeM(_GUIHandle, 361, 524)
		GUI:WndSetIsESCClose(_GUIHandle,true)
		GUI:WndSetMagicUI(_GUIHandle, 3)
		CenterWnd(_GUIHandle)
	end
	
	local _Handle = GUI:ImageCreate(_GUIHandle, "title", 1805500014, 131, 14)
	if _Handle ~= 0 then
		GUI:WndSetEnableM(_Handle,false)
	end
	
	
	_Handle = GUI:ButtonCreate(_GUIHandle, "closeBtn", 1805900080, 328, 3)	
	if _Handle ~= 0 then GUI:WndRegistScript(_Handle, RDWndBaseCL_mouse_lbClick, "Transmit.Close") end

	_Handle = GUI:ImageCreate(_GUIHandle, "image1", 1800600030, 166, 80)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_Handle,false)
	end
	_Handle = GUI:ImageCreate(_GUIHandle, "image2", 1800600031, 148, 145)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_Handle,false)
	end
	_Handle = GUI:ImageCreate(_GUIHandle, "image3", 1800600032, 148, 397)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_Handle,false)
	end

	local name_tab = {"新手村","巫山城","龙城","神歌城","毒 虫 洞(30级)","食人洞穴(30级)","天荒寺庙(40级)","邪    庙(40级)","赤炎禁地(50级)","牛 魔 洞(60级)","天魔石窟(70级)","流 沙 洞(70级)","镇魔禁地(转 1)","蛮 荒 城(转 1)","沙漠地宫(转 2)","铁血魔宫(转 2)","玄 冰 洞(转 2)","火 龙 洞(转3)","西郊神殿(转 3)","北冥神殿(转 3)","海角秘境(转 3)"}--,"弥月岛城(转 5)"
	
	local x = 55
	for i = 1 , 4 do 
		_Handle = GUI:RichEditCreate(_GUIHandle,"richedit"..i,x,100,80,19)
		if _Handle ~= 0 then
			GUI:WndSetParam(_Handle,i)	
			GUI:RichEditSetDefaultTextColor(_Handle, CL:MakeARGB(255, 10, 231, 29))
			GUI:RichEditAppendString(_Handle,"#SELECT#"..name_tab[i].."#SELECTEND#")	
			GUI:WndRegistScript(_Handle, RDWndBaseCL_mouse_lbUp, "Transmit.ClickEdit")
			GUI:RichEditSetEditEnable(_Handle, false)
		end
		x = x + 80 
	end	
	local y = 186
	local index = 5
	for i = 1 , 6 do 
		local x1 = 42
		for j = 1 , 3 do 	
			if i == 6 and j == 3 then
				index = index + 1
				break
			end	
			_Handle = GUI:RichEditCreate(_GUIHandle,"richedit"..index,x1,y,120,19)
			if _Handle ~= 0 then
				GUI:WndSetParam(_Handle,index)
				GUI:RichEditSetDefaultTextColor(_Handle, CL:MakeARGB(255, 10, 231, 29))	
				GUI:RichEditAppendString(_Handle,"#SELECT#"..name_tab[index].."#SELECTEND#")				
				GUI:WndRegistScript(_Handle, RDWndBaseCL_mouse_lbUp, "Transmit.ClickEdit")
				GUI:RichEditSetEditEnable(_Handle, false)
			end
			x1 = x1 + 108 
			index = index + 1
		end	
		y = y + 34
	end
	
	_Handle = GUI:RichEditCreate(_GUIHandle,"richedit23",125,455,120,19)
	if _Handle ~= 0 then
		GUI:WndSetParam(_Handle,index)
		GUI:RichEditSetDefaultTextColor(_Handle, CL:MakeARGB(255, 10, 231, 29))
		GUI:RichEditAppendString(_Handle,"#SELECT#普通挂机#SELECTEND#")
		GUI:WndRegistScript(_Handle, RDWndBaseCL_mouse_lbUp, "Transmit.ClickEdit")
		GUI:RichEditSetEditEnable(_Handle, false)
	end
	_Handle = GUI:RichEditCreate(_GUIHandle,"richedit",225,455,120,19)
	if _Handle ~= 0 then
		GUI:RichEditSetDefaultTextColor(_Handle, CL:MakeARGB(255, 10, 231, 29))
		GUI:RichEditAppendString(_Handle,"#SELECT#VIP挂机#SELECTEND#")
		GUI:WndRegistScript(_Handle, RDWndBaseCL_mouse_lbUp, "Transmit.ClickEdit1")
		GUI:RichEditSetEditEnable(_Handle, false)
	end
	

	Transmit.UIInit(_GUIHandle)
end
Transmit.WndHandle = 0
function Transmit.UIInit(_Handle)
	Transmit.WndHandle = _Handle
end

function Transmit.Close()
	if Transmit.WndHandle ~= 0 then
		GUI:WndClose(Transmit.WndHandle)
	end

end

function Transmit.ClickEdit(_Handle)
	local param = GUI:WndGetParam(_Handle)
	UI:Lua_SubmitForm("传送员表单", "cs_", ""..param)
end

function Transmit.ClickEdit1(_Handle)
	UI:Lua_SubmitForm("传送员表单", "cs_1", "")
end
Transmit.main()