Tzboss_dragon ={}
local ui = "<form default_parent='Tzboss'> <dialog OnInit='Tzboss_dragon.UIInit' id='Tzboss_dragon' image='1803300007' x='18' y='75' w='475' h='408' esc_close='true' revmsg='true'>"
	.."	<button id='TestWndChild_1' image='1800000192' x='15' y='179' w='29' h='51' check_point='0' enable='false' revmsg='true'/>"
	.."	<button id='TestWndChild_2' image='1800000196' x='430' y='179' w='29' h='51' check_point='0' OnLButtonUp='Tzboss_dragon.up' revmsg='true'/>"
	.."	<image id='TestWndChild2' image='1803300018' x='405' y='11' w='54' h='115' check_point='0' revmsg='true'/>"
	
	.."	<image id='img_line1' image='1803300040' x='286' y='60' w='213' h='11' check_point='0' revmsg='true' />"
	.."	<image id='img_line2' image='1803300040' x='278' y='163' w='213' h='11' check_point='0' revmsg='true'/>"
	.."	<image id='img_line3' image='1803300040' x='203' y='50' w='213' h='11' check_point='0' revmsg='true'/>"
	.."	<image id='img_line4' image='1803300040' x='142' y='149' w='213' h='11' check_point='0' revmsg='true'/>"
	.."	<image id='img_line5' image='1803300040' x='260' y='218' w='213' h='11' check_point='0' revmsg='true'/>"
	.."	<image id='img_line6' image='1803300040' x='286' y='264' w='213' h='11' check_point='0' revmsg='true'/>"
	.."	<image id='img_line7' image='1803300040' x='258' y='341' w='213' h='11' check_point='0' revmsg='true'/>"
	.."	<image id='img_line8' image='1803300040' x='193' y='238' w='213' h='11' check_point='0' revmsg='true'/>"
	.."	<image id='img_line9' image='1803300040' x='118' y='264' w='213' h='11' check_point='0' revmsg='true'/>"
	
	.."	<image id='img_point1' image='1803300022' x='347' y='104' w='28' h='28' check_point='0' param = '1' OnLButtonUp='Tzboss_dragon.ImgClick' revmsg='true'/>"
	.."	<image id='img_point2' image='1803300022' x='268' y='53' w='28' h='28' check_point='0'  param = '2' OnLButtonUp='Tzboss_dragon.ImgClick' revmsg='true'/>"
	.."	<image id='img_point3' image='1803300022' x='266' y='146' w='28' h='28' check_point='0' param = '3' OnLButtonUp='Tzboss_dragon.ImgClick' revmsg='true'/>"
	.."	<image id='img_point4' image='1803300022' x='184' y='43' w='28' h='28' check_point='0' param = '4' OnLButtonUp='Tzboss_dragon.ImgClick' revmsg='true'/>"
	.."	<image id='img_point5' image='1803300022' x='137' y='133' w='28' h='28' check_point='0' param = '5' OnLButtonUp='Tzboss_dragon.ImgClick' revmsg='true'/>"
	.."	<image id='img_point6' image='1803300022' x='245' y='199' w='28' h='28' check_point='0' param = '6'OnLButtonUp='Tzboss_dragon.ImgClick' revmsg='true'/>"
	.."	<image id='img_point7' image='1803300022' x='275' y='247' w='28' h='28' check_point='0' param = '7' OnLButtonUp='Tzboss_dragon.ImgClick' revmsg='true'/>"
	.."	<image id='img_point8' image='1803300022' x='247' y='326' w='28' h='28' check_point='0' param = '8' OnLButtonUp='Tzboss_dragon.ImgClick' revmsg='true'/>"
	.."	<image id='img_point9' image='1803300022' x='177' y='230' w='28' h='28' check_point='0' param = '9' OnLButtonUp='Tzboss_dragon.ImgClick' revmsg='true'/>"
	.."	<image id='img_point10' image='1803300022' x='107' y='257' w='28' h='28' check_point='0' param = '10' OnLButtonUp='Tzboss_dragon.ImgClick' revmsg='true'/>"	
	
	.."	<image id='img_level1' image='1803300037' x='4' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='img_level2' image='' x='36' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='text1' image='1803300038' x='47' y='31' w='33' h='33' check_point='0' revmsg='true'/>"
	.."	<edit id='TestWndChild_15' x='122' y='353' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='下级消耗积分：' font='system'/>"
	.."	<edit id='TestWndChild_16' x='122' y='376' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='当前拥有积分：' font='system'/>"
	.."	<edit id='next_points' x='210' y='353' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."	<edit id='now_points' x='210' y='376' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.." </dialog>"
	.."</form>"

