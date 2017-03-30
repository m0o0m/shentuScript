LevelUp_award ={}
function LevelUp_award.main()
	local ui = ""
			.."<form>"
			.."<dialog OnInit='LevelUp_award.UIInit' id='LevelUp_award' image='1803100005' x='1250' y='500' w='342' h='180' esc_close='true' drag='true' revmsg='true'>"
			.."	<image id='image3' image='1800500339' x='61' y='5' w='175' h='40' check_point='0' revmsg='true'/>"
			--.."	<image id='image4' image='1803100007' x='262' y='9' w='50' h='40' check_point='0' revmsg='true'/>"
			.."	<image id='image1' image='0' x='153' y='5' w='24' h='35' check_point='0' revmsg='true'/>"
			.."	<image id='image2' image='0' x='174' y='5' w='24' h='35' check_point='0' revmsg='true'/>"
			.."	<image id='itemctrl_back1' image='1803900036' x='17' y='73' w='44' h='44' check_point='0' revmsg='true'/>"
			.."	<image id='itemctrl_back2' image='1803900036' x='68' y='73' w='44' h='44' check_point='0' revmsg='true'/>"
			.."	<image id='itemctrl_back3' image='1803900036' x='118' y='73' w='44' h='44' check_point='0' revmsg='true'/>"
			.."	<image id='itemctrl_back4' image='1803900036' x='171' y='73' w='44' h='44' check_point='0' revmsg='true'/>"
			.."	<image id='itemctrl_back5' image='1803900036' x='225' y='73' w='44' h='44' check_point='0' revmsg='true'/>"
			.."	<image id='itemctrl_back6' image='1803900036' x='276' y='73' w='44' h='44' check_point='0' revmsg='true'/>"
			.."	<itemctrl id='itemctrl1' x='19' y='75' w='44' h='44' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
			.."	<itemctrl id='itemctrl2' x='70' y='75' w='44' h='44' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
			.."	<itemctrl id='itemctrl3' x='120' y='75' w='44' h='44' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
			.."	<itemctrl id='itemctrl4' x='173' y='75' w='44' h='44' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
			.."	<itemctrl id='itemctrl5' x='227' y='75' w='44' h='44' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
			.."	<itemctrl id='itemctrl6' x='278' y='75' w='44' h='44' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
			.."	<button id='get' image='1804600119' x='105' y='137' w='144' h='40' OnLButtonUp='LevelUp_award.get' revmsg='true' text_color='#C2B6A0'/>"
			--.."	<image id='animate' image='3020301400' type='animate' x='27' y='101' w='144' h='40' check_point='0' enable='false' revmsg='false'/>"
			.." </dialog>"
			.."</form>"

	GenFormByString(ui)
end

--UI Logic Code Start
LevelUp_award.WndHandle = 0
LevelUp_award._control = {}
LevelUp_award.lv = ""
LevelUp_award.job = ""
LevelUp_award.gender = ""
LevelUp_award.time_id = 0
image = {
			[20] = {1800500342,1800500340},
			[35] = {1800500343,1800500345},
			[45] = {1800500344,1800500345},
		}
function LevelUp_award.UIInit(_Handle)
	LevelUp_award.WndHandle = _Handle
	local newX = CLGetScreenWidth()
	local newY = CLGetScreenHeight()
	GUIWndSetPosM(_Handle, newX - 400, newY - 350);
	local _handle = GetWindow(_Handle, "get");
	if _handle ~= 0 then 
		WndAddEffect(_handle, nil, 3020301400, -67, -33, 100, 0)
		--GUI:ImageSetTransfrom(_handle, 10600, 10000,0);
	end
	if GUIWndAddTimerBrief(_Handle,9000,"LevelUp_award.get") then
		LevelUp_award.time_id = as3.tolua(LuaRet)
	end
	local itemlist = {}
	itemlist = deserialize(as3.tolua(FormParam[1])) 
	LevelUp_award.lv = tostring(as3.tolua(FormParam[2]))
	LevelUp_award.job = tostring(as3.tolua(FormParam[3]))
	LevelUp_award.gender = tostring(as3.tolua(FormParam[4]))
	local level = tonumber(LevelUp_award.lv)
	for i = 1 , 2 do 
		ImageSetImageID(_Handle,"image"..i,image[level][i])
	end
	--msg("level="..LevelUp_award.lv..";job="..LevelUp_award.job..";gender="..LevelUp_award.gender)
	if LevelUp_award.lv == 60 then
		local _handel = GetWindow(_Handle,"itemctrl1")
		if _handel ~= 0 then LevelUp_award._control["itemctrl1"] = _handel end
	else
		for i = 1 , 6 do 
			local _handel = GetWindow(_Handle,"itemctrl"..i)
			if _handel ~= 0 then LevelUp_award._control["itemctrl"..i] = _handel end
		end
	end
	for i = 1 , #itemlist do 
		--msg("i="..i..";itemlist="..itemlist[i])
		RDItemCtrlSetGUIDataByKeyName(LevelUp_award._control["itemctrl"..i], itemlist[i], 1, false)
	end
end

function LevelUp_award.get()
	UI:Lua_SubmitForm("Éý¼¶Àñ°ü", "lingqu", ""..LevelUp_award.lv.."#"..LevelUp_award.job.."#"..LevelUp_award.gender)
	UI:Lua_DelDelayTask(tonumber(LevelUp_award.time_id))
	GUIWndClose(LevelUp_award.WndHandle)
	
end

LevelUp_award.main()