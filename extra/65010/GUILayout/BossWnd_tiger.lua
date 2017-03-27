BossWnd_tiger ={}
local ui = "<form default_parent = 'BossWnd,Points'> <dialog OnInit='BossWnd_tiger.UIInit' id='BossWnd_tiger' image='1803300004' x='0' y='0' w='475' h='408' revmsg='true' drag='false' >"
	.."<button id='TestWndChild_1' image='1800000192' x='15' y='179' w='29' h='51' check_point='0' OnLButtonUp='BossWnd_tiger.down' revmsg='true'/>"
	.."<button id='TestWndChild_2' image='1800000196' x='430' y='179' w='29' h='51' check_point='0' OnLButtonUp='BossWnd_tiger.up' revmsg='true'/>"
	.."<image id='TestWndChild2' image='1803300019' x='405' y='11' w='54' h='115' check_point='0' revmsg='true'/>"
	.."<image id='img_level1' image='1803300037' x='4' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."<image id='img_level2' image='1803300037' x='36' y='14' w='48' h='54' visible = 'false' check_point='0' revmsg='true'/>"
	.."<image id='text1' image='1803300038' x='47' y='31' w='33' h='33' check_point='0' revmsg='true'/>"
	..""
	.."<edit id='TestWndChild_15' x='122' y='353' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='下级消耗积分：' font='system'/>"
	.."<edit id='TestWndChild_16' x='122' y='376' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='当前拥有积分：' font='system'/>"
	.."<edit id='next_points' x='210' y='353' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."<edit id='now_points' x='210' y='376' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."<image id='line1' image='1803300040' enable = 'false' x='300' y='160' w='213' h='11' revmsg='true'/>"
	.."<image id='line2' image='1803300040' enable = 'false' x='308' y='100' w='213' h='11' revmsg='true'/>   "
	.."<image id='line3' image='1803300040' enable = 'false' x='213' y='136' w='213' h='11' revmsg='true'/>"
	.."<image id='line4' image='1803300040' enable = 'false' x='148' y='96' w='213' h='11' revmsg='true'/>"
	.."<image id='line5' image='1803300040' enable = 'false' x='100' y='176' w='213' h='11' revmsg='true'/>"
	.."<image id='line6' image='1803300040' enable = 'false' x='95' y='255' w='213' h='11' revmsg='true'/>"
	.."<image id='line7' image='1803300040' enable = 'false' x='181' y='219' w='213' h='11' revmsg='true'/>"
	.."<image id='line8' image='1803300040' enable = 'false' x='255' y='229' w='213' h='11' revmsg='true'/>"
	.."<image id='line9' image='1803300040' enable = 'false' x='286' y='295' w='213' h='11' revmsg='true'/>"
	..""
	.."<image id='img1' image='1803300022' x='361' y='169' w='28' h='28' check_point='0' OnLButtonUp='BossWnd_tiger.ImgClick' param = '1'  revmsg='true'/>"
	.."<image id='img2' image='1803300022' x='286' y='153' w='28' h='28' OnLButtonUp='BossWnd_tiger.ImgClick' param = '2'  revmsg='true'/>"
	.."<image id='img3' image='1803300022' x='287' y='88' w='28' h='28' OnLButtonUp='BossWnd_tiger.ImgClick' param = '3'  revmsg='true'/>"
	.."<image id='img4' image='1803300022' x='203' y='127' w='28' h='28' OnLButtonUp='BossWnd_tiger.ImgClick' param = '4'  revmsg='true'/>"
	.."<image id='img5' image='1803300022' x='133' y='90' w='28' h='28' OnLButtonUp='BossWnd_tiger.ImgClick' param = '5'  revmsg='true'/>"
	.."<image id='img6' image='1803300022' x='90' y='165' w='28' h='28' OnLButtonUp='BossWnd_tiger.ImgClick' param = '6'  revmsg='true'/>"
	.."<image id='img7' image='1803300022' x='87' y='241' w='28' h='28' OnLButtonUp='BossWnd_tiger.ImgClick' param = '7'  revmsg='true'/>"
	.."<image id='img8' image='1803300022' x='161' y='202' w='28' h='28' OnLButtonUp='BossWnd_tiger.ImgClick' param = '8'  revmsg='true'/>"
	.."<image id='img9' image='1803300022' x='237' y='208' w='28' h='28' OnLButtonUp='BossWnd_tiger.ImgClick' param = '9'  revmsg='true'/>"
	.."<image id='img10' image='1803300022' x='277' y='280' w='28' h='28' OnLButtonUp='BossWnd_tiger.ImgClick' param = '10'  revmsg='true'/>"
	.." </dialog>"
	.."</form>"

