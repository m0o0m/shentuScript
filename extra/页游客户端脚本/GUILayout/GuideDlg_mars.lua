GuideDlg_mars = {}
function GuideDlg_mars.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUIWndCreateWnd(_Parent,"GuideDlg_mars",0,1032,145)
	if _Parent ~= 0 then
		GUIWndSetEnableM(_Parent, false)
		GUIWndSetSizeM(_Parent,16, 16)
		GUIWndSetCanRevMsg(_Parent, false)
	end
	
	
	_GUIHandle = GUIImageCreate(_Parent,"magic1",0,-7,0)
	if _GUIHandle ~= 0 then
	
		GUIWndSetEnableM(_GUIHandle, false)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,720, 509)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"prompt",1804600017,3,169)
	if _GUIHandle ~= 0 then
		GUIWndSetTextM(_GUIHandle,"ªΩ–—Œ“,÷˙ƒ„≥¨…Ò")
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,161, 76)
		GUIWndSetTextColorM(_GUIHandle, 4292592384)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	
	GuideDlg_mars.UIInit(_Parent)
end
GuideDlg_mars.Wnd = 0
--UI Logic Code Start
function GuideDlg_mars.UIInit(_Handle)
	
	GuideDlg_mars.Wnd = _Handle
	GUIWndSetSizeM(_Handle, 161, 76)
	GUIWndSetEnableM(_Handle, false)
	GuideDlg_mars.x_offset = tonumber(deserialize(as3.tolua(FormParam[1])))                 
	local width = CLGetScreenWidth()
	GUIWndSetPosM(_Handle, width-583-GuideDlg_mars.x_offset, -11) 

	if WndAddEffect(_Handle, "magic1", 3020300700, -30, -5, 150, 0) then

	end

	local handle = GetWindow(_Handle, "prompt")
	if handle ~= 0 then
		GUIButtonSetTextFont(handle,"SIMLI18")
		GUIWndSetTextArrangeType(handle,0,17,0,0)
		GuideDlg_mars.itemTweenUp01(handle) 
	end
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "Screen Size changed_GuideDlg_mars", "GuideDlg_mars.width") 

end

function GuideDlg_mars.itemTweenUp01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' y='164' /></Tween>", "GuideDlg_mars.itemTweenDown01("..hand..")")
end 
function GuideDlg_mars.itemTweenDown01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' y='174' /></Tween>" , "GuideDlg_mars.itemTweenUp01("..hand..")")
end 

function GuideDlg_mars.width()
	local width = CLGetScreenWidth()
	local handle = GetWindow(nil, "GuideDlg_mars")
	if handle ~= 0 then 
		GUIWndSetPosM(handle, width-583-GuideDlg_mars.x_offset, -12) 
	end
end

function GuideDlg_mars.Closed()
	local handle = GetWindow(nil, "GuideDlg_mars")
	if handle ~= 0 then 
		GUIWndClose(handle)
	end
end

GuideDlg_mars.main()