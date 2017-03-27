OffLineExp ={}
local ui = "<form default_parent ='RewardHall'> <dialog OnInit='OffLineExp.UIInit' id='OffLineExp' drag='false' image='1805600005' x='186' y='58' w='622' h='484' revmsg='true'>"
	.."<image id='backimg1' image='1805600118' x='2' y='207' w='618' h='92' check_point='0' revmsg='true' enable='false'/>"
	.."<image id='backimg2' image='1805600118' x='2' y='299' w='618' h='92' check_point='0' revmsg='true' enable='false'/>"
	.."<image id='backimg3' image='1805600118' x='2' y='392' w='618' h='92' check_point='0' revmsg='true' enable='false'/>"
	.."<image id='time_edit1' image='1805600055' x='128' y='135' w='12' h='18' check_point='0' revmsg='true' Visible='false'/>"
	.."<image id='time_edit2' image='0' x='114' y='135' w='12' h='18' check_point='0' revmsg='true' Visible='false'/>"
	.."	"
	.."<edit id='edit2' x='142' y='129' w='50' h='28' revmsg='true' enable='false' text_color='#C2B6A0' text='小时' font='system'/>"
	.."<edit id='edit3' x='70' y='176' w='66' h='27' canedit='false' revmsg='true' enable='false' text_color='#FF9801' text='收益' font='system'/>"
	.."<edit id='edit6' x='210' y='176' w='66' h='27' canedit='false' revmsg='true' enable='false' text_color='#FF9801' text='经验值' font='system'/>"
	.."<edit id='edit5' x='360' y='176' w='66' h='27' canedit='false' revmsg='true' enable='false' text_color='#FF9801' text='消耗元宝' font='system'/>"
	.."<edit id='edit7' x='525' y='176' w='66' h='27' canedit='false' revmsg='true' enable='false' text_color='#FF9801' text='操作' font='system'/>"
	..""
	.."<image id='ABC1' image='1805600094' x='40' y='245' w='82' h='18' check_point='0' revmsg='true' enable='false'/>"
	.."<image id='img_Num11' image='0' x='274' y='245' w='15' h='20' enable='false'/>"
	.."<image id='img_Num12' image='0' x='264' y='245' w='15' h='20' enable='false'/>"
	.."<image id='img_Num13' image='0' x='254' y='245' w='15' h='20' enable='false'/>"
	.."<image id='img_Num14' image='0' x='244' y='245' w='15' h='20' enable='false'/>"
	.."<image id='img_Num15' image='0' x='234' y='245' w='15' h='20' enable='false'/>"
	.."<image id='img_Num16' image='0' x='224' y='245' w='15' h='20' enable='false'/>"
	.."<image id='img_Num17' image='0' x='214' y='245' w='15' h='20' enable='false'/>"
	.."<image id='img_Num18' image='0' x='204' y='245' w='15' h='20' enable='false'/>"
	.."<image id='img_Num19' image='0' x='194' y='245' w='15' h='20'  enable='false'/>"
	.."<button id='button1' image='1805600146' x='490' y='236' w='90' h='31' OnLButtonUp='OffLineExp.Get' revmsg='true' param='1' text='免费找回' visible='false' text_color='#F8D879'/>"
	.."<image id='gotImage1' image='1805600121' x='482' y='225' w='85' h='58' check_point='0' revmsg='true' visible='false'/>"
	..""
	.."<image id='ABC2' image='1805600095' x='40' y='336' w='82' h='18' check_point='0' revmsg='true' enable='false'/>"
	.."<image id='img_Num21' image='0' x='274' y='336' w='15' h='20' enable='false'/>"
	.."<image id='img_Num22' image='0' x='264' y='336' w='15' h='20' enable='false'/>"
	.."<image id='img_Num23' image='0' x='254' y='336' w='15' h='20' enable='false'/>"
	.."<image id='img_Num24' image='0' x='244' y='336' w='15' h='20' enable='false'/>"
	.."<image id='img_Num25' image='0' x='234' y='336' w='15' h='20' enable='false'/>"
	.."<image id='img_Num26' image='0' x='224' y='336' w='15' h='20' enable='false'/>"
	.."<image id='img_Num27' image='0' x='214' y='336' w='15' h='20' enable='false'/>"
	.."<image id='img_Num28' image='0' x='204' y='336' w='15' h='20' enable='false'/>"
	.."<image id='img_Num29' image='0' x='194' y='336' w='15' h='20'  enable='false'/>"
	..""
	.."<image id='img_yb21' image='0' x='401' y='336' w='15' h='20' enable='false'/>"
	.."<image id='img_yb22' image='0' x='391' y='336' w='15' h='20' enable='false'/>"
	.."<image id='img_yb23' image='0' x='381' y='336' w='15' h='20' enable='false'/>"
	.."<image id='img_yb24' image='0' x='371' y='336' w='15' h='20'  enable='false'/>"
	.."<image id='ybImage1' image='1806600012' x='344' y='335' w='16' h='14' check_point='0' revmsg='true' enable='false'/>"
	.."<button id='button2' image='1805600146' x='490' y='327' w='90' h='31' OnLButtonUp='OffLineExp.Get' revmsg='true' param='2' text='2倍找回' visible='false' text_color='#F8D879'/>"
	.."<image id='gotImage2' image='1805600121' x='482' y='316' w='85' h='58' check_point='0' revmsg='true' visible='false'/>"
	..""
	.."<image id='ABC3' image='1805600096' x='40' y='430' w='82' h='18' check_point='0' revmsg='true' enable='false'/>"
	..""
	.."<image id='img_Num31' image='0' x='274' y='429' w='15' h='20' enable='false'/>"
	.."<image id='img_Num32' image='0' x='264' y='429' w='15' h='20' enable='false'/>"
	.."<image id='img_Num33' image='0' x='254' y='429' w='15' h='20' enable='false'/>"
	.."<image id='img_Num34' image='0' x='244' y='429' w='15' h='20' enable='false'/>"
	.."<image id='img_Num35' image='0' x='234' y='429' w='15' h='20' enable='false'/>"
	.."<image id='img_Num36' image='0' x='224' y='429' w='15' h='20' enable='false'/>"
	.."<image id='img_Num37' image='0' x='214' y='429' w='15' h='20' enable='false'/>"
	.."<image id='img_Num38' image='0' x='204' y='429' w='15' h='20' enable='false'/>"
	.."<image id='img_Num39' image='0' x='194' y='429' w='15' h='20'  enable='false'/>"
	..""
	.."<image id='img_yb31' image='0' x='401' y='429' w='15' h='20' enable='false'/>"
	.."<image id='img_yb32' image='0' x='391' y='429' w='15' h='20' enable='false'/>"
	.."<image id='img_yb33' image='0' x='381' y='429' w='15' h='20' enable='false'/>"
	.."<image id='img_yb34' image='0' x='371' y='429' w='15' h='20'  enable='false'/>"
	.."<image id='ybImage2' image='1806600012' x='344' y='428' w='16' h='14' check_point='0' revmsg='true' enable='false'/>"
	.."<button id='button3' image='1805600146' x='490' y='419' w='90' h='31' OnLButtonUp='OffLineExp.Get' revmsg='true' param='3' text='5倍找回' visible='false' text_color='#F8D879'/>"
	.."<image id='gotImage3' image='1805600121' x='482' y='408' w='85' h='58' check_point='0' revmsg='true' visible='false'/>"
	.."<image id='ABC4' image='1805600094' x='344' y='246' w='82' h='18' check_point='0' revmsg='true'/>"
	.." </dialog>"
	.."</form>"

