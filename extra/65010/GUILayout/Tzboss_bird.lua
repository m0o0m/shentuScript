Tzboss_bird ={} 
local ui = "<form default_parent='Tzboss'> <dialog OnInit='Tzboss_bird.UIInit' id='Tzboss_bird' image='1803300005' esc_close='false' drag='false' x='18' y='75' w='475' h='408' revmsg='true'>"
	.."	<button id='TestWndChild_1' image='1800000192' x='15' y='179' w='29' h='51' OnLButtonUp='Tzboss_bird.down' revmsg='true'/>"
	.."	<button id='TestWndChild_2' image='1800000196' x='430' y='179' w='29' h='51' OnLButtonUp='Tzboss_bird.up' revmsg='true'/>"
	.."	<image id='TestWndChild2' image='1803300020' x='405' y='11' w='54' h='115' check_point='0' revmsg='true'/>"
	.."	<image id='img_level1' image='1803300037' x='4' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='img_level2' image='' x='36' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='text1' image='1803300038' x='47' y='31' w='33' h='33' check_point='0' revmsg='true'/>"
	
	.."	<image id='line9' image='1803300040' x='146' y='266' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line8' image='1803300040' x='100' y='168' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line7' image='1803300040' x='176' y='188' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line6' image='1803300040' x='212' y='303' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line5' image='1803300040' x='246' y='220' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line4' image='1803300040' x='283' y='178' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line3' image='1803300040' x='210' y='142' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line2' image='1803300040' x='186' y='44' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line1' image='1803300040' x='256' y='78' w='28' h='28' check_point='0' revmsg='true'/>"
	
	.."	<image id='img10' image='1803300022' x='135' y='250' w='28' h='28' check_point='0' OnLButtonUp='Tzboss_bird.light_up' param = '10' revmsg='true'/>"
	.."	<image id='img9' image='1803300022' x='85' y='161'  w='28' h='28' check_point='0' OnLButtonUp='Tzboss_bird.light_up' param = '9'  revmsg='true'/>"
	.."	<image id='img8' image='1803300022' x='157' y='178' w='28' h='28' check_point='0' OnLButtonUp='Tzboss_bird.light_up' param = '8'  revmsg='true'/>"
	.."	<image id='img7' image='1803300022' x='202' y='296' w='28' h='28' check_point='0' OnLButtonUp='Tzboss_bird.light_up' param = '7'  revmsg='true'/>"
	.."	<image id='img6' image='1803300022' x='236' y='212' w='28' h='28' check_point='0' OnLButtonUp='Tzboss_bird.light_up' param = '6'  revmsg='true'/>"
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
	
	local palce = {{6347,18.25},{3549,12.9},{1813,-140.2},{3991,-165},{1554,-15.8},{2035,-30.4},{3585,55.28},{3742,6},{3102,-142.75}}
	for i=1,#palce  do 
		local hand = GUI:WndFindWindow(_Handle,"line"..i)
		GUI:ImageSetTransfrom(hand,palce[i][1],7500,palce[i][2]) 
	end
	 
	for i = 1, 10 do 
		local handle = GetWindow(_Handle, "img"..i)
		if handle~= 0 then 
			if Points.num == 3 then  
				if i<= Points.level then
					GUI:WndSetEnableM(handle, false)
					Tzboss_bird.Img1(i) 
				end 
			else 
				GUI:WndSetEnableM(handle, false)
				Tzboss_bird.Img1(i)   
			end
		end
		Tzboss_bird.Hint(i)
	end 
	UI:Lua_SubmitForm("Tzboss_buy_s", "own","".. 3)
	
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
	if CL:GetPlayerSelfPropBase(3) then
		local job = LuaRet 
		if tonumber(monster_tab[job][i][4]) == 0 then  
			if i ~= 1 or i ~= 2 then 
				GUI:WndSetHint(handle,"朱雀 ["..i.."]\n        物攻：".. monster_tab[job][i][1] .."\n    魔攻：" .. monster_tab[job][i][1] .."\n    道攻：" .. monster_tab[job][i][1] .."\n" )
			else
				GUI:WndSetHint(handle,"朱雀 ["..i.."]\n        物攻：".. monster_tab[job][i][1] .."\n     魔攻：" .. monster_tab[job][i][1] .."\n     道攻：" .. monster_tab[job][i][1] .."\n" )
			end
		else  
			if i == 4 then
				GUI:WndSetHint(handle,"朱雀 ["..i.."]\n        物防：".. monster_tab[job][i][2] .."\n     魔防：" .. monster_tab[job][i][3] .."\n      生命：".. monster_tab[job][i][4] .."\n" )
			else
				GUI:WndSetHint(handle,"朱雀 ["..i.."]\n        物防：".. monster_tab[job][i][2] .."\n     魔防：" .. monster_tab[job][i][3] .."\n     生命：".. monster_tab[job][i][4] .."\n" )
			end
		end 
	end	
end

function Tzboss_bird.down(_Handle)
	
	if Tzboss_bird.Wnd ~= 0 then  
		GUI:WndClose(Tzboss_bird.Wnd)
	end
	UI:Lua_OpenWindow(Tzboss_bird.Wnd,"Tzboss_tiger.lua")
