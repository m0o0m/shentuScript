BossWnd_bird ={}
local ui = "<form default_parent = 'BossWnd,Points'> <dialog OnInit='BossWnd_bird.UIInit' id='BossWnd_bird' image='1803300005' x='0' y='0' w='475' h='408' revmsg='true' drag='false' >"
	.."<button id='TestWndChild_1' image='1800000192' x='15' y='179' w='29' h='51' OnLButtonUp='BossWnd_bird.down' revmsg='true'/>"
	.."<button id='TestWndChild_2' image='1800000196' x='430' y='179' w='29' h='51' OnLButtonUp='BossWnd_bird.up' revmsg='true'/>"
	.."<image id='TestWndChild2' image='1803300020' x='405' y='11' w='54' h='115' check_point='0' revmsg='true'/>"
	.."<image id='img_level1' image='1803300037' x='4' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."<image id='img_level2' image='' x='36' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."<image id='text1' image='1803300038' x='47' y='31' w='33' h='33' check_point='0' revmsg='true'/>"
	..""
	.."<image id='line9' image='1803300040' x='116' y='276' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line8' image='1803300040' x='100' y='168' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line7' image='1803300040' x='176' y='188' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line6' image='1803300040' x='212' y='303' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line5' image='1803300040' x='264' y='240' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line4' image='1803300040' x='283' y='178' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line3' image='1803300040' x='200' y='137' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line2' image='1803300040' x='186' y='44' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line1' image='1803300040' x='256' y='78' w='28' h='28' check_point='0' revmsg='true'/>"
	..""
	.."<image id='img10' image='1803300022' x='105' y='260' w='28' h='28' check_point='0' OnLButtonUp='BossWnd_bird.light_up' param = '10' revmsg='true'/>"
	.."<image id='img9' image='1803300022' x='85' y='161'  w='28' h='28' check_point='0' OnLButtonUp='BossWnd_bird.light_up' param = '9'  revmsg='true'/>"
	.."<image id='img8' image='1803300022' x='157' y='178' w='28' h='28' check_point='0' OnLButtonUp='BossWnd_bird.light_up' param = '8'  revmsg='true'/>"
	.."<image id='img7' image='1803300022' x='202' y='296' w='28' h='28' check_point='0' OnLButtonUp='BossWnd_bird.light_up' param = '7'  revmsg='true'/>"
	.."<image id='img6' image='1803300022' x='254' y='233' w='28' h='28' check_point='0' OnLButtonUp='BossWnd_bird.light_up' param = '6'  revmsg='true'/>"
	.."<image id='img5' image='1803300022' x='270' y='160' w='28' h='28' check_point='0' OnLButtonUp='BossWnd_bird.light_up' param = '5'  revmsg='true'/>"
	.."<image id='img4' image='1803300022' x='193' y='124' w='28' h='28' check_point='0' OnLButtonUp='BossWnd_bird.light_up' param = '4'  revmsg='true'/>"
	.."<image id='img3' image='1803300022' x='170' y='37'  w='28' h='28' check_point='0' OnLButtonUp='BossWnd_bird.light_up' param = '3'  revmsg='true'/>"
	.."<image id='img2' image='1803300022' x='238' y='70'  w='28' h='28' check_point='0' OnLButtonUp='BossWnd_bird.light_up' param = '2'  revmsg='true'/>"
	.."<image id='img1' image='1803300022' x='364' y='118' w='28' h='28' check_point='0' OnLButtonUp='BossWnd_bird.light_up' param = '1'  revmsg='true'/>"
	..""
	.."<edit id='TestWndChild_15' x='122' y='353' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='下级消耗积分：' font='system'/>"
	.."<edit id='TestWndChild_16' x='122' y='376' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='当前拥有积分：' font='system'/>"
	.."<edit id='next_points' x='210' y='353' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."<edit id='now_points' x='210' y='376' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.." </dialog>"
	.."</form>"

function BossWnd_bird.main()
	GenFormByString(ui)
end

--UI Logic Code Start

BossWnd_bird.Wnd = 0
BossWnd_bird.nowWnd = 0 
function BossWnd_bird.UIInit(_Handle)
	BossWnd_bird.Wnd = _Handle
	
	local palce = {{6347,7500,21.25},{3549,10000,10},{7213,3500,-95},{4091,10000,-170},{1054,20500,-10},{3035,8000,-20},{8585,5500,78},{3742,7500,10},{9502,5500,-97}}
	for i=1,#palce  do 
		local hand = GUI:WndFindWindow(_Handle,"line"..i)
		GUI:ImageSetTransfrom(hand,palce[i][1],palce[i][2],palce[i][3]) 
	end
	 
	for i = 1, 10 do 
		local handle = GetWindow(_Handle, "img"..i)
		if handle~= 0 then 
			if Points.num == 3 then  
				if i<= Points.level then
					BossWnd_bird.Img1(i) 
					WndAddEffect(_Handle, "img"..i, 3020102200, -37, -37, 100, 0) 
				elseif i == Points.level+1 then
					WndAddEffect(_Handle, "img"..i, 3020102000, -37, -37, 100, 0) 
				end 
			else 
				BossWnd_bird.Img1(i)
				WndAddEffect(_Handle, "img"..i, 3020102200, -37, -37, 100, 0)  
			end
		end
		BossWnd_bird.Hint(i)
	end 
	UI:Lua_SubmitForm("BossWnd_buy_s", "own","3")
	
