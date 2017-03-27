Tzboss_tortoise ={}
local ui = "<form  default_parent='Tzboss'> <dialog OnInit='Tzboss_tortoise.UIInit' id='Tzboss_tortoise' image='1803300006' x='18' y='75' w='475' h='408' revmsg='true'>"
	.."	<button id='TestWndChild_1' image='1800000192' x='15' y='179' w='29' h='51' OnLButtonUp='Tzboss_tortoise.down' revmsg='true'/>"
	.."	<button id='TestWndChild_2' image='1800000196' x='430' y='179' w='29' h='51' revmsg='true' enable='false'/>"
	.."	<image id='TestWndChild2' image='1803300021' x='405' y='11' w='54' h='115' check_point='0' revmsg='true'/>"
	.."	<image id='img_level1' image='1803300037' x='4' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='img_level2' image='' x='36' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='text1' image='1803300038' x='47' y='31' w='33' h='33' check_point='0' revmsg='true'/>"
	
	.."	<image id='line1' image='1803300040' x='267' y='60' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line2' image='1803300040' x='320' y='161' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line3' image='1803300040' x='320' y='249' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line4' image='1803300040' x='265' y='181' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line5' image='1803300040' x='156' y='143' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line6' image='1803300040' x='81' y='201' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line7' image='1803300040' x='133' y='285' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line8' image='1803300040' x='186' y='230' w='28' h='28' check_point='0' revmsg='true'/>"
	.."	<image id='line9' image='1803300040' x='271' y='306' w='28' h='28' check_point='0' revmsg='true'/>" 
	
	.."	<image id='img1' image='1803300022' x='336' y='73' w='28' h='28' OnLButtonUp='Tzboss_tortoise.light_up' param='1' check_point='0' revmsg='true'/>"
	.."	<image id='img2' image='1803300022' x='253' y='52' w='28' h='28' OnLButtonUp='Tzboss_tortoise.light_up' param='2' check_point='0' revmsg='true'/>"
	.."	<image id='img3' image='1803300022' x='311' y='143' w='28' h='28' OnLButtonUp='Tzboss_tortoise.light_up' param='3' check_point='0' revmsg='true'/>"
	.."	<image id='img4' image='1803300022' x='312' y='234' w='28' h='28' OnLButtonUp='Tzboss_tortoise.light_up' param='4' check_point='0' revmsg='true'/>"
	.."	<image id='img5' image='1803300022' x='248' y='173' w='28' h='28' OnLButtonUp='Tzboss_tortoise.light_up'  param='5' check_point='0' revmsg='true'/>"
	.."	<image id='img6' image='1803300022' x='144' y='135' w='28' h='28' OnLButtonUp='Tzboss_tortoise.light_up'  param='6' check_point='0' revmsg='true'/>"
	.."	<image id='img7' image='1803300022' x='72' y='191' w='28' h='28' OnLButtonUp='Tzboss_tortoise.light_up' param='7' check_point='0' revmsg='true'/>"
	.."	<image id='img8' image='1803300022' x='123' y='269' w='28' h='28' OnLButtonUp='Tzboss_tortoise.light_up' param='8' check_point='0' revmsg='true'/>"
	.."	<image id='img9' image='1803300022' x='167' y='214' w='28' h='28' OnLButtonUp='Tzboss_tortoise.light_up' param='9' check_point='0' revmsg='true'/>"
	.."	<image id='img10' image='1803300022' x='259' y='287' w='28' h='28' OnLButtonUp='Tzboss_tortoise.light_up' param='10' check_point='0' revmsg='true'/>"
	
	.."	<edit id='TestWndChild_15' x='122' y='353' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='下级消耗积分：' font='system'/>"
	.."	<edit id='TestWndChild_16' x='122' y='376' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='当前拥有积分：' font='system'/>"
	.."	<edit id='next_points' x='210' y='353' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."	<edit id='now_points' x='210' y='376' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"

	.." </dialog>"
	.."</form>"

function Tzboss_tortoise.main()
	GenFormByString(ui)