end

function Tzboss_bird.up(_Handle) 
	if Points.num ~= 3 then 
		if Tzboss_bird.Wnd ~= 0 then  
			GUI:WndClose(Tzboss_bird.Wnd)
		end
		UI:Lua_OpenWindow(Tzboss_bird.Wnd,"Tzboss_tortoise.lua")
	else
		Tzboss_bird.nowWnd = GUI:WndFindWindow(Tzboss_bird.Wnd,"TestWndChild_2")
		Tzboss_bird.msg_up("激活当前全部积分点后即可查看下一页面")
	end

end

function Tzboss_bird.light_up(_Handle) 
	Tzboss_bird.nowWnd = _Handle
	local param = GUI:WndGetParam(_Handle) 
	UI:Lua_SubmitForm("Tzboss_buy_s", "addproperty", "3#"..param) 
end 

function Tzboss_bird.own(next_points,now_points)      --  当前积分 的积分显示
	
	local hand = GUI:WndFindWindow(Tzboss_bird.Wnd,"next_points")  
	if hand ~= 0 then 
		GUI:EditSetTextM(hand,""..Points.ding)
	end
	hand = GUI:WndFindWindow(Tzboss_bird.Wnd,"now_points")  
	if hand ~=0 then 
		GUI:EditSetTextM(hand,""..now_points)
		if Points.ding > now_points then 
			GUI:WndSetTextColorM(hand, MakeARGB(255,255,0,0))
		else
			GUI:WndSetTextColorM(hand, MakeARGB(255,194,182,160))
		end
	end
	
end

function Tzboss_bird.Img(param,next_points,now_points)   
	Points.ding = next_points
	if Tzboss_bird.nowWnd ~= 0 then 
		GUI:WndSetEnableM(Tzboss_bird.nowWnd, false) 
	end
	Tzboss_bird.own(next_points,now_points)
	Tzboss_bird.Img1(param)
	if param ==10 then 
		Points.num = 4
	end
end
function Tzboss_bird.Img1(param)              --图片和线条变亮
	ImageSetImageID(nil, "Tzboss,Tzboss_bird,img".. param,1803300023)
	if param > 1 then 
		local index =  param - 1
		ImageSetImageID(nil, "Tzboss,Tzboss_bird,line".. index,1803300041)
		--local tab = {{6347,21.25},{3549,27.9},{4213,-104.2},{3991,-155},{3554,-77.8},{3835,-50.4},{5885,69.28},{3742,16},{5102,-102.75}}
		local tab = {{6347,21.25},{3549,13.9},{1813,-140.2},{3291,-168},{1554,-15.8},{2035,-30.4},{3585,55.28},{3742,6},{3102,-142.75}}
		--local GUIHandle = GUI:WndFindWindow(nil, "Tzboss,Tzboss_bird,line".. index)	
		local GUIHandle = GUI:WndFindWindow(Tzboss_bird.Wnd,"line".. index)
		GUI:ImageSetTransfrom(GUIHandle,tab[index][1],7500,tab[index][2])
	end
	if param == 10 then
		local GUIHandle = GUI:WndFindWindow(Tzboss_bird.Wnd,"text1")
		GUI:WndSetPosM(GUIHandle, 75, 31)
		GUIHandle = GUI:WndFindWindow(Tzboss_bird.Wnd,"img_level2")
		GUI:WndSetVisible(GUIHandle, true)
		ImageSetImageID(Tzboss_bird.Wnd, "img_level1",1803300028)
		ImageSetImageID(Tzboss_bird.Wnd, "img_level2",1803300037)
	else
		ImageSetImageID(Tzboss_bird.Wnd, "img_level1",tonumber(CL:Plus(tostring(1803300027),tostring(param))))
	end
	Tzboss_bird.Hint(param)
end


function Tzboss_bird.msg() 
	Tzboss_bird.msg_up("BOSS积分不足，可在商城购买或打BOSS获得")
end
function Tzboss_bird.msg2()
	Tzboss_bird.msg_up("请先激活上级的积分点")
end
Tzboss_bird.msg_tab={}
function Tzboss_bird.msg_up(str) 
	local _GUIHandle = GUI:EditCreate(Tzboss_bird.nowWnd, "msg", -100, -25, 220, 25)
	Tzboss_bird.msg_tab[#Tzboss_bird.msg_tab+1]=_GUIHandle
	if _GUIHandle ~= 0 then 
		GUI:WndMoveToParentTop(_GUIHandle)
		GUI:EditSetTextColor(_GUIHandle, MakeARGB(255,255,0,0))
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, str)  
		CL:AddDelayTask("Tzboss_bird.msg_uppp(\".._GUIHandle..\")" , 1000, 1)
	end	 
end
function Tzboss_bird.msg_uppp(_GUIHandle) 
	for i=1,#Tzboss_bird.msg_tab do 
		GUI:EditSetTextM(Tzboss_bird.msg_tab[i], "")  
	end
end

Tzboss_bird.main()