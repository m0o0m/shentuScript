EquipOption ={}
local ui = "<form default_parent ='Package'> <dialog OnInit='EquipOption.UIInit' id='EquipOption' image='1804100024' x='-195' y='4' w='217' h='407' esc_close='true' drag='true' revmsg='true'>"
	.."	<itemctrl id='item1' x='23' y='55' w='73' h='73' OnLButtonUp='EquipOption.Select' param='1' rbtn_use='true' use_back='1803700011' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item2' x='23' y='154' w='73' h='73' OnLButtonUp='EquipOption.Select' param='2' rbtn_use='true' use_back='1803700011' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item3' x='23' y='254' w='73' h='73' OnLButtonUp='EquipOption.Select' param='3' rbtn_use='true' use_back='1803700011' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item4' x='120' y='55' w='73' h='73' OnLButtonUp='EquipOption.Select' param='4' rbtn_use='true' use_back='1803700011' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item5' x='120' y='155' w='73' h='73' OnLButtonUp='EquipOption.Select' param='5' rbtn_use='true' use_back='1803700011' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item6' x='122' y='254' w='73' h='73' OnLButtonUp='EquipOption.Select' param='6' rbtn_use='true' use_back='1803700011' enable='true' revmsg='true'/>"
	.."	<button id='getBtn' image='1804900003' x='40' y='335' w='136' OnLButtonUp='EquipOption.GetAward' enable='false' h='58' revmsg='true' text_color='#C2B6A0'/>"
	.."	<image id='selectedFlag1' image='1803700016' visible='false' x='18' y='50' w='82' h='82' enable='false' revmsg='false'/>"
	.."	<image id='selectedFlag2' image='1803700016' visible='false' x='18' y='150' w='82' h='82' enable='false' revmsg='false'/>"
	.."	<image id='selectedFlag3' image='1803700016' visible='false' x='18' y='250' w='82' h='82' enable='false' revmsg='false'/>"
	.."	<image id='selectedFlag4' image='1803700016' visible='false' x='115' y='50' w='82' h='82' enable='false' revmsg='false'/>"
	.."	<image id='selectedFlag5' image='1803700016' visible='false' x='115' y='150' w='82' h='82' enable='false' revmsg='false'/>"
	.."	<image id='selectedFlag6' image='1803700016' visible='false' x='115' y='250' w='82' h='82' enable='false' revmsg='false'/>"
	.."	<edit id='title' x='61' y='11' w='100' h='28' revmsg='true' align='center' text_color='#00ccff' text='转1' font='SIMLI18'/>"
	.."	<button id='closeBtn' image='1805900080' x='173' y='10' w='34' h='38' OnLButtonUp='EquipOption.Close' revmsg='true' text_color='#C2B6A0'/>"
	.." </dialog>"
	.."</form>"

function EquipOption.main()
	local uih = GetWindow(0,"Package,EquipOption")
	if uih ~= 0 then
		GUIWndClose(uih)
	else
		GenFormByString(ui)
	end
	
end
EquipOption.selectIndex = 0
--UI Logic Code Start
function EquipOption.UIInit(_Handle)
	EquipOption.wnd = _Handle
	EquipOption.data = deserialize(as3.tolua(FormParam[1]))
	local handle = 0
	handle =  GetWindow(0, "Package, EquipOption, title")
	if handle ~=0 then
		GUIEditSetTextM(handle, tostring(EquipOption.data[1]))
	end
	for i = 1, 6 do
		handle = GetWindow(0, "Package, EquipOption, item"..i)
		if handle ~= 0 then
			RDItemCtrlSetGUIDataByKeyName(handle, EquipOption.data[2][i], 1, false)
		end
	end
end

function EquipOption.GetAward()
	UI:Lua_SubmitForm("转生首饰箱表单", "GetAward", tostring(EquipOption.data[1]).."#"..tostring(EquipOption.selectIndex))
end

function EquipOption.Select(h)
	--msg("indeed")
	local handle = 0
	local index = 0
	if h ~= 0 then
		index = GUIWndGetParam(h)
	end
	if EquipOption.selectIndex == 0 then	
		handle = GetWindow(0, "Package, EquipOption, selectedFlag"..index)
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		EquipOption.selectIndex = index
	else
		handle = GetWindow(0, "Package, EquipOption, selectedFlag"..EquipOption.selectIndex)
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)
		end
		handle = GetWindow(0, "Package, EquipOption, selectedFlag"..index)
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		EquipOption.selectIndex = index
	end
	handle = GetWindow(0,"Package, EquipOption, getBtn")
	if handle ~= 0 then
		GUIWndSetEnableM(handle, true)
	end
end

function EquipOption.Close()
	if EquipOption.wnd ~= 0 then
		GUIWndClose(EquipOption.wnd)
	end
end
EquipOption.main()