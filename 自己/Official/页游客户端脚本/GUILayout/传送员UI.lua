Transmit = {}
function Transmit.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = GUI:WndCreateWnd(_Parent,"transmit",1806100012,332,25)
	if _GUIHandle ~= 0 then
		GUIWndSetMoveWithLBM(_GUIHandle, true)
		GUIWndSetSizeM(_GUIHandle, 361, 524)
		GUIWndSetIsESCClose(_GUIHandle,true)
		GUIWndSetMagicUI(_GUIHandle, 3)
		CenterWnd(_GUIHandle)
	end
	local  _Handle = GUIImageCreate(_GUIHandle, "title", 1805500014, 131, 14)
	if _GUIHandle ~= 0 then
		GUIWndSetEnableM(_Handle,false)
	end
	
	_Handle = GUIButtonCreate(_GUIHandle, "closeBtn", 1805900080, 328, 3)	
	if _Handle ~= 0 then GUIWndRegistScript(_Handle, RDWndBaseCL_mouse_lbClick, "Transmit.Close") end
	
	--[[
	_Handle = GUI:EditCreate(_GUIHandle,"edit1",148,60,100,30)
	if _Handle ~= 0 then		
		GUIEditSetFontCenter(_Handle)
		GUIEditSetCanEdit(_Handle, false)
		GUIWndSetEnableM(_Handle, false)
		GUIEditSetFontM(_Handle,"SIMLI18")
		GUIEditSetTextM(_Handle,"城市")
		GUIWndSetTextColorM(_Handle, CLMakeARGB(255, 214, 147, 30))
	end
	
	

	_Handle = GUI:EditCreate(_GUIHandle,"edit2",148,145,100,32)
	if _Handle ~= 0 then		
		GUIEditSetFontCenter(_Handle)
		GUIEditSetCanEdit(_Handle, false)
		GUIWndSetEnableM(_Handle, false)
		GUIEditSetFontM(_Handle,"SIMLI18")
		GUIEditSetTextM(_Handle,"危险区域")
		GUIWndSetTextColorM(_Handle, CLMakeARGB(255, 214, 147, 30))
	end
	
	
	_Handle = GUI:EditCreate(_GUIHandle,"edit3",148,397,100,32)
	if _Handle ~= 0 then		
		GUIEditSetFontCenter(_Handle)
		GUIEditSetCanEdit(_Handle, false)
		GUIWndSetEnableM(_Handle, false)
		GUIEditSetFontM(_Handle,"SIMLI18")
		GUIEditSetTextM(_Handle,"特殊区域")
		GUIWndSetTextColorM(_Handle, CLMakeARGB(255, 214, 147, 30))
	end
	--]]
	_Handle = GUIImageCreate(_GUIHandle, "image1", 1800600030, 166, 80)
	if _GUIHandle ~= 0 then
		GUIWndSetEnableM(_Handle,false)
	end
	_Handle = GUIImageCreate(_GUIHandle, "image2", 1800600031, 148, 145)
	if _GUIHandle ~= 0 then
		GUIWndSetEnableM(_Handle,false)
	end
	_Handle = GUIImageCreate(_GUIHandle, "image3", 1800600032, 148, 397)
	if _GUIHandle ~= 0 then
		GUIWndSetEnableM(_Handle,false)
	end

	local name_tab = {"新手村","巫山城","龙城","神歌城","毒 虫 洞(30级)","食人洞穴(30级)","天荒寺庙(40级)","邪    庙(40级)","蜘 蛛 洞(50级)","牛 魔 洞(60级)","永夜之地(70级)","骸 骨 洞(70级)","镇魔禁地(转 1)","蛮 荒 城(转 1)","流沙秘洞(转 2)","铁血魔宫(转 2)","玄 冰 洞(转 2)","火 龙 洞(转3)","海底秘境(转 3)","雪域冰宫(转 3)","深岩密道(转 3)",}--"弥月岛城(转 5)"
	
	local x = 0
	local str1= ""
	for i = 1 , 4 do 
		str1 = str1 .. "#POS<X:"..x..",Y:0>##UILINK<STR:"..name_tab[i]..",WND:执行脚本,PARAM:Transmit.ClickEdit("..i..")>#"
		x = x + 80 
	end	
	_Handle = GUI:RichEditCreate(_GUIHandle,"richedit1",50,120,312,19)
	if _Handle ~= 0 then
			GUIRichEditSetDefaultTextColor(_Handle, CLMakeARGB(255, 10, 231, 29))	
			GUIRichEditAppendString(_Handle,str1)
	end
	local str = ""
	local y = 0
	local index = 5
	for i = 1 , 6 do 
		local x1 = 0
		for j = 1 , 3 do 		
			if i == 6 and j == 3 then
				index = index + 1
				break
			end
			str = str .. "#POS<X:"..x1..",Y:"..y..">##UILINK<STR:"..name_tab[index]..",WND:执行脚本,PARAM:Transmit.ClickEdit("..index..")>#"
			x1 = x1 + 106 
			index = index + 1
		end	
		y = y + 34
	end
	_Handle = GUI:RichEditCreate(_GUIHandle,"richedit2",40,186,309,222)
	if _Handle ~= 0 then
		--GUIWndSetParam(_Handle,index)
		GUIRichEditSetDefaultTextColor(_Handle, CLMakeARGB(255, 10, 231, 29))	
		GUIRichEditAppendString(_Handle,str)				
		--GUIWndRegistScript(_Handle, RDWndBaseCL_mouse_lbUp, "Transmit.ClickEdit")
	end
	
	
	_Handle = GUI:RichEditCreate(_GUIHandle,"richedit23",124,455,120,19)
	if _Handle ~= 0 then
		GUIWndSetParam(_Handle,index)
		GUIRichEditSetDefaultTextColor(_Handle, CLMakeARGB(255, 10, 231, 29))
		GUIRichEditAppendString(_Handle,"#SELECT#普通挂机#SELECTEND#")
		GUIWndRegistScript(_Handle, RDWndBaseCL_mouse_lbUp, "Transmit.ClickEdit2")
	end
	_Handle = GUI:RichEditCreate(_GUIHandle,"richedit",224,455,120,19)
	if _Handle ~= 0 then
		GUIRichEditSetDefaultTextColor(_Handle, CLMakeARGB(255, 10, 231, 29))
		GUIRichEditAppendString(_Handle,"#SELECT#VIP挂机#SELECTEND#")
		GUIWndRegistScript(_Handle, RDWndBaseCL_mouse_lbUp, "Transmit.ClickEdit1")
	end
	

	Transmit.UIInit(_GUIHandle)
end
Transmit.WndHandle = 0
Transmit.clickedHandle = 0
function Transmit.UIInit(_Handle)
	Transmit.WndHandle = _Handle
end

function Transmit.Close()
	if Transmit.WndHandle ~= 0 then
		GUIWndClose(Transmit.WndHandle)
	end

end

function Transmit.ClickEdit(index)

	UI:Lua_SubmitForm("传送员表单", "cs_", ""..index)
end
function Transmit.ClickEdit2(_handle)
	local param = GUIWndGetParam(_handle) 
	UI:Lua_SubmitForm("传送员表单", "cs_", ""..param)
end

function Transmit.MessagePrompt(str)
	if Transmit.clickedHandle ~= 0 then
		local color = MakeARGB(255,255,0,0)
		window_msg_up(Transmit.clickedHandle, str, -125, -30, 40, color, 2)
	end
end

function Transmit.ClickEdit1(_Handle)
	Transmit.clickedHandle = _Handle
	UI:Lua_SubmitForm("传送员表单", "cs_1", "")
end
Transmit.main()