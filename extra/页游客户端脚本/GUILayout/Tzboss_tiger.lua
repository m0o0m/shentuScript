Tzboss_tiger ={}  
local ui = "<form default_parent='Tzboss'> <dialog OnInit='Tzboss_tiger.UIInit' id='Tzboss_tiger' image='1803300004' x='18' y='75' w='475' h='408' revmsg='true'>"
	.."	<button id='TestWndChild_1' image='1800000192' x='15' y='179' w='29' h='51' check_point='0' OnLButtonUp='Tzboss_tiger.down' revmsg='true'/>"
	.."	<button id='TestWndChild_2' image='1800000196' x='430' y='179' w='29' h='51' check_point='0' OnLButtonUp='Tzboss_tiger.up' revmsg='true'/>"
	.."	<image id='TestWndChild2' image='1803300019' x='405' y='11' w='54' h='115' check_point='0' revmsg='true'/>"
	.."	<image id='img_level1' image='1803300037' x='4' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='img_level2' image='1803300037' x='36' y='14' w='48' h='54' visible = 'false' check_point='0' revmsg='true'/>"
	.."	<image id='text1' image='1803300038' x='47' y='31' w='33' h='33' check_point='0' revmsg='true'/>"
	
	.."	<edit id='TestWndChild_15' x='122' y='353' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='下级消耗积分：' font='system'/>"
	.."	<edit id='TestWndChild_16' x='122' y='376' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='当前拥有积分：' font='system'/>"
	.."	<edit id='next_points' x='210' y='353' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."	<edit id='now_points' x='210' y='376' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."	<image id='line1' image='1803300040' enable = 'false' x='300' y='160' w='213' h='11' revmsg='true'/>"
	.."	<image id='line2' image='1803300040' enable = 'false' x='308' y='100' w='213' h='11' revmsg='true'/>"   
	.."	<image id='line3' image='1803300040' enable = 'false' x='213' y='136' w='213' h='11' revmsg='true'/>"
	.."	<image id='line4' image='1803300040' enable = 'false' x='148' y='96' w='213' h='11' revmsg='true'/>"
	.."	<image id='line5' image='1803300040' enable = 'false' x='100' y='176' w='213' h='11' revmsg='true'/>"
	.."	<image id='line6' image='1803300040' enable = 'false' x='95' y='255' w='213' h='11' revmsg='true'/>"
	.."	<image id='line7' image='1803300040' enable = 'false' x='181' y='219' w='213' h='11' revmsg='true'/>"
	.."	<image id='line8' image='1803300040' enable = 'false' x='255' y='229' w='213' h='11' revmsg='true'/>"
	.."	<image id='line9' image='1803300040' enable = 'false' x='286' y='295' w='213' h='11' revmsg='true'/>"
	
	.."	<image id='img1' image='1803300022' x='361' y='169' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '1'  revmsg='true'/>"
	.."	<image id='img2' image='1803300022' x='286' y='153' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '2'  revmsg='true'/>"
	.."	<image id='img3' image='1803300022' x='287' y='88' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '3'  revmsg='true'/>"
	.."	<image id='img4' image='1803300022' x='203' y='127' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '4'  revmsg='true'/>"
	.."	<image id='img5' image='1803300022' x='133' y='90' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '5'  revmsg='true'/>"
	.."	<image id='img6' image='1803300022' x='90' y='165' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '6'  revmsg='true'/>"
	.."	<image id='img7' image='1803300022' x='87' y='241' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '7'  revmsg='true'/>"
	.."	<image id='img8' image='1803300022' x='161' y='202' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '8'  revmsg='true'/>"
	.."	<image id='img9' image='1803300022' x='237' y='208' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '9'  revmsg='true'/>"
	.."	<image id='img10' image='1803300022' x='277' y='280' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '10'  revmsg='true'/>"
	.." </dialog>"
	.."</form>"

function Tzboss_tiger.main()
	GenFormByString(ui)
