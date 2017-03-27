BossWnd_tortoise ={}
local ui = "<form default_parent = 'BossWnd,Points'> <dialog OnInit='BossWnd_tortoise.UIInit' id='BossWnd_tortoise' image='1803300006' x='0' y='0' w='475' h='408' revmsg='true' drag='false' >"
	.."<button id='TestWndChild_1' image='1800000192' x='15' y='179' w='29' h='51' OnLButtonUp='BossWnd_tortoise.down' revmsg='true'/>"
	.."<button id='TestWndChild_2' image='1800000196' x='430' y='179' w='29' h='51' revmsg='true' enable='false'/>"
	.."<image id='TestWndChild2' image='1803300021' x='405' y='11' w='54' h='115' check_point='0' revmsg='true'/>"
	.."<image id='img_level1' image='1803300037' x='4' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."<image id='img_level2' image='' x='36' y='14' w='48' h='54' check_point='0' revmsg='true'/>"
	.."<image id='text1' image='1803300038' x='47' y='31' w='33' h='33' check_point='0' revmsg='true'/>"
	.."<image id='line1' image='1803300040' x='267' y='60' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line2' image='1803300040' x='320' y='161' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line3' image='1803300040' x='320' y='249' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line4' image='1803300040' x='265' y='181' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line5' image='1803300040' x='156' y='143' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line6' image='1803300040' x='81' y='201' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line7' image='1803300040' x='133' y='285' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line8' image='1803300040' x='186' y='230' w='28' h='28' check_point='0' revmsg='true'/>"
	.."<image id='line9' image='1803300040' x='271' y='306' w='28' h='28' check_point='0' revmsg='true'/> "
	.."<image id='img1' image='1803300022' x='336' y='73' w='28' h='28' OnLButtonUp='BossWnd_tortoise.light_up' param='1' check_point='0' revmsg='true'/>"
	.."<image id='img2' image='1803300022' x='253' y='52' w='28' h='28' OnLButtonUp='BossWnd_tortoise.light_up' param='2' check_point='0' revmsg='true'/>"
	.."<image id='img3' image='1803300022' x='311' y='143' w='28' h='28' OnLButtonUp='BossWnd_tortoise.light_up' param='3' check_point='0' revmsg='true'/>"
	.."<image id='img4' image='1803300022' x='312' y='234' w='28' h='28' OnLButtonUp='BossWnd_tortoise.light_up' param='4' check_point='0' revmsg='true'/>"
	.."<image id='img5' image='1803300022' x='248' y='173' w='28' h='28' OnLButtonUp='BossWnd_tortoise.light_up'  param='5' check_point='0' revmsg='true'/>"
	.."<image id='img6' image='1803300022' x='144' y='135' w='28' h='28' OnLButtonUp='BossWnd_tortoise.light_up'  param='6' check_point='0' revmsg='true'/>"
	.."<image id='img7' image='1803300022' x='72' y='191' w='28' h='28' OnLButtonUp='BossWnd_tortoise.light_up' param='7' check_point='0' revmsg='true'/>"
	.."<image id='img8' image='1803300022' x='123' y='269' w='28' h='28' OnLButtonUp='BossWnd_tortoise.light_up' param='8' check_point='0' revmsg='true'/>"
	.."<image id='img9' image='1803300022' x='167' y='214' w='28' h='28' OnLButtonUp='BossWnd_tortoise.light_up' param='9' check_point='0' revmsg='true'/>"
	.."<image id='img10' image='1803300022' x='259' y='287' w='28' h='28' OnLButtonUp='BossWnd_tortoise.light_up' param='10' check_point='0' revmsg='true'/>"
	.."<edit id='TestWndChild_15' x='122' y='353' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='下级消耗积分：' font='system'/>"
	.."<edit id='TestWndChild_16' x='122' y='376' w='86' h='20' revmsg='true' text_color='#C2B6A0' text='当前拥有积分：' font='system'/>"
	.."<edit id='next_points' x='210' y='353' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."<edit id='now_points' x='210' y='376' w='191' h='20' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.." </dialog>"
	.."</form>"

function BossWnd_tortoise.main()
	GenFormByString(ui)
end

--UI Logic Code Start

BossWnd_tortoise.Wnd=0
function BossWnd_tortoise.UIInit(_Handle)
	
	BossWnd_tortoise.Wnd=_Handle
	local palce = {{4020,10000,6},{9566,4500,-105},{10319,5000,-90},{3119,13000,13},{5198,11000,10},{3511,10000,-15},{8297,4000,-105},{8307,3000,105},{12514,4000,-112}}
	for i=1,#palce do 
		local hand = GUI:WndFindWindow(_Handle,"line"..i)
		GUI:ImageSetTransfrom(hand,palce[i][1],palce[i][2],palce[i][3])
	end
	for i = 1, 10 do 
		local handle = GetWindow(_Handle, "img"..i)
		WndDelEffect(BossWnd_tortoise.Wnd, "img"..i)
		if handle~= 0 then 
			if Points.num == 4 then 
				if i<= Points.level then
					BossWnd_tortoise.Img1(i) 
					WndAddEffect(_Handle, "img"..i, 3020102200, -37, -37, 100, 0) 
				elseif i == Points.level+1 then
					WndAddEffect(_Handle, "img"..i, 3020102000, -37, -37, 100, 0) 
				end
			else 
				BossWnd_tortoise.Img1(i) 
				WndAddEffect(_Handle, "img"..i, 3020102200, -37, -37, 100, 0) 
			end
		end
		BossWnd_tortoise.Hint(i)
	end 
	UI:Lua_SubmitForm("BossWnd_buy_s", "own","4")