function BossWnd_tiger.main()
	GenFormByString(ui)
end

--UI Logic Code Start

BossWnd_tiger.Wnd=0
function BossWnd_tiger.UIInit(_Handle)
	
	local _GUIHandle = 0
	BossWnd_tiger.Wnd=_Handle

	local tab = {{3723,10000,5},{8099,3000,90},{4515,10000,-12},{3781,10000,12},{2423,20000,-12},{5712,4000,-88},{3990,7000,164},{3672,10000,-176},{7826,3000,-100}}
	for i =1 , #tab do
		_GUIHandle = GUI:WndFindWindow(_Handle,"line" .. i)
		GUI:ImageSetTransfrom(_GUIHandle,tab[i][1],tab[i][2],tab[i][3])
	end
	for i = 1, 10 do 
		local handle = GetWindow(_Handle, "img"..i) 
		WndDelEffect(BossWnd_tiger.Wnd, "img"..i)
		if handle ~= 0 then 
			if Points.num == 2 then 
				if i<= Points.level then 
					BossWnd_tiger.Img1(i) 
					WndAddEffect(_Handle, "img"..i, 3020102200, -37, -37, 100, 0) 
				elseif i == Points.level+1 then
					WndAddEffect(_Handle, "img"..i, 3020102000, -37, -37, 100, 0) 
				end
			else
				BossWnd_tiger.Img1(i)
				WndAddEffect(_Handle, "img"..i, 3020102200, -37, -37, 100, 0) 
			end
		end
		BossWnd_tiger.Hint(i) 
	end
	
	UI:Lua_SubmitForm("BossWnd_buy_s", "own","2")
	
end  


function BossWnd_tiger.Hint(i) 
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
	local handle = GetWindow(BossWnd_tiger.Wnd,"img"..i)
	GUI:WndSetHintWidth(handle, 300)
	if CL:GetPlayerSelfPropBase(3) then
		local job = LuaRet 
		if tonumber(monster_tab[job][i][4]) == 0 then  
			GUI:WndSetHint(handle,"白虎 ["..i.."]物攻：".. monster_tab[job][i][1] .."\n魔攻：" .. monster_tab[job][i][1] .."\n道攻：" .. monster_tab[job][i][1] .."\n" )
		else  
			GUI:WndSetHint(handle,"白虎 ["..i.."]物防：".. monster_tab[job][i][2] .."\n魔防：" .. monster_tab[job][i][3] .."\n生命：".. monster_tab[job][i][4] .."\n" )
		end 
	end	
 
end

function BossWnd_tiger.down(_Handle)
	UI:Lua_OpenWindow(0, "BossWnd_dragon.lua")
	GUI:WndClose(BossWnd_tiger.Wnd)
end
function BossWnd_tiger.up(_Handle)
	if Points.num ~= 2 then 
		UI:Lua_OpenWindow(0, "BossWnd_bird.lua")
		GUI:WndClose(BossWnd_tiger.Wnd)
	else 
		BossWnd.window_msg_up(_Handle,"激活当前全部积分点后即可查看下一页面",-80,-30,60,MakeARGB(255,255,0,0),1.5)
	
	end
end

