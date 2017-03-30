Online_reward ={}
local ui = "<form default_parent ='Reward_win'> <dialog OnInit='Online_reward.UIInit' id='Online_reward' image='1805600003' x='186' y='58' w='622' h='484' revmsg='true'>"
	.."	<image id='image1' image='1805600053' x='24' y='13' w='343' h='36' check_point='0' revmsg='true' enable='false'/>"
	.."	<edit id='edit1' x='24' y='69' w='240' h='25' revmsg='true' enable='false' text_color='#DFD4C4' text='每日在线时间达到要求，即可领取丰富奖励' font='system'/>"
	.."	<image id='backimg11' image='1805600051' x='24' y='95' w='144' h='170' check_point='0' enable='false'/>"
	.."	<image id='backimg21' image='1805600051' x='168' y='95' w='144' h='170' check_point='0' enable='false'/>"
	.."	<image id='backimg31' image='1805600051' x='312' y='95' w='144' h='170' check_point='0' enable='false'/>"
	.."	<image id='backimg41' image='1805600051' x='456' y='95' w='144' h='170' check_point='0' enable='false'/>"
	.."	<image id='backimg1' image='1805600052' x='27' y='98' w='136' h='162' check_point='0' enable='false' visible='false'/>"
	.."	<image id='backimg2' image='1805600052' x='171' y='98' w='136' h='162' check_point='0' enable='false' visible='false'/>"
	.."	<image id='backimg3' image='1805600052' x='315' y='98' w='136' h='162' check_point='0' enable='false' visible='false'/>"
	.."	<image id='backimg4' image='1805600052' x='459' y='98' w='136' h='162' check_point='0' enable='false' visible='false'/>"
	.."	<edit id='editsj1' x='54' y='237' w='80' h='20' align='center' enable='false' text_color='#CD0100' text='00:00:01' font='system'/>"
	.."	<edit id='editsj2' x='203' y='238' w='80' h='20' align='center' enable='false' text_color='#CD0100' text='00:00:01' font='system'/>"
	.."	<edit id='editsj3' x='346' y='238' w='80' h='20' align='center' enable='false' text_color='#CD0100' text='00:00:01' font='system'/>"
	.."	<edit id='editsj4' x='489' y='238' w='80' h='20' align='center' enable='false' text_color='#CD0100' text='00:00:01' font='system'/>"
	
	.."	<image id='button1' image='1805600050' x='42' y='108' w='109' h='106' check_point='0' OnMouseIn='Online_reward.MoveIn' OnMouseOut='Online_reward.MoveOut' revmsg='true' param='1'/>"
	.."	<image id='button2' image='1805600050' x='186' y='108' w='109' h='106' check_point='0' OnMouseIn='Online_reward.MoveIn' OnMouseOut='Online_reward.MoveOut' revmsg='true' param='2'/>"
	.."	<image id='button3' image='1805600050' x='330' y='108' w='109' h='106' check_point='0' OnMouseIn='Online_reward.MoveIn' OnMouseOut='Online_reward.MoveOut' revmsg='true' param='3'/>"
	.."	<image id='button4' image='1805600050' x='478' y='108' w='109' h='106' check_point='0' OnMouseIn='Online_reward.MoveIn' OnMouseOut='Online_reward.MoveOut' revmsg='true' param='4'/>"

	.."	<image id='magic1' image='3020101800'  x='94' y='187' w='109' h='106' check_point='0' revmsg='true' enable='false' type='animate'/>"
	.."	<image id='magic2' image='3020101800'  x='238' y='187' w='109' h='106' check_point='0' revmsg='true' enable='false' type='animate'/>"
	.."	<image id='magic3' image='3020101800'  x='382' y='187' w='109' h='106' check_point='0' revmsg='true' enable='false' type='animate'/>"
	.."	<image id='magic4' image='3020101800'  x='530' y='187' w='109' h='106' check_point='0' revmsg='true' enable='false' type='animate'/>"
	
	.."	<image id='image2' image='1802900066' x='180' y='340' w='285' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<edit id='edit4' x='45' y='367' w='120' h='24' revmsg='true' enable='false' text_color='#D8A268' text='上周累计绑定元宝：' font='system'/>"
	.."	<edit id='edit_yb1' x='156' y='367' w='108' h='24' revmsg='true' enable='false' text_color='#D8A268' text=' ' font='system'/>"
	.."	<edit id='edit5' x='327' y='367' w='120' h='24' revmsg='true' enable='false' text_color='#D8A268' text='本周累计绑定元宝：' font='system'/>"
	.."	<edit id='edit_yb2' x='436' y='367' w='108' h='24' revmsg='true' enable='false' text_color='#D8A268' text=' ' font='system'/>"
	.."	<button id='get_button1' image='1805600160' x='240' y='268' w='144' h='52' OnLButtonUp='Online_reward.GetItem' revmsg='true' enable='false'/>"
	.."	<button id='get_button2' image='1805600160' x='470' y='420' w='144' h='52' OnLButtonUp='Online_reward.GetGolds' revmsg='true' enable='false'/>"
	--.."	<edit id='edit6' x='450' y='460' w='170' h='20' revmsg='true' enable='false' text_color='#CD0100' text='本周累计绑定元宝下周一领取' font='system'/>"
	.."	<edit id='edit_sm1' x='45' y='397' w='427' h='20' revmsg='true' enable='false' text_color='#7b6f5e' text='新区开服第一周，一个小时可累计增加：30绑定元宝' font='system'/>"
	.."	<edit id='edit_sm2' x='45' y='419' w='427' h='20' revmsg='true' enable='false' text_color='#7b6f5e' text='新区开服第二周，一个小时可累计增加：40绑定元宝' font='system'/>"
	.."	<edit id='edit_sm3' x='45' y='441' w='427' h='20' revmsg='true' enable='false' text_color='#7b6f5e' text='新区开服第三周以后，每周一个小时可累计增加：50绑定元宝' font='system'/>"
	.."	<edit id='edit_sm4' x='45' y='462' w='427' h='20' revmsg='true' enable='false' text_color='#7b6f5e' text='每周最大累计70个小时在线时间' font='system'/>"
	.."	<image id='TestWndChild_0' image='1805600054' x='24' y='49' w='108' h='20' check_point='0' revmsg='true'/>"
	.."	<image id='hou2' image='1805600055' x='136' y='50' w='12' h='18' check_point='0' revmsg='true'/>"
	.."	<image id='hou1' image='1805600055' x='148' y='50' w='12' h='18' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_3' image='1805600065' x='162' y='52' w='5' h='14' check_point='0' revmsg='true'/>"
	.."	<image id='min2' image='1805600055' x='169' y='50' w='12' h='18' check_point='0' revmsg='true'/>"
	.."	<image id='min1' image='1805600055' x='181' y='50' w='12' h='18' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_6' image='1805600065' x='195' y='52' w='5' h='14' check_point='0' revmsg='true'/>"
	.."	<image id='second2' image='1805600055' x='202' y='50' w='12' h='18' check_point='0' revmsg='true'/>"
	.."	<image id='second1' image='1805600055' x='213' y='50' w='12' h='18' check_point='0' revmsg='true'/>"
	
	.." </dialog>"
	.."</form>"

