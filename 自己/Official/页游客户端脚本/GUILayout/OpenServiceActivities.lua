OpenServiceActivities ={}
function OpenServiceActivities.main()
	if GetWindow(nil,"OpenServiceActivities") ~= 0 then
		OpenServiceActivities.CloseWnd()
	else
		local ui = "<form> <dialog OnInit='OpenServiceActivities.UIInit' id='OpenServiceActivities' x='0' y='0' w='815' h='553' magic='1' center='true' esc_close='true' drag='true' image='1804900023' revmsg='true'>"
		.."	<button id='GiftBtn1' x='43' y='63' w='135' h='43' image='1800000380' revmsg='true' param='1' OnLButtonClick='OpenServiceActivities.SelectActive' text='ÌØ»ÝÀñ°ü' text_color='#F1C15D'/>"
		.."	<image id='TitleImg' x='378' y='8' w='123' h='25' image='1801500125' enable='false' revmsg='true'/>"
		.."	<button id='CloseBtn' x='786' y='10' w='26' h='26' image='1800000068' revmsg='true' OnLButtonClick='OpenServiceActivities.CloseWnd'/>"
		.." </dialog>"
		.."</form>"
		GenFormByString(ui)
	end
end

--UI Logic Code Start
OpenServiceActivities.WndHandle = 0
OpenServiceActivities.SelectIndex = 0
function OpenServiceActivities.UIInit(_Handle)
	OpenServiceActivities.WndHandle = _Handle
	GUIWndSetSizeM(_Handle, 815, 553)
	local _GUIHandle = GUIWndFindChildM(_Handle, "GiftBtn1")
	if _GUIHandle ~= 0 then
		GUIButtonSetTextFont(_GUIHandle, "SIMLI18")
		OpenServiceActivities.SelectActive(_GUIHandle)
	end
end

function OpenServiceActivities.SelectActive(_Handle)
	local _GUIHandle = 0
	for i = 1, 1 do
		_GUIHandle=GUIWndFindChildM(OpenServiceActivities.WndHandle, "GiftBtn"..i)
		GUIButtonSetIsActivePageBtn(_GUIHandle, false)
	end
	local param = GUIWndGetParam(_Handle)
	if param == 1  then
		if OpenServiceActivities.SelectIndex ~= param then
			UI:Lua_OpenWindow(OpenServiceActivities.WndHandle,"SpecialGift.lua")
		end
		GUIButtonSetIsActivePageBtn(_Handle, true)
	end
	OpenServiceActivities.SelectIndex = param
end

function OpenServiceActivities.CloseWnd()
	local handle = GetWindow(nil,"OpenServiceActivities")
	if handle ~= 0 then 
		GUIWndClose(handle)
	end
end

OpenServiceActivities.main()