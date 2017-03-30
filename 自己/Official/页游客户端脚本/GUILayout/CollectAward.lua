CollectAward ={}
function CollectAward.main()
local ui = "<form> <dialog OnInit='CollectAward.UIInit' id='CollectAward' image='1803100005' x='800' y='380' w='342' h='180' esc_close='true' visible='false' drag='true' revmsg='true'>"
	--.."	<edit id='TestWndChild_0' x='110' y='10' w='138' h='30' revmsg='true' text_color='#E4B750' text='游戏收藏奖励' font='SIMLI18'/>"
	.."	<image id='title' image='1804600123' x='99' y='13' w='144' h='40' check_point='0' enable='false' revmsg='false'/>"
	.."	<button id='get' image='1803100008' x='95' y='137' w='144' h='40' OnLButtonUp='CollectAward.get' revmsg='true' text_color='#C2B6A0'/>"
	.."	<image id='animate' image='3020301400' type='animate' x='27' y='101' w='144' h='40' check_point='0' enable='false' revmsg='false'/>"
	.."	<image id='itemctrlBack' image='1802000010' x='32' y='72' w='48' h='48' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item' x='33' y='73' w='47' h='47' rbtn_use='true' is_bound='false' use_back='0' init_item='金砖小' enable='true' revmsg='true'/>"
	.."	<image id='0' image='1802000010' x='107' y='73' w='48' h='48' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='1' x='108' y='74' w='47' h='47' rbtn_use='true'  is_bound='false' use_back='0'  init_item='金砖小' enable='true' revmsg='true'/>"
	.."	<image id='2' image='1802000010' x='185' y='73' w='48' h='48' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='3' x='186' y='74' w='47' h='47' rbtn_use='true' enable='true' init_item='金砖小' is_bound='false' use_back='0'  revmsg='true'/>"
	.."	<image id='4' image='1802000010' x='252' y='72' w='48' h='48' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='5' x='253' y='73' w='47' h='47' rbtn_use='true' enable='true' init_item='金砖小' is_bound='true' use_back='0'  revmsg='true'/>"
	.." </dialog>"
	.."</form>"


	GenFormByString(ui)
end

--UI Logic Code Start
CollectAward.WndHandle = 0
function CollectAward.UIInit(_Handle)
	CenterWnd(_Handle);
	GUI:WndSetVisible(_Handle, true)
	CollectAward.WndHandle = _Handle;
	local _handle = GetWindow(_Handle, "animate");
	if _handle ~= 0 then 
		GUI:ImageSetTransfrom(_handle, 10600, 10000,0)
	end
	--[[
	local newX = CLGetScreenWidth()
	local newY = CLGetScreenHeight()
	GUIWndSetPosM(_Handle, newX - 400, newY - 350)
	--]]
	
	if GUIWndAddTimerBrief(_Handle,9000,"CollectAward.get") then
		CollectAward.time_id = as3.tolua(LuaRet)
	end
	
end

function CollectAward.get()
	UI:Lua_SubmitForm("收藏游戏", "CollectAwardGetAward", "")
	GUIWndClose(CollectAward.WndHandle)
	
end

CollectAward.main()