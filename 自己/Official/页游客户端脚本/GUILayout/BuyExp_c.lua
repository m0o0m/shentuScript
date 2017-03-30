BuyExp ={}
local ui = "<form> <dialog OnInit='BuyExp.UIInit' id='BuyExp' image='1806400060' x='270' y='47' w='578' h='403' center = 'true' esc_close='true' drag='true' revmsg='true'>"
	.."	<edit id='text_const1' x='355' y='94' w='115' h='20' revmsg='true' text_color='#FFFFFF' text='活动倒计时：' font='system'/>"
	.."	<edit id='countDown_time' x='429' y='95' w='100' h='18' revmsg='true' text_color='#00FF00' text='60:60:60' font='system'/>"
	.."	<image id='expNum10' image='' x='231' y='245' w='15' h='23' revmsg='true' enable='false'/>"
	.."	<image id='expNum9' image='' x='246' y='245' w='15' h='23' revmsg='true' enable='false'/>"
	.."	<image id='expNum8' image='' x='261' y='245' w='15' h='23' revmsg='true' enable='false'/>"
	.."	<image id='expNum7' image='' x='276' y='245' w='15' h='23' revmsg='true' enable='false'/>"
	.."	<image id='expNum6' image='' x='291' y='245' w='15' h='23' revmsg='true' enable='false'/>"
	.."	<image id='expNum5' image='' x='306' y='245' w='15' h='23' revmsg='true' enable='false'/>"		
	.."	<image id='expNum4' image='' x='321' y='245' w='15' h='23' revmsg='true' enable='false'/>"
	.."	<image id='expNum3' image='' x='336' y='245' w='15' h='23' revmsg='true' enable='false'/>"
	.."	<image id='expNum2' image='' x='351' y='245' w='15' h='23' revmsg='true' enable='false'/>"
	.."	<image id='expNum1' image='' x='366' y='245' w='15' h='23' revmsg='true' enable='false'/>"
	.."<image id='magic1' x='163' y='21' w='57' h='57' image='3020300400' type='animate' revmsg='true' enable='false'/>"
	.."	<edit id='text_const2' x='241' y='283' w='120' h='22' revmsg='true' text_color='#FFFFFF' text='可立即提升至    级' font='system'/>"
	.."	<edit id='desLevel' x='318' y='283' w='65' h='22' revmsg='true' text_color='#00FF00' text='99' font='system'/>"
	.."	<edit id='text_const3' x='255' y='367' w='65' h='22' revmsg='true' text_color='#7D6C5A' text='花费元宝：' font='system'/>"
	.."	<edit id='cost_yb' x='314' y='367' w='65' h='22' revmsg='true' text_color='#B77F22' text='888' font='system'/>"
	.."	<edit id='text_const4' x='50' y='366' w='115' h='22' revmsg='true' text_color='#FFFFFF' text='今天还可炼制  次' font='system'/>"
	.."	<edit id='leftTimes' x='125' y='366' w='65' h='22' revmsg='true' text_color='#00FF00' text='4' font='system'/>"
	.."	<button id='btn_purchase' image='1806400132' x='225' y='310' w='144' h='52' OnLButtonUp='BuyExp.purchaseExp' revmsg='true'/>"
	.."	<button id='closeBtn' image='1800000068' x='512' y='72' w='24' h='24' OnLButtonUp='BuyExp.CloseWnd' revmsg='true' text_color='#C2B6A0'/>"

	.." </dialog>"
	.."</form>"
	
function BuyExp.main()
	local handle = GetWindow(nil,"BuyExp")
	if handle ~= 0 then
		GUIWndClose(handle)
	else
		GenFormByString(ui)
	end
end


