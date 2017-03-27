SuperVipWnd ={}
SuperVipWnd.WndHandle = 0
SuperVipWnd.isSuperVip = 0
SuperVipWnd.openRewardhall = 0
SuperVipWnd.hCurWidget = 0
local ui = "<form> <dialog OnInit='SuperVipWnd.UIInit' id='SuperVipWnd' image='1807500000' x='146' y='32' w='807' h='440' revmsg='true' esc_close='true' drag='true' center='true'>"
	.."<image id='titleImg' image='1807500024' x='312' y='21' w='191' h='49' enable='false' revmsg='true'/>"
	.."<image id='leftImg' image='1808400005' x='-66' y='1' w='369' h='345' enable='false' revmsg='true'/>"
	.."<image id='textImg1' image='1807500009' x='260' y='118' w='49' h='25' enable='false' revmsg='true'/>"
	.."<image id='textImg2' image='1807500010' x='315' y='109' w='74' h='42' enable='false' revmsg='true'/>"
	.."<image id='textImg3' image='1807500011' x='394' y='118' w='103' h='28' enable='false' revmsg='true'/>"
	.."<image id='textImg4' image='1807500012' x='495' y='91' w='149' h='59' enable='false' revmsg='true'/>"
	.."<image id='textImg5' image='1807500013' x='339' y='205' w='103' h='28' check_point='0' revmsg='true' enable='false'/>"
	.."<image id='textImg6' image='1807500014' x='440' y='205' w='56' h='27' check_point='0' revmsg='true' enable='false'/>"
	.."<image id='textImg7' image='1807500015' x='495' y='205' w='54' h='28' check_point='0' revmsg='true' enable='false'/>"
	.."<image id='textImg8' image='1807500016' x='304' y='238' w='33' h='27' check_point='0' revmsg='true' enable='false'/>"
	.."<image id='textImg9' image='1807500017' x='331' y='237' w='175' h='28' check_point='0' revmsg='true' enable='false'/>"
	.."<image id='textImg10' image='1807500018' x='502' y='238' w='44' h='26' check_point='0' revmsg='true' enable='false'/>"
	.."<image id='textImg11' image='1807500019' x='542' y='237' w='54' h='28' check_point='0' revmsg='true' enable='false'/>"
	.."<image id='textImg12' image='1807500020' x='336' y='274' w='71' h='33' check_point='0' revmsg='true' enable='false'/>"
	.."<image id='textImg13' image='1807500021' x='405' y='275' w='85' h='32' check_point='0' revmsg='true' enable='false'/>"
	.."<image id='textImg14' image='1807500022' x='490' y='274' w='70' h='34' check_point='0' revmsg='true' enable='false'/>"
	.."<button id='button1' image='1807500001' x='367' y='351' w='144' h='52' OnLButtonUp='SuperVipWnd.becomeVip' revmsg='true'/>"
	.."<button id='button2' image='1807500005' x='367' y='351' w='144' h='52' OnLButtonUp='SuperVipWnd.getReward' revmsg='true' visible='false'/>"
	.."<button id='closeBtn' image='1803400011' x='676' y='39' w='34' h='38' revmsg='true' OnLButtonUp='SuperVipWnd.closed' text_color='#C2B6A0'/>"
	.." </dialog>"
	.."</form>"


function SuperVipWnd.main()
	local handle = GetWindow(nil,"SuperVipWnd")
	if handle ~= 0 then
		GUIWndClose(handle)
	else
		GenFormByString(ui)
	end
end

function SuperVipWnd.UIInit(_Parent)
	SuperVipWnd.WndHandle = _Parent
	SuperVipWnd.isSuperVip = deserialize(as3.tolua(FormParam[1]))
	SuperVipWnd.showWnd()
end

function SuperVipWnd.showWnd()
	--isSuperVip = tonumber(isSuperVip)
	local becomeVipBtn = GetWindow(SuperVipWnd.WndHandle, "button1")
	local getRewardBtn = GetWindow(SuperVipWnd.WndHandle, "button2")
	if 0 == SuperVipWnd.isSuperVip then
		GUIWndSetVisible(becomeVipBtn, true)
		WndAddEffect(becomeVipBtn,nil,3020300500,-57,-102,150,0)
		GUIWndSetVisible(getRewardBtn, false)
	else
		WndAddEffect(getRewardBtn,nil,3020300500,-57,-102,150,0)
		GUIWndSetVisible(getRewardBtn, true)
		GUIWndSetVisible(becomeVipBtn, false)
	end
end

function SuperVipWnd.becomeVip(_Handle)
	SuperVipWnd.hCurWidget = _Handle
	UI:Lua_SubmitForm("奖励大厅表单", "becomeSuperVip", "1")
end

function SuperVipWnd.getReward(_Handle)
	SuperVipWnd.hCurWidget = _Handle
	SuperVipWnd.closed()
	local handle = GetWindow(nil,"RewardHall")
	if handle == 0 then
		SuperVipWnd.openRewardhall = 1
		--UI:Lua_GenForm("RewardHall")
		CLOnOpenRewardHall()
		CLAddDelayTask("SuperVipWnd.resetFlag()", 4000, 1)
	else
		RewardHall.List(GetWindow(handle,"Button3"))
	end
end

function SuperVipWnd.changeBtn()
	local becomeVipBtn = GetWindow(SuperVipWnd.WndHandle, "button1")
	local getRewardBtn = GetWindow(SuperVipWnd.WndHandle, "button2")
	GUIWndSetVisible(becomeVipBtn, false)
	GUIWndSetVisible(getRewardBtn, true)
	WndAddEffect(getRewardBtn,nil,3020300500,-57,-102,150,0)
end
function SuperVipWnd.closed()
	if 0 ~= SuperVipWnd.WndHandle then
		GUIWndClose(SuperVipWnd.WndHandle)
	end
end
function SuperVipWnd.resetFlag()
	if nil ~= SuperVipWnd.WndHandle then
		SuperVipWnd.openRewardhall = 0
	end
end

function SuperVipWnd.msgbox()
	luaMsgBox.new("元宝", "很抱歉，您的元宝不足", {"前往充值", "取消"}, {"SuperVipWnd.chongz", "SuperVipWnd.out"}, "")
end
function SuperVipWnd.chongz(h)
	CLOpenUrlUseIEByType(3)
	luaWndClose(h)
end

function SuperVipWnd.out(h)
	luaWndClose(h)
end

function SuperVipWnd.MsgUp(msg)
	local color = MakeARGB(255,255,0,0)
	window_msg_up(SuperVipWnd.hCurWidget, msg, -40, 10, 30, color, 2)
end



SuperVipWnd.main()