end
Tzboss_tiger.Wnd=0
--UI Logic Code Start
function Tzboss_tiger.UIInit(_Handle)
	
	local GUIHandle = 0
	Tzboss_tiger.Wnd=_Handle

	local tab = {{3723,14},{3099,90},{4515,-25},{3781,27},{4423,-60},{3712,-88},{3990,154},{3672,-176},{3826,-119}}
	for i =1 , #tab do
		GUIHandle = GUIWndFindWindow(_Handle,"line" .. i)
		GUIImageSetTransfrom(GUIHandle,tab[i][1],10000,tab[i][2])
	end
	for i = 1, 10 do 
	local handle = GetWindow(_Handle, "img"..i)
		if handle ~= 0 then 
			if Points.num == 2 then 
				if i<= Points.level then 
					GUIWndSetEnableM(handle, false)
					Tzboss_tiger.Img1(i) 
					WndAddEffect(_Handle, "img"..i, 3020102200, -37, -37, 100, 0) 
				elseif i == Points.level+1 then
					WndAddEffect(_Handle, "img"..i, 3020102000, -37, -37, 100, 0) 
				end
			else
				GUIWndSetEnableM(handle, false)
				Tzboss_tiger.Img1(i)
				WndAddEffect(_Handle, "img"..i, 3020102200, -37, -37, 100, 0) 
			end
		end
		Tzboss_tiger.Hint(i) 
	end
	
	UI:Lua_SubmitForm("Tzboss_buy_s", "own",2)
	
end  


function Tzboss_tiger.Hint(i)  
	local monster_tab = { 
				{
				{"48-68","0-0","0-0","0"},      
				{"55-84","0-0","0-0","0"},
				{"59-93","0-0","0-0","0"},
				{"0-0","19-40","5-10","920"},
				{"70-105","0-0","0-0","0"},
				{"74-137","0-0","0-0","0"},
				{"0-0","27-51","10-20","1015"},
				{"75-163","0-0","0-0","0"},
				{"88-188","0-0","0-0","0"},
				{"0-0","40-67","10-20","1280"},
				},
				{
				{"48-68","0-0","0-0","0"},      
				{"55-84","0-0","0-0","0"},
				{"59-93","0-0","0-0","0"},
				{"0-0","19-40","5-10","385"},
				{"70-105","0-0","0-0","0"},
				{"74-137","0-0","0-0","0"},
				{"0-0","27-51","10-20","425"},
				{"75-163","0-0","0-0","0"},
				{"88-188","0-0","0-0","0"},
				{"0-0","40-67","10-20","540"},
				},
				{
				{"48-68","0-0","0-0","0"},      
				{"55-84","0-0","0-0","0"},
				{"59-93","0-0","0-0","0"},
				{"0-0","19-40","5-10","385"},
				{"70-105","0-0","0-0","0"},
				{"74-137","0-0","0-0","0"},
				{"0-0","27-51","10-20","455"},
				{"75-163","0-0","0-0","0"},
				{"88-188","0-0","0-0","0"},
				{"0-0","40-67","10-20","595"},
				},
				
				}
	local handle = GetWindow(Tzboss_tiger.Wnd,"img"..i)
	if CLGetPlayerSelfPropBase(3) then
		local job = as3.tolua(LuaRet) 
		if tonumber(monster_tab[job][i][4]) == 0 then  
			GUIWndSetHint(handle,"<font color='#D58840'>白虎 ["..i.."]\n</font><font color='#B8A085'>物攻：".. monster_tab[job][i][1] .."\n魔攻：" .. monster_tab[job][i][1] .."\n道攻：" .. monster_tab[job][i][1] .."\n</font>" )
		else  
			GUIWndSetHint(handle,"<font color='#D58840'>白虎 ["..i.."]\n</font><font color='#B8A085'>物防：".. monster_tab[job][i][2] .."\n魔防：" .. monster_tab[job][i][3] .."\n生命：".. monster_tab[job][i][4] .."\n</font>" )
		end 
	end	
 
end

function Tzboss_tiger.down(_Handle)
	if Tzboss_tiger.Wnd~= 0 then 
		GUIWndClose(Tzboss_tiger.Wnd)
	end
	UI:Lua_OpenWindow(Tzboss_tiger.Wnd,"Tzboss_dragon.lua")
