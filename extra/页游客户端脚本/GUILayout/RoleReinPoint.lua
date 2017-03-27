RoleReinPoint = {}

function RoleReinPoint.main()
	local handle = GetWindow(nil,"RoleReinPoint")
	if handle ~= 0 then
		GUIWndClose(handle)
	else
		local ui = "<form> <dialog OnInit='RoleReinPoint.UIInit' id='RoleReinPoint' image='1805900172' x='641' y='0' w='361' h='550' drag='true' revmsg='true'>"
		.."	<image id='TestWndChild_8' image='0' x='88' y='124' w='44' h='44' revmsg='true'/>"
		.."	<image id='TestWndChild_9' image='0' x='231' y='124' w='44' h='44' revmsg='true'/>"
		.."	<image id='TestWndChild_2' image='1805900173' x='35' y='58' w='292' h='473' check_point='0' revmsg='true'/>"
		.."	<button id='CloseBtn' image='1805900080' x='307' y='4' w='34' h='38' OnLButtonUp='RoleReinPoint.Close' revmsg='true'/>"
		.."	<image id='TitleImg' image='1805900013' x='137' y='6' w='96' h='29' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='ToImg' image='1800000366' x='159' y='117' w='43' h='58' check_point='0' revmsg='true'/>"
		.."	<edit id='NowLevelNameEdit' x='82' y='106' w='55' h='16' canedit='false' align='center' revmsg='true' enable='false' text_color='#CFB360' text='当前等级' font='system'/>"
		.."	<edit id='NextLevelNameEdit' x='217' y='106' w='70' h='16' canedit='false' align='center' revmsg='true' enable='false' text_color='#CFB360' text='兑换后等级' font='system'/>"
		.."	<edit id='NowLevelEdit' x='88' y='137' w='44' h='16' canedit='false' align='center' revmsg='true' enable='false' font='system'/>"
		.."	<edit id='NextLevelEdit' x='231' y='137' w='44' h='16' canedit='false' align='center' revmsg='true' enable='false' text_color='#E19D32' font='system'/>"
		.."	<edit id='WillGetPointNameEdit' x='96' y='178' w='108' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='兑换后可获得修为：' font='system'/>"
		.."	<edit id='WillGetPointEdit' x='204' y='178' w='80' h='16' canedit='false' revmsg='true' enable='false' text_color='#00FF00' text='0' font='system'/>"
		.."	<image id='ConsumeBackImg' image='1800900026' x='141' y='204' w='100' h='25' check_point='0' fitsize='true' revmsg='true'/>"
		.."	<edit id='ConsumeNameEdit' x='81' y='208' w='60' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='兑换消耗：' font='system'/>"
		.."	<edit id='WanEdit' x='241' y='208' w='16' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='万' font='system'/>"
		.."	<edit id='ConsumeEdit' x='176' y='210' w='90' h='16' canedit='false' revmsg='true' enable='false' text='50' font='system'/>"
		.."	<image id='ConsumeImg' image='1806600014' x='148' y='208' w='23' h='18' check_point='0' revmsg='true'/>"
		.."	<button id='ConvertPointBtn' image='1805900092' x='150' y='250' w='71' h='25' OnLButtonUp='RoleReinPoint.getRepair' revmsg='true' text='兑换修为' text_color='#FFE5C2'/>"
		.."	<edit id='ConvertCountNameEdit' x='126' y='282' w='130' h='16' canedit='false' revmsg='true' enable='false' text_color='#6F5E4C' text='今日剩余兑换次数：' font='system'/>"
		.."	<edit id='ConvertCountEdit' x='234' y='282' w='70' h='16' canedit='false' revmsg='true' enable='false' text_color='#00FF00' font='system'/>"
		.."	<image id='PointToolBackImg1' image='1805900015' x='48' y='365' w='266' h='66' check_point='0' OnMouseIn='RoleReinPoint.OnMouseIn' OnMouseOut='RoleReinPoint.OnMouseOut' revmsg='true'/>"
		.."	<itemctrl id='ItemCell1' use_back='1805900039' x='58' y='375' w='48' h='48' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<button id='PointToolBtn1' image='1805900096' x='215' y='396' w='88' h='25' OnLButtonUp='RoleReinPoint.buy' revmsg='true' param='1' text='购买并使用' text_color='#CFB360'/>"
		.."	<edit id='PointToolNameEdit1' x='115' y='381' w='70' h='16' canedit='false' align='center' revmsg='true' enable='false' text_color='#CFB360' text='高级转生丹' font='system'/>"
		.."	<edit id='PointToolCountEdit1' x='136' y='403' w='55' h='16' canedit='false' revmsg='true' enable='false' text_color='#FFFF00' text='1000' font='system'/>"
		.."	<image id='PointToolCountImg1' image='1806600012' x='111' y='402' w='23' h='18' check_point='0' revmsg='true'/>"
		.."	<image id='PointToolBackImg2' image='1805900015' x='48' y='445' w='266' h='66' check_point='0' OnMouseIn='RoleReinPoint.OnMouseIn' OnMouseOut='RoleReinPoint.OnMouseOut' revmsg='true'/>"
		.."	<itemctrl id='ItemCell2' use_back='1805900039' x='58' y='455' w='48' h='48' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<button id='PointToolBtn2' image='1805900096' x='215' y='475' w='88' h='25' OnLButtonUp='RoleReinPoint.buy' revmsg='true' param='2' text='购买并使用' text_color='#CFB360'/>"
		.."	<edit id='PointToolNameEdit2' x='115' y='461' w='70' h='16' canedit='false' align='center' revmsg='true' enable='false' text_color='#CFB360' text='超级转生丹' font='system'/>"
		.."	<edit id='PointToolCountEdit2' x='136' y='483' w='55' h='16' canedit='false' revmsg='true' enable='false' text_color='#FFFF00' text='9888' font='system'/>"
		.."	<image id='PointToolCountImg2' image='1806600012' x='111' y='482' w='23' h='18' check_point='0' revmsg='true'/>"
		.." </dialog>"
		.."</form>"
		GenFormByString(ui)
	end	