--UI Logic Code Start
local h_countDown = 0
local h_cost = 0
local h_times = 0
local h_desLevel = 0
local h_btn_purchase = 0
local table t_h_expNum = {}
local remainTime = 0
function BuyExp.UIInit(_Handle)
	--主窗口句柄
	BuyExp.WndHandle = _Handle	
	CenterWnd(BuyExp.WndHandle)
	GUIWndSetSizeM(BuyExp.WndHandle,578,403)
	
	--获取各控件句柄
	h_countDown = GUIWndFindWindow(_Handle, "countDown_time")
	h_cost = GUIWndFindWindow(_Handle, "cost_yb")
	h_times = GUIWndFindWindow(_Handle, "leftTimes")
	h_desLevel = GUIWndFindWindow(_Handle, "desLevel")
	h_btn_purchase = GUIWndFindWindow(_Handle,"btn_purchase")
	WndAddEffect(h_btn_purchase,nil,3020300500,-57,-102,150,0);
	for i = 1, 10 do
		t_h_expNum[i] = GUIWndFindWindow(_Handle, "expNum"..i)
	end
	
	--添加倒计时定时器
	countDown_timerID = GUIWndAddTimerBrief(h_countDown, 1000, "BuyExp.countingDown") 
	
	--服务端的数据
	local t_exp_cost = deserialize(as3.tolua(FormParam[1]))
	local times = tonumber(deserialize(as3.tolua(FormParam[2])))
	remainTime = deserialize(as3.tolua(FormParam[3]))	
	local whichDay = tonumber(deserialize(as3.tolua(FormParam[4])))	
	local desLevel = deserialize(as3.tolua(FormParam[5]))
		
	--填充数据
	GUIEditSetTextM(h_times, tostring(5 - times))
	GUIEditSetTextM(h_cost, t_exp_cost[whichDay][times][1])
	GUIEditSetTextM(h_countDown, GetLeaveTimeString(remainTime))
	GUIEditSetTextM(h_desLevel, desLevel)

	--根据经验显示美术数字
	local int_exp = t_exp_cost[whichDay][times][2]			
	local imageID = 0
	local i = 1
	while 0 ~= int_exp/10 do
		local temp = int_exp%10
		if temp == 0 then			imageID = 1806400094
		elseif temp ==1 then		imageID = 1806400095
		elseif temp ==2 then		imageID = 1806400096
		elseif temp ==3 then		imageID = 1806400097
		elseif temp ==4 then		imageID = 1806400098
		elseif temp ==5 then		imageID = 1806400099
		elseif temp ==6 then		imageID = 1806400100
		elseif temp ==7 then		imageID = 1806400101
		elseif temp ==8 then		imageID = 1806400102
		elseif temp ==9 then		imageID = 1806400103
		end
		int_exp = math.floor(int_exp/10)
		ImageSetImageID(t_h_expNum[i], "expNum"..i, imageID) 
		i = i + 1
	end
	
	if 5 == times  then
		GUIWndSetVisible(h_btn_purchase, false)
	end
end

function BuyExp.countingDown()
	remainTime = remainTime - 1
	GUIEditSetTextM(h_countDown, GetLeaveTimeString(remainTime))
end

function BuyExp.purchaseExp()
	UI:Lua_SubmitForm("BuyExp_s","buyExp_Implement","")
end

function BuyExp.CloseWnd()
	if BuyExp.WndHandle ~= 0 then
		GUIWndClose(BuyExp.WndHandle)
		WndDelAllTimer(h_countDown)
	end
end


function BuyExp.updateUI(times, t_exp_cost, whichDay, desLevel)
		if times == 5 then
		GUIWndSetVisible(h_btn_purchase, false)
	end

	GUIEditSetTextM(h_times, tostring(5 - times))
	GUIEditSetTextM(h_cost, t_exp_cost[whichDay][times][1])
	GUIEditSetTextM(h_desLevel, desLevel)
	
	local int_exp = t_exp_cost[whichDay][times][2]
	
	for i = 10 , string.len(tostring(int_exp)), -1 do		
		GUIWndSetVisible(t_h_expNum[i] , false)
	end
	
	for i = 1 , string.len(tostring(int_exp)) do		
		GUIWndSetVisible(t_h_expNum[i] , true)
	end

	local imageID = 0
	local i = 1
	while 0 ~= int_exp/10 do
		local temp = int_exp%10
		if temp == 0 then			imageID = 1806400094
		elseif temp ==1 then		imageID = 1806400095
		elseif temp ==2 then		imageID = 1806400096
		elseif temp ==3 then		imageID = 1806400097
		elseif temp ==4 then		imageID = 1806400098
		elseif temp ==5 then		imageID = 1806400099
		elseif temp ==6 then		imageID = 1806400100
		elseif temp ==7 then		imageID = 1806400101
		elseif temp ==8 then		imageID = 1806400102
		elseif temp ==9 then		imageID = 1806400103
		end
		int_exp = math.floor(int_exp/10)
		ImageSetImageID(t_h_expNum[i], "expNum"..i, imageID) 
		i = i + 1
	end	
end
BuyExp.main()