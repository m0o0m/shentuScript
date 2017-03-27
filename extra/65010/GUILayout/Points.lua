Points ={}
local ui = "<form default_parent = 'BossWnd'> <dialog OnInit='Points.UIInit' id='Points' image='1803300003' x='28' y='88' w='680' h='446' esc_close='false' drag='false' revmsg='true'>"
	.."<edit id='TestWndChild_19' x='546' y='10' w='85' h='21' revmsg='true' text_color='#C2B6A0' text='累计积分加成' font='system'/>"
	.."<edit id='TestWndChild_20' x='557' y='201' w='57' h='21' revmsg='true' text_color='#C2B6A0' text='积分来源' font='system'/>"
	.."<edit id='TestWndChild_21' x='507' y='50' w='38' h='19' revmsg='true' text_color='#C2B6A0' text='物攻：' font='system'/>"
	.."<edit id='TestWndChild_22' x='507' y='70' w='38' h='19' revmsg='true' text_color='#C2B6A0' text='魔攻：' font='system'/>"
	.."<edit id='TestWndChild_23' x='507' y='90' w='38' h='19' revmsg='true' text_color='#C2B6A0' text='道攻：' font='system'/>"
	.."<edit id='TestWndChild_24' x='507' y='110' w='38' h='19' revmsg='true' text_color='#C2B6A0' text='物防：' font='system'/>"
	.."<edit id='TestWndChild_25' x='507' y='130' w='38' h='19' revmsg='true' text_color='#C2B6A0' text='魔防：' font='system'/>"
	.."<edit id='TestWndChild_26' x='507' y='150' w='38' h='19' revmsg='true' text_color='#C2B6A0' text='生命：' font='system'/>"
	.."<edit id='sx1' x='547' y='50' w='93' h='19' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."<edit id='sx2' x='547' y='70' w='93' h='19' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."<edit id='sx3' x='547' y='90' w='93' h='19' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."<edit id='sx4' x='547' y='110' w='93' h='19' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."<edit id='sx5' x='547' y='130' w='93' h='19' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."<edit id='sx6' x='547' y='150' w='93' h='19' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."<image id='TestWndChild_33' image='1803300010' x='503' y='246' w='12' h='13' check_point='0' revmsg='true'/>"
	.."<image id='TestWndChild_34' image='1803300010' x='503' y='281' w='12' h='13' check_point='0' revmsg='true'/>"
	.."<image id='TestWndChild_35' image='1803300010' x='503' y='316' w='12' h='13' check_point='0' revmsg='true'/>"
	.."<edit id='TestWndChild_36' x='517' y='314' w='156' h='19' revmsg='true' text_color='#C2B6A0' text='100级后降级可获得海量积分' font='system'/>"
	.."<edit id='TestWndChild_37' x='517' y='278' w='154' h='19' revmsg='true' text_color='#C2B6A0' text='每天在线可获得积分奖励' font='system'/>"
	.."<edit id='TestWndChild_38' x='517' y='242' w='151' h='19' revmsg='true' text_color='#C2B6A0' text='击杀BOSS可获得积分' font='system'/>"
	.."<richedit id='get' x='562' y='379' w='90' h='15' text='#SELECT#快捷获得积分》#SELECTEND#' text_color='#CDB063' OnLButtonUp='Points.buy' revmsg='true' font='system'/>"
	.." </dialog>"
	.."</form>"

function Points.main()
	GenFormByString(ui)
end

--UI Logic Code Start
Points.Wnd = 0
Points.num = 1
Points.level = 0
Points.ding = 0
Points.param = 0
function Points.UIInit(_Handle)
	Points.param = 0
	Points.Wnd = _Handle
	GUI:WndSetVisible(_Handle, true) 
	UI:Lua_SubmitForm("BossWnd_buy_s", "xianshi", "1")
end

function Points.buy(_Handle)
	WndGetPosM(BossWnd.Wnd)
	local sy = LuaRet[2]
	UI:Lua_GetScreenSize()
	local _SW = LuaRet[1]
	local _Handle = GUI:WndFindChildM(BossWnd.Wnd, "BossWnd_buy")
	if _Handle == 0 then
		UI:Lua_OpenWindow(0, "BossWnd_buy.lua")
		GUI:WndSetPosM(BossWnd.Wnd, _SW/2-445, sy)
	else
		GUI:WndSetPosM(BossWnd.Wnd, _SW/2-360, sy)
		GUI:WndClose(_Handle)
	end
end

function Points.Show(key)
	for i=3, #BossWnd.WndList do 
		if BossWnd.WndList[i] == key then
			local _Handle = GUI:WndFindChildM(BossWnd.Wnd, key)
			GUI:WndSetVisible(_Handle ,true)
		else
			GUI:WndSetVisible(_Handle ,false)
		end
	end
end

function Points.update(tab,num,level,next_points)
	
	Points.num = tonumber(num)
	Points.level = level
	Points.ding = next_points
	if Points.param == 0 then 
		Points.param = 1
		UI:Lua_OpenWindow(0, "BossWnd_dragon.lua")
	end 
	local hand = GUI:WndFindWindow(Points.Wnd,"sx1")  
	if hand ~=0 then 
		GUI:EditSetTextM(hand,tab["11"].."-"..tab["10"])
	end
	hand = GUI:WndFindWindow(Points.Wnd,"sx2")  
	if hand ~=0 then 
		GUI:EditSetTextM(hand,tab["13"].."-"..tab["12"])
	end
	hand = GUI:WndFindWindow(Points.Wnd,"sx3")  
	if hand ~=0 then 
		GUI:EditSetTextM(hand,tab["15"].."-"..tab["14"])
	end
	hand = GUI:WndFindWindow(Points.Wnd,"sx4")  
	if hand ~=0 then 
		GUI:EditSetTextM(hand,tab["7"].."-"..tab["6"])
	end
	hand = GUI:WndFindWindow(Points.Wnd,"sx5")  
	if hand ~=0 then 
		GUI:EditSetTextM(hand,tab["9"].."-"..tab["8"])
	end
	hand = GUI:WndFindWindow(Points.Wnd,"sx6")  
	if hand ~=0 then 
		GUI:EditSetTextM(hand,tostring(tab["3"]))
	end
	
end

Points.main()