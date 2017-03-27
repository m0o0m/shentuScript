Tzboss_tiger ={}  
local ui = "<form default_parent='Tzboss'>"
	.." <dialog OnInit='Tzboss_tiger.UIInit' id='Tzboss_tiger' image='1803300004' x='18' y='75' w='475' h='408' revmsg='true' drag='false' esc_close='false'>"
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
	.."	<image id='line1' image='1803300040'  x='300' y='160' w='50' h='11' revmsg='true'/>"
	.."	<image id='line2' image='1803300040'   x='333' y='100' w='213' h='11' revmsg='true'/>"   
	.."	<image id='line3' image='1803300040'  x='213' y='136' w='213' h='11' revmsg='true'/>"
	.."	<image id='line4' image='1803300040'   x='148' y='96' w='213' h='11' revmsg='true'/>"
	.."	<image id='line5' image='1803300040'  x='100' y='176' w='213' h='11' revmsg='true'/>"
	.."	<image id='line6' image='1803300040'   x='140' y='255' w='213' h='11' revmsg='true'/>"
	.."	<image id='line7' image='1803300040'   x='191' y='197' w='213' h='11' revmsg='true'/>"
	.."	<image id='line8' image='1803300040'   x='255' y='229' w='213' h='11' revmsg='true'/>"
	.."	<image id='line9' image='1803300040'   x='286' y='295' w='213' h='11' revmsg='true'/>"  
	
	.."	<image id='img1' image='1803300022' x='361' y='169' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '1'  revmsg='true'/>"
	.."	<image id='img2' image='1803300022' x='286' y='153' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '2'  revmsg='true'/>"
	.."	<image id='img3' image='1803300022' x='317' y='88' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '3'  revmsg='true'/>"
	.."	<image id='img4' image='1803300022' x='203' y='127' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '4'  revmsg='true'/>"
	.."	<image id='img5' image='1803300022' x='133' y='90' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '5'  revmsg='true'/>"
	.."	<image id='img6' image='1803300022' x='90' y='165' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '6'  revmsg='true'/>"
	.."	<image id='img7' image='1803300022' x='132' y='241' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '7'  revmsg='true'/>"
	.."	<image id='img8' image='1803300022' x='171' y='180' w='28' h='28' OnLButtonUp='Tzboss_tiger.ImgClick' param = '8'  revmsg='true'/>"
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
	
	Tzboss_tiger.Wnd=_Handle
	local tab = {{3723,6},{1899,160},{5515,-10},{3781,12},{2423,-20},{1712,-160},{2590,160},{3672,-170},{1826,-159}}
	for i =1 , #tab do
		local GUIHandle = GUI:WndFindWindow(_Handle,"line" .. i)
		GUI:ImageSetTransfrom(GUIHandle,tab[i][1],10000,tab[i][2])
	end
	
	for i = 1, 10 do 
	local handle = GetWindow(_Handle, "img"..i)
		if handle ~= 0 then  
			if Points.num == 2 then  
				if i<= Points.level then 
					GUI:WndSetEnableM(handle, false)
					Tzboss_tiger.Img1(i) 
				end
			else
				GUI:WndSetEnableM(handle, false)
				Tzboss_tiger.Img1(i)  
			end
		end
		Tzboss_tiger.Hint(i) 
	end
	
	UI:Lua_SubmitForm("Tzboss_buy_s", "own","".. 2)
	
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
	if CL:GetPlayerSelfPropBase(3) then
		local job = LuaRet 
		if tonumber(monster_tab[job][i][4]) == 0 then  
			GUI:WndSetHint(handle,"白虎 ["..i.."]\n        物攻：".. monster_tab[job][i][1] .."\n     魔攻：" .. monster_tab[job][i][1] .."\n     道攻：" .. monster_tab[job][i][1] .."\n" )
		else  
			if i==4 then 
				GUI:WndSetHint(handle,"白虎 ["..i.."]\n        物防：".. monster_tab[job][i][2] .."\n     魔防：" .. monster_tab[job][i][3] .."\n      生命：".. monster_tab[job][i][4] .."\n" )
			else	
				GUI:WndSetHint(handle,"白虎 ["..i.."]\n        物防：".. monster_tab[job][i][2] .."\n     魔防：" .. monster_tab[job][i][3] .."\n     生命：".. monster_tab[job][i][4] .."\n" )
			end
		end 
	end	
 
end

function Tzboss_tiger.down(_Handle)
	 
	if Tzboss_tiger.Wnd~= 0 then 
		GUI:WndClose(Tzboss_tiger.Wnd)
	end
	UI:Lua_OpenWindow(Tzboss_tiger.Wnd,"Tzboss_dragon.lua")
