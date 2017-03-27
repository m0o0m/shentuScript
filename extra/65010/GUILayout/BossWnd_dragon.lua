BossWnd_dragon ={}
local ui = "<form default_parent = 'BossWnd,Points'> <dialog OnInit='BossWnd_dragon.UIInit' id='BossWnd_dragon' image='1803300007' x='0' y='0' w='475' h='408' drag='false' revmsg='true'>"
	.."<button id='TestWndChild_1' image='1800000192' x='15' y='179' w='29' h='51' check_point='0' enable='false' revmsg='true'/>"
	.."<button id='TestWndChild_2' image='1800000196' x='430' y='179' w='29' h='51' check_point='0' OnLButtonUp='BossWnd_dragon.up' revmsg='true'/>"
	.."<image id='TestWndChild2' image='1803300018' x='405' y='11' w='54' h='115' check_point='0' revmsg='true'/>"
	.."<image id='img_line1' image='1803300040' x='286' y='60' w='213' h='11' check_point='0' revmsg='true' />"
	.."<image id='img_line2' image='1803300040' x='278' y='163' w='213' h='11' check_point='0' revmsg='true'/>"
	.."<image id='img_line3' image='1803300040' x='203' y='50' w='213' h='11' check_point='0' revmsg='true'/>"
	.."<image id='img_line4' image='1803300040' x='142' y='149' w='213' h='11' check_point='0' revmsg='true'/>"
	.."<image id='img_line5' image='1803300040' x='260' y='218' w='213' h='11' check_point='0' revmsg='true'/>"
	.."<image id='img_line6' image='1803300040' x='286' y='264' w='213' h='11' check_point='0' revmsg='true'/>"
	.."<image id='img_line7' image='1803300040' x='258' y='341' w='213' h='11' check_point='0' revmsg='true'/>"
	.."<image id='img_line8' image='1803300040' x='193' y='238' w='213' h='11' check_point='0' revmsg='true'/>"
	.."<image id='img_line9' image='1803300040' x='118' y='264' w='213' h='11' check_point='0' revmsg='true'/>"
	.."<image id='img_point1' image='1803300022' x='347' y='104' w='28' h='28' check_point='0' param = '1' OnLButtonUp='BossWnd_dragon.ImgClick' revmsg='true'/>"
	.."<image id='img_point2' image='1803300022' x='268' y='53' w='28' h='28' check_point='0'  param = '2' OnLButtonUp='BossWnd_dragon.ImgClick' revmsg='true'/>"
	.."<image id='img_point3' image='1803300022' x='266' y='146' w='28' h='28' check_point='0' param = '3' OnLButtonUp='BossWnd_dragon.ImgClick' revmsg='true'/>"
	.."<image id='img_point4' image='1803300022' x='184' y='43' w='28' h='28' check_point='0' param = '4' OnLButtonUp='BossWnd_dragon.ImgClick' revmsg='true'/>"
	.."<image id='img_point5' image='1803300022' x='137' y='133' w='28' h='28' check_point='0' param = '5' OnLButtonUp='BossWnd_dragon.ImgClick' revmsg='true'/>"
	.."<image id='img_point6' image='1803300022' x='245' y='199' w='28' h='28' check_point='0' param = '6'OnLButtonUp='BossWnd_dragon.ImgClick' revmsg='true'/>"
	.."<image id='img_point7' image='1803300022' x='275' y='247' w='28' h='28' check_point='0' param = '7' OnLButtonUp='BossWnd_dragon.ImgClick' revmsg='true'/>"
	.."<image id='img_point8' image='1803300022' x='247' y='326' w='28' h='28' check_point='0' param = '8' OnLButtonUp='BossWnd_dragon.ImgClick' revmsg='true'/>"
	.."<image id='img_point9' image='1803300022' x='177' y='230' w='28' h='28' check_point='0' param = '9' OnLButtonUp='BossWnd_dragon.ImgClick' revmsg='true'/>"
	.."<image id='img_point10' image='1803300022' x='107' y='257' w='28' h='28' check_point='0' param = '10' OnLButtonUp='BossWnd_dragon.ImgClick' revmsg='true'/>	"
	.."<image id='img_level1' image='1803300037' x='4' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."<image id='img_level2' image='' x='36' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."<image id='text1' image='1803300038' x='47' y='31' w='33' h='33' check_point='0' revmsg='true'/>"
	.."<edit id='TestWndChild_15' x='122' y='353' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='下级消耗积分：' font='system'/>"
	.."<edit id='TestWndChild_16' x='122' y='376' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='当前拥有积分：' font='system'/>"
	.."<edit id='next_points' x='210' y='353' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."<edit id='now_points' x='210' y='376' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.." </dialog>"
	.."</form>"