end


function BossWnd_tortoise.Hint(i)
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
	local handle = GetWindow(BossWnd_tortoise.Wnd,"img"..i)
	GUI:WndSetHintWidth(handle, 300)
	if CL:GetPlayerSelfPropBase(3) then
		local job = LuaRet 
		if tonumber(monster_tab[job][i][4]) == 0 then  
			GUI:WndSetHint(handle,"玄武 ["..i.."]\n物攻：".. monster_tab[job][i][1] .."\n魔攻：" .. monster_tab[job][i][1] .."\n道攻：" .. monster_tab[job][i][1] .."\n" )
		else  
			GUI:WndSetHint(handle,"玄武 ["..i.."]\n物防：".. monster_tab[job][i][2] .."\n魔防：" .. monster_tab[job][i][3] .."\n生命：".. monster_tab[job][i][4] .."\n" )
		end 
	end	

end

function BossWnd_tortoise.down(_Handle)
	UI:Lua_OpenWindow(0, "BossWnd_bird.lua")
	GUI:WndClose(BossWnd_tortoise.Wnd)
end 

function BossWnd_tortoise.light_up(_Handle)
	BossWnd_tortoise.nowWnd = _Handle
	local param = GUI:WndGetParam(_Handle)
	BossWnd_tortoise.param = param
	UI:Lua_SubmitForm("BossWnd_buy_s", "addproperty", "4#"..param)
	
end


function BossWnd_tortoise.own(next_points,now_points)      --  当前积分 的积分显示
	
	local hand = GUI:WndFindWindow(0,"BossWnd,Points,BossWnd_tortoise,next_points")  
	if hand ~= 0 then 
		GUI:EditSetTextM(hand,''..Points.ding)
	end
	hand = GUI:WndFindWindow(0,"BossWnd,Points,BossWnd_tortoise,now_points")  
	if hand ~=0 then 
		GUI:EditSetTextM(hand,''..now_points)
		if Points.ding > now_points then 
			GUI:WndSetTextColorM(hand, MakeARGB(255,255,0,0)) 
		else
			GUI:WndSetTextColorM(hand, MakeARGB(255,194,182,160))
		end
	end
	local hand = GUI:WndFindWindow(0,"BossWnd,Points,BossWnd_tortoise,next_points")  
	
end

function BossWnd_tortoise.Img(param,next_points,now_points)   
	Points.ding = next_points
	if BossWnd_tortoise.nowWnd ~= 0 then 
		GUI:WndSetEnableM(BossWnd_tortoise.nowWnd, false) 
	end
	BossWnd_tortoise.own(next_points,now_points)
	BossWnd_tortoise.Img1(param)
	WndDelEffect(BossWnd_tortoise.Wnd, "img"..param)
	WndDelEffect(BossWnd_tortoise.Wnd, "img"..(param+1))
	WndAddEffect(BossWnd_tortoise.Wnd, "img" .. param, 3020102200, -37, -37, 100, 0) 
	WndAddEffect(BossWnd_tortoise.Wnd, "img" .. (param+1), 3020102000, -37, -37, 100, 0) 
	
end
function BossWnd_tortoise.Img1(param)              --图片和线条变亮
	
	ImageSetImageID(0, "BossWnd,Points,BossWnd_tortoise,img".. param,1803300023)
	if param > 1 then 
		local index =  param - 1
		ImageSetImageID(0, "BossWnd,Points,BossWnd_tortoise,line".. index,1803300041)
		local tab = {{4020,10000,6},{9566,4500,-105},{10319,5000,-90},{3119,13000,13},{5198,11000,10},{3511,10000,-15},{8297,4000,-105},{8307,3000,105},{12514,4000,-112}}
		local _GUIHandle = GUI:WndFindWindow(0, "BossWnd,Points,BossWnd_tortoise,line".. index)
		GUI:ImageSetTransfrom(_GUIHandle,tab[index][1],tab[index][2],tab[index][3])
	end
	if param == 10 then
		_GUIHandle = GUI:WndFindWindow(0, "BossWnd,Points,BossWnd_tortoise,text1")
		GUI:WndSetPosM(_GUIHandle, 75, 31)
		_GUIHandle = GUI:WndFindWindow(0, "BossWnd,Points,BossWnd_tortoise,img_level2")
		GUI:WndSetVisible(_GUIHandle, true)
		ImageSetImageID(0, "BossWnd,Points,BossWnd_tortoise,img_level1",1803300028)
		ImageSetImageID(0, "BossWnd,Points,BossWnd_tortoise,img_level2",1803300037)
	else
		local img = CL:Plus("1803300027",tostring(param))
		ImageSetImageID(0, "BossWnd,Points,BossWnd_tortoise,img_level1", tonumber(img))
	end
	BossWnd_tortoise.Hint(param)
end
function BossWnd_tortoise.msg()
	local str = "BOSS积分不足，可在商城购买或打BOSS获得"
	local color = MakeARGB(255,255,0,0)
	BossWnd.window_msg_up(BossWnd_tortoise.nowWnd,str,-80,-30,60,color,1.5)
end
function BossWnd_tortoise.msg2()
	BossWnd.window_msg_up(BossWnd_tortoise.nowWnd,"请先激活上级的积分点",-80,-30,60,MakeARGB(255,255,0,0),1.5)
end

BossWnd_tortoise.main()