Points={}  --- 
local ui = "<form default_parent='Tzboss'> <dialog OnInit='Points.UIInit' id='Points' image='1803300003' x='16' y='72' w='680' h='446' esc_close='true'  revmsg='true'>"
	.."	<edit id='TestWndChild_19' x='546' y='10' w='85' h='21' revmsg='true' text_color='#C2B6A0' text='�ۼƻ��ּӳ�' font='system'/>"
	.."	<edit id='TestWndChild_20' x='557' y='201' w='57' h='21' revmsg='true' text_color='#C2B6A0' text='������Դ' font='system'/>"
	.."	<edit id='TestWndChild_21' x='507' y='50' w='38' h='19' revmsg='true' text_color='#C2B6A0' text='�﹥��' font='system'/>"
	.."	<edit id='TestWndChild_22' x='507' y='70' w='38' h='19' revmsg='true' text_color='#C2B6A0' text='ħ����' font='system'/>"
	.."	<edit id='TestWndChild_23' x='507' y='90' w='38' h='19' revmsg='true' text_color='#C2B6A0' text='������' font='system'/>"
	.."	<edit id='TestWndChild_24' x='507' y='110' w='38' h='19' revmsg='true' text_color='#C2B6A0' text='�����' font='system'/>"
	.."	<edit id='TestWndChild_25' x='507' y='130' w='38' h='19' revmsg='true' text_color='#C2B6A0' text='ħ����' font='system'/>"
	.."	<edit id='TestWndChild_26' x='507' y='150' w='38' h='19' revmsg='true' text_color='#C2B6A0' text='������' font='system'/>"
	.."	<edit id='sx1' x='547' y='50' w='93' h='19' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."	<edit id='sx2' x='547' y='70' w='93' h='19' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."	<edit id='sx3' x='547' y='90' w='93' h='19' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."	<edit id='sx4' x='547' y='110' w='93' h='19' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."	<edit id='sx5' x='547' y='130' w='93' h='19' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."	<edit id='sx6' x='547' y='150' w='93' h='19' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."	<image id='TestWndChild_33' image='1803300010' x='503' y='246' w='12' h='13' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_34' image='1803300010' x='503' y='281' w='12' h='13' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_35' image='1803300010' x='503' y='316' w='12' h='13' check_point='0' revmsg='true'/>"
	.."	<edit id='TestWndChild_36' x='517' y='314' w='156' h='19' revmsg='true' text_color='#C2B6A0' text='100���󽵼��ɻ�ú�������' font='system'/>"
	.."	<edit id='TestWndChild_37' x='517' y='278' w='154' h='19' revmsg='true' text_color='#C2B6A0' text='ÿ�����߿ɻ�û��ֽ���' font='system'/>"
	.."	<edit id='TestWndChild_38' x='517' y='242' w='151' h='19' revmsg='true' text_color='#C2B6A0' text='��ɱBOSS�ɻ�û���' font='system'/>"
	.."	<richedit id='get' x='562' y='379' w='90' h='20' text='#SELECT#��ݻ�û��֡�#SELECTEND#' text_color='#CDB063' OnLButtonUp='Points.buy' revmsg='true' font='system'/>"
	.." </dialog>"
	.."</form>"

function Points.main()
	GenFormByString(ui)
end

Points.Wnd = 0
Points.num = 0
Points.level = 0
Points.ding = 0
Points.param = 0
--UI Logic Code Start
function Points.UIInit(_Handle)
	Points.Wnd = _Handle
	UI:Lua_SubmitForm("Tzboss_buy_s", "xianshi",1)
end

function Points.buy(_Handle)
	local handle = GetWindow(nil,"Tzboss,Tzboss_buy")
	WndGetPosM(Tzboss.Wnd)
	local sy = as3.tolua(LuaRet[2])
	UI:Lua_GetScreenSize()
	local _SW = as3.tolua(LuaRet[1])
	if handle == 0 then 
		GUIWndSetPosM(Tzboss.Wnd, _SW/2-445, sy)
	else
		GUIWndSetPosM(Tzboss.Wnd, _SW/2-360, sy)
	end
	local hand = GUIWndFindWindow(Tzboss.Wnd,"Tzboss_buy")  
	if hand ~=0 then 
		GUIWndClose(hand) 
		return
	end
	UI:Lua_OpenWindow(_Handle, "Tzboss_buy.lua")
	
end

function Points.update(tab,num,level,next_points)
	Points.num = num
	Points.level = level
	Points.ding = next_points 
	if Points.param == 0 then 
		Points.param = 1
		local open_tab = {"Tzboss_dragon.lua","Tzboss_tiger.lua","Tzboss_bird.lua","Tzboss_tortoise.lua"}
		UI:Lua_OpenWindow(Points.Wnd, open_tab[tonumber(num)]) 
	end  
	local hand = GUIWndFindWindow(Points.Wnd,"sx1")  
	if hand ~=0 then 
		GUIEditSetTextM(hand,tab["11"].."-"..tab["10"])
	end
	hand = GUIWndFindWindow(Points.Wnd,"sx2")  
	if hand ~=0 then 
		GUIEditSetTextM(hand,tab["13"].."-"..tab["12"])
	end
	hand = GUIWndFindWindow(Points.Wnd,"sx3")  
	if hand ~=0 then 
		GUIEditSetTextM(hand,tab["15"].."-"..tab["14"])
	end
	hand = GUIWndFindWindow(Points.Wnd,"sx4")  
	if hand ~=0 then 
		GUIEditSetTextM(hand,tab["7"].."-"..tab["6"])
	end
	hand = GUIWndFindWindow(Points.Wnd,"sx5")  
	if hand ~=0 then 
		GUIEditSetTextM(hand,tab["9"].."-"..tab["8"])
	end
	hand = GUIWndFindWindow(Points.Wnd,"sx6")  
	if hand ~=0 then 
		GUIEditSetTextM(hand,tab["3"])
	end
	
end

Points.main()