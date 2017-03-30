RoleGUI = {}
function RoleGUI.main()
local ui = "<form> <dialog OnInit='RoleGUI.UIInit' id='RoleGUI' image='1805900000' center='true' x='255' y='169' w='663' h='504' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='TitleImg' image='0' x='312' y='7' w='62' h='28' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='StateBtn_1' image='1805900076' x='-12' y='65' w='34' h='78' OnLButtonUp='RoleGUI.RoleWnd' revmsg='true' text='角色' text_color='#CEB362'/>"
	.."	<button id='StateBtn_2' image='1805900076' x='-12' y='125' w='34' h='78' OnLButtonUp='RoleGUI.RoleSkillWnd' revmsg='true' text='技能' text_color='#CEB362'/>"
	.."	<button id='StateBtn_3' image='1805900076' x='-12' y='185' w='34' h='78' OnLButtonUp='RoleGUI.RoleReinWnd' revmsg='true' text='转生' text_color='#CEB362'/>"
	--.."	<button id='StateBtn_4' image='1805900076' x='-12' y='245' w='34' h='78' OnLButtonUp='RoleGUI.RoleInnerWnd' revmsg='true' text='内功' text_color='#CEB362'/>"
	.."	<button id='Close' image='1805900080' x='606' y='4' w='34' h='38' OnLButtonUp='RoleGUI.CloseWnd' revmsg='true'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end

--UI Logic Code Start
RoleGUI.WndHandle=0
function RoleGUI.UIInit(_Handle)
	RoleGUI.WndHandle=_Handle
	local _handle = 0
	for i = 1, 4 do
		_handle=GUIWndFindChildM(RoleGUI.WndHandle, "StateBtn_"..i)
		GUIWndSetTextArrangeType(_handle,4,-12,4,1);
		GUIButtonSetStateTextColor(_handle,0,MakeARGB(255, 100, 96, 80))
		GUIButtonSetStateTextColor(_handle,2,MakeARGB(255, 201, 184, 116))
	end
	
	PackageWndInteraction.packageFriendWndOpen(_Handle)
end
function RoleGUI.RoleWnd(_Handle)
	if GetWindow(RoleGUI.WndHandle,"RoleEquipment")  == 0 then
		CLOnRoleWindow()
	end
end
function RoleGUI.RoleSkillWnd(_Handle)
	if GetWindow(RoleGUI.WndHandle,"RoleSkill")  == 0 then
		CLOnSkillWindow()
	end
end
function RoleGUI.RoleReinWnd(_Handle) 
	if CLGetPlayerSelfPropBase(18) then 
		local level = tonumber(as3.tolua(LuaRet))
		if level < 80 then 
			for i=1, 4 do 
				local _handk = GetWindow(nil,"RoleGUI,StateBtn_".. i )
				if i ~= 3 then 
					GUIWndMoveToParentBottom(_handk)
				else 
					GUIWndMoveToParentTop(_handk)
				end
			end
			local _hand = GetWindow(nil,"RoleGUI,StateBtn_3" )
			window_msg_up(_hand , "80级开启转生" ,-110 , -20 , 70 , MakeARGB(255, 255, 0, 0) , 3)
			return 
		end
	end 
	if GetWindow(RoleGUI.WndHandle,"RoleRein")  == 0 then
		UI:Lua_OpenWindow(RoleGUI.WndHandle, "RoleRein.lua")
	end
end
function RoleGUI.RoleInnerWnd(_Handle)
	if GetWindow(RoleGUI.WndHandle,"RoleInner")  == 0 then
		UI:Lua_OpenWindow(RoleGUI.WndHandle, "RoleInner.lua")
	end
end
function RoleGUI.CloseWnd(_Handle)	
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleEquipment")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleSkill")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	local _GUIHandle = GetWindow(nil,"RoleSkillChoose")
	if  _GUIHandle ~= 0   then
		GUIWndClose(_GUIHandle)
	end
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleRein")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	local _GUIHandle = GetWindow(nil,"RoleReinPoint")
	if  _GUIHandle ~= 0   then
		GUIWndClose(_GUIHandle)
	end
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleInner")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	GUIWndClose(RoleGUI.WndHandle)
end

function RoleGUI.wndClose(_Handle)
	PackageWndInteraction.packageFriendWndClose(_Handle)
end

RoleGUI.main()