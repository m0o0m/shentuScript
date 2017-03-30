AttrWnd = {}
function AttrWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUIWndCreateWnd(_Parent,"AttrWnd",0,300,200)
	if _Parent ~= 0 then
		GUIWndSetSizeM(_Parent,16, 16)
		GUIWndSetIsESCClose(_Parent, true)
		GUIWndSetCanRevMsg(_Parent, false)
	end
	
	
	_GUIHandle = GUIImageCreate(_Parent,"AttrBackImg1",1802900048,1,0)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,190, 31)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"AttrNameImg1",1801500126,1,0)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,79, 26)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr11",1801500131,91,13)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr12",1801500131,111,13)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr13",1801500131,131,13)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr14",1801500131,151,13)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr15",1801500130,171,13)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 6)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr16",1801500131,192,13)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr17",1801500131,212,13)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr18",1801500131,232,13)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr19",1801500131,252,13)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr110",1801500131,272,13)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"AttrBackImg2",1802900048,1,38)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,190, 31)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"AttrNameImg2",1801500126,1,38)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,79, 26)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr21",1801500131,91,51)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr22",1801500131,111,51)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr23",1801500131,131,51)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr24",1801500131,151,51)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr25",1801500130,171,51)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 6)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr26",1801500131,192,51)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr27",1801500131,212,51)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr28",1801500131,232,51)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr29",1801500131,252,51)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr210",1801500131,272,51)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"AttrBackImg3",1802900048,1,76)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,190, 31)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"AttrNameImg3",1801500126,1,76)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,79, 26)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr31",1801500131,91,89)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr32",1801500131,111,89)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr33",1801500131,131,89)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr34",1801500131,151,89)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr35",1801500130,171,89)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 6)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr36",1801500131,192,89)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr37",1801500131,212,89)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr38",1801500131,232,89)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr39",1801500131,252,89)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr310",1801500131,272,89)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"AttrBackImg4",1802900048,1,114)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,190, 31)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"AttrNameImg4",1801500126,1,114)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,79, 26)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr41",1801500131,91,127)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr42",1801500131,111,127)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr43",1801500131,131,127)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr44",1801500131,151,127)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr45",1801500130,171,127)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 6)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr46",1801500131,192,127)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr47",1801500131,212,127)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr48",1801500131,232,127)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr49",1801500131,252,127)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr410",1801500131,272,127)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"AttrBackImg5",1802900048,1,152)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,190, 31)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"AttrNameImg5",1801500126,1,152)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,79, 26)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr51",1801500131,91,165)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr52",1801500131,111,165)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr53",1801500131,131,165)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr54",1801500131,151,165)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr55",1801500130,171,165)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 6)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr56",1801500131,192,165)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr57",1801500131,212,165)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr58",1801500133,232,165)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr59",1801500133,252,165)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr510",1801500133,272,165)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"AttrBackImg6",1802900048,1,190)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,190, 31)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"AttrNameImg6",1801500126,1,190)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,79, 26)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr61",1801500131,91,203)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr62",1801500131,111,203)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr63",1801500131,131,203)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr64",1801500131,151,203)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr65",1801500130,171,203)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 6)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr66",1801500131,192,203)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr67",1801500131,212,203)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr68",1801500131,232,203)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr69",1801500131,252,203)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Attr610",1801500131,272,203)
	if _GUIHandle ~= 0 then
	
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,15, 22)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	
	AttrWnd.UIInit(_Parent)
end
AttrWnd.Wnd = 0
function AttrWnd.UIInit(_Handle)
	AttrWnd.Wnd = _Handle
end

AttrWnd.BaseImg = 1801500130
AttrWnd.NameImg_tab = {1801500126,1801500128,1801500142,1801500127,1801500129,1801500141}
AttrWnd.NumImg_tab = {1801500140,1801500131,1801500132,1801500133,1801500134,1801500135,1801500136,1801500137,1801500138,1801500139}

function GetAttrNameImgList()
	return as3.toarray(AttrWnd.NameImg_tab)
end

function GetAttrNumImgList()
	return as3.toarray(AttrWnd.NumImg_tab)
end

function GetAttrBaseImg()
	return AttrWnd.BaseImg
end

AttrWnd.main()