end
Tzboss_tortoise.Wnd=0
--UI Logic Code Start
function Tzboss_tortoise.UIInit(_Handle)
	
	Tzboss_tortoise.Wnd=_Handle
	local palce =  {{4020,14.19},{5066,-122.5},{4319,-90},{4119,43.2},{5198,20.1},{4311,-38.4},{4297,-123.9},{3307,128.7},{5514,-141.6}}
	for i=1,#palce do 
		local hand = GUIWndFindWindow(_Handle,"line"..i)
		GUIImageSetTransfrom(hand,palce[i][1],10000,palce[i][2])
	end
	for i = 1, 10 do 
		local handle = GetWindow(_Handle, "img"..i)
		if handle~= 0 then 
			if Points.num == 4 then 
				if i<= Points.level then
					GUIWndSetEnableM(handle, false)
					Tzboss_tortoise.Img1(i) 
					WndAddEffect(_Handle, "img"..i, 3020102200, -37, -37, 100, 0) 
				elseif i == Points.level+1 then
					WndAddEffect(_Handle, "img"..i, 3020102000, -37, -37, 100, 0) 
				end
			else 
				GUIWndSetEnableM(handle, false)
				Tzboss_tortoise.Img1(i) 
				WndAddEffect(_Handle, "img"..i, 3020102200, -37, -37, 100, 0) 
			end
		end
		Tzboss_tortoise.Hint(i)
	end 
	UI:Lua_SubmitForm("Tzboss_buy_s", "own",4)
end


function Tzboss_tortoise.Hint(i)
	local monster_tab = {  
				
				{
				{"290-472","0-0","0-0","0"},      
				{"298-581","0-0","0-0","0"},
				{"382-644","0-0","0-0","0"},
				{"0-0","132-277","10-20","4046"},
				{"485-729","0-0","0-0","0"},
				{"624-950","0-0","0-0","0"},
				{"0-0","188-353","10-20","6800"},
				{"776-1129","0-0","0-0","0"},
				{"983-1304","0-0","0-0","0"},
				{"0-0","277-462","10-20","8000"},
				},
			
				{
				{"290-472","0-0","0-0","0"},      
				{"298-581","0-0","0-0","0"},
				{"382-644","0-0","0-0","0"},
				{"0-0","132-277","10-20","2400"},
				{"485-729","0-0","0-0","0"},
				{"624-950","0-0","0-0","0"},
				{"0-0","188-353","10-20","3000"},
				{"776-1129","0-0","0-0","0"},
				{"983-1304","0-0","0-0","0"},
				{"0-0","277-462","10-20","3500"},
				},
				
				{
				{"290-472","0-0","0-0","0"},      
				{"298-581","0-0","0-0","0"},
				{"382-644","0-0","0-0","0"},
				{"0-0","132-277","10-20","3200"},
				{"485-729","0-0","0-0","0"},
				{"624-950","0-0","0-0","0"},
				{"0-0","188-353","10-20","4700"},
				{"776-1129","0-0","0-0","0"},
				{"983-1304","0-0","0-0","0"},
				{"0-0","277-462","10-20","6600"},
				},
				}
	local handle = GetWindow(Tzboss_tortoise.Wnd,"img"..i)
	if CLGetPlayerSelfPropBase(3) then
		local job = as3.tolua(LuaRet) 
		if tonumber(monster_tab[job][i][4]) == 0 then  
			GUIWndSetHint(handle,"<font color='#D58840'>玄武 ["..i.."]\n</font><font color='#B8A085'>物攻：".. monster_tab[job][i][1] .."\n魔攻：" .. monster_tab[job][i][1] .."\n道攻：" .. monster_tab[job][i][1] .."\n</font>" )
		else  
			GUIWndSetHint(handle,"<font color='#D58840'>玄武 ["..i.."]\n</font><font color='#B8A085'>物防：".. monster_tab[job][i][2] .."\n魔防：" .. monster_tab[job][i][3] .."\n生命：".. monster_tab[job][i][4] .."\n</font>" )
		end 
	end	

end

