Tzboss_bird ={} 
local ui = "<form default_parent='Tzboss'> <dialog OnInit='Tzboss_bird.UIInit' id='Tzboss_bird' image='1803300005' x='18' y='75' w='475' h='408' revmsg='true'>"
	.."	<button id='TestWndChild_1' image='1800000192' x='15' y='179' w='29' h='51' OnLButtonUp='Tzboss_bird.down' revmsg='true'/>"
	.."	<button id='TestWndChild_2' image='1800000196' x='430' y='179' w='29' h='51' OnLButtonUp='Tzboss_bird.up' revmsg='true'/>"
	.."	<image id='TestWndChild2' image='1803300020' x='405' y='11' w='54' h='115' check_point='0' revmsg='true'/>"
	.."	<image id='img_level1' image='1803300037' x='4' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='img_level2' image='' x='36' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='text1' image='1803300038' x='47' y='31' w='33' h='33' check_point='0' revmsg='true'/>"
	
	.."	<image id='line9' image='1803300040' x='116' y='276' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line8' image='1803300040' x='100' y='168' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line7' image='1803300040' x='176' y='188' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line6' image='1803300040' x='212' y='303' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line5' image='1803300040' x='264' y='240' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line4' image='1803300040' x='283' y='178' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line3' image='1803300040' x='200' y='137' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line2' image='1803300040' x='186' y='44' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line1' image='1803300040' x='256' y='78' w='28' h='28' check_point='0' revmsg='true'/>"
	
	.."	<image id='img10' image='1803300022' x='105' y='260' w='28' h='28' check_point='0' OnLButtonUp='Tzboss_bird.light_up' param = '10' revmsg='true'/>"
	.."	<image id='img9' image='1803300022' x='85' y='161'  w='28' h='28' check_point='0' OnLButtonUp='Tzboss_bird.light_up' param = '9'  revmsg='true'/>"
	.."	<image id='img8' image='1803300022' x='157' y='178' w='28' h='28' check_point='0' OnLButtonUp='Tzboss_bird.light_up' param = '8'  revmsg='true'/>"
	.."	<image id='img7' image='1803300022' x='202' y='296' w='28' h='28' check_point='0' OnLButtonUp='Tzboss_bird.light_up' param = '7'  revmsg='true'/>"
	.."	<image id='img6' image='1803300022' x='254' y='233' w='28' h='28' check_point='0' OnLButtonUp='Tzboss_bird.light_up' param = '6'  revmsg='true'/>"
	.."	<image id='img5' image='1803300022' x='270' y='160' w='28' h='28' check_point='0' OnLButtonUp='Tzboss_bird.light_up' param = '5'  revmsg='true'/>"
	.."	<image id='img4' image='1803300022' x='193' y='124' w='28' h='28' check_point='0' OnLButtonUp='Tzboss_bird.light_up' param = '4'  revmsg='true'/>"
	.."	<image id='img3' image='1803300022' x='170' y='37'  w='28' h='28' check_point='0' OnLButtonUp='Tzboss_bird.light_up' param = '3'  revmsg='true'/>"
	.."	<image id='img2' image='1803300022' x='238' y='70'  w='28' h='28' check_point='0' OnLButtonUp='Tzboss_bird.light_up' param = '2'  revmsg='true'/>"
	.."	<image id='img1' image='1803300022' x='364' y='118' w='28' h='28' check_point='0' OnLButtonUp='Tzboss_bird.light_up' param = '1'  revmsg='true'/>"
	
	.."	<edit id='TestWndChild_15' x='122' y='353' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='下级消耗积分：' font='system'/>"
	.."	<edit id='TestWndChild_16' x='122' y='376' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='当前拥有积分：' font='system'/>"
	.."	<edit id='next_points' x='210' y='353' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."	<edit id='now_points' x='210' y='376' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"

	.." </dialog>"
	.."</form>"

function Tzboss_bird.main()
	GenFormByString(ui)
