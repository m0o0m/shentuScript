Onboss ={}
local ui = "<form> <dialog OnInit='Onboss.UIInit' id='Onboss' image='0' x='1242' y='145' w='161' h='76' enable='false' revmsg='false'>"
	.."	<button id='guaji' image='1804600020' x='3' y='0' w='161' h='76' revmsg='false' text='打开挑战Boss' text_color='#DBC300'/>"	
	.."	<image id='magic' image='3020100300' x='225' y='14' w='58' h='34' check_point='0' revmsg='true' type='animate'/>"
	
	.." </dialog>"
	.."</form>"

function Onboss.main()
	if GetWindow(nil,"Onboss") ~= 0 then
		Onboss.Closed()
	else
		GenFormByString(ui)
	end 
end
Onboss.Wnd = 0
Onboss.width = 0
--UI Logic Code Start
function Onboss.UIInit(_Handle)
	Onboss.Wnd = _Handle
--	GUIWndSetSizeM(_Handle, 161, 76)
	local width = CLGetScreenWidth()
	Onboss.width = width-390
	GUIWndSetPosM(_Handle, width-390, 257) 
	local handle = GetWindow(_Handle, "guaji")
	if handle ~= 0 then
		Onboss.itemTweenUp01(handle)  
		GUIButtonSetTextFont(handle,"SIMLI18")
		GUIWndSetTextArrangeType(handle,-10,0,0,0)
	end

	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "窗口大小改变时调用onboss", "Onboss.widthed")  
	CLAddDelayTask("Onboss.openWnd()", 10000, 1)
end

function Onboss.openWnd()
	Onboss.Closed()
	local hand = GetWindow(nil,"BossWnd") 
	if hand == 0 then 
		local map_k = CLGetCurMapKeyName()
	--[[	if Tzboss.bianlaing == 1 then 
			return
		end
		Tzboss.bianlaing = 1--]]
		if map_k == "天荒教主副本" then
			return
		end
		UI:Lua_SubmitForm("ChallengeBOSS", "openChallengeBoss", "")
	end
end

function Onboss.itemTweenUp01(hand) 
	local width = Onboss.width-10
	GUIWndTween(hand, "<Tween><Frame time='0.8' x='-7' /></Tween>", "Onboss.itemTweenDown01("..hand..")")
end 
function Onboss.itemTweenDown01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' x='3' /></Tween>" , "Onboss.itemTweenUp01("..hand..")")
end 
 
function Onboss.widthed()
	
	local width = tonumber(CLGetScreenWidth())
	local handle = GetWindow(nil, "Onboss")
	if handle ~= 0 then 
		GUIWndSetPosM(handle, tonumber(width-390), 257)  
	end
end

function Onboss.Closed()
	local handle = GetWindow(nil, "Onboss")
	if handle ~= 0 then 
		GUIWndClose(handle)
	end
end

Onboss.main()