function Tzboss_dragon.main()
	GenFormByString(ui)
end
Tzboss_dragon.Wnd = 0
Tzboss_dragon.nowlevel= 1
Tzboss_dragon.nowWnd=0


--UI Logic Code Start
function Tzboss_dragon.UIInit(_Handle)
	Tzboss_dragon.Wnd = _Handle
	
	local palce = {{4852,37.8},{4300,-90},{6121,55.3},{5566,-60.4},{5806,-148.2},{2921,-123},{4326,-74.3},{5517,55.2},{3805,-18.6}}
	for i=1,#palce  do 
		local hand = GUIWndFindWindow(_Handle,"img_line"..i)
		GUIImageSetTransfrom(hand,palce[i][1],7500,palce[i][2])
	end 
 
	for i = 1, 10 do 
		local handle = GetWindow(_Handle, "img_point"..i)
		if Points.num == 1 then  
			if i<= Points.level then
				GUIWndSetEnableM(handle, false) 
				Tzboss_dragon.Img1(i) 
				WndAddEffect(_Handle, "img_point"..i, 3020102200, -37, -37, 100, 0) 
			elseif i == Points.level+1 then
				WndAddEffect(_Handle, "img_point"..i, 3020102000, -37, -37, 100, 0) 
			end 
		else 
			GUIWndSetEnableM(handle, false)
			Tzboss_dragon.Img1(i)
			WndAddEffect(_Handle, "img_point"..i, 3020102200, -37, -37, 100, 0) 
		end 
		Tzboss_dragon.Hint(i)
	end
	
	UI:Lua_SubmitForm("Tzboss_buy_s", "own",1)
	
end

function Tzboss_dragon.Hint(i)
		local dragon_tab = {
					{
					{"18-36","0-0","0-0","0"},      
					{"22-44","0-0","0-0","0"},
					{"29-49","0-0","0-0","0"},
					{"0-0","10-21","5-10","486"},
					{"35-55","0-0","0-0","0"},
					{"37-72","0-0","0-0","0"},
					{"0-0","14-27","5-10","533"},
					{"38-86","0-0","0-0","0"},
					{"42-99","0-0","0-0","0"},
					{"0-0","21-35","10-20","677"},
					}, 
					{
					{"18-36","0-0","0-0","0"},      
					{"22-44","0-0","0-0","0"},
					{"29-49","0-0","0-0","0"},
					{"0-0","10-21","5-10","205"},
					{"35-55","0-0","0-0","0"},
					{"37-72","0-0","0-0","0"},
					{"0-0","14-27","5-10","225"},
					{"38-86","0-0","0-0","0"},
					{"42-99","0-0","0-0","0"},
					{"0-0","21-35","10-20","285"},
					}, 
					{
					{"18-36","0-0","0-0","0"},      
					{"22-44","0-0","0-0","0"},
					{"29-49","0-0","0-0","0"},
					{"0-0","10-21","5-10","355"},
					{"35-55","0-0","0-0","0"},
					{"37-72","0-0","0-0","0"},
					{"0-0","14-27","5-10","355"},
					{"38-86","0-0","0-0","0"},
					{"42-99","0-0","0-0","0"},
					{"0-0","21-35","10-20","355"},
					}, 
					}
	handle = GetWindow(Tzboss_dragon.Wnd,"img_point"..i)
	if CLGetPlayerSelfPropBase(3) then
		local job = as3.tolua(LuaRet) 
		if tonumber(dragon_tab[job][i][4]) == 0 then  
			GUIWndSetHint(handle,"<font color='#D58840'>青龙 ["..i.."]\n</font><font color='#B8A085'>物攻：".. dragon_tab[job][i][1] .."\n魔攻：" .. dragon_tab[job][i][1] .."\n道攻：" .. dragon_tab[job][i][1] .."\n</font>" )
		else  
			GUIWndSetHint(handle,"<font color='#D58840'>青龙 ["..i.."]\n</font><font color='#B8A085'>物防：".. dragon_tab[job][i][2] .."\n魔防：" .. dragon_tab[job][i][3] .."\n生命：".. dragon_tab[job][i][4] .."\n</font>" )
		end 
	end	

