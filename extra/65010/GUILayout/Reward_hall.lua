RewardHall = {}
local ui = "<form> "
.. "	<dialog OnInit='RewardHall.UIInit' OnClose='RewardHall.OnClose' id='RewardHall' image='1805600001' x='144' y='21' w='846' h='569' esc_close='true' center='true' drag='true' revmsg='true'>"
.. "		<image id='image0' image='1805600000' x='385' y='6' w='102' h='27' revmsg='true' enable='false'/>"
.. "		<button id='Close' image='1805900080' x='790' y='5' w='34' h='38' OnLButtonUp='RewardHall.closeWnd' revmsg='true'/>"
.. "		<button id='Button1' image='1805600122' x='44' y='60' w='135' h='43' OnLButtonUp='RewardHall.List' revmsg='true' text_color='#F8CC6D' font='SIMLI18'/>"
.. "		<button id='Button2' image='1805600126' x='44' y='112' w='135' h='43' OnLButtonUp='RewardHall.List' revmsg='true'  text_color='#F8CC6D' font='SIMLI18'/>"
.. "		<button id='Button3' image='1805600130' x='44' y='164' w='135' h='43' OnLButtonUp='RewardHall.List' revmsg='true'  text_color='#F8CC6D' font='SIMLI18'/>"
.. "		<button id='Button4' image='1805600134' x='44' y='216' w='135' h='43' OnLButtonUp='RewardHall.List' revmsg='true'  text_color='#F8CC6D' font='SIMLI18'/>"
.. "		<button id='Button5' image='1805600138' x='44' y='268' w='135' h='43' OnLButtonUp='RewardHall.List' revmsg='true' text_color='#F8CC6D' font='SIMLI18'/>"
.. "		<image id='image1' image='1805600048' x='153' y='60' w='19' h='41' revmsg='true' enable='false' visible='false'/>"
.. "		<image id='image2' image='1805600048' x='153' y='112' w='19' h='41' revmsg='true' enable='false' visible='false'/>"
.. "		<image id='image3' image='1805600048' x='153' y='164' w='19' h='41' revmsg='true' enable='false' visible='false'/>"
.. "		<image id='image4' image='1805600048' x='153' y='216' w='19' h='41' revmsg='true' enable='false' visible='false'/>"
.. "		<image id='image5' image='1805600048' x='153' y='268' w='19' h='41' revmsg='true' enable='false' visible='false'/>"
.. " </dialog>"
.. "</form>"

function RewardHall.main()
	if GetWindow(nil,"Reward_win") ~= 0 then  
		RewardHall.closeWnd()
	else  
		GenFormByString(ui)    
	end 
end

--UI Logic Code Start
RewardHall.WndHandle = 0
RewardHall.handle = {"Sign_in","Online_reward","OnloginReward","OffLineExp","ActiveCode"}
function RewardHall.UIInit(_Handle)
	RewardHall.WndHandle = _Handle
	--local a = deserialize(FormParam[1])
	local playerLevel = 0
	local handle = 0
	local a = 0
	if CL:GetPlayerSelfProperty32(ROLE_PROP32_LEVEL) then
		playerLevel = tonumber(LuaRet)
	end
	if playerLevel >= 60 then
		for i = 1 , 4 do
			handle = GetWindow(_Handle,"Button"..i)
			GUI:WndSetVisible(handle, true)
		end	
			
		handle = GetWindow(_Handle,"Button5")
		GUI:WndSetPosM(handle, 44, 268)
		handle = GetWindow(_Handle,"Button1")
		if handle  ~= 0 then
			RewardHall.List(handle)
		end
		UI:Lua_SubmitForm("½±Àø´óÌü±íµ¥","get_image_list", "")
	else
		
		for i = 1 , 4 do
			handle = GetWindow(_Handle,"Button"..i)
			GUI:WndSetVisible(handle, false)
		end	
			
		handle = GetWindow(_Handle,"Button5")
		RewardHall.List(handle)
		GUI:WndSetPosM(handle, 44, 60)
		
	end
end

function RewardHall.image_list(info)
	for i = 1 , #info do 
		local handle = GetWindow(RewardHall.WndHandle,"image"..i)
		if handle ~= 0 then
			if info[i] == 1 then
				GUI:WndSetVisible(handle, true) 
			elseif info[i] == 0 then
				GUI:WndSetVisible(handle, false)
			end
		end
	end
end	