function Online_reward.main()
	GenFormByString(ui)
end


Online_reward.WndHandle = 0
Online_reward.Itemlist = {}
Online_reward.IsGet = {}
Online_reward.Get = {0,0,0,0}
Online_reward.Time = 0
Online_reward.time_id = 0
function Online_reward.UIInit(_Handle)
	Online_reward.WndHandle = _Handle
	UI:Lua_SubmitForm("OnlineGiftForm","get_time","")
	GUIWndRegistScript(_Handle, RDWndBaseCL_wnd_close, "Online_reward.cleartime")
	local tab = {{"金砖（小）"},
			{"金砖（中）"},
			{"金砖（中）","转生神殿卷轴"},
			{"金砖（大）","转生神殿卷轴"}}
	for i= 1,4 do 
		local hand = GetWindow(_Handle,"button"..i)
		if hand ~= 0 then 
			local str = ""
			for j=1,#tab[i] do 
				str = str .. "<font color='#C8B464'>"..tab[i][j].."</font><font color='#00ff00'> x1</font>\n"
			end
			GUIWndSetHint(hand,str )	
		end
		
		local handle = GetWindow(_Handle,"magic"..i)
		if handle ~= 0 then
			GUIImageSetDrawCenter(handle,true)		
			GUIImageSetAnimateEnable(handle, true, 150)
			GUIImageSetTransfrom(handle, 11600, 11428,0)		
		end
	end
end

function Online_reward.Info(_Ret,last,now)
	Online_reward.Itemlist = _Ret[1]
	Online_reward.IsGet = _Ret[2]
	Online_reward.Time = tonumber(_Ret[3])	
	local handle = GetWindow(nil,"Reward_win,image2")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false) 
	end
	if Online_reward.time_id == 0 then
		Online_reward.update()	
		if GUIWndAddTimerBrief(Online_reward.WndHandle,1000,"Online_reward.update") then
			Online_reward.time_id = tonumber(as3.tolua(LuaRet))
		end
	end	
	
	local hand = GetWindow(Online_reward.WndHandle, "edit_yb1")
	if hand ~=0 then 
		GUIEditSetTextM(hand,last)	
		if tonumber(last) > 0 then 
			hand = GetWindow(Online_reward.WndHandle, "get_button2")
			GUIWndSetEnableM(hand, true)
		end
	end
	hand = GetWindow(Online_reward.WndHandle, "edit_yb2")
	if hand ~=0 then 
		GUIEditSetTextM(hand,now)	
	end
end

function Online_reward.DealNum(score)
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