end
Tzboss_bird.Wnd = 0
Tzboss_bird.nowWnd = 0 
--UI Logic Code Start
function Tzboss_bird.UIInit(_Handle)
	Tzboss_bird.Wnd = _Handle
	
	local palce = {{6347,21.25},{3549,27.9},{4213,-104.2},{3991,-155},{3554,-77.8},{3835,-50.4},{5885,69.28},{3742,16},{5102,-102.75}}
	for i=1,#palce  do 
		local hand = GUIWndFindWindow(_Handle,"line"..i)
		GUIImageSetTransfrom(hand,palce[i][1],7500,palce[i][2]) 
	end
	 
	for i = 1, 10 do 
		local handle = GetWindow(_Handle, "img"..i)
		if handle~= 0 then 
			if Points.num == 3 then  
				if i<= Points.level then
					GUIWndSetEnableM(handle, false)
					Tzboss_bird.Img1(i) 
					WndAddEffect(_Handle, "img"..i, 3020102200, -37, -37, 100, 0) 
				elseif i == Points.level+1 then
					WndAddEffect(_Handle, "img"..i, 3020102000, -37, -37, 100, 0) 
				end 
			else 
				GUIWndSetEnableM(handle, false)
				Tzboss_bird.Img1(i)
				WndAddEffect(_Handle, "img"..i, 3020102200, -37, -37, 100, 0)  
			end
		end
		Tzboss_bird.Hint(i)
	end 
	UI:Lua_SubmitForm("Tzboss_buy_s", "own",3)
	
end

function Tzboss_bird.Hint(i)
	local monster_tab = {  
				{
				{"89-143","0-0","0-0","0"},      
				{"90-176","0-0","0-0","0"},
				{"112-195","0-0","0-0","0"},
				{"0-0","40-84","5-10","1832"},
				{"116-221","0-0","0-0","0"},
				{"142-288","0-0","0-0","0"},
				{"0-0","57-107","10-20","2132"},
				{"235-342","0-0","0-0","0"},
				{"244-395","0-0","0-0","0"},
				{"0-0","84-140","10-20","2688"},
				}, 
				{
				{"89-143","0-0","0-0","0"},      
				{"90-176","0-0","0-0","0"},
				{"112-195","0-0","0-0","0"},
				{"0-0","40-84","5-10","770"},
				{"116-221","0-0","0-0","0"},
				{"142-288","0-0","0-0","0"},
				{"0-0","57-107","10-20","1130"},
				{"235-342","0-0","0-0","0"},
				{"244-395","0-0","0-0","0"},
				{"0-0","84-140","10-20","1700"},
				}, 
				{
				{"89-143","0-0","0-0","0"},      
				{"90-176","0-0","0-0","0"},
				{"112-195","0-0","0-0","0"},
				{"0-0","40-84","5-10","1000"},
				{"116-221","0-0","0-0","0"},
				{"142-288","0-0","0-0","0"},
				{"0-0","57-107","10-20","1650"},
				{"235-342","0-0","0-0","0"},
				{"244-395","0-0","0-0","0"},
				{"0-0","84-140","10-20","2300"},
				}, 
				}
	local handle = GetWindow(Tzboss_bird.Wnd,"img"..i)
	if CLGetPlayerSelfPropBase(3) then
		local job = as3.tolua(LuaRet) 
		if tonumber(monster_tab[job][i][4]) == 0 then  
			GUIWndSetHint(handle,"<font color='#D58840'>朱雀 ["..i.."]\n</font><font color='#B8A085'>物攻：".. monster_tab[job][i][1] .."\n魔攻：" .. monster_tab[job][i][1] .."\n道攻：" .. monster_tab[job][i][1] .."\n</font>" )
		else  
			GUIWndSetHint(handle,"<font color='#D58840'>朱雀 ["..i.."]\n</font><font color='#B8A085'>物防：".. monster_tab[job][i][2] .."\n魔防：" .. monster_tab[job][i][3] .."\n生命：".. monster_tab[job][i][4] .."\n</font>" )
		end 
	end	
end

function Tzboss_bird.down(_Handle)
	if Tzboss_bird.Wnd ~= 0 then  
		GUIWndClose(Tzboss_bird.Wnd)
	end
	UI:Lua_OpenWindow(Tzboss_bird.Wnd,"Tzboss_tiger.lua")
