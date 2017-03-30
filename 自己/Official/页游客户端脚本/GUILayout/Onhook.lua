Onhook ={}
local ui = "<form> <dialog OnInit='Onhook.UIInit' id='Onhook' image='0' x='0' y='145' w='161' h='76' enable='false' revmsg='false'>"
	.."	<button id='guaji' image='1804600018' x='3' y='0' w='161' h='76'  revmsg='false' text='点击自动挂机' text_color='#DBC300'/>"	
	--.."	<image id='magic1' image='0' x='0' y='-7' w='1' h='1' enable='false' check_point='0' revmsg='false'/>"
	--.."	<image id='magic1' image='0' x='-7' y='0' w='20' h='20' enable ='false' />"	
	.." </dialog>"
	.."</form>"

function Onhook.main()
	if GetWindow(nil,"Onhook") ~= 0 then
		Onhook.Closed()
	end 
	GenFormByString(ui)
end
Onhook.Wnd = 0
--UI Logic Code Start
function Onhook.UIInit(_Handle)
	Onhook.Wnd = _Handle
	
	UI:Lua_GetScreenSize()
	local _SW = as3.tolua(LuaRet[1])
	local _SH = as3.tolua(LuaRet[2])
	GUIWndSetPosM(_Handle, _SW/2+127, _SH-180)

	GUIWndSetSizeM(_Handle, 161, 76)
	GUIWndSetEnableM(_Handle, false)
	local handle = GetWindow(_Handle, "guaji")
	if handle ~= 0 then
		Onhook.itemTweenUp01(handle)
		GUIButtonSetTextFont(handle,"SIMLI18")
		GUIWndSetTextArrangeType(handle,0,-15,0,0)
	end
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "窗口大小改变时调用Onhook", "Onhook.width") 
	CLAddDelayTask("Onhook.closeWnd()", 10000, 1)
	--WndAddEffect(nil,"Onhook",3020101100,35,-79,200,0) 
	--WndAddEffect(_Handle, "magic1", 3020101100, 35,79,200,0) 
end
function Onhook.closeWnd()
	local handle = GetWindow(nil, "Onhook")
	if handle ~= 0 then 
		UI:Lua_SubmitForm("PersonBoss", "AutoFight", "")
		GUIWndClose(handle)
	end 
end
function Onhook.itemTweenUp01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='0.8' y='-45' /></Tween>", "Onhook.itemTweenDown01("..hand..")")
end 
function Onhook.itemTweenDown01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' y='-35' /></Tween>" , "Onhook.itemTweenUp01("..hand..")")
end 

function Onhook.width()
	local width = CLGetScreenWidth()
	local handle = GetWindow(nil, "Onhook")
	if handle ~= 0 then 
		UI:Lua_GetScreenSize()
		local _SW = as3.tolua(LuaRet[1])
		local _SH = as3.tolua(LuaRet[2])
		GUIWndSetPosM(handle, _SW/2+127, _SH-180)
	end
end

function Onhook.Closed()
	local handle = GetWindow(nil, "Onhook")
	if handle ~= 0 then 
		GUIWndClose(handle)
	end
end

Onhook.main()