function BossWnd_dragon.main()
	GenFormByString(ui)
end

--UI Logic Code Start

BossWnd_dragon.Wnd = 0
BossWnd_dragon.nowlevel= 1
BossWnd_dragon.nowWnd=0

function BossWnd_dragon.UIInit(_Handle)
	BossWnd_dragon.Wnd = _Handle
	local palce = {{4200,7500,21},{7300,4000,-90},{6121,7500,48},{7566,5000,-70},{5806,7500,-155},{9921,2500,-100},{6326,3500,-80},{5517,6000,55.2},{3805,8000,-12}}
	for i=1,#palce  do 
		local hand = GUI:WndFindWindow(_Handle,"img_line"..i)
		GUI:ImageSetTransfrom(hand,palce[i][1],palce[i][2],palce[i][3])
	end
	for i = 1, 10 do 
		local handle = GetWindow(_Handle, "Points.level "..Points.level)
		WndDelEffect(_Handle, "img_point"..i)
		if Points.num == 1 then  
			if i<= Points.level then
				BossWnd_dragon.Img1(i) 
				WndAddEffect(_Handle, "img_point"..i, 3020102200, -37, -37, 100, 0) 
			elseif i == Points.level+1 then
				WndAddEffect(_Handle, "img_point"..i, 3020102000, -37, -37, 100, 0) 
			end 
		else
			BossWnd_dragon.Img1(i)
			WndAddEffect(_Handle, "img_point"..i, 3020102200, -37, -37, 100, 0) 
			GUI:WndSetEnableM(handle, false) 
		end 
		BossWnd_dragon.Hint(i)
	end
	
	UI:Lua_SubmitForm("BossWnd_buy_s", "own","1")
	
end

function BossWnd_dragon.Hint(i)
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
	handle = GetWindow(BossWnd_dragon.Wnd,"img_point"..i)
	GUI:WndSetHintWidth(handle, 300)
	if CL:GetPlayerSelfPropBase(3) then
		local job = LuaRet 
		if tonumber(dragon_tab[job][i][4]) == 0 then  
			GUI:WndSetHint(handle,"青龙 ["..i.."]物攻：".. dragon_tab[job][i][1] .."\n魔攻：" .. dragon_tab[job][i][1] .."\n道攻：" .. dragon_tab[job][i][1] .."\n" )
		else  
			GUI:WndSetHint(handle,"青龙 ["..i.."]物防：".. dragon_tab[job][i][2] .."\n魔防：" .. dragon_tab[job][i][3] .."\n生命：".. dragon_tab[job][i][4] .."\n" )
		end 
	end	

end

function BossWnd_dragon.ImgClick(_handle)
	
	BossWnd_dragon.nowWnd = _handle
	local param = GUI:WndGetParam(_handle)
	UI:Lua_SubmitForm("BossWnd_buy_s", "addproperty", "1#"..param)
	
end