function Online_reward.update()
	local str = GetLeaveTimeString(Online_reward.Time)
	local day, hour, minute, second = GetDetailTime(Online_reward.Time)
	local num_tab = Online_reward.DealNum(hour)
	ImageSetImageID(Online_reward.WndHandle,"hou2",1805600055)
	for i=1,#num_tab do
		ImageSetImageID(Online_reward.WndHandle,"hou"..i,1805600055+num_tab[i])
	end
	local num_tab = Online_reward.DealNum(minute)
	ImageSetImageID(Online_reward.WndHandle,"min2",1805600055)
	for i=1,#num_tab do 
		ImageSetImageID(Online_reward.WndHandle,"min"..i,1805600055+num_tab[i]) 
	end
	local num_tab = Online_reward.DealNum(second)
	ImageSetImageID(Online_reward.WndHandle,"second2",1805600055)
	for i=1,#num_tab do
		ImageSetImageID(Online_reward.WndHandle,"second"..i,1805600055+num_tab[i])
	end
	--[[local _GUIHandle = GUIWndFindChildM(Online_reward.WndHandle, "edit2")
	if _GUIHandle ~= 0 then
		GUIEditSetTextM(_GUIHandle,"您今日已在线："..str)	
	end--]]
	local a = 0 
	for i = 1 , 4 do 
		local _GUIHandle = GUIWndFindChildM(Online_reward.WndHandle, "editsj"..i)
		if _GUIHandle ~= 0 then
			local str = ""
			local need_time = Online_reward.Itemlist[i].online_time * 60
			local now_time = need_time - Online_reward.Time
			local _Handle = GUIWndFindChildM(Online_reward.WndHandle, "button"..i)
			local _Handle1 = GUIWndFindChildM(Online_reward.WndHandle, "magic"..i)
			if _Handle ~= 0 then				
				if Online_reward.IsGet[i] == 1 then
					str = "已领取"
					--[[GUIWndSetEnableM(_Handle, false) 
					GUIButtonSetShine(_Handle,false)
					GUIButtonSetIsActivePageBtn(_Handle,false)	--]]
					--WndDelEffect(_Handle)
					WndSetTextColorM(_GUIHandle,nil,MakeARGB(255, 205, 180, 98))
					GUIWndSetVisible(_Handle1, false)
					ImageSetImageID(Online_reward.WndHandle,"button"..i,1805600049) 
				else 
					if now_time > 0 then
						str = GetLeaveTimeString2(now_time)
						GUIWndSetVisible(_Handle1, false)
					else 
						str = "可领取"
						--GUIButtonSetIsActivePageBtn(_Handle,true)
						--GUIButtonSetShine(_Handle,true)
						--WndAddEffect(_Handle,nil,3020101800,-49,-54,150,0)
						WndSetTextColorM(_GUIHandle,nil,MakeARGB(255, 0, 204, 0))
						GUIWndSetVisible(_Handle1, true)
						Online_reward.Get[i] = 1	
						a = a + 1 
					end	
				end	
				GUIEditSetTextM(_GUIHandle,""..str)	
			end	
		end
	end
	local _Handle = GUIWndFindChildM(Online_reward.WndHandle, "get_button1")
	if a > 0 then	
		GUIWndSetEnableM(_Handle, true) 	
		local handle = GetWindow(nil,"Reward_win,image2")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true) 
		end	
	else
		if _Handle ~= 0 then
			GUIWndSetEnableM(_Handle, false)
		end	
	end	
	Online_reward.Time = Online_reward.Time + 1
end		

function Online_reward.GetItem()
	local str = serialize(Online_reward.Get)
	UI:Lua_SubmitForm("OnlineGiftForm","Get_item", ""..str)
end	

function Online_reward.GetGolds()
	UI:Lua_SubmitForm("OnlineGiftForm","Get_Golds", "")
end	

function Online_reward.cleartime()
	if tonumber(Online_reward.time_id) ~= 0 then
		UI:Lua_DelDelayTask(tonumber(Online_reward.time_id))
	end	
end

function Online_reward.Bind()
	local hand = GetWindow(Online_reward.WndHandle, "edit_yb1")
	if hand ~= 0 then 
		GUIEditSetTextM(hand,0)	
		hand = GetWindow(Online_reward.WndHandle, "get_button2")
		GUIWndSetEnableM(hand, false) 
	end
end

function Online_reward.MoveIn(handle)
	local param = tonumber(WndGetParam(handle))
	handle = GetWindow(Online_reward.WndHandle, "backimg"..param)
	if handle ~= 0 then 
		GUIWndSetVisible(handle,true)
	end
end

function Online_reward.MoveOut(handle)
	local param = tonumber(WndGetParam(handle))
	handle = GetWindow(Online_reward.WndHandle, "backimg"..param)
	if handle ~= 0 then 
		GUIWndSetVisible(handle,false)
	end
end

Online_reward.main()