end
function Tzboss_tiger.up(_Handle)
	if Points.num ~= 2 then 
		if Tzboss_tiger.Wnd~= 0 then 
			GUIWndClose(Tzboss_tiger.Wnd)
		end
		UI:Lua_OpenWindow(Tzboss_tiger.Wnd,"Tzboss_bird.lua")
	else 
		window_msg_up(_Handle,"激活当前全部积分点后即可查看下一页面",-80,-30,60,MakeARGB(255,255,0,0),1.5)
	
	end
end

function Tzboss_tiger.ImgClick(_handle)
	
	Tzboss_tiger.nowWnd = _handle
	local param = GUIWndGetParam(_handle)
	UI:Lua_SubmitForm("Tzboss_buy_s", "addproperty", "2#"..param)
	
end


function Tzboss_tiger.own(next_points,now_points)      --  当前积分 的积分显示
	
	local hand = GUIWndFindWindow(nil,"Tzboss,Tzboss_tiger,next_points")  
	if hand ~=0 then 
		GUIEditSetTextM(hand,Points.ding)
	end
	hand = GUIWndFindWindow(nil,"Tzboss,Tzboss_tiger,now_points")  
	if hand ~=0 then 
		GUIEditSetTextM(hand,now_points)
		if Points.ding > now_points then 
			GUIWndSetTextColorM(hand, MakeARGB(255,255,0,0)) 
		else
			GUIWndSetTextColorM(hand, MakeARGB(255,194,182,160))
		end
	end
	
end

function Tzboss_tiger.Img(param,next_points,now_points)   
	Points.ding = next_points
	if Tzboss_tiger.nowWnd ~= 0 then 
		GUIWndSetEnableM(Tzboss_tiger.nowWnd, false) 
	end
	Tzboss_tiger.own(next_points,now_points)
	Tzboss_tiger.Img1(param)
	WndAddEffect(Tzboss_tiger.Wnd, "img" .. param, 3020102200, -37, -37, 100, 0) 
	WndAddEffect(Tzboss_tiger.Wnd, "img" .. (param+1), 3020102000, -37, -37, 100, 0) 
	if param == 10 then 
		Points.num = 3
	end
end

function Tzboss_tiger.Img1(param)              --图片和线条变亮
	ImageSetImageID(nil, "Tzboss,Tzboss_tiger,img".. param,1803300023)
	if param > 1 then 
		local index =  param - 1
		ImageSetImageID(nil, "Tzboss,Tzboss_tiger,line".. index,1803300041)
		local tab = {{3723,14},{3099,90},{4515,-25},{3781,27},{4423,-60},{3712,-88},{3990,154},{3672,-176},{3826,-119}}
		local GUIHandle = GUIWndFindWindow(nil, "Tzboss,Tzboss_tiger,line".. index)
		GUIImageSetTransfrom(GUIHandle,tab[index][1],7500,tab[index][2])
	end
	if param == 10 then
		GUIHandle = GUIWndFindWindow(nil, "Tzboss,Tzboss_tiger,text1")
		GUIWndSetPosM(GUIHandle, 75, 31)
		GUIHandle = GUIWndFindWindow(nil, "Tzboss,Tzboss_tiger,img_level2")
		GUIWndSetVisible(GUIHandle, true)
		ImageSetImageID(nil, "Tzboss,Tzboss_tiger,img_level1",1803300028)
		ImageSetImageID(nil, "Tzboss,Tzboss_tiger,img_level2",1803300037)
	else
		ImageSetImageID(nil, "Tzboss,Tzboss_tiger,img_level1",1803300037-10+param)
	end
	Tzboss_tiger.Hint(param)  
end

function Tzboss_tiger.msg()
	local str = "BOSS积分不足，可在商城购买或打BOSS获得"
	local color = MakeARGB(255,255,0,0)
	window_msg_up(Tzboss_tiger.nowWnd,str,-80,-30,60,color,1.5)
end
function Tzboss_tiger.msg2()
	window_msg_up(Tzboss_tiger.nowWnd,"请先激活上级的积分点",-80,-30,60,MakeARGB(255,255,0,0),1.5)
end


Tzboss_tiger.main()