function BossWnd_tiger.ImgClick(_handle)
	
	BossWnd_tiger.nowWnd = _handle
	local param = GUI:WndGetParam(_handle)
	UI:Lua_SubmitForm("BossWnd_buy_s", "addproperty", "2#"..param)
	
end


function BossWnd_tiger.own(next_points,now_points)      --  当前积分 的积分显示
	
	local hand = GUI:WndFindWindow(0,"BossWnd,Points,BossWnd_tiger,next_points")  
	if hand ~=0 then 
		GUI:EditSetTextM(hand,''..Points.ding)
	end
	hand = GUI:WndFindWindow(0,"BossWnd,Points,BossWnd_tiger,now_points")  
	if hand ~=0 then 
		GUI:EditSetTextM(hand,''..now_points)
		if Points.ding > now_points then 
			GUI:WndSetTextColorM(hand, MakeARGB(255,255,0,0)) 
		else
			GUI:WndSetTextColorM(hand, MakeARGB(255,194,182,160))
		end
	end
	
end

function BossWnd_tiger.Img(param,next_points,now_points)   
	Points.ding = next_points
	if BossWnd_tiger.nowWnd ~= 0 then 
		GUI:WndSetEnableM(BossWnd_tiger.nowWnd, false) 
	end
	BossWnd_tiger.own(next_points,now_points)
	BossWnd_tiger.Img1(param)
	WndDelEffect(BossWnd_tiger.Wnd, "img".. param )
	WndDelEffect(BossWnd_tiger.Wnd, "img".. (param+1))
	WndAddEffect(BossWnd_tiger.Wnd, "img" .. param, 3020102200, -37, -37, 100, 0) 
	WndAddEffect(BossWnd_tiger.Wnd, "img" .. (param+1), 3020102000, -37, -37, 100, 0) 
	if param == 10 then 
		Points.num = 3
	end
end

function BossWnd_tiger.Img1(param)              --图片和线条变亮
	ImageSetImageID(0, "BossWnd,Points,BossWnd_tiger,img".. param,1803300023)
	if param > 1 then 
		local index =  param - 1
		ImageSetImageID(0, "BossWnd,Points,BossWnd_tiger,line".. index,1803300041)
		local tab = {{3723,10000,5},{8099,3000,90},{4515,10000,-12},{3781,10000,12},{2423,20000,-12},{5712,4000,-88},{3990,7000,164},{3672,10000,-176},{7826,3000,-100}}
		local _GUIHandle = GUI:WndFindWindow(0, "BossWnd,Points,BossWnd_tiger,line".. index)
		GUI:ImageSetTransfrom(_GUIHandle,tab[index][1],tab[index][2],tab[index][3])
	end
	if param == 10 then
		_GUIHandle = GUI:WndFindWindow(0, "BossWnd,Points,BossWnd_tiger,text1")
		GUI:WndSetPosM(_GUIHandle, 75, 31)
		_GUIHandle = GUI:WndFindWindow(0, "BossWnd,Points,BossWnd_tiger,img_level2")
		GUI:WndSetVisible(_GUIHandle, true)
		ImageSetImageID(0, "BossWnd,Points,BossWnd_tiger,img_level1",1803300028)
		ImageSetImageID(0, "BossWnd,Points,BossWnd_tiger,img_level2",1803300037)
	else
		local img = CL:Plus("1803300027",tostring(param))
		ImageSetImageID(0, "BossWnd,Points,BossWnd_tiger,img_level1",tonumber(img))
	end
	BossWnd_tiger.Hint(param)  
end

function BossWnd_tiger.msg()
	local str = "BOSS积分不足，可在商城购买或打BOSS获得"
	local color = MakeARGB(255,255,0,0)
	BossWnd.window_msg_up(BossWnd_tiger.nowWnd,str,-80,-30,60,color,1.5)
end
function BossWnd_tiger.msg2()
	BossWnd.window_msg_up(BossWnd_tiger.nowWnd,"请先激活上级的积分点",-80,-30,60,MakeARGB(255,255,0,0),1.5)
end

BossWnd_tiger.main()