Reward_hall = {}
local ui = "<form> <dialog OnInit='Reward_hall.UIInit' id='Reward_win' image='1805600001' x='144' y='21' w='846' h='569' esc_close='true' center='true' drag='true' revmsg='true'>"
	.."	<image id='image0' image='1805600000' x='355' y='6' w='102' h='27' revmsg='true' enable='false'/>"
	.."	<button id='Close' image='1800000043' x='780' y='5' w='26' h='26' OnLButtonUp='Reward_hall.closeWnd' revmsg='true'/>"
	.."	<button id='Button1' image='1805600122' x='41' y='60' w='135' h='43' OnLButtonUp='Reward_hall.List' revmsg='true' text_color='#F8CC6D'/>"
	.."	<button id='Button2' image='1805600126' x='41' y='112' w='135' h='43' OnLButtonUp='Reward_hall.List' revmsg='true'  text_color='#F8CC6D'/>"
	.."	<button id='Button3' image='1805600130' x='41' y='164' w='135' h='43' OnLButtonUp='Reward_hall.List' revmsg='true'  text_color='#F8CC6D'/>"
	.."	<button id='Button4' image='1805600134' x='41' y='216' w='135' h='43' OnLButtonUp='Reward_hall.List' revmsg='true'  text_color='#F8CC6D'/>"
	.."	<button id='Button5' image='1805600138' x='41' y='268' w='135' h='43' OnLButtonUp='Reward_hall.List' revmsg='true' text_color='#F8CC6D'/>"
	.."	<image id='image1' image='1805600048' x='153' y='60' w='19' h='41' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image2' image='1805600048' x='153' y='112' w='19' h='41' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image3' image='1805600048' x='153' y='164' w='19' h='41' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image4' image='1805600048' x='153' y='216' w='19' h='41' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image5' image='1805600048' x='153' y='268' w='19' h='41' revmsg='true' enable='false' visible='false'/>"
	.." </dialog>"
	.."</form>"

function Reward_hall.main()
	if GetWindow(nil,"Reward_win") ~= 0 then  
		Reward_hall.closeWnd()
	else  
		GenFormByString(ui)    
	end 
end

--UI Logic Code Start
Reward_hall.WndHandle = 0
Reward_hall.handle = {"Sign_in","Online_reward","OnloginReward","OffLineExp","ActiveCode"}
function Reward_hall.UIInit(_Handle)
	GUIWndSetSizeM(_Handle, 815 ,553)
	CenterWnd(_Handle)
	Reward_hall.WndHandle = _Handle
	local a = deserialize(as3.tolua(FormParam[1]))
	local playerLevel = 0
	local handle = 0
	for i = 1 , 5 do
		handle = GetWindow(_Handle,"Button"..i)
		GUIButtonSetTextFont(handle,"SIMLI18")
	end
	if CLGetPlayerSelfProperty32(ROLE_PROP32_LEVEL) then
		playerLevel = tonumber(as3.tolua(LuaRet))
	end
	if playerLevel >= 60 then
		ButtonSetIsActivePageBtn(Reward_hall.WndHandle,"Button1",true)
		if a == 1 then
			Reward_hall.DelOnloginRewardBtn()
		end
		UI:Lua_OpenWindow(Reward_hall.WndHandle,"Sign_in.lua")
		UI:Lua_SubmitForm("½±Àø´óÌü±íµ¥","get_image_list", "")
	else
		ButtonSetIsActivePageBtn(Reward_hall.WndHandle,"Button5",true)
		for i = 1 , 4 do
			handle = GetWindow(_Handle,"Button"..i)
			GUIWndSetVisible(handle, false)
		end
		handle = GetWindow(_Handle,"Button5")
		GUIWndSetPosM(handle, 41, 60)
		UI:Lua_OpenWindow(Reward_hall.WndHandle,"ActiveCode.lua")
	end
end

function Reward_hall.image_list(info)
	for i = 1 , #info do 
		local handle = GetWindow(Reward_hall.WndHandle,"image"..i,nil)
		if handle ~= 0 then
			if info[i] == 1 then
				GUIWndSetVisible(handle, true) 
			end
		end
	end

end	

function Reward_hall.List(_handle)
	
--[[	for i = 1 , #Reward_hall.handle do 
		local handle = GetWindow(Reward_hall.WndHandle,"Button"..i)
		local handle1 = GetWindow(nil,"Reward_hall,"..Reward_hall.handle[i])
		if handle == _handle then
			msg("true"..i)
			GUIButtonSetIsActivePageBtn(handle,true)
			UI:Lua_OpenWindow(Reward_hall.WndHandle, Reward_hall.handle[i]..".lua")
		else
			GUIButtonSetIsActivePageBtn(handle,false)
			if handle1 ~= 0 then
				msg("false"..i)
				GUIWndClose(handle1)
			end	
		end
	end--]]
	
	for i = 1 , #Reward_hall.handle do 
		local handle = GetWindow(Reward_hall.WndHandle,"Button"..i,nil)
		--local handle1 = GetWindow(nil,"Reward_hall,"..Reward_hall.handle[i])
		local handle1 = GUIWndFindWindow(Reward_hall.WndHandle,Reward_hall.handle[i])
		if handle == _handle then
			if ButtonGetIsActivePageBtn(_handle) then
				return 
			end	
			ButtonSetIsActivePageBtn(_handle,nil,true)
			UI:Lua_OpenWindow(Reward_hall.WndHandle, Reward_hall.handle[i]..".lua")
		else
			ButtonSetIsActivePageBtn(handle,nil,false)
			if handle1 ~= 0 then
				GUIWndClose(handle1)
			end	
		end
	end
	
end

function Reward_hall.DelOnloginRewardBtn()
	local handle = 0
	handle = GetWindow(Reward_hall.WndHandle,"Button3")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false)
	end
	handle = GetWindow(Reward_hall.WndHandle,"image3")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false)
	end
	handle = GetWindow(Reward_hall.WndHandle,"Button4")
	if handle ~= 0 then
		GUIWndSetPosM(handle, 41, 164)
	end
	handle = GetWindow(Reward_hall.WndHandle,"image4")
	if handle ~= 0 then
		GUIWndSetPosM(handle, 153, 164)
	end
	handle = GetWindow(Reward_hall.WndHandle,"Button5")
	if handle ~= 0 then
		GUIWndSetPosM(handle, 41, 216)
	end
	handle = GetWindow(Reward_hall.WndHandle,"image5")
	if handle ~= 0 then
		GUIWndSetPosM(handle, 153, 216)
	end
	handle = GUIWndFindWindow(Reward_hall.WndHandle,"OnloginReward.lua")
	if handle ~= 0 then
		GUIWndClose(handle)
	end
	handle = GetWindow(Reward_hall.WndHandle,"Button1")
	if handle ~= 0 then
		ButtonSetIsActivePageBtn(Reward_hall.WndHandle,"Button1",true)
		UI:Lua_OpenWindow(Reward_hall.WndHandle,"Sign_in.lua")
	end
end

function Reward_hall.closeWnd()
	local handle = GetWindow(nil,"Reward_win")
	if handle ~= 0 then 
		GUIWndClose(handle)
	end 
end
Reward_hall.main()