function OffLineExp.main()
	GenFormByString(ui)
end

--UI Logic Code Start
OffLineExp.WndHandle = 0
local img_Num =  {1805600098, 1805600099, 1805600100, 1805600101, 1805600102, 1805600103, 1805600104, 1805600105, 1805600106, 1805600097}
local img_Num1=  {1805600109, 1805600110, 1805600111, 1805600112, 1805600113, 1805600114, 1805600115, 1805600116, 1805600117, 1805600108}
function OffLineExp.UIInit(_Handle)
	
	OffLineExp.WndHandle = _Handle
	UI:Lua_SubmitForm("奖励大厅表单","off_line_exp", "")
end

function OffLineExp.Info(dat,index)
	local hour = tonumber(dat) 
	if hour > 0 then
		local num_tab = OffLineExp.DealNum(hour)
		for i=1,#num_tab do
			local handle = GetWindow(OffLineExp.WndHandle,"time_edit"..i)
			if handle ~= 0 then
				GUI:WndSetVisible(handle,true)
				local numimg = CL:Plus("1805600055", ''..num_tab[i])
				ImageSetImageID(OffLineExp.WndHandle,"time_edit"..i, tonumber(numimg))
			end
		end
		for i = 1 , 3 do 
			local _Handle = GUI:WndFindChildM(OffLineExp.WndHandle, "exp"..i)
			local exp_get = 0
			if i ~= 3 then			
				exp_get = hour * 600000 * i
				
			else
				exp_get = hour * 600000 * 5
			end	
			if exp_get == 0 then
				ImageSetImageID(OffLineExp.WndHandle, "img_Num".. i .."9", img_Num[10])
				return
			end
			local leftNum = 0
			local tb_leftNum = {}
			local posFlag = 1
				--逆向取数
			while exp_get > 0 do
				leftNum = exp_get % 10
				exp_get = math.floor(exp_get/10)
				if leftNum == 0 then
					leftNum = 10
				end
				tb_leftNum[posFlag] = leftNum
				posFlag = posFlag + 1
			end
			local startPoint = 9 - #tb_leftNum + 1
			local pointFlag = 1
			for j = startPoint, 9 do
				ImageSetImageID(OffLineExp.WndHandle, "img_Num" .. i .. j, img_Num[tb_leftNum[pointFlag]])
				pointFlag = pointFlag + 1 
			end
			local _Handle = GUI:WndFindChildM(OffLineExp.WndHandle, "button"..i)
			if _Handle ~= 0 then
				GUI:WndSetVisible(_Handle, true)
			end
			if i == 3 then
				--GUI:ButtonSetShine(_Handle, true)
			end	
		end	
		for i = 2 , 3 do 
			local yb = 0
			if i == 2 then
				yb = hour * 13
			else
				yb = hour * 38
			end	
			if yb == 0 then
				ImageSetImageID(OffLineExp.WndHandle, "img_yb".. i .."4", img_Num1[10])
				return
			end
			local leftNum = 0
			local tb_leftNum = {}
			local posFlag = 1
				--逆向取数
			while yb > 0 do
				leftNum = yb % 10
				yb = math.floor(yb/10)
				if leftNum == 0 then
					leftNum = 10
				end
				tb_leftNum[posFlag] = leftNum
				posFlag = posFlag + 1
			end
			local startPoint = 4 - #tb_leftNum + 1
			local pointFlag = 1
			for j = startPoint, 4 do
				ImageSetImageID(OffLineExp.WndHandle, "img_yb" .. i .. j, img_Num1[tb_leftNum[pointFlag]])
				pointFlag = pointFlag + 1 
			end
		end	
	else
		local handle = GUI:WndFindChildM(OffLineExp.WndHandle, "gotImage"..index)
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true) 
		end
		for i = 1, 3 do
			ImageSetImageID(OffLineExp.WndHandle,"img_Num"..i.. 5,1805600097) 
			if i>1 then
				ImageSetImageID(OffLineExp.WndHandle,"img_yb"..i.. 4,1805600108) 
			end
		end
	end
	
