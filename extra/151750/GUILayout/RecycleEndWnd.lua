RecycleEndWnd = {}
function RecycleEndWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0

	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	_Parent = GUI:WndCreateWnd(_Parent,"RecycleEndWnd",0,0,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent, _DeviceSizeX, _DeviceSizeY)
		GUI:WndRegistScript(_Parent, RDWndBaseCL_mouse_lbUp, "RecycleEndWnd.Close")
	end
	local offset_x = (_DeviceSizeX - 784)/2
	local offset_y = (_DeviceSizeY - 321)/2 - 80
	
	_GUIHandle = GUI:ImageCreate(_Parent,"PackageImg",1850100032, offset_x, offset_y)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 784, 321)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"title",1851300002, offset_x + 74, offset_y - 17)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"title_text",offset_x + 345, offset_y + 20,300,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, "回收成功")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 198, 165, 55))
	end

	_GUIHandle = GUI:ImageCreate(_Parent, "back_1",0, offset_x + 156, offset_y + 86)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle,1850600034,1850600036,1850600040,1850600042,1850600038,1850600035,1850600041,1850600037,1850600039)
		GUI:WndSetSizeM(_GUIHandle,465, 185)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"GUI_HEAD",offset_x + 185, offset_y + 105,300,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, "回收获得道具：")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 198, 165, 55))
	end

	--_GUIHandle = GUI:ImageCreate(_Parent,"ItemBack1",1850500016,183,153) --
   -- if _GUIHandle ~= 0 then end
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",1850400004,offset_x +  186, offset_y + 156,66,66)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByKeyName(_Parent, "Item1", "霸业神剑", 0, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",1850400004, offset_x + 276, offset_y + 156,66,66)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByKeyName(_Parent, "Item2", "霸业神剑", 0, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",1850400004, offset_x + 366, offset_y + 156,66,66)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByKeyName(_Parent, "Item3", "霸业神剑", 0, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item4",1850400004, offset_x + 456, offset_y + 156,66,66)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByKeyName(_Parent, "Item4", "霸业神剑", 0, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"backClink",1851900000, offset_x + 75, offset_y + 272)
	if _GUIHandle ~= 0 then
		
	end

	_GUIHandle = GUI:EditCreate(_Parent,"Clink", offset_x + 287, offset_y + 282,300,20)
	if _GUIHandle ~= 0 then 
		GUI:EditSetTextM(_GUIHandle,"点击屏幕任意位置退出")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 81, 109, 133))
	end

	RecycleEndWnd.UIInit(_Parent)
end

--UI Logic Code Start
function RecycleEndWnd.UIInit(_Handle)
	RecycleEndWnd.WndHandle = _Handle
	GUI:WndSetIsESCClose(_Handle, true)
end

function RecycleEndWnd.Close()
	GUI:WndClose(RecycleEndWnd.WndHandle)
end

RecycleEndWnd.main()