end

function Tzboss_bird.up(_Handle)
	if Points.num ~= 3 then 
		if Tzboss_bird.Wnd ~= 0 then  
			GUIWndClose(Tzboss_bird.Wnd)
		end
		UI:Lua_OpenWindow(Tzboss_bird.Wnd,"Tzboss_tortoise.lua")
	else
		window_msg_up(_Handle,"激活当前全部积分点后即可查看下一页面",-80,-30,60,MakeARGB(255,255,0,0),1.5)
	end

end

function Tzboss_bird.light_up(_Handle) 
	Tzboss_bird.nowWnd = _Handle
	local param = GUIWndGetParam(_Handle)
	UI:Lua_SubmitForm("Tzboss_buy_s", "addproperty", "3#"..param) 
end 

function Tzboss_bird.own(next_points,now_points)      --  当前积分 的积分显示
	
	local hand = GUIWndFindWindow(nil,"Tzboss,Tzboss_bird,next_points")  
	if hand ~= 0 then 
		GUIEditSetTextM(hand,Points.ding)
	end
	hand = GUIWndFindWindow(nil,"Tzboss,Tzboss_bird,now_points")  
	if hand ~=0 then 
		GUIEditSetTextM(hand,now_points)
		if Points.ding > now_points then 
			GUIWndSetTextColorM(hand, MakeARGB(255,255,0,0))
		else
			GUIWndSetTextColorM(hand, MakeARGB(255,194,182,160))
		end
	end
	
end

function Tzboss_bird.Img(param,next_points,now_points)   
	Points.ding = next_points
	if Tzboss_bird.nowWnd ~= 0 then 
		GUIWndSetEnableM(Tzboss_bird.nowWnd, false) 
	end
	Tzboss_bird.own(next_points,now_points)
	Tzboss_bird.Img1(param)
	
	WndAddEffect(Tzboss_bird.Wnd, "img" .. param, 3020102200, -37, -37, 100, 0) 
	WndAddEffect(Tzboss_bird.Wnd, "img" .. (param+1), 3020102000, -37, -37, 100, 0) 
	if param ==10 then 
		Points.num = 4
	end
end
function Tzboss_bird.Img1(param)              --图片和线条变亮
	ImageSetImageID(nil, "Tzboss,Tzboss_bird,img".. param,1803300023)
	if param > 1 then 
		local index =  param - 1
		ImageSetImageID(nil, "Tzboss,Tzboss_bird,line".. index,1803300041)
		local tab = {{6347,21.25},{3549,27.9},{4213,-104.2},{3991,-155},{3554,-77.8},{3835,-50.4},{5885,69.28},{3742,16},{5102,-102.75}}
		local GUIHandle = GUIWndFindWindow(nil, "Tzboss,Tzboss_bird,line".. index)
		GUIImageSetTransfrom(GUIHandle,tab[index][1],7500,tab[index][2])
	end
	if param == 10 then
		GUIHandle = GUIWndFindWindow(nil, "Tzboss,Tzboss_bird,text1")
		GUIWndSetPosM(GUIHandle, 75, 31)
		GUIHandle = GUIWndFindWindow(nil, "Tzboss,Tzboss_bird,img_level2")
		GUIWndSetVisible(GUIHandle, true)
		ImageSetImageID(nil, "Tzboss,Tzboss_bird,img_level1",1803300028)
		ImageSetImageID(nil, "Tzboss,Tzboss_bird,img_level2",1803300037)
	else
		ImageSetImageID(nil, "Tzboss,Tzboss_bird,img_level1",1803300037-10+param)
	end
	Tzboss_bird.Hint(param)
end

function Tzboss_bird.msg()
	local str = "BOSS积分不足，可在商城购买或打BOSS获得"
	local color = MakeARGB(255,255,0,0)
	window_msg_up(Tzboss_bird.nowWnd,str,-80,-30,60,color,1.5)
end
function Tzboss_bird.msg2()
	window_msg_up(Tzboss_bird.nowWnd,"请先激活上级的积分点",-80,-30,60,MakeARGB(255,255,0,0),1.5)
end


Tzboss_bird.main()