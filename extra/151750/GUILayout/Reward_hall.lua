Reward_hall = {}
local ui = "<form> <dialog OnInit='Reward_hall.UIInit' id='Reward_win' image='1802900047' x='447' y='244' w='815' h='553' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='image0' image='1801500123' x='355' y='1' w='119' h='25' revmsg='true' enable='false'/>"
	.."	<button id='Close' image='1800000043' x='780' y='5' w='26' h='26' OnLButtonUp='Reward_hall.closeWnd' revmsg='true'/>"
	.."	<button id='Button' image='1800000380' x='25' y='45' w='135' h='43' revmsg='true' text='在线奖励' text_color='#F8CC6D'/>"
	.."	<image id='image2' image='1802900017' x='137' y='45' w='19' h='41' revmsg='true' enable='false' visible='false'/>"
	.." </dialog>"
	.."</form>"

function Reward_hall.main()
	GenFormByString(ui)
end

--UI Logic Code Start
Reward_hall.WndHandle = 0
Reward_hall.handle = {"Online_reward"}
function Reward_hall.UIInit(_Handle)
	GUI:WndSetSizeM(_Handle, 815 ,553)
	CenterWnd(_Handle)
	
	UI:Lua_OpenWindow(0,"Online_reward.lua")
	Reward_hall.WndHandle = _Handle
	local hand = GetWindow(_Handle,"Button")
	if hand ~= 0 then 
		GUI:ButtonSetIsActivePageBtn(hand,true)
	end
	
end

function Reward_hall.closeWnd(_handle)
	
	GUI:WndClose(Reward_hall.WndHandle)
	
end

Reward_hall.main()