end
function Tzboss_tiger.up(_Handle)
	
	if Points.num ~= 2 then 
		if Tzboss_tiger.Wnd~= 0 then 
			GUI:WndClose(Tzboss_tiger.Wnd)
		end
		UI:Lua_OpenWindow(Tzboss_tiger.Wnd,"Tzboss_bird.lua")
	else
		Tzboss_tiger.nowWnd = GUI:WndFindWindow(Tzboss_tiger.Wnd,"TestWndChild_2")
		Tzboss_tiger.msg_up("激活当前全部积分点后即可查看下一页面")
	end
end

function Tzboss_tiger.ImgClick(_handle)
	
	Tzboss_tiger.nowWnd = _handle
	local param = GUI:WndGetParam(_handle)
	UI:Lua_SubmitForm("Tzboss_buy_s", "addproperty", "2#"..param)
	
end


function Tzboss_tiger.own(next_points,now_points)      --  当前积分 的积分显示
	
	local hand = GUI:WndFindWindow(Tzboss_tiger.Wnd,"next_points") 
	if hand ~=0 then 
		GUI:EditSetTextM(hand,""..Points.ding) 
	end
	hand = GUI:WndFindWindow(Tzboss_tiger.Wnd,"now_points")  
	if hand ~=0 then 
		GUI:EditSetTextM(hand,""..now_points)
		if Points.ding > now_points then 
			GUI:WndSetTextColorM(hand, MakeARGB(255,255,0,0)) 
		else
			GUI:WndSetTextColorM(hand, MakeARGB(255,194,182,160))
		end
	end
	
end

function Tzboss_tiger.Img(param,next_points,now_points)   
	Points.ding = next_points
	if Tzboss_tiger.nowWnd ~= 0 then 
		GUI:WndSetEnableM(Tzboss_tiger.nowWnd, false) 
	end
	Tzboss_tiger.own(next_points,now_points)
	Tzboss_tiger.Img1(param)
	if param == 10 then 
		Points.num = 3
	end
end

function Tzboss_tiger.Img1(param)              --图片和线条变亮 
	ImageSetImageID(nil, "Tzboss,Tzboss_tiger,img".. param,1803300023)
	if param > 1 then 
		local index =  param - 1
		ImageSetImageID(nil, "Tzboss,Tzboss_tiger,line".. index,1803300041)
		--local tab = {{3723,8},{3099,90},{4515,-25},{3781,27},{4423,-60},{3712,-88},{3990,154},{3672,-176},{3826,-119}}
		local tab = {{3723,6},{1899,150},{5515,-13},{3781,18},{2423,-25},{1712,-155},{2590,155},{3672,-165},{1826,-150}}
		local GUIHandle = GUI:WndFindWindow(Tzboss_tiger.Wnd,"line".. index)
		GUI:ImageSetTransfrom(GUIHandle,tab[index][1],7500,tab[index][2])
	end
	if param == 10 then
		GUIHandle = GUI:WndFindWindow(Tzboss_tiger.Wnd, "text1")
		GUI:WndSetPosM(GUIHandle, 75, 31)
		GUIHandle = GUI:WndFindWindow(Tzboss_tiger.Wnd, "img_level2")
		GUI:WndSetVisible(GUIHandle, true)
		ImageSetImageID(Tzboss_tiger.Wnd, "img_level1",1803300028)
		ImageSetImageID(Tzboss_tiger.Wnd, "img_level2",1803300037)
	else
		ImageSetImageID(Tzboss_tiger.Wnd, "img_level1",tonumber(CL:Plus(tostring(1803300027),tostring(param))))
	end
	Tzboss_tiger.Hint(param)  
end

function Tzboss_tiger.msg() 
	Tzboss_tiger.msg_up("BOSS积分不足，可在商城购买或打BOSS获得")
end
function Tzboss_tiger.msg2()
	Tzboss_tiger.msg_up("请先激活上级的积分点")
end
Tzboss_tiger.msg_tab={}
function Tzboss_tiger.msg_up(str) 
	local _GUIHandle = GUI:EditCreate(Tzboss_tiger.nowWnd, "msg", -100, -25, 220, 25)
	Tzboss_tiger.msg_tab[#Tzboss_tiger.msg_tab+1]=_GUIHandle
	if _GUIHandle ~= 0 then 
		GUI:WndMoveToParentTop(_GUIHandle)
		GUI:EditSetTextColor(_GUIHandle, MakeARGB(255,255,0,0))
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, str)  
		CL:AddDelayTask("Tzboss_tiger.msg_uppp(\".._GUIHandle..\")" , 1000, 1)
	end	 
end
function Tzboss_tiger.msg_uppp(_GUIHandle) 
	for i=1,#Tzboss_tiger.msg_tab do 
		GUI:EditSetTextM(Tzboss_tiger.msg_tab[i], "")  
	end
end


Tzboss_tiger.main()