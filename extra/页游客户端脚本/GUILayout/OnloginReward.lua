OnloginReward = {}
local ui = "<form default_parent ='Reward_win'> <dialog OnInit='OnloginReward.UIInit' id='OnloginReward' image='1805600004' x='186' y='58' w='622' h='484' revmsg='true'>"
	.."	<button id='button_day1' image='1805600165' x='8' y='6' w='91' h='123' OnLButtonUp='OnloginReward.selectbutton' revmsg='true' param='1' text='第一天' OnMouseIn='OnloginReward.MoveIn' OnMouseOut='OnloginReward.MoveOut' text_color='#C1954C'/>"
	.."	<button id='button_day2' image='1805600165' x='94' y='6' w='91' h='123' OnLButtonUp='OnloginReward.selectbutton' revmsg='true' param='2' text='第二天' OnMouseIn='OnloginReward.MoveIn' OnMouseOut='OnloginReward.MoveOut' text_color='#C1954C'/>"
	.."	<button id='button_day3' image='1805600165' x='181' y='6' w='91' h='123' OnLButtonUp='OnloginReward.selectbutton' revmsg='true' param='3' text='第三天' OnMouseIn='OnloginReward.MoveIn' OnMouseOut='OnloginReward.MoveOut' text_color='#C1954C'/>"
	.."	<button id='button_day4' image='1805600165' x='268' y='6' w='91' h='123' OnLButtonUp='OnloginReward.selectbutton' revmsg='true' param='4' text='第四天' OnMouseIn='OnloginReward.MoveIn' OnMouseOut='OnloginReward.MoveOut' text_color='#C1954C'/>"
	.."	<button id='button_day6' image='1805600165' x='441' y='6' w='91' h='123' OnLButtonUp='OnloginReward.selectbutton' revmsg='true' param='6' text='第六天' OnMouseIn='OnloginReward.MoveIn' OnMouseOut='OnloginReward.MoveOut' text_color='#C1954C'/>"
	.."	<button id='button_day5' image='1805600165' x='354' y='6' w='91' h='123' OnLButtonUp='OnloginReward.selectbutton' revmsg='true' param='5' text='第五天' OnMouseIn='OnloginReward.MoveIn' OnMouseOut='OnloginReward.MoveOut' text_color='#C1954C'/>"
	.."	<button id='button_day7' image='1805600165' x='528' y='6' w='91' h='123' OnLButtonUp='OnloginReward.selectbutton' revmsg='true' param='7' text='第七天' OnMouseIn='OnloginReward.MoveIn' OnMouseOut='OnloginReward.MoveOut' text_color='#C1954C'/>"
	
	.."	<image id='backimg1' image='1805600082' x='14' y='49' w='78' h='78' revmsg='false' enable='false' visible='false'/>"
	.."	<image id='backimg2' image='1805600082' x='99' y='47' w='78' h='78' revmsg='false' enable='false' visible='false'/>"
	.."	<image id='backimg3' image='1805600082' x='186' y='46' w='78' h='78' revmsg='false' enable='false' visible='false'/>"
	.."	<image id='backimg4' image='1805600082' x='273' y='47' w='78' h='78' revmsg='false' enable='false' visible='false'/>"
	.."	<image id='backimg5' image='1805600082' x='358' y='47' w='78' h='78' revmsg='false' enable='false' visible='false'/>"
	.."	<image id='backimg6' image='1805600082' x='444' y='46' w='78' h='78' revmsg='false' enable='false' visible='false'/>"
	.."	<image id='backimg7' image='1805600082' x='533' y='49' w='78' h='78' revmsg='false' enable='false' visible='false'/>"
	
	.."	<image id='image2' image='1805600084' x='202' y='196' w='163' h='30' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='image_day' image='1805600085' x='319' y='196' w='20' h='27' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='image0' image='1805600092' x='336' y='249' w='258' h='39' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='imagems' image='1805600093' x='276' y='299' w='259' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<itemctrl id='item1' x='242' y='336' w='58' h='58' rbtn_use='true' use_back='1800000384' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item2' x='319' y='337' w='58' h='58' rbtn_use='true' use_back='1800000384' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item3' x='397' y='337' w='58' h='58' rbtn_use='true' use_back='1800000384' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item4' x='473' y='337' w='58' h='58' rbtn_use='true' use_back='1800000384' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item5' x='550' y='337' w='58' h='58' rbtn_use='true' use_back='1800000384' enable='true' revmsg='true'/>"
	.."	<button id='button' image='1805600160' x='448' y='410' w='144' h='52' OnLButtonUp='OnloginReward.GetItem' revmsg='true'/>"
	.."	<image id='image_1' image='1891410010' x='18' y='55' w='64' h='64' check_point='0' revmsg='false' enable='false'/>"
	.."	<image id='image_2' image='1891420427' x='106' y='54' w='64' h='64' check_point='0' revmsg='false' enable='false'/>"
	.."	<image id='image_3' image='1891420589' x='197' y='58' w='60' h='60' check_point='0' revmsg='false' enable='false'/>"
	.."	<image id='image_4' image='1990020898' x='281' y='54' w='64' h='64' check_point='0' revmsg='false' enable='false'/>"
	.."	<image id='image_5' image='1990020379' x='367' y='57' w='60' h='60' check_point='0' revmsg='false' enable='false'/>"
	.."	<image id='image_6' image='1891410034' x='453' y='54' w='64' h='64' check_point='0' revmsg='false' enable='false'/>"
	.."	<image id='image_7' image='1891410012' x='539' y='57' w='64' h='64' check_point='0' revmsg='false' enable='false'/>"
	.."	<image id='imageGet_1' image='1800000295' x='19' y='56' w='85' h='58' check_point='0' revmsg='false' enable='false' visible='false'/>"
	.."	<image id='imageGet_2' image='1800000295' x='106' y='55' w='85' h='58' check_point='0' revmsg='false' enable='false' visible='false'/>"
	.."	<image id='imageGet_3' image='1800000295' x='191' y='58' w='85' h='58' check_point='0' revmsg='false' enable='false' visible='false'/>"
	.."	<image id='imageGet_4' image='1800000295' x='281' y='57' w='85' h='58' check_point='0' revmsg='false' enable='false' visible='false'/>"
	.."	<image id='imageGet_5' image='1800000295' x='367' y='57' w='85' h='58' check_point='0' revmsg='false' enable='false' visible='false'/>"
	.."	<image id='imageGet_6' image='1800000295' x='453' y='58' w='85' h='58' check_point='0' revmsg='false' enable='false' visible='false'/>"
	.."	<image id='imageGet_7' image='1800000295' x='539' y='58' w='85' h='58' check_point='0' revmsg='false' enable='false' visible='false'/>"
	.."	<image id='TestWndChild_4' image='1805600083' x='20' y='180' w='200' h='56' revmsg='true'/>"
	.."	<image id='TestWndChild_5' image='1805600073' x='13' y='128' w='80' h='25' revmsg='true'/>"
	.."	<image id='TestWndChild_6' image='1805600074' x='100' y='128' w='80' h='25' revmsg='true'/>"
	.."	<image id='TestWndChild_7' image='1805600075' x='186' y='128' w='80' h='25' revmsg='true'/>"
	.."	<image id='TestWndChild_8' image='1805600076' x='274' y='128' w='80' h='25' revmsg='true'/>"
	.."	<image id='TestWndChild_9' image='1805600077' x='356' y='128' w='80' h='25' revmsg='true'/>"
	.."	<image id='TestWndChild_10' image='1805600078' x='446' y='128' w='80' h='25' revmsg='true'/>"
	.."	<image id='TestWndChild_11' image='1805600079' x='531' y='128' w='80' h='25' revmsg='true'/>"
	.." </dialog>"
	.."</form>"