end

function BossWnd_bird.Hint(i)
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
	local handle = GetWindow(BossWnd_bird.Wnd,"img"..i)
	GUI:WndSetHintWidth(handle, 300)
	if CL:GetPlayerSelfPropBase(3) then
		local job = LuaRet 
		if tonumber(monster_tab[job][i][4]) == 0 then  
			GUI:WndSetHint(handle,"朱雀 ["..i.."]\n物攻：".. monster_tab[job][i][1] .."\n魔攻：" .. monster_tab[job][i][1] .."\n道攻：" .. monster_tab[job][i][1] .."\n" )
		else  
			GUI:WndSetHint(handle,"朱雀 ["..i.."]\n物防：".. monster_tab[job][i][2] .."\n魔防：" .. monster_tab[job][i][3] .."\n生命：".. monster_tab[job][i][4] .."\n" )
		end 
	end	
end

function BossWnd_bird.down(_Handle)
	UI:Lua_OpenWindow(0, "BossWnd_tiger.lua")
	GUI:WndClose(BossWnd_bird.Wnd)
end

function BossWnd_bird.up(_Handle)
	if Points.num ~= 3 then 
		UI:Lua_OpenWindow(0, "BossWnd_tortoise.lua")
		GUI:WndClose(BossWnd_bird.Wnd)
	else
		BossWnd.window_msg_up(_Handle,"激活当前全部积分点后即可查看下一页面",-80,-30,60,MakeARGB(255,255,0,0),1.5)
	end

end

function BossWnd_bird.light_up(_Handle) 
	BossWnd_bird.nowWnd = _Handle
	local param = GUI:WndGetParam(_Handle)
	UI:Lua_SubmitForm("BossWnd_buy_s", "addproperty", "3#"..param) 
end 

function BossWnd_bird.own(next_points,now_points)      --  当前积分 的积分显示
	
	local hand = GUI:WndFindWindow(0,"BossWnd,Points,BossWnd_bird,next_points")  
	if hand ~= 0 then 
		GUI:EditSetTextM(hand,''..Points.ding)
	end
	hand = GUI:WndFindWindow(0,"BossWnd,Points,BossWnd_bird,now_points")  
	if hand ~=0 then 
		GUI:EditSetTextM(hand,''..now_points)
		if Points.ding > now_points then 
			GUI:WndSetTextColorM(hand, MakeARGB(255,255,0,0))
		else
			GUI:WndSetTextColorM(hand, MakeARGB(255,194,182,160))
		end
	end
	
end

function BossWnd_bird.Img(param,next_points,now_points)   
	Points.ding = next_points
	if BossWnd_bird.nowWnd ~= 0 then 
		GUI:WndSetEnableM(BossWnd_bird.nowWnd, false) 
	end
	BossWnd_bird.own(next_points,now_points)
	BossWnd_bird.Img1(param)
	
	WndAddEffect(BossWnd_bird.Wnd, "img" .. param, 3020102200, -37, -37, 100, 0) 
	WndAddEffect(BossWnd_bird.Wnd, "img" .. (param+1), 3020102000, -37, -37, 100, 0) 
	if param ==10 then 
		Points.num = 4
	end
end
function BossWnd_bird.Img1(param)              --图片和线条变亮
	ImageSetImageID(0, "BossWnd,Points,BossWnd_bird,img".. param,1803300023)
	if param > 1 then 
		local index =  param - 1
		ImageSetImageID(0, "BossWnd,Points,BossWnd_bird,line".. index,1803300041)
		local tab = {{6347,7500,21.25},{3549,10000,10},{7213,3500,-95},{4091,10000,-170},{1054,20500,-10},{3035,8000,-20},{8585,5500,78},{3742,7500,10},{9502,5500,-97}}
		local _GUIHandle = GUI:WndFindWindow(0, "BossWnd,Points,BossWnd_bird,line".. index)
		GUI:ImageSetTransfrom(_GUIHandle,tab[index][1],tab[index][2],tab[index][3])
	end
	if param == 10 then
		_GUIHandle = GUI:WndFindWindow(0, "BossWnd,Points,BossWnd_bird,text1")
		GUI:WndSetPosM(_GUIHandle, 75, 31)
		_GUIHandle = GUI:WndFindWindow(0, "BossWnd,Points,BossWnd_bird,img_level2")
		GUI:WndSetVisible(_GUIHandle, true)
		ImageSetImageID(0, "BossWnd,Points,BossWnd_bird,img_level1",1803300028)
		ImageSetImageID(0, "BossWnd,Points,BossWnd_bird,img_level2",1803300037)
	else
		local img = CL:Plus("1803300027",tostring(param))
		ImageSetImageID(0, "BossWnd,Points,BossWnd_bird,img_level1", tonumber(img))
	end
	BossWnd_bird.Hint(param)
end

function BossWnd_bird.msg()
	local str = "BOSS积分不足，可在商城购买或打BOSS获得"
	local color = MakeARGB(255,255,0,0)
	BossWnd.window_msg_up(BossWnd_bird.nowWnd,str,-80,-30,60,color,1.5)
end
function BossWnd_bird.msg2()
	BossWnd.window_msg_up(BossWnd_bird.nowWnd,"请先激活上级的积分点",-80,-30,60,MakeARGB(255,255,0,0),1.5)
end

BossWnd_bird.main()