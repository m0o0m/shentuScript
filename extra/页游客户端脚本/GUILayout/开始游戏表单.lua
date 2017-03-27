GameStart ={}
function GameStart.main()
	local ui = ""
	.."<form>"
	.."<dialog OnInit='GameStart.UIInit' id='GameStart' image='1804600011' x='0' y='0' w='662' h='370' esc_close='true' drag='true' revmsg='true'>"
	.."<edit id='crystal_text' x='30' y='45' w='189' h='50' enable = 'false' text_color='#C2B6A0' text='欢迎来到神途，点击按钮开始任务' font='system'/>"
	.."	<image id='systemText' image='1801500066' x='97' y='4' w='243' h='33' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='get' image='1803300012' x='79' y='150' w='144' h='40' OnLButtonUp='GameStart.get' revmsg='true' text='开始游戏' text_color='#C2B6A0'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end

GameStart.time_id = 0
GameStart.WndHandle = 0
function GameStart.UIInit(_Handle)
	local newX = CLGetScreenWidth()
	local newY = CLGetScreenHeight()
	GUIWndSetPosM(_Handle, newX / 2 -100, newY / 2- 50)
	GameStart.WndHandle = _Handle
	if GUIWndAddTimerBrief(_Handle, 40000, "GameStart.get") then
		GameStart.time_id = as3.tolua(LuaRet)
	end
	--GUI:WndAddTimer(_Handle, 1, 90000, "GameStart.get")
end

function GameStart.get()
	GUI:WndDelTimer(GameStart.WndHandle)
	UI:Lua_SubmitForm("开始游戏表单", "main", "")
	UI:Lua_DelDelayTask(tonumber(GameStart.time_id))
	GUIWndClose(GameStart.WndHandle)
end

GameStart.main()