function RewardHall.List(_handle)	
	for i = 1 , #RewardHall.handle do 
		local handle = GetWindow(RewardHall.WndHandle,"Button"..i)
		local handle1 = GUI:WndFindWindow(RewardHall.WndHandle,RewardHall.handle[i])
		if handle == _handle then
			if GUI:ButtonGetIsActivePageBtn(_handle) then
				return 
			end	
			GUI:ButtonSetIsActivePageBtn(_handle,true)
			GUI:WndSetVisible(handle1, true)
			if	i == 1 then		
				local _GUIHandle = GUI:WndFindChildM(RewardHall.WndHandle, "Sign_in")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle,true)
				else
					UI:Lua_OpenWindow(RewardHall.WndHandle, "Sign_in.lua")
				end
			elseif i == 2 then	
				local _GUIHandle = GUI:WndFindChildM(RewardHall.WndHandle, "Online_reward")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle,true)
				else
					UI:Lua_OpenWindow(RewardHall.WndHandle, "Online_reward.lua")
				end
				--Online_reward.UIInit(handle1)
			elseif i == 3 then	
				local _GUIHandle = GUI:WndFindChildM(RewardHall.WndHandle, "OnloginReward")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle,true)
				else
					UI:Lua_OpenWindow(RewardHall.WndHandle, "OnloginReward.lua")
				end
				--OnloginReward.UIInit(handle1)
			elseif i == 4 then	
				local _GUIHandle = GUI:WndFindChildM(RewardHall.WndHandle, "OffLineExp")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle,true)
				else
					UI:Lua_OpenWindow(RewardHall.WndHandle, "OffLineExp.lua")
				end
				--OffLineExp.UIInit(handle1)
			elseif i == 5 then	
				local _GUIHandle = GUI:WndFindChildM(RewardHall.WndHandle, "ActiveCode")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle,true)
				else
					UI:Lua_OpenWindow(RewardHall.WndHandle, "ActiveCode.lua")
				end
				--ActiveCode.UIInit(handle1)
			end
		else
			GUI:ButtonSetIsActivePageBtn(handle,false)
			if handle1 ~= 0 then
				GUI:WndSetVisible(handle1,false)
			end	
		end
	end
	
end

function RewardHall.DelOnloginRewardBtn()
	local handle = 0
	handle = GetWindow(RewardHall.WndHandle,"Button3")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, false)
	end
	handle = GetWindow(RewardHall.WndHandle,"image3")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, false)
	end
	handle = GetWindow(RewardHall.WndHandle,"Button4")
	if handle ~= 0 then
		GUI:WndSetPosM(handle, 44, 164)
	end
	handle = GetWindow(RewardHall.WndHandle,"image4")
	if handle ~= 0 then
		GUI:WndSetPosM(handle, 153, 164)
	end
	handle = GetWindow(RewardHall.WndHandle,"Button5")
	if handle ~= 0 then
		GUI:WndSetPosM(handle, 44, 216)
	end
	handle = GetWindow(RewardHall.WndHandle,"image5")
	if handle ~= 0 then
		GUI:WndSetPosM(handle, 153, 216)
	end
	
	
	--[[
	handle = GUI:WndFindWindow(RewardHall.WndHandle,"OnloginReward.lua")
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
	handle = GetWindow(RewardHall.WndHandle,"Button1")
	if handle ~= 0 then
		ButtonSetIsActivePageBtn(RewardHall.WndHandle,"Button1",true)
		UI:Lua_OpenWindow(RewardHall.WndHandle,"Sign_in.lua")
		
	end
	--]]
	handle = GetWindow(RewardHall.WndHandle,"OnloginReward")
	if handle ~= 0 then
		GUI:WndSetVisible(handle,false)
	end
	handle = GetWindow(RewardHall.WndHandle,"Button1")
	if handle ~= 0 then
		ButtonSetIsActivePageBtn(RewardHall.WndHandle,"Button1",true)
	end
	handle = GetWindow(RewardHall.WndHandle,"Sign_in")
	if handle ~= 0 then
		GUI:WndSetVisible(handle,true)
	end
end

function RewardHall.closeWnd()
	local handle = GetWindow(nil,"RewardHall")
	if handle ~= 0 then 
		GUI:WndClose(handle)
	end 
end

function RewardHall.OnClose()
	if Online_reward ~= nil then
		Online_reward.cleartime()
	end
end

RewardHall.main()