AchieveWnd = {}
function AchieveWnd.main()
	msg('AchieveWnd')
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()
	_Parent = GUI:ImageCreate(_Parent, "MainWnd", 0, _DeviceSizeX, _DeviceSizeY)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,1140, 679);
		GUI:WndSetIsESCClose(_Parent,true);
		GUI:WndSetMoveWithLBM(_Parent)
		CenterWnd(_Parent);
		GUI:ImageSetAroundImage(_Parent, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021);
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000385,1090,7)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "AchieveWnd.Close")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,39, 39)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_1",1850100038,400,30)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,97, 32)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_2",1850100039,616,30)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,97, 32)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"EditTitle",532,30,134,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 244, 186, 117))
		GUI:EditSetTextM(_GUIHandle,"成 就")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"BackGround2",0,430,75)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false);
		GUI:WndSetParam(_GUIHandle, 0);
		GUI:WndSetSizeM(_GUIHandle,690, 490);
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011);
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Achjf",484,500,148,47)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 228, 192, 142))
		GUI:EditSetTextM(_GUIHandle,"成就积分：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Achjifen",600,500,148,47)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 60, 180, 113))
		GUI:EditSetTextM(_GUIHandle,"null")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	AchieveWnd.UIInit(_Parent)
end

--UI Logic Code Start
function AchieveWnd.UIInit(_Handle)
	AchieveWnd._wnd = _Handle
	UI:Lua_OpenWindow(_Handle, "HeroAch_Wnd.lua")
	msg("打122开")
end

function AchieveWnd.Close()
	if AchieveWnd._wnd ~= 0 then 
		WndClose(AchieveWnd._wnd)
	end
end

AchieveWnd.main()