end

RoleReinPoint.WndHandle = 0
--[81] = 30300,[82] = 45000,[83] = 48500,[84] = 52400,[85] = 58300,
RoleReinPoint.leveltab = {[86] = 63700,[87] = 93500,[88] = 102400,[89] = 112500,[90] = 124000,
[91] = 137600,[92] = 167500,[93] = 196400,[94] = 248900,[95] = 306100,[96] = 442100,[97] = 509100,[98] = 586000,[99] = 667000,[100] = 786300,[101] = 995600}
function RoleReinPoint.UIInit(_Handle)
	RoleReinPoint.WndHandle = _Handle
	GUIWndSetSizeM(_Handle, 362, 505)
	local _GUIHandle = GUIWndFindWindow(RoleGUI.WndHandle,"")
	if _GUIHandle ~= 0 then	
		GUIWndGetPosM(_GUIHandle)		
		GUIWndSetPosM(_Handle, as3.tolua(LuaRet[1])+641, as3.tolua(LuaRet[2]))
	end
	local level = 0 
	if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then
		level = tonumber(as3.tolua(LuaRet))
	end
	EditSetText(_Handle,"NowLevelEdit",""..level)
	local next_level = level - 1 
	EditSetText(_Handle,"NextLevelEdit",""..next_level)
	
	for i = 1, 2 do
		local hYuanbao = GUIWndFindWindow(_Handle, "PointToolCountImg"..i)
		if hYuanbao ~= 0 then
			GUIWndSetHint(hYuanbao, "<font color='#D58840'>元宝\n</font><font color='#B8A085'>可用于购买商城中的道具，元宝可以通过参\n加活动、充值人民币获得，每充值1元=100元宝</font>")
		end
	end
	
	
	if level < 86 then
		local handle = GetWindow(_Handle,"ConvertPointBtn")
		if handle ~= 0 then
			GUIWndSetEnableM(handle, false)
		end	
		EditSetText(_Handle,"ConvertCountNameEdit","86级以上才能使用")
		EditSetText(_Handle,"ConsumeEdit","0")
	else
		if level < 102 then
			EditSetText(_Handle,"WillGetPointEdit",""..RoleReinPoint.leveltab[level])
			UI:Lua_SubmitForm("页游转生表单","show_num","")
		end	
	end	
	local handle = GetWindow(_Handle,"ItemCell1")
	RDItemCtrlSetGUIDataByKeyName(handle, "高级转生丹", 0, false)
	local handle = GetWindow(_Handle,"ItemCell2")
	RDItemCtrlSetGUIDataByKeyName(handle, "超级转生丹", 0, false)
end

function RoleReinPoint.Close(_handle)
	GUIWndClose(RoleReinPoint.WndHandle)
end

function RoleReinPoint.getRepair(_handle)
	UI:Lua_SubmitForm("页游转生表单", "GetRepair", "")
end	

function RoleReinPoint.buy(_handle)
	local index = GUIWndGetParam(_handle)
	UI:Lua_SubmitForm("页游转生表单", "BuyRepair", ""..index)
end

function RoleReinPoint.ButEnable()
	local handle = GetWindow(RoleReinPoint.WndHandle,"ConvertPointBtn")
	if handle ~= 0 then
		GUIWndSetEnableM(handle, false)
	end	
	EditSetText(RoleReinPoint.WndHandle,"ConsumeEdit","0")
end

function RoleReinPoint.msgbox()
	luaMsgBox.new("元宝", "很抱歉，您的元宝不足", {"前往充值", "取消"}, {"RoleReinPoint.chongz", "RoleReinPoint.out"}, "")
end
function RoleReinPoint.chongz(_handle)
	CLOpenUrlUseIEByType(3)
	luaWndClose(_handle)
end

function RoleReinPoint.RepairChange(repair)
	if RoleRein ~= nil then
		RoleRein.repair = repair
		EditSetText(RoleRein.WndHandle,"HavePointEdit",""..RoleRein.repair)
		if RoleRein.repair < RoleRein.needrepair then
			EditSetTextColor(RoleRein.WndHandle,"HavePointEdit",CLMakeARGB(255, 255, 0, 0))
		else
			EditSetTextColor(RoleRein.WndHandle,"HavePointEdit",CLMakeARGB(255, 255, 255, 255))	
		end
	end	
	if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then
		level = tonumber(as3.tolua(LuaRet))
	end
	EditSetText(RoleReinPoint.WndHandle,"NowLevelEdit",""..level)
	local next_level = level - 1 
	EditSetText(RoleReinPoint.WndHandle,"NextLevelEdit",""..next_level)
	if level < 86 then
		local handle = GetWindow(RoleReinPoint.WndHandle,"ConvertPointBtn")
		if handle ~= 0 then
			GUIWndSetEnableM(handle, false)
		end	
		EditSetText(RoleReinPoint.WndHandle,"ConvertCountNameEdit","	86级以上才能使用")
		EditSetText(RoleReinPoint.WndHandle,"ConsumeEdit","0")
		EditSetText(RoleReinPoint.WndHandle,"WillGetPointEdit","0")
	else
		if level < 102 then
			EditSetText(RoleReinPoint.WndHandle,"WillGetPointEdit",""..RoleReinPoint.leveltab[level])
		end	
	end	
end	

function RoleReinPoint.out(_handle)
	luaWndClose(_handle)
end

function RoleReinPoint.OnMouseIn(_handle)
	GUIWndSetImageID(_handle,1805900016)
end

function RoleReinPoint.OnMouseOut(_handle)
	GUIWndSetImageID(_handle,1805900015)
end

RoleReinPoint.main()