end

function Tzboss_dragon.ImgClick(_handle)
	
	Tzboss_dragon.nowWnd = _handle
	local param = GUIWndGetParam(_handle)
	UI:Lua_SubmitForm("Tzboss_buy_s", "addproperty", "1#"..param)
	
end

function Tzboss_dragon.own(next_points,now_points)      --  当前积分 的积分显示
	
	local hand = GUIWndFindWindow(nil,"Tzboss,Tzboss_dragon,next_points")  
	if hand ~=0 then 
		GUIEditSetTextM(hand,Points.ding)
	end
	hand = GUIWndFindWindow(nil,"Tzboss,Tzboss_dragon,now_points")  
	if hand ~=0 then 
		GUIEditSetTextM(hand,now_points)
		if Points.ding > now_points then 
			GUIWndSetTextColorM(hand, MakeARGB(255,255,0,0)) 
		else
			GUIWndSetTextColorM(hand, MakeARGB(255,194,182,160))
		end
	end
	
end

function Tzboss_dragon.Img(param,next_points,now_points)  
	Points.ding = next_points
	if Tzboss_dragon.nowWnd ~= 0 then 
		GUIWndSetEnableM(Tzboss_dragon.nowWnd, false) 
	end
	Tzboss_dragon.own(next_points,now_points)
	Tzboss_dragon.Img1(param)
	WndAddEffect(Tzboss_dragon.Wnd, "img_point" .. param, 3020102200, -37, -37, 100, 0) 
	WndAddEffect(Tzboss_dragon.Wnd, "img_point" .. (param+1), 3020102000, -37, -37, 100, 0) 
	if param == 10 then 
		Points.num =2
	end
end
function Tzboss_dragon.Img1(param)              --图片和线条变亮

	ImageSetImageID(nil, "Tzboss,Tzboss_dragon,img_point".. param,1803300023)
	if param > 1 then 
		local index =  param - 1
		ImageSetImageID(nil, "Tzboss,Tzboss_dragon,img_line".. index,1803300041)
		local tab = {{4852,37.8},{4300,-90},{6121,55.3},{5566,-60.4},{5806,-148.2},{2921,-123},{4326,-74.3},{5517,55.2},{3805,-18.6}}
		local GUIHandle = GUIWndFindWindow(nil, "Tzboss,Tzboss_dragon,img_line".. index)
		GUIImageSetTransfrom(GUIHandle,tab[index][1],7500,tab[index][2])
	end
	if param == 10 then
		GUIHandle = GUIWndFindWindow(nil, "Tzboss,Tzboss_dragon,text1")
		GUIWndSetPosM(GUIHandle, 75, 31)
		GUIHandle = GUIWndFindWindow(nil, "Tzboss,Tzboss_dragon,img_level2")
		GUIWndSetVisible(GUIHandle, true)
		ImageSetImageID(nil, "Tzboss,Tzboss_dragon,img_level1",1803300028)
		ImageSetImageID(nil, "Tzboss,Tzboss_dragon,img_level2",1803300037)
	else
		ImageSetImageID(nil, "Tzboss,Tzboss_dragon,img_level1",1803300037-10+param)
	end 
	Tzboss_dragon.Hint(param)
	
end


function Tzboss_dragon.up(_Handle)
	
	if Points.num ~= 1  then 
		if Tzboss_dragon.Wnd ~= 0 then 
			GUIWndClose(Tzboss_dragon.Wnd)
		end
		UI:Lua_OpenWindow(Tzboss_dragon.Wnd,"Tzboss_tiger.lua")
	else
		window_msg_up(_Handle,"激活当前全部积分点后即可查看下一页面",-80,-30,60,MakeARGB(255,255,0,0),1.5)
	end
end

function Tzboss_dragon.msg()
	local str = "BOSS积分不足，可在商城购买或打BOSS获得"
	local color = MakeARGB(255,255,0,0)
	window_msg_up(Tzboss_dragon.nowWnd,str,-80,-30,60,color,1.5)
end
function Tzboss_dragon.msg2()
	window_msg_up(Tzboss_dragon.nowWnd,"请先激活上级的积分点",-80,-30,60,MakeARGB(255,255,0,0),1.5)
end
Tzboss_dragon.main()