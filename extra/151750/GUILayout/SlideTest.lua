-- API
--	long SlideCreate(long _ParentHandle, const char* _pWndID, unsigned int _backImage, unsigned _slideImage, unsigned _thumbImage, int _PosX, int _PosY, int _SizeX, int _SizeY);
--	int  SlideGetPercent(long _Handle);
--  void SlideSetPercent(long _Handle, int _percent);
SlideTest = {}

function SlideTest.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = _Parent
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()
							  --参数： Parent, 				ID, 	背景ID，    进度条ID   指针ID    PosX PosY SizeX SizeY 
	local _GUIHandle = GUI:SlideCreate(_Parent, "SlideTestSlide", 1850800033, 1850800034, 1850800036, 200, 300, 683, 21)
	if _GUIHandle then
		GUI:SlideSetPercent(_GUIHandle, 67) -- 0 ~ 100 
		local percent = GUI:SlideGetPercent(_GUIHandle)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "SlideTest.SlideEvent") -- trigger
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_move, "SlideTest.SlideEvent") -- trigger
	end
end

function SlideTest.SlideEvent(_Handle)
	if _Handle then
		local percent = GUI:SlideGetPercent(_Handle)
		dbg("percent  = "..tostring(percent))
	end
	

end

SlideTest.main()