end

function OffLineExp.Get(_Handle)
	local param = GUI:WndGetParam(_Handle)
	UI:Lua_SubmitForm("奖励大厅表单","off_line_getexp", ""..param)
end

function OffLineExp.Vis(p)
	for i = 1 , 3 do 
		local _Handle = GUI:WndFindChildM(OffLineExp.WndHandle, "button"..i)
		if _Handle ~= 0 then
			GUI:WndSetVisible(_Handle, false) 
		end	
	end
	local index, handle = tonumber(p), 0
	handle = GUI:WndFindChildM(OffLineExp.WndHandle, "gotImage"..index)
	if handle ~= 0 then
		GUI:WndSetVisible(handle, true) 
	end
	local handle = GetWindow(OffLineExp.WndHandle,"time_edit1")
	if handle ~= 0 then
		GUI:WndSetVisible(handle,true)
		ImageSetImageID(OffLineExp.WndHandle,"time_edit1",1805600055) 
	end
	handle = GetWindow(OffLineExp.WndHandle,"time_edit2")
	if handle ~= 0 then
		GUI:WndSetVisible(handle,false)
	end
	handle = GetWindow(nil,"RewardHall,image4")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, false) 
	end
	for i = 1, 3 do
		for j=1,9 do   
			if j==5 then 
				ImageSetImageID(OffLineExp.WndHandle,"img_Num"..i.. 5,1805600097)
			else
				handle = GetWindow(OffLineExp.WndHandle,"img_Num"..i.. j)
				if handle ~= 0 then
					GUI:WndSetVisible(handle, false) 
				end
			end
			if i>1 and j<5 then
				if j==4 then 
					ImageSetImageID(OffLineExp.WndHandle,"img_yb"..i.. 4,1805600108) 
				else
					handle = GetWindow(OffLineExp.WndHandle,"img_yb"..i.. j)
					if handle ~= 0 then
						GUI:WndSetVisible(handle, false) 
					end
				end
			end
		end
		
	end

end

function OffLineExp.DealNum(score)
	local indetab = {} 
	for i=1,10 do 
		local index1 = math.floor(score%10)
		local index2 = math.floor(score/10)
		score = index2
		indetab[i]= index1
		if score == 0 then break end
	end 
	return indetab
end

OffLineExp.main()