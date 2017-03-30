DailyConsume ={}
local ui = "<form> <dialog OnInit='DailyConsume.UIInit' id='TestWndChild_5' image='1803400001' x='264' y='148' w='626' h='370' center = 'true' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='showgirl' image='1803400015' x='-124' y='-49' w='320' h='467' enable='false' revmsg='true'/>"
	.."	<image id='title' image='1803400006' x='234' y='-9' w='186' h='44' enable='false' revmsg='true'/>"
	.."	<button id='closeBtn' image='1803400011' x='575' y='16' w='34' h='33' revmsg='true' OnLButtonUp='DailyConsume.wndClose' />"
	.."	<image id='text1' image='1803400007' x='141' y='65' w='66' h='26' enable='false' revmsg='true'/>"
	.."	<image id='text2' image='1803400008' x='276' y='65' w='82' h='26' enable='false' revmsg='true'/>"
	.."	<image id='text3' image='1803400009' x='353' y='65' w='123' h='26' enable='false' revmsg='true'/>"
	.."	<image id='text4' image='1803400010' x='218' y='120' w='270' h='52' enable='false' revmsg='true'/>"
	.."	<itemctrl id='item1' x='175' y='203' w='64' h='64' rbtn_use='true' use_back='1800000384' enable='true' revmsg='true'/>"
	.. "<image id='item1_Magic' x='148' y='171'  image='3020110200' type='animate' revmsg='true' enable='false'/>"
	.."	<itemctrl id='item2' x='250' y='203' w='64' h='64' rbtn_use='true' use_back='1800000384' enable='true' revmsg='true'/>"
	.. "<image id='item2_Magic' x='223' y='171'  image='3020110200' type='animate' revmsg='true' enable='false'/>"
	.."	<itemctrl id='item3' x='325' y='203' w='64' h='64' rbtn_use='true' use_back='1800000384' enable='true' revmsg='true'/>"
	.. "<image id='item3_Magic' x='298' y='171'  image='3020110200' type='animate' revmsg='true' enable='false'/>"
	.."	<itemctrl id='item4' x='400' y='203' w='64' h='64' rbtn_use='true' use_back='1800000384' enable='true' revmsg='true'/>"
	.. "<image id='item4_Magic' x='373' y='171'  image='3020110200' type='animate' revmsg='true' enable='false'/>"
	.."	<itemctrl id='item5' x='475' y='203' w='64' h='64' rbtn_use='true' use_back='1800000384' enable='true' revmsg='true'/>"
	.. "<image id='item5_Magic' x='448' y='171'  image='3020110200' type='animate' revmsg='true' enable='false'/>"
	.."	<button id='rechargeBtn' image='1803400002' x='290' y='284' w='134' h='59' revmsg='true' OnLButtonUp='DailyConsume.rechargeBtn_LC' />"
	.."	<image id='yb1'  x='200' y='62' enable='false' revmsg='true'/>"
	.."	<image id='yb2'  x='215' y='62' enable='false' revmsg='true'/>"
	.."	<image id='yb3'  x='230' y='62' enable='false' revmsg='true'/>"
	.."	<image id='yb4'  x='245' y='62' enable='false' revmsg='true'/>"
	.."	<image id='yb5'  x='260' y='62' enable='false' revmsg='true'/>"
	.." </dialog>"
	.."</form>"

function DailyConsume.main()
	local handle = GetWindow(nil,"TestWndChild_5")
	if handle ~= 0 then
		GUIWndClose(handle)
	else
		GenFormByString(ui)
	end
end

--UI Logic Code Start
function DailyConsume.UIInit(_Handle)
	DailyConsume.WndHandle= _Handle
	local param_ = deserialize(as3.tolua(FormParam[1]))             --下一次可以获得的奖励表（所缺元宝、所奖励的物品）
	local param_1 = deserialize(as3.tolua(FormParam[2]))
	
	local str = tostring(param_[1])
	local showNum,steLen = 0, string.len(str)
	for i = 1,  steLen do
		showNum = string.sub(str, i, i)
		showNum = tonumber(CLPlus(tostring(1801500097), showNum))
		local _GUIHandle = GUIWndFindWindow(_Handle,"yb"..i)
		GUIWndSetPosM(_GUIHandle, 200+(i-1)*15+(5-steLen)*6, 62)
		if _GUIHandle ~= 0 then 
			GUIWndSetImageID(_GUIHandle,showNum)
		end
	end
	
	local count = #param_[2]/3                          --param_[2]  ==>   gift_[i]
	local bind = true
	for i = 1, count do
		_GUIHandle = GUIWndFindWindow(_Handle,"item"..i)
		if _GUIHandle ~= 0 then
			if param_[2][i*3] == 1 then
				bind = true
			else
				bind = false
			end
		RDItemCtrlSetGUIDataByKeyName(_GUIHandle, param_[2][i*3-2], param_[2][i*3-1], bind)
		end
	end
end

function DailyConsume.rechargeBtn_LC()
	CLOpenUrlUseIEByType(3)
end

function DailyConsume.wndClose()
	if DailyConsume.WndHandle ~= 0 then
		GUIWndClose(DailyConsume.WndHandle)
	end
end

DailyConsume.main()