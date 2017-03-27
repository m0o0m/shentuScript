Online_reward ={}
local ui = "<form default_parent ='Reward_win'> <dialog OnInit='Online_reward.UIInit' id='Online_reward' image='1802900002' x='159' y='43' esc_close='false' w='634' h='490' drag='false' revmsg='true'>"
	.."	<image id='image1' image='1802900035' x='135' y='22' w='366' h='23' revmsg='true' enable='false'/>"
	.."	<edit id='edit1' x='201' y='45' w='240' h='25' revmsg='true' enable='false' text_color='#CEB362' text='每日在线时间达到要求，即可领取丰富奖励' font='system'/>"
	.."	<edit id='edit2' x='215' y='70' w='230' h='24' revmsg='true' enable='false' text_color='#FFE8A4' text='您今日已在线：0时0分0秒' font='system'/>"
	.."	<button id='button1' image='1802900062' x='39' y='105' w='125' h='149' revmsg='true'/>"
	.."	<button id='button3' image='1802900062' x='332' y='105' w='125' h='149' revmsg='true'/>"
	.."	<button id='button2' image='1802900062' x='187' y='105' w='125' h='149' revmsg='true'/>"
	.."	<button id='button4' image='1802900062' x='476' y='105' w='125' h='149' revmsg='true'/>"
	.."	<edit id='editsj1' x='60' y='226' w='80' h='20' align='center' revmsg='true' enable='false' text_color='#CD0100' text='00:00:01' font='system'/>"
	.."	<edit id='editsj2' x='206' y='226' w='80' h='20' align='center' revmsg='true' enable='false' text_color='#CD0100' text='00:00:01' font='system'/>"
	.."	<edit id='editsj3' x='352' y='226' w='80' h='20' align='center' revmsg='true' enable='false' text_color='#CD0100' text='00:00:01' font='system'/>"
	.."	<edit id='editsj4' x='498' y='226' w='80' h='20' align='center' revmsg='true' enable='false' text_color='#CD0100' text='00:00:01' font='system'/>"
	.."	<image id='image2' image='1802900066' x='145' y='340' w='285' h='22' revmsg='true' enable='false'/>"
	.."	<edit id='edit4' x='45' y='367' w='120' h='24' revmsg='true' enable='false' text_color='#CE6706' text='上周累计绑定元宝：' font='system'/>"
	.."	<edit id='edit_yb1' x='156' y='367' w='108' h='24' revmsg='true' enable='false' text_color='#FFEB01' text='0' font='system'/>"
	.."	<edit id='edit5' x='327' y='367' w='120' h='24' revmsg='true' enable='false' text_color='#CE6706' text='本周累计绑定元宝：' font='system'/>"
	.."	<edit id='edit_yb2' x='436' y='367' w='108' h='24' revmsg='true' enable='false' text_color='#FFEB01' text='0' font='system'/>"
	.."	<button id='get_button1' image='1802900013' x='259' y='268' w='124' h='49' OnLButtonUp='Online_reward.GetItem' revmsg='true' enable='false'/>"
	.."	<button id='get_button2' image='1802900013' x='480' y='417' w='124' h='49' OnLButtonUp='Online_reward.GetGolds' revmsg='true' enable='false'/>"
	.."	<edit id='edit6' x='465' y='470' w='170' h='20' revmsg='true' enable='false' text_color='#CD0100' text='本周累计绑定元宝下周一领取' font='system'/>"
	.."	<edit id='edit_sm1' x='45' y='397' w='427' h='20' revmsg='true' enable='false' text_color='#92691A' text='新区开服第一周，一个小时可累计增加：30绑定元宝' font='system'/>"
	.."	<edit id='edit_sm2' x='45' y='419' w='427' h='20' revmsg='true' enable='false' text_color='#92691A' text='新区开服第二周，一个小时可累计增加：40绑定元宝' font='system'/>"
	.."	<edit id='edit_sm3' x='45' y='441' w='427' h='20' revmsg='true' enable='false' text_color='#92691A' text='新区开服第三周以后，每周一个小时可累计增加：50绑定元宝' font='system'/>"
	.."	<edit id='edit_sm4' x='45' y='462' w='427' h='20' revmsg='true' enable='false' text_color='#92691A' text='每周最大累计70个小时在线时间' font='system'/>"
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
	GUI:WndRegistScript(_Handle, RDWndBaseCL_wnd_close, "Online_reward.cleartime")
	
end

function Online_reward.Info(_Ret,last,now)
	
	Online_reward.Itemlist = _Ret[1]
	Online_reward.IsGet = _Ret[2]
	Online_reward.Time = tonumber(_Ret[3])	
	local handle = GetWindow(nil,"Reward_win,image2")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, false) 
	end
	if Online_reward.time_id == 0 then
		Online_reward.update()	
		if GUI:WndAddTimerBrief(Online_reward.WndHandle,1000,"Online_reward.update") then
			Online_reward.time_id = tonumber(LuaRet)
		end
	end	
	
	local hand = GetWindow(Online_reward.WndHandle, "edit_yb1")
	if hand ~=0 then 
		GUI:EditSetTextM(hand,""..last)	
		if tonumber(last) > 0 then 
			hand = GetWindow(Online_reward.WndHandle, "get_button2")
			GUI:WndSetEnableM(hand, true)
		end
	end
	hand = GetWindow(Online_reward.WndHandle, "edit_yb2")
	if hand ~=0 then 
		GUI:EditSetTextM(hand,""..now)	
	end
end

function Online_reward.update()
	local str = GetLeaveTimeString(Online_reward.Time)
	local _GUIHandle = GUI:WndFindChildM(Online_reward.WndHandle, "edit2")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"您今日已在线："..str)	
	end
	local a = 0 
	for i = 1 , 4 do 
		local _GUIHandle = GUI:WndFindChildM(Online_reward.WndHandle, "editsj"..i)
		if _GUIHandle ~= 0 then
			local str = ""
			local need_time = Online_reward.Itemlist[i].online_time * 60
			local now_time = need_time - Online_reward.Time
			local _Handle = GUI:WndFindChildM(Online_reward.WndHandle, "button"..i)
			if _Handle ~= 0 then				
				if Online_reward.IsGet[i] == 1 then
					str = "已领取"
					GUI:WndSetEnableM(_Handle, false) 
					--GUI:ButtonSetShine(_Handle,false)
					GUI:ButtonSetIsActivePageBtn(_Handle,false)	
					WndSetTextColorM(_GUIHandle,nil,MakeARGB(255, 205, 180, 98))
				else 
					if now_time > 0 then
						str = GetLeaveTimeString2(now_time)	
					else 
						str = "可领取"
						GUI:ButtonSetIsActivePageBtn(_Handle,true)
						--GUI:ButtonSetShine(_Handle,true)
						WndSetTextColorM(_GUIHandle,nil,MakeARGB(255, 0, 204, 0))
						Online_reward.Get[i] = 1	
						a = a + 1 
					end	
				end	
				GUI:EditSetTextM(_GUIHandle,""..str)	
			end	
		end
	end
	local _Handle = GUI:WndFindChildM(Online_reward.WndHandle, "get_button1")
	if a > 0 then	
		GUI:WndSetEnableM(_Handle, true) 	
		local handle = GetWindow(nil,"Reward_win,image2")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true) 
		end	
	else
		if _Handle ~= 0 then
			GUI:WndSetEnableM(_Handle, false)
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
		GUI:EditSetTextM(hand,""..0)	
		hand = GetWindow(Online_reward.WndHandle, "get_button2")
		GUI:WndSetEnableM(hand, false) 
	end
end

Online_reward.main()