function OnloginReward.main()
	GenFormByString(ui)
end


OnloginReward.WndHandle = 0
OnloginReward.dayimage = {1805600085,1805600086,1805600087,1805600088,1805600089,1805600090,1805600091}
OnloginReward.index = 1
OnloginReward.item_y = {}
function OnloginReward.UIInit(_Handle)
	OnloginReward.WndHandle = _Handle
	for i = 1 , 7 do
		local handle = GetWindow(_Handle,"button_day"..i)
		GUIWndSetTextArrangeType(handle,0,-44,4,0);
		GUIButtonSetStateTextColor(handle,0,MakeARGB(255, 193, 149, 76))
		GUIButtonSetStateTextColor(handle,2,MakeARGB(255, 254, 203, 0))
	end
	UI:Lua_SubmitForm("奖励大厅表单","Get_login_itemlist", "")
end

function OnloginReward.showInfo(_Ret)
	OnloginReward.info = _Ret
	OnloginReward.index = _Ret[8]
	OnloginReward.item_y = _Ret[9]
	ImageSetImageID(OnloginReward.WndHandle,"image_day",OnloginReward.dayimage[OnloginReward.index])
	local _GUIHandle = GUIWndFindChildM(OnloginReward.WndHandle, "button_day".._Ret[8])	
	if _GUIHandle ~= 0 then
		OnloginReward.selectbutton(_GUIHandle)
	end
