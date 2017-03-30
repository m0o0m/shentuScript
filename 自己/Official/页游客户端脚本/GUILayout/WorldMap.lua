local wnd = GUIWndFindWindow(0, "WorldMap") 
if wnd ~= 0 then
	GUIWndClose(wnd)
	return
end

WorldMap = {}

if not WorldMap.localString then WorldMap.localString = {} end
local l = WorldMap.localString
l.currentMap = "当前地图"
l.worldMap = "世界地图"

local rColor = CLMakeARGB(255, 255, 5, 0)
local yColor = CLMakeARGB(255, 255, 223, 0)
local bColor = CLMakeARGB(255, 41, 170, 222)

WorldMap.zoneBtnParam = {	
	--按钮图片ID,		按钮位置，		按钮大小,		文字偏移
	{1930500024,		256, 334,		223,108,		-9, 11,		yColor	},
	{1930500028,		98 , 330,		82,127,			-9, 11,		bColor	},
	{1930500032,		580, 169,		123,94,			5, 14,		yColor	},
	{1930500036,		550, 265,		132,108,		-2, 18,		rColor	},
	{1930500040,		216, 214,		136,112,		0, 11,		rColor	},
	{1930500044,		328, 417,		122,88,			-9, 3,		rColor	},
	{1930500048,		514, 396,		112,99,			0, -11,		rColor	},
	{1930500052,		398, 243,		146,92,			-18, -15,	bColor	},
	{1930500056,		374, 163,		117,84,			-5, 5,		rColor	},
	{1930500060,		480, 172,		110,84,			-15, -2,	yColor	},
	{1930500064,		77 , 261,		136,86,			-6, -8,		rColor	},
	{1930500074,		156, 295,		212,190,		-49, -25,	rColor	},
	{1930500078,		49 , 132,		192,190,		0, -25,		rColor	},
	{1930500082,		476, 94 ,		218,100,		-42, -15,	rColor	},
	{1930500086,		537, 333,		170,124,		0, -12,		rColor	},
	{1930500090,		347, 219,		141,135,		-15, 20,	bColor	},
	{1930500094,		392, 381,		147,107,		-9, 11,		yColor	},
	{1930500098,		249, 112,		147,89,			-9, 11,		yColor	},
	{1930500102,		453, 314,		109,110,		-9, 11,		yColor	},
	{1930500106,		694, 332,		51,37,			-9, 11,		yColor	}
}

function WorldMap.main()
	local parent = LuaGlobal["AttachPartent"]
	local wm = GUIWndCreateWnd(parent, "WorldMap", 0, 0, 0)
	if wm ~= 0 then
		GUIWndSetSizeM(wm, 779, 533)
		GUIWndSetIsESCClose(wm, true)
		GUIWndSetMoveWithLBM(wm)
		GUIWndSetMagicUI(wm, 1)
		CenterWnd(wm)
		GUIWndRegistScript(wm, RDWndBaseCL_wnd_close, "WorldMap.wndClose")
	end
	
	local uih = 0
	uih = GUIWndFindWindow(0, "BigMap") 
	if uih ~= 0 then
		GUIWndClose(uih)
	end
	
	uih = GUIImageCreate(wm, "backImage", 1801900002, 0, 0)
	if uih ~= 0 then GUIWndSetEnableM(uih, false) end
	uih = GUIImageCreate(wm, "wndTitleImage", 1801500060, 338, 0)
	if uih ~= 0 then GUIWndSetEnableM(uih, false) end
	
	uih = GUIButtonCreate(wm, "closeBtn", 1800000043, 735, 3)
	if uih ~= 0 then GUIWndRegistScript(uih, RDWndBaseCL_mouse_lbClick, "luaWndClose") end
	
	uih = GUIButtonCreate(wm, "currentMap", 1800000076, 30, 47)
	if uih ~= 0 then
		GUIWndSetSizeM(uih, 62, 25)
		GUIWndSetTextColorM(uih, CLMakeARGB(255, 230, 210, 132))
		GUIWndSetTextOffset(uih, 0, 2)
		GUIWndSetTextM(uih, l.currentMap)
		GUIButtonSetIsActivePageBtn(uih, false)
		GUIWndRegistScript(uih, RDWndBaseCL_mouse_lbClick, "WorldMap.currentMapLc")
	end
	uih = GUIButtonCreate(wm, "worldMap", 1800000076, 95, 47)
	if uih ~= 0 then
		GUIWndSetSizeM(uih, 62, 25)
		GUIWndSetTextColorM(uih, CLMakeARGB(255, 230, 210, 132))
		GUIWndSetTextOffset(uih, 0, 2)
		GUIWndSetTextM(uih, l.worldMap)
		GUIButtonSetIsActivePageBtn(uih, true)
	end

	uih = GUIImageCreate(wm,"mapImage", 1801900003, 16, 74)
	if uih ~= 0 then GUIWndSetEnableM(uih, false) end
	
	--区域图片按钮
	for i = 1, #Map.zoneKeyName do
		uih = GUIButtonCreate(wm,"zoneBtn"..i, WorldMap.zoneBtnParam[i][1], WorldMap.zoneBtnParam[i][2], WorldMap.zoneBtnParam[i][3])
		if uih ~= 0 then
			GUIWndSetSizeM(uih, WorldMap.zoneBtnParam[i][4], WorldMap.zoneBtnParam[i][5])
			GUIWndSetTextM(uih, Map.zoneShowName[i])
			GUIButtonSetDownTextPosChange(uih, true)
			GUIWndSetParam(uih, i)
			GUIButtonSetTextFont(uih, "SIMLI18")
			GUIWndSetTextColorM(uih, WorldMap.zoneBtnParam[i][8])
			GUIWndSetTextOffset(uih, WorldMap.zoneBtnParam[i][6], WorldMap.zoneBtnParam[i][7])
			GUIWndRegistScript(uih,RDWndBaseCL_mouse_lbUp, "WorldMap.zoneBtnLc")
		end
	end
	WorldMap.UIInit(wm)
end

function WorldMap.UIInit(wm)
	WorldMap.wndHandle = wm
end

function WorldMap.currentMapLc(h)
	UI:OpenBigMapWithKeyName("")
end

function WorldMap.zoneBtnLc(h)
	local _Param = GUIWndGetParam(h)
	local _KeyName = Map.zoneKeyName[_Param]
	CurrentMapKeyName = _KeyName
	UI:OpenBigMapWithKeyName(_KeyName)
end

function WorldMap.wndClose()
	local wnd = GUIWndFindWindow(0, "WorldMap") 
	if wnd == 0 then
		WorldMap = nil
	end
end

WorldMap.main()