function BossWnd_dragon.own(next_points,now_points)      --  当前积分 的积分显示
	
	local hand = GUI:WndFindWindow(0,"BossWnd,Points,BossWnd_dragon,next_points")  
	if hand ~=0 then 
		GUI:EditSetTextM(hand,''..Points.ding)
	end
	hand = GUI:WndFindWindow(0,"BossWnd,Points,BossWnd_dragon,now_points")  
	if hand ~=0 then 
		GUI:EditSetTextM(hand,''..now_points)
		if Points.ding > now_points then 
			GUI:WndSetTextColorM(hand, MakeARGB(255,255,0,0)) 
		else
			GUI:WndSetTextColorM(hand, MakeARGB(255,194,182,160))
		end
	end
	
end

function BossWnd_dragon.Img(param,next_points,now_points)  
	Points.ding = next_points
	if BossWnd_dragon.nowWnd ~= 0 then 
		GUI:WndSetEnableM(BossWnd_dragon.nowWnd, false) 
	end
	BossWnd_dragon.own(next_points,now_points)
	BossWnd_dragon.Img1(param)
	WndDelEffect(BossWnd_dragon.Wnd, "img_point" .. param)
	WndDelEffect(BossWnd_dragon.Wnd, "img_point" .. (param+1))
	WndAddEffect(BossWnd_dragon.Wnd, "img_point" .. param, 3020102200, -37, -37, 100, 0) 
	WndAddEffect(BossWnd_dragon.Wnd, "img_point" .. (param+1), 3020102000, -37, -37, 100, 0) 
	if param == 10 then 
		Points.num =2
	end
end
function BossWnd_dragon.Img1(param)              --图片和线条变亮

	ImageSetImageID(0, "BossWnd,Points,BossWnd_dragon,img_point".. param,1803300023)
	if param > 1 then 
		local index =  param - 1
		ImageSetImageID(0, "BossWnd,Points,BossWnd_dragon,img_line".. index,1803300041)
		local tab = {{4200,7500,21},{7300,4000,-90},{6121,7500,48},{7566,5000,-70},{5806,7500,-155},{9921,2500,-100},{6326,3500,-80},{5517,6000,55.2},{3805,8000,-12}}
		local _GUIHandle = GUI:WndFindWindow(0, "BossWnd,Points,BossWnd_dragon,img_line".. index)
		GUI:ImageSetTransfrom(_GUIHandle,tab[index][1],tab[index][2],tab[index][3])
	end
	if param == 10 then
		_GUIHandle = GUI:WndFindWindow(0, "BossWnd,Points,BossWnd_dragon,text1")
		GUI:WndSetPosM(_GUIHandle, 75, 31)
		_GUIHandle = GUI:WndFindWindow(0, "BossWnd,Points,BossWnd_dragon,img_level2")
		GUI:WndSetVisible(_GUIHandle, true)
		ImageSetImageID(0, "BossWnd,Points,BossWnd_dragon,img_level1",1803300028)
		ImageSetImageID(0, "BossWnd,Points,BossWnd_dragon,img_level2",1803300037)
	else
		local img = CL:Plus("1803300027",tostring(param))
		ImageSetImageID(0, "BossWnd,Points,BossWnd_dragon,img_level1", tonumber(img))
	end 
	BossWnd_dragon.Hint(param)
	
end


function BossWnd_dragon.up(_Handle)
	
	if Points.num ~= 1  then
		UI:Lua_OpenWindow(0, "BossWnd_tiger.lua")
		GUI:WndClose(BossWnd_dragon.Wnd)
	else
		BossWnd.window_msg_up(_Handle,"激活当前全部积分点后即可查看下一页面",-80,-30,60,MakeARGB(255,255,0,0),1.5)
	end
end

function BossWnd_dragon.msg()
	local str = "BOSS积分不足，可在商城购买或打BOSS获得"
	local color = MakeARGB(255,255,0,0)
	BossWnd.window_msg_up(BossWnd_dragon.nowWnd,str,-80,-30,60,color,1.5)
end

function BossWnd_dragon.msg2()
	BossWnd.window_msg_up(BossWnd_dragon.nowWnd,"请先激活上级的积分点",-80,-30,60,MakeARGB(255,255,0,0),1.5)
end


BossWnd_dragon.main()