end

function OnloginReward.selectbutton(_Handle)
	local param = GUIWndGetParam(_Handle)
	OnloginReward.index = param
	ImageSetImageID(OnloginReward.WndHandle,"image_day",OnloginReward.dayimage[OnloginReward.index])
	local _GUIHandle = 0
	for i = 1, 7 do
		_GUIHandle = GUIWndFindChildM(OnloginReward.WndHandle, "button_day"..i)
		if i == param then
			GUIButtonSetIsActivePageBtn(_GUIHandle, true)
		else
			GUIButtonSetIsActivePageBtn(_GUIHandle, false)
		end
		_Handle = GUIWndFindChildM(OnloginReward.WndHandle, "imageGet_"..i)
		if OnloginReward.item_y[i] == 1 then
			if _Handle ~= 0 then
				GUIWndSetVisible(_Handle,true)
			end	
		else
			if _Handle ~= 0 then
				GUIWndSetVisible(_Handle,false)
			end	
		end
		
	end
	for i = 1, 5 do
		_GUIHandle = GUIWndFindChildM(OnloginReward.WndHandle, "item"..i)
		local award = OnloginReward.info[param][i]
		RDItemCtrlSetGUIDataByKeyName(_GUIHandle, award[1], award[2], true)
	end
	if OnloginReward.item_y[OnloginReward.index] == 1 or OnloginReward.index > OnloginReward.info[8]  then
		local _GUIHandle = GUIWndFindChildM(OnloginReward.WndHandle,"button")	
		if _GUIHandle ~= 0 then
			--GUIWndSetEnableM(_GUIHandle, false)
			GUIWndSetVisible(_GUIHandle, false) 
		end
	else
		local _GUIHandle = GUIWndFindChildM(OnloginReward.WndHandle,"button")	
		if _GUIHandle ~= 0 then
			--GUIWndSetEnableM(_GUIHandle, true)
			GUIWndSetVisible(_GUIHandle, true) 
		end
	end
end

function OnloginReward.change(index,b)
	local _GUIHandle = GUIWndFindChildM(OnloginReward.WndHandle,"button")
	if _GUIHandle ~= 0 then
		--GUIWndSetEnableM(_GUIHandle, false) 	
		GUIWndSetVisible(_GUIHandle, false) 
		
	end
	local a = tonumber(index)
	local _Handle = GUIWndFindChildM(OnloginReward.WndHandle, "imageGet_"..a)
	if _Handle ~= 0 then
		GUIWndSetVisible(_Handle,true)
	end	
	OnloginReward.item_y[a] = 1
	if tonumber(b) == 0 then
		local handle = GetWindow(nil,"Reward_win,image3")
		if handle ~= 0 then
			GUIWndSetVisible(handle, false) 
		end
	end	
end	

function OnloginReward.GetItem(_Handle)
	if OnloginReward.index > OnloginReward.info[8] then
		msg("登陆天数不足，无法领取该奖励")
		return 
	end
	UI:Lua_SubmitForm("奖励大厅表单","Login_Get_item", ""..OnloginReward.index)
end

function OnloginReward.MoveIn(handle)
	local param = tonumber(WndGetParam(handle))
	handle = GetWindow(OnloginReward.WndHandle, "backimg"..param)
	if handle ~= 0 then 
		GUIWndSetVisible(handle,true)
	end
end

function OnloginReward.MoveOut(handle)
	local param = tonumber(WndGetParam(handle))
	handle = GetWindow(OnloginReward.WndHandle, "backimg"..param)
	if handle ~= 0 then 
		GUIWndSetVisible(handle,false)
	end
end

OnloginReward.main()