function Tzboss_tortoise.down(_Handle)
	
	if Tzboss_tortoise.Wnd ~= 0 then 
		GUIWndClose(Tzboss_tortoise.Wnd)
	end
	UI:Lua_OpenWindow(Tzboss_tortoise.Wnd,"Tzboss_bird.lua")
end 

function Tzboss_tortoise.light_up(_Handle)
	Tzboss_tortoise.nowWnd = _Handle
	local param = GUIWndGetParam(_Handle)
	Tzboss_tortoise.param = param
	UI:Lua_SubmitForm("Tzboss_buy_s", "addproperty", "4#"..param)
	
end


function Tzboss_tortoise.own(next_points,now_points)      --  当前积分 的积分显示
	
	local hand = GUIWndFindWindow(nil,"Tzboss,Tzboss_tortoise,next_points")  
	if hand ~= 0 then 
		GUIEditSetTextM(hand,Points.ding)
	end
	hand = GUIWndFindWindow(nil,"Tzboss,Tzboss_tortoise,now_points")  
	if hand ~=0 then 
		GUIEditSetTextM(hand,now_points)
		if Points.ding > now_points then 
			GUIWndSetTextColorM(hand, MakeARGB(255,255,0,0)) 
		else
			GUIWndSetTextColorM(hand, MakeARGB(255,194,182,160))
		end
	end
	local hand = GUIWndFindWindow(nil,"Tzboss,Tzboss_tortoise,next_points")  
	
end

function Tzboss_tortoise.Img(param,next_points,now_points)   
	Points.ding = next_points
	if Tzboss_tortoise.nowWnd ~= 0 then 
		GUIWndSetEnableM(Tzboss_tortoise.nowWnd, false) 
	end
	Tzboss_tortoise.own(next_points,now_points)
	Tzboss_tortoise.Img1(param)
	WndAddEffect(Tzboss_tortoise.Wnd, "img" .. param, 3020102200, -37, -37, 100, 0) 
	WndAddEffect(Tzboss_tortoise.Wnd, "img" .. (param+1), 3020102000, -37, -37, 100, 0) 
	
end
function Tzboss_tortoise.Img1(param)              --图片和线条变亮
	
	ImageSetImageID(nil, "Tzboss,Tzboss_tortoise,img".. param,1803300023)
	if param > 1 then 
		local index =  param - 1
		ImageSetImageID(nil, "Tzboss,Tzboss_tortoise,line".. index,1803300041)
		local tab = {{4020,14.19},{5066,-122.5},{4319,-90},{4119,43.2},{5198,20.1},{4311,-38.4},{4297,-123.9},{3307,128.7},{5514,-141.6}}
		local GUIHandle = GUIWndFindWindow(nil, "Tzboss,Tzboss_tortoise,line".. index)
		GUIImageSetTransfrom(GUIHandle,tab[index][1],7500,tab[index][2])
	end
	if param == 10 then
		GUIHandle = GUIWndFindWindow(nil, "Tzboss,Tzboss_tortoise,text1")
		GUIWndSetPosM(GUIHandle, 75, 31)
		GUIHandle = GUIWndFindWindow(nil, "Tzboss,Tzboss_tortoise,img_level2")
		GUIWndSetVisible(GUIHandle, true)
		ImageSetImageID(nil, "Tzboss,Tzboss_tortoise,img_level1",1803300028)
		ImageSetImageID(nil, "Tzboss,Tzboss_tortoise,img_level2",1803300037)
	else
		ImageSetImageID(nil, "Tzboss,Tzboss_tortoise,img_level1",1803300037-10+param)
	end
	Tzboss_tortoise.Hint(param)
end

function Tzboss_tortoise.msg()
	local str = "BOSS积分不足，可在商城购买或打BOSS获得"
	local color = MakeARGB(255,255,0,0)
	window_msg_up(Tzboss_tortoise.nowWnd,str,-80,-30,60,color,1.5)
end
function Tzboss_tortoise.msg2()
	window_msg_up(Tzboss_tortoise.nowWnd,"请先激活上级的积分点",-80,-30,60,MakeARGB(255,255,0,0),1.5)
end


Tzboss_tortoise.main()