AutoLevelUpResultWnd = {}
AutoLevelUpResultWnd.WndHandle = 0
function AutoLevelUpResultWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0

	GUI:WndGetSizeM(_Parent)

	local pX = LuaRet[1]/2 - 293
	local pY = LuaRet[2]/2 - 165
	AutoLevelUpResultWnd.WndHandle = GUI:WndCreateWnd(_Parent,"AutoLevelUpResultWnd",0, pX, pY)
	
	_GUIHandle = GUI:ImageCreate(AutoLevelUpResultWnd.WndHandle,"contentBack1",1850700035,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,587, 330)
		GUI:ImageSetAroundImage(_GUIHandle, 1850700035,1850700037,1850700041,1850700043,1850700039,1850700036,1850700042,1850700038,1850700040)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(AutoLevelUpResultWnd.WndHandle,"contentBack2",1850600034,19,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,549, 289)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600034,1850600036,1850600040,1850600042,1850600038,1850600035,1850600041,1850600037,1850600039)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(AutoLevelUpResultWnd.WndHandle,"contentBack3",1850700004,177,-46)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,232, 52)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(AutoLevelUpResultWnd.WndHandle,"constText1",53, 28,300,30)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"挂机时间:")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,239,198,152))
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(AutoLevelUpResultWnd.WndHandle,"constText2",53, 63,300,30)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"杀怪数量:")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,239,198,152))
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(AutoLevelUpResultWnd.WndHandle,"constText3",53, 96,300,30)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"效率:")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,239,198,152))
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(AutoLevelUpResultWnd.WndHandle,"constText4",53, 128,300,30)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"获得战利品如下:")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,239,198,152))
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(AutoLevelUpResultWnd.WndHandle,"constText5",53, 254,300,30)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"经验值:")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,239,198,152))
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(AutoLevelUpResultWnd.WndHandle,"constText6",252, -27,380,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"挂机结束")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,239,198,152))
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(AutoLevelUpResultWnd.WndHandle,"totalTime",152, 28,300,30)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"111111111")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,203,99,67))
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(AutoLevelUpResultWnd.WndHandle,"killAmount",152, 63,300,30)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"9999")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,238,202,98))
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(AutoLevelUpResultWnd.WndHandle,"efficiency",107, 96,300,30)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"111111经验值/小时")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,238,202,98))
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(AutoLevelUpResultWnd.WndHandle,"gaindExp",128, 254,300,30)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"1111111111")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,238,202,98))
		GUI:WndSetEnableM(_GUIHandle, false)
	end


	_GUIHandle = GUI:ButtonCreate(AutoLevelUpResultWnd.WndHandle,"closeBtn",1850000385,541,6)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,38, 38)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "AutoLevelUpResultWnd.CloseWnd")
	end
	
	_GUIHandle = GUI:ButtonCreate(AutoLevelUpResultWnd.WndHandle,"getRewardBtn",1850000307,310,248)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"免费领取")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,239,198,152))
		GUI:WndSetSizeM(_GUIHandle,107, 47)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "AutoLevelUpResultWnd.getReward")
	end
	
	_GUIHandle = GUI:ButtonCreate(AutoLevelUpResultWnd.WndHandle,"configBtn",1850000307,431,248)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"快捷设置")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,239,198,152))
		GUI:WndSetSizeM(_GUIHandle,107, 47)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "AutoLevelUpResultWnd.config")
	end

	
	_GUIHandle = GUI:ImageCreate(AutoLevelUpResultWnd.WndHandle,"itemBkg1",1850500016,72,173)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,137, 35)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(AutoLevelUpResultWnd.WndHandle,"item1",0,76,176,68,63)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,65, 63)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		
	end
	
	_GUIHandle = GUI:ImageCreate(AutoLevelUpResultWnd.WndHandle,"itemBkg2",1850500016,147,173)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,137, 35)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(AutoLevelUpResultWnd.WndHandle,"item2",0,151,176,68,63)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,65, 63)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		
	end
	
	_GUIHandle = GUI:ImageCreate(AutoLevelUpResultWnd.WndHandle,"itemBkg3",1850500016,222,173)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,137, 35)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(AutoLevelUpResultWnd.WndHandle,"item3",0,226,176,68,63)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,65, 63)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		
	end
	
	_GUIHandle = GUI:ImageCreate(AutoLevelUpResultWnd.WndHandle,"itemBkg4",1850500016,298,173)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,137, 35)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(AutoLevelUpResultWnd.WndHandle,"item4",0,302,176,68,63)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,65, 63)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		
	end
	
	_GUIHandle = GUI:ImageCreate(AutoLevelUpResultWnd.WndHandle,"itemBkg5",1850500016,374,173)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,137, 35)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(AutoLevelUpResultWnd.WndHandle,"item5",0,378,176,68,63)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,65, 63)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		
	end

	_GUIHandle = GUI:ImageCreate(AutoLevelUpResultWnd.WndHandle,"itemBkg6",1850500016,449,173)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,137, 35)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(AutoLevelUpResultWnd.WndHandle,"item6",0,453,176,68,63)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,65, 63)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		
	end

	_GUIHandle = GUI:ButtonCreate(AutoLevelUpResultWnd.WndHandle,"PageUpBtn",1850600088,26,181)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,120, 60)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "AutoLevelUpResultWnd.PageUp")
	end
	
	_GUIHandle = GUI:ButtonCreate(AutoLevelUpResultWnd.WndHandle,"PageDownBtn",1850600092,523,181)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,120, 60)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "AutoLevelUpResultWnd.PageDown")
	end
	
end
function AutoLevelUpResultWnd.CloseWnd()
	if AutoLevelUpResultWnd.WndHandle ~= 0 then
		WndClose(AutoLevelUpResultWnd.WndHandle)
	end
end


function AutoLevelUpResultWnd.PageUp()
end

function AutoLevelUpResultWnd.PageDown()
end

function AutoLevelUpResultWnd.getReward()
end

function AutoLevelUpResultWnd.config()
end
AutoLevelUpResultWnd.main()