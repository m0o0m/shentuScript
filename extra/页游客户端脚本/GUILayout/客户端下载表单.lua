download_award = {}

function download_award.main()
	if GetWindow(nil,"下载奖励") ~= 0 then  
		download_award.Close()
	else  
		local ui = "<form> <dialog OnInit='download_award.UIInit' id='下载奖励' image='1808400000' x='162' y='87' w='684' h='488' magic='1' savepos='1' esc_close='true' drag='true' center='true' revmsg='true'>"
		.."	<image id='mainBcg' image='1808400014' x='52' y='98' w='424' h='473' enable='false' revmsg='true'/>"
		.."	<image id='title' image='1808400013' x='230' y='22' w='424' h='473' enable='false' revmsg='true'/>"
		.."	<image id='TestWndChild_2' image='1808400005' x='-68' y='51' w='424' h='473' enable='false' revmsg='true'/>"
		.."	<image id='TestWndChild_1' image='1808400006' x='124' y='114' w='478' h='118' enable='false' revmsg='true'/>"
		.."	<image id='TestWndChild_4' image='1808400008' x='161' y='274' w='486' h='134' enable='false' revmsg='true'/>"
		.."	<image id='TestWndChild_3' image='1808400007' x='219' y='247' w='340' h='32' enable='false' revmsg='true'/>"
		.."	<button id='领取' image='1808400009' x='291' y='385' w='170' h='58' revmsg='true' text_color='#C2B6A0' OnLButtonClick='download_award.GetReward'/>"
		.." <button id='按钮' x='291' y='385' image='1808400001' OnLButtonClick='download_award.anniu'/>"
		.."	<itemctrl id='奖励物品1' x='201' y='294' w='68' h='69' rbtn_use='true' use_back='1805600155' enable='true' revmsg='true'/>"
		.."	<itemctrl id='奖励物品2' x='301' y='294' w='70' h='69' rbtn_use='true' use_back='1805600155' enable='true' revmsg='true'/>"
		.."	<itemctrl id='奖励物品3' x='401' y='294' w='68' h='69' rbtn_use='true' use_back='1805600155' enable='true' revmsg='true'/>"
		.."	<itemctrl id='奖励物品4' x='501' y='294' w='68' h='68' rbtn_use='true' use_back='1805600155' enable='true' revmsg='true'/>"
		.."	<button id='关闭' image='1805900080' x='624' y='56' w='24' h='23' revmsg='true' text_color='#C2B6A0' OnLButtonClick='download_award.Close'/>"
		.." </dialog>"
		.."</form>"
		GenFormByString(ui)
	end 
end
--[[
download_award.Close = function(handle, param, x, y)
	if WndPtInWindow(handle, nil, x, y) then WndClose(handle, "parent") end
end--]]


download_award.show = 1
download_award.UIInit = function(this)	
	local handle = 0
	local client_award_t = deserialize(as3.tolua(FormParam[1]))

	download_award.clientType = tonumber(deserialize(as3.tolua(FormParam[2])))
	GUIWndSetSizeM(this, 612, 352)
	if download_award.clientType == 0 then
		handle = GetWindow(nil,"下载奖励,领取")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		handle = GetWindow(nil,"下载奖励,按钮")
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)
		end
	else
		handle = GetWindow(nil,"下载奖励,领取")
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)
		end
		handle = GetWindow(nil,"下载奖励,按钮")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
	end
	for i = 1, #client_award_t do
		RDItemCtrlSetProp(nil, "下载奖励,奖励物品"..i, true, true, true, true, false, false)
		local handle = GetWindow(nil, "下载奖励,奖励物品"..i)
		if handle ~= 0 then
			RDItemCtrlSetGUIDataByKeyName(handle, client_award_t[i][1], client_award_t[i][2], false)
		end
	end
end		

download_award.anniu = function(this)
	UI:Lua_SubmitForm("客户端下载","download_web", "")
	CLOpenUrlUseIEByType(4)
end


function download_award.GetReward()
	UI:Lua_SubmitForm("客户端下载","get_download_award", ""..download_award.clientType)
end

function download_award.Close() 
	local handle = GetWindow(nil,"下载奖励")
	if handle ~= 0 then 
		GUIWndClose(handle)
	end 
end

download_award.main()