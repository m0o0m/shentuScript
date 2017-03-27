PreventMonster_c1 ={}
PreventMonster_c1.RES = 
{	--绿色数字美术字
	[0] = 1804600045,
	1804600046, 1804600047, 1804600048, 1804600049, 1804600050, 1804600051, 1804600052, 1804600053, 1804600054, 
	
}
PreventMonster_c1.RES2 = 
{	--红色数字美术字
	[0] = 1808300023,
	1808300024, 1808300025, 1808300026, 1808300027, 1808300028, 1808300029, 1808300030, 1808300031, 1808300032, 
	
}
local ui_1 = "<form> <dialog OnInit='PreventMonster_c1:UIInit' id='PreventMonster_c1' image='0' x='445' y='204' w='282' h='54' revmsg='true' visible='false'>"
	.."	<image id='backGround' image='1804900002' x='-10' y='0' w='402' h='60' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='TestWndChild_1' image='1804600045' x='123' y='14' w='17' h='21' check_point='0' revmsg='true' visible='true'/>"
	.."	<image id='TestWndChild_2' image='1804600045' x='144' y='14' w='17' h='21' check_point='0' revmsg='true' visible='false'/>"
	.."	<image id='TestWndChild_3' image='1804600045' x='164' y='14' w='17' h='21' check_point='0' revmsg='true' visible='false'/>"
	.."	<image id='TestWndChild_4' image='1804600045' x='184' y='14' w='17' h='21' check_point='0' revmsg='true' visible='false'/>"
	.."	<image id='TestWndChild_5' image='1804600045' x='204' y='14' w='17' h='21' check_point='0' revmsg='true' visible='false'/>"
	.."	<image id='TestWndChild_6' image='1804600045' x='224' y='14' w='17' h='21' check_point='0' revmsg='true' visible='false'/>"
	.."	<image id='TestWndChild_7' image='1804600045' x='243' y='14' w='17' h='21' check_point='0' revmsg='true' visible='false'/>"
	.."	<image id='TestWndChild_8' image='1804600045' x='263' y='14' w='17' h='21' check_point='0' revmsg='true' visible='false'/>"
	.."	<image id='TestWndChild_9' image='1804600045' x='282' y='14' w='17' h='21' check_point='0' revmsg='true' visible='false'/>"
	.."	<image id='TestWndChild_10' image='1808300012' x='18' y='11' w='91' h='25' check_point='0' revmsg='true'/>"
	.."	<image id='back2' image='1806200004' x='20' y='59' w='311' h='30' check_point='0' revmsg='true'/>"
	.."	<edit id='TestWndChild_12' x='67' y='60' w='102' h='20' revmsg='true' text_color='#C2B6A0' text='副本剩余时间：' font='system'/>"
	.."	<edit id='restTimes' x='152' y='60' w='105' h='21' revmsg='true' text_color='#00ff00' font='system'/>"
	.." </dialog>"
	.."</form>"


--UI Logic Code Start
function PreventMonster_c1:UIInit(_Handle)
	self._wnd = _Handle
	local sW = CLGetScreenWidth()
	--local sH = CLGetScreenHeight()
	local x = sW/2 - 200
	local y = 40
	GUI:WndSetPosM(_Handle, x, y);
	GUI:WndSetVisible(_Handle, true);
	self.time = tonumber(deserialize(as3.tolua(FormParam[1])));
	if self.time then
		if self.time > 0 then 
			GUIWndAddTimerBrief(self._wnd, 1000, "PreventMonster_c1:RemainTimeUpdata")  --设置定时器
		end
	end
	local _handle = GetWindow(_Handle, "back2")
	if _handle ~= 0 then 
		GUI:ImageSetTransfrom(_handle,6000,10000,0)
	end
	_handle = GetWindow(_Handle, "backGround")
	if _handle ~= 0 then 
		GUI:ImageSetTransfrom(_handle,8500,10000,0)
	end
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "窗口大小改变时调用PreventMonsterChildWnd", "PreventMonsterChildWnd:ChangePos") 
end

function PreventMonster_c1:RemainTimeUpdata()
	--每过一秒调用更新函数
	--msg('Timeupdata')
	if self.time > 0 then
		self.time = self.time - 1   
	else
		WndDelAllTimer(self._wnd)
	end
	
	local minutes = math.floor(self.time/60)
	if minutes < 10 then 
		minutes = '0'..minutes
	end
	
	local seconds = self.time%60
	if seconds < 10 then 
		seconds = '0'..seconds
	end
	
	local time_str = minutes..':'..seconds
	
	local _handle = GetWindow(self._wnd, "restTimes")
	if _handle ~= 0 then	
		GUI:EditSetTextM(_handle, time_str)
	end

end

function PreventMonster_c1:OnClose()
	--CLDelDelayTask(self.time_id) 
end
------------------------------------------------------------------------------------------------------------------------------------

PreventMonster_c2 ={}

PreventMonster_c2.RES = 
{
	[0] = 1806200009,
	1806200010, 1806200011, 1806200012, 1806200013, 1806200014, 1806200015, 1806200016, 1806200017, 1806200018, 
	
}

local ui_2 = "<form> <dialog OnInit='PreventMonster_c2:UIInit' id='PreventMonster_c2' image='0' x='0' y='0' w='16' h='16' revmsg='true'>"
	.."	<button id='btn1' image='1808300037' x='41' y='7' w='99' h='90' OnLButtonUp='PreventMonster_c2:Arrow'  param='1' OnMouseIn='PreventMonster_c2:MoveIn' OnMouseOut='PreventMonster_c2:MoveOut' revmsg='true' text_color='#C2B6A0'/>"
	.."	<button id='btn2' image='1808300041' x='163' y='7' w='99' h='90' OnLButtonUp='PreventMonster_c2:Magic' param='2' OnMouseIn='PreventMonster_c2:MoveIn' OnMouseOut='PreventMonster_c2:MoveOut' revmsg='true' text_color='#C2B6A0'/>"
	.."	<button id='btn3' image='1808300045' x='287' y='7' w='99' h='90' OnLButtonUp='PreventMonster_c2:Begin' revmsg='true' text_color='#C2B6A0'/>"
	.."	<image id='back1' image='1808300005' x='55' y='102' w='89' h='19' check_point='0' revmsg='false' enable='false'/>"
	.."	<image id='back2' image='1808300005' x='171' y='102' w='89' h='19' check_point='0' revmsg='false' enable='false'/>"
	.."	<image id='back3' image='1808300005' x='294' y='102' w='89' h='19' check_point='0' revmsg='false' enable='false'/>"
	.."	<image id='back4' image='1808300005' x='414' y='102' w='89' h='19' check_point='0' revmsg='false' enable='false'/>"
	.." <button id='shuom_button' image='1800000297' x='413' y='95' w='27' h='30' revmsg='true' />"
	.."	<richedit id='TestWndChild_13' x='61' y='103' w='74' h='28' text='#SELECT#500绑元购买#SELECTEND#' OnLButtonUp='PreventMonster_c2.BuyArrow' revmsg='true' font='system'/>"
	.."	<richedit id='TestWndChild_14' x='182' y='103' w='70' h='28' text='#SELECT#99元宝购买#SELECTEND#' OnLButtonUp='PreventMonster_c2.BuyMagic' revmsg='true' font='system'/>"
	.."	<richedit id='TestWndChild_15' x='319' y='103' w='51' h='28' text='#SELECT#退出#SELECTEND#' OnLButtonUp='PreventMonster_c2.Exit' revmsg='true' font='system'/>"
	.."	<richedit id='TestWndChild_16' x='440' y='103' w='80' h='28' text='活动说明' text_color='#00FF00' revmsg='true' font='system'/>"
	.."	<image id='Num0' image='1806200009' x='75' y='55' w='34' h='41' check_point='0' revmsg='false' enable='false' />"
	.."	<image id='Num1' image='1806200009' x='65' y='55' w='34' h='41' check_point='0' revmsg='false' enable='false' />"
	.."	<image id='Num2' image='1806200009' x='82' y='55' w='34' h='41' check_point='0' revmsg='false' enable='false' />"
	
	.."	<image id='Num3' image='1806200009' x='185' y='55' w='34' h='41' check_point='0' revmsg='false' enable='false' />"
	.."	<image id='Num4' image='1806200009' x='203' y='55' w='34' h='41' check_point='0' revmsg='false' enable='false' />"
	.."	<image id='Num5' image='1806200009' x='197' y='55' w='34' h='41' check_point='0' revmsg='false' enable='false' />"
	.."	<wnd id='TIPS' image='0' x='346' y='-50' w='225' h='69' revmsg='true' visible='false'>"
		.."	<image id='backGround' image='1804600021' x='220' y='70' w='225' h='69' revmsg='true' />"
		.."	<edit id='second' x='5' y='4' w='37' h='20' revmsg='true' text_color='#00FF00' font='system'/>"
		.."	<edit id='edit1' x='27' y='4' w='185' h='20' revmsg='true' text_color='#C2B6A0' text='后，将自动开始刷怪,如果您还未' font='system'/>"
		.."	<edit id='edit2' x='2' y='23' w='157' h='20' revmsg='true' text_color='#C2B6A0' text='放置守卫，建议尽快放置' font='system'/>"
	.." </wnd>"
	.."	<wnd id='batchTips' image='0' x='-30' y='113' w='10' h='10' revmsg='true' visible='false'>"
		.."	<image id='backGround' image='1899800017' x='0' y='0' w='225' h='69' revmsg='true' />"
		.."	<image id='num' image='1808300050' x='28' y='3' w='225' h='69' revmsg='true' visible='false'/>"
		.."	<image id='num1' image='1808300051' x='21' y='3' w='225' h='69' revmsg='true' visible='false'/>"
		.."	<image id='num2' image='1808300050' x='32' y='3' w='225' h='69' revmsg='true' visible='false'/>"
	.." </wnd>"
	.." </dialog>"
	.."</form>"


--UI Logic Code Start
function PreventMonster_c2:UIInit(_Handle)
	--msg("1")
	self._wnd = _Handle
	local sW = CLGetScreenWidth()
	local sH = CLGetScreenHeight()
	local x = sW/2 - 200;
	local y = sH - 290;
	GUI:WndSetPosM(_Handle, x, y);
	GUI:WndSetVisible(_Handle, true);
	local num2 = tonumber(deserialize(as3.tolua(FormParam[2])));
	if num2 < 10 then
		local _handle = GetWindow(self._wnd, "Num0");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, true);
		end
		_handle = GetWindow(self._wnd, "Num1");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, false);
		end
		_handle = GetWindow(self._wnd, "Num2");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, false);
		end
		ImageSetImageID(_Handle,"Num0",PreventMonster_c2.RES[num2]) 
	else
		if num2 >= 99 then 
			num2 = 99
		end
		local _handle = GetWindow(self._wnd, "Num0");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, false);
		end
		_handle = GetWindow(self._wnd, "Num1");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, true);
		end
		_handle = GetWindow(self._wnd, "Num2");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, true);
		end
		local num = tostring(num2);
		local index1 = num:sub(1,1);
		local index2 = num:sub(2,2);
		ImageSetImageID(_Handle,"Num1",PreventMonster_c2.RES[tonumber(index1)]) 
		ImageSetImageID(_Handle,"Num2",PreventMonster_c2.RES[tonumber(index2)]) 
	end
	
	local num4 = tonumber(deserialize(as3.tolua(FormParam[3])));
	if num4 < 10 then
		local _handle = GetWindow(self._wnd, "Num5");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, true);
		end
		_handle = GetWindow(self._wnd, "Num3");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, false);
		end
		_handle = GetWindow(self._wnd, "Num4");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, false);
		end
		ImageSetImageID(_Handle,"Num5",PreventMonster_c2.RES[num4]) 
	else
		if num4 >= 99 then 
			num4 = 99
		end
		local _handle = GetWindow(self._wnd, "Num5");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, false);
		end
		_handle = GetWindow(self._wnd, "Num3");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, true);
		end
		_handle = GetWindow(self._wnd, "Num4");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, true);
		end
		local num = tostring(num4);
		local index1 = num:sub(1,1);
		local index2 = num:sub(2,2);
		ImageSetImageID(_Handle,"Num3",PreventMonster_c2.RES[tonumber(index1)]) 
		ImageSetImageID(_Handle,"Num4",PreventMonster_c2.RES[tonumber(index2)]) 
	end
	local _handle = GetWindow(self._wnd, "TIPS,backGround");
	if _handle ~= 0 then 
		GUI:ImageSetTransfrom(_handle, 10000, 10000, 180)
	end
	local hint = "<font color='#D58840'>封魔副本说明：\n</font><font color='#B8A085'>1.共15波怪物，每波怪物15只\n2.摆放弓箭侍卫或魔法侍卫击杀怪物即可获得经验\n3.击杀弓箭侍卫可使其进化成更强大的魔法侍卫</font>"
	_handle = GetWindow(_Handle, "TestWndChild_16");
	if _handle ~= 0 then 
		GUIWndSetHint(_handle, hint);
	end
	_handle = GetWindow(_Handle, "shuom_button");
	if _handle ~= 0 then 
		GUIWndSetHint(_handle, hint);
	end
	
end

function PreventMonster_c2:MoveIn(handle)
	local param = WndGetParam(handle)
	UI:Lua_SubmitForm("封魔副本表单", "AddBuff", param)
end

function PreventMonster_c2:MoveOut(handle)
	local param = WndGetParam(handle)
	UI:Lua_SubmitForm("封魔副本表单", "DelBuff", param)
end

function PreventMonster_c2:Arrow()
	UI:Lua_SubmitForm("封魔副本表单", "GenArrowGuarder", "")
end

function PreventMonster_c2:Magic()
	UI:Lua_SubmitForm("封魔副本表单", "GenMagicGuarder", "")
end

function PreventMonster_c2:Begin()
	UI:Lua_SubmitForm("封魔副本表单", "BeginGenMonster", "")
end

function PreventMonster_c2:BuyArrow()
	UI:Lua_SubmitForm("封魔副本表单", "BuyArrow", "")
end
function PreventMonster_c2:BuyMagic()
	UI:Lua_SubmitForm("封魔副本表单", "BuyMagic", "")
end
function PreventMonster_c2:Exit()
	UI:Lua_SubmitForm("封魔副本表单", "Exit", "")
end
function PreventMonster_c2.ConfirmDlg()
	luaMsgBox.new("离开副本", "副本还未完成，退出将损失大量经验", {"是", "否"}, {"PreventMonster_c2.ConfirmLeave", 0}, _handle)
end

function PreventMonster_c2.ConfirmLeave(_handle)
	UI:Lua_SubmitForm("封魔副本表单", "LeaveMap", "")
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
	
end

function PreventMonster_c2:PopTips(seconds)
	seconds = tonumber(seconds);
	self.time = seconds
	local _handle = GetWindow(self._wnd, "TIPS");
	if _handle ~= 0 then 
		GUI:WndSetVisible(_handle, true);
		local _son = GetWindow(_handle, "second");
		if _son ~= 0 then 
			GUI:EditSetTextM(_handle, ""..seconds.."S")
		end
		GUIWndAddTimerBrief(_handle, 1000, "PreventMonster_c2:Tips_RemainTimeUpdata")  --设置定时器
	end
end

function PreventMonster_c2:Tips_RemainTimeUpdata()
	--每过一秒调用更新函数
	--msg('Timeupdata')
	if self.time > 0 then
		self.time = self.time - 1   
	else
		local _handle = GetWindow(self._wnd, "TIPS");
		GUI:WndClose(_handle)
		--WndDelAllTimer(self._wnd)
	end

	local seconds = self.time
	local _handle = GetWindow(self._wnd, "second")
	if _handle ~= 0 then	
		GUI:EditSetTextM(_handle, ""..seconds.."S")
	end

end

function PreventMonster_c2:PopBatchTips(index)
	local _handle = GetWindow(self._wnd, "batchTips");
	if _handle ~= 0 then 
		GUI:WndSetVisible(_handle, true);
		if tonumber(index) < 10 then 
			local _han = GetWindow(_handle, "num");
			if _han ~= 0 then 
				GUI:WndSetVisible(_han, true);
			end
			ImageSetImageID(_handle, "num", 1808300050 + tonumber(index));  
		else
			index = tonumber(index) - 10;
			if index == 5 then 
				local _han = GetWindow(_handle, "num");
				if _han ~= 0 then 
					GUI:WndSetVisible(_han, false);
				end
				_han = GetWindow(_handle, "num1");
				if _han ~= 0 then 
					GUI:WndSetVisible(_han, false);
				end
				_han = GetWindow(_handle, "num2");
				if _han ~= 0 then 
					GUI:WndSetVisible(_han, false);
				end
				ImageSetImageID(_handle, "backGround", 1899800018);  
			else
				local _han = GetWindow(_handle, "num");
				if _han ~= 0 then 
					GUI:WndSetVisible(_han, false);
				end
				_han = GetWindow(_handle, "num1");
				if _han ~= 0 then 
					GUI:WndSetVisible(_han, true);
				end
				_han = GetWindow(_handle, "num2");
				if _han ~= 0 then 
					GUI:WndSetVisible(_han, true);
				end
				ImageSetImageID(_handle, "num2", 1808300050 + tonumber(index));  
			end
		end	
		CLAddDelayTask("PreventMonster_c2:SetTipsVisible()", 5000, 1)   
	end
end

function PreventMonster_c2:SetTipsVisible()
	local _handle = GetWindow(self._wnd, "batchTips");
	if _handle ~= 0 then 
		GUI:WndSetVisible(_handle, false);
	end
end

-------------------------------------------------------------------------------------------------------------------------------------------
PreventMonster_c3 ={}
local ui_3 = "<form> <dialog OnInit='PreventMonster_c3:UIInit' id='PreventMonster_c3' image='1808300000' x='297' y='184' w='516' h='238' revmsg='true' visible='false'>"
	.."	<image id='TestWndChild_1' image='1808300006' x='168' y='-24' w='182' h='60' revmsg='true'/>"
	.."	<image id='TestWndChild_2' image='1808300007' x='123' y='48' w='86' h='21' revmsg='true'/>"
	.."	<image id='TestWndChild_3' image='1808300008' x='123' y='74' w='86' h='21' revmsg='true'/>"
	.."	<image id='TestWndChild_4' image='1808300009' x='123' y='103' w='86' h='21' revmsg='true'/>"
	.."	<image id='TestWndChild_5' image='1808300010' x='123' y='130' w='86' h='21' revmsg='true'/>"
	
	.."	<image id='kill1' image='1808300013' x='223' y='48' w='15' h='21' revmsg='true'/>"
	.."	<image id='kill2' image='1808300013' x='240' y='48' w='15' h='21' revmsg='true'/>"
	.."	<image id='kill3' image='1808300013' x='258' y='48' w='15' h='21' revmsg='true'/>"
	
	.."	<image id='getExp1' image='1808300013' x='223' y='74' w='15' h='21' revmsg='true'/>"
	.."	<image id='getExp2' image='1808300013' x='240' y='74' w='15' h='21' revmsg='true'/>"
	.."	<image id='getExp3' image='1808300013' x='258' y='74' w='15' h='21' revmsg='true'/>"
	.."	<image id='getExp4' image='1808300013' x='276' y='74' w='15' h='21' revmsg='true'/>"
	.."	<image id='getExp5' image='1808300013' x='293' y='74' w='15' h='21' revmsg='true'/>"
	.."	<image id='getExp6' image='1808300013' x='310' y='74' w='15' h='21' revmsg='true'/>"
	.."	<image id='getExp7' image='1808300013' x='329' y='74' w='15' h='21' revmsg='true'/>"
	.."	<image id='getExp8' image='1808300013' x='345' y='74' w='15' h='21' revmsg='true'/>"
	.."	<image id='getExp9' image='1808300013' x='362' y='74' w='15' h='21' revmsg='true'/>"
	
	
	.."	<image id='escape1' image='1808300023' x='223' y='102' w='15' h='21' revmsg='true'/>"
	.."	<image id='escape2' image='1808300023' x='240' y='102' w='15' h='21' revmsg='true'/>"
	.."	<image id='escape3' image='1808300023' x='258' y='102' w='15' h='21' revmsg='true'/>"
	
	.."	<image id='loseExp1' image='1808300023' x='224' y='130' w='15' h='21' revmsg='true'/>"
	.."	<image id='loseExp2' image='1808300023' x='241' y='130' w='15' h='21' revmsg='true'/>"
	.."	<image id='loseExp3' image='1808300023' x='259' y='130' w='15' h='21' revmsg='true'/>"
	.."	<image id='loseExp4' image='1808300023' x='277' y='130' w='15' h='21' revmsg='true'/>"
	.."	<image id='loseExp5' image='1808300023' x='294' y='130' w='15' h='21' revmsg='true'/>"
	.."	<image id='loseExp6' image='1808300023' x='311' y='130' w='15' h='21' revmsg='true'/>"
	.."	<image id='loseExp7' image='1808300023' x='329' y='130' w='15' h='21' revmsg='true'/>"
	.."	<image id='loseExp8' image='1808300023' x='346' y='130' w='15' h='21' revmsg='true'/>"
	.."	<image id='loseExp9' image='1808300023' x='363' y='130' w='15' h='21' revmsg='true'/>"
	
	
	.."	<button id='Get' image='1808300033' x='206' y='167' w='110' h='38' revmsg='true' text_color='#C2B6A0' OnLButtonUp='PreventMonster_c3:Get' />"
	.."	<edit id='CountDown' x='296' y='177' w='80' h='20' revmsg='true' text_color='#00ff00' text='' font='system'/>"
	.."	<edit id='TestWndChild_33' x='174' y='210' w='193' h='20' revmsg='true' text_color='#C2B6A0' text='点击按钮前往封魔使节处领取经验' font='system'/>"
	.." </dialog>"
	.."</form>"

function PreventMonster_c3:main(TABLE)
	self.kill = TABLE[1];
	self.getExp = TABLE[2];
	self.escape = TABLE[3];
	self.loseExp = TABLE[4];
	GenFormByString(ui_3);
end

function PreventMonster_c3:UIInit(_Handle)
	self._wnd = _Handle;
	CenterWnd(_Handle);
	GUI:WndSetVisible(_Handle, true);
	
	
	local kill = tostring(self.kill);
	local getExp = tostring(self.getExp);
	local escape = tostring(self.escape);
	local loseExp = tostring(self.loseExp);
	for i = 1, 3 do
		if i <= #kill then
			local _handle = GetWindow(_Handle, "kill"..i);
			if _handle ~= 0 then 
				GUI:WndSetVisible(_handle, true);
			end
			local index = kill:sub(i,i);
			ImageSetImageID(_Handle,"kill"..i,PreventMonster_c1.RES[tonumber(index)]) 
		else
			local _handle = GetWindow(_Handle, "kill"..i);
			if _handle ~= 0 then 
				GUI:WndSetVisible(_handle, false);
			end
		end
	end

	for i = 1, 9 do
		if i <= #getExp then
			local _handle = GetWindow(_Handle, "getExp"..i);
			if _handle ~= 0 then 
				GUI:WndSetVisible(_handle, true);
			end
			local index = getExp:sub(i,i);
			ImageSetImageID(_Handle,"getExp"..i,PreventMonster_c1.RES[tonumber(index)]) 
		else
			local _handle = GetWindow(_Handle, "getExp"..i);
			if _handle ~= 0 then 
				GUI:WndSetVisible(_handle, false);
			end
		end
	end
	
	for i = 1, 3 do	
		if i <= #escape then
			local _handle = GetWindow(_Handle, "escape"..i);
			if _handle ~= 0 then 
				GUI:WndSetVisible(_handle, true);
			end
			local index = escape:sub(i,i);
			ImageSetImageID(_handle,"escape"..i,PreventMonster_c1.RES2[tonumber(index)]) 
		else
			local _handle = GetWindow(_Handle, "escape"..i);
			if _handle ~= 0 then 
				GUI:WndSetVisible(_handle, false);
			end
		end
	end
	
	for i = 1, 9 do	
		if i <= #loseExp then
			local _handle = GetWindow(_Handle, "loseExp"..i);
			if _handle ~= 0 then 
				GUI:WndSetVisible(_handle, true);
			end
			local index = loseExp:sub(i,i);
			ImageSetImageID(_handle, "loseExp"..i, PreventMonster_c1.RES2[tonumber(index)]) 
		else
			local _handle = GetWindow(_Handle, "loseExp"..i);
			if _handle ~= 0 then 
				GUI:WndSetVisible(_handle, false);
			end
		end
	end
	
	self.count = 10
	if GUIWndAddTimerBrief(_Handle,1000,"PreventMonster_c3:UpdataPerSecond") then
		
	end
	
end

function PreventMonster_c3:UpdataPerSecond()
	self.count = self.count - 1
	if self.count >= 0 then 
		EditSetText(self._wnd, "CountDown", "".. self.count .. "s");
	end
	if self.count <= 0 then 
		self:Get();
	end
end

function PreventMonster_c3:Get()
	UI:Lua_SubmitForm("封魔副本表单", "GoToGetAward", "")
	GUIWndClose(self._wnd)
end



----------------------------------------------------------------------------------------------------------------
PreventMonsterChildWnd = {}

function PreventMonsterChildWnd:main()
	GenFormByString(ui_1)
	GenFormByString(ui_2)
	PreventMonsterChildWnd:AddEffect()
end

function PreventMonsterChildWnd:AddEffect()
	local TABLE = 
	{
		{10, 17, 200001500},
		{20, 17, 200001500},
		{30, 17, 200001500},
		{40, 30, 200001501},
		{30, 40, 200001502},
		{14, 40, 200001502},
	}	
	--msg('AddEffect')
	for k, v in ipairs(TABLE) do 
		--lualib:RunClientScript(player, "ItemEffect", "texiao", v[3].."#"..v[1].."#"..v[2].."#0#0");
		CL:DelMagicFromPoint(v[3], v[1], v[2]);
		UI:Lua_AddMagicToPoint(v[3], v[1], v[2], 150, 0);
	end
end

function PreventMonsterChildWnd:close()
	local _handle = GetWindow(0, "PreventMonster_c1") 
	if _handle ~= 0 then 
		GUI:WndClose(_handle)
	end
	_handle = GetWindow(0, "PreventMonster_c2") 
	if _handle ~= 0 then 
		GUI:WndClose(_handle)
	end
	
end

function PreventMonsterChildWnd:ChangePos()
	--msg("ChangePos")
	local sW = CLGetScreenWidth()
	local sH = CLGetScreenHeight()
	local x = sW/2 - 200
	local y = 40
	local _handle = GetWindow(0, "PreventMonster_c1");
	if _handle ~= 0 then 
		GUI:WndSetPosM(_handle, x, y);
	end
	x = sW/2 - 200;
	y = sH - 290;
	local _handle = GetWindow(0, "PreventMonster_c2");
	if _handle ~= 0 then 
		GUI:WndSetPosM(_handle, x, y);
	end
end

function PreventMonsterChildWnd:bottom_msg_tip(str)
	UI:Lua_GetScreenSize()
	local x = as3.tolua(LuaRet[1])/2-191
	local y = as3.tolua(LuaRet[2])-320
	msg_tip(str,x,y)
end

function PreventMonsterChildWnd:SetEnableFalse()
	local _handle = GetWindow(0, "PreventMonster_c2,btn3");
	if _handle ~= 0 then 
		GUI:WndSetEnableM(_handle, false)
	end
	_handle = GetWindow(0, "PreventMonster_c2,TIPS");
	if _handle ~= 0 then 
		GUI:WndSetVisible(_handle, false)
	end
end

function PreventMonsterChildWnd:UpDataArrowNumble(num)
	local _Handle = GetWindow(0, "PreventMonster_c2");
	if _Handle == 0 then 
		return
	end
	num = tonumber(num);
	if num < 10 then
		local _handle = GetWindow(PreventMonster_c2._wnd, "Num0");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, true);
		end
		_handle = GetWindow(PreventMonster_c2._wnd, "Num1");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, false);
		end
		_handle = GetWindow(PreventMonster_c2._wnd, "Num2");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, false);
		end
		ImageSetImageID(_Handle,"Num0",PreventMonster_c2.RES[num]) 
	else
		if num >= 99 then 
			num = 99
		end
		local _handle = GetWindow(PreventMonster_c2._wnd, "Num0");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, false);
		end
		_handle = GetWindow(PreventMonster_c2._wnd, "Num1");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, true);
		end
		_handle = GetWindow(PreventMonster_c2._wnd, "Num2");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, true);
		end
		local num = tostring(num);
		local index1 = num:sub(1,1);
		local index2 = num:sub(2,2);
		ImageSetImageID(_Handle,"Num1",PreventMonster_c2.RES[tonumber(index1)]) 
		ImageSetImageID(_Handle,"Num2",PreventMonster_c2.RES[tonumber(index2)]) 
	end
	
end

function PreventMonsterChildWnd:UpDataMagicNumble(num)
	local _Handle = GetWindow(0, "PreventMonster_c2");
	if _Handle == 0 then 
		return
	end
	num = tonumber(num);
	if num < 10 then
		local _handle = GetWindow(PreventMonster_c2._wnd, "Num5");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, true);
		end
		_handle = GetWindow(PreventMonster_c2._wnd, "Num3");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, false);
		end
		_handle = GetWindow(PreventMonster_c2._wnd, "Num4");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, false);
		end
		ImageSetImageID(_Handle,"Num5",PreventMonster_c2.RES[num]) 
	else
		if num >= 99 then 
			num = 99
		end
		local _handle = GetWindow(PreventMonster_c2._wnd, "Num5");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, false);
		end
		_handle = GetWindow(PreventMonster_c2._wnd, "Num3");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, true);
		end
		_handle = GetWindow(PreventMonster_c2._wnd, "Num4");
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, true);
		end
		local num = tostring(num);
		local index1 = num:sub(1,1);
		local index2 = num:sub(2,2);
		ImageSetImageID(_Handle,"Num3",PreventMonster_c2.RES[tonumber(index1)]) 
		ImageSetImageID(_Handle,"Num4",PreventMonster_c2.RES[tonumber(index2)]) 
	end
end

function PreventMonsterChildWnd:UpDataScore(exp)
	local _Handle = GetWindow(0, "PreventMonster_c1");
	if _Handle == 0 then 
		return
	end

	local exp = tostring(exp);
	for i = 1, 9 do
		if i <= #exp then
			local _handle = GetWindow(_Handle, "TestWndChild_"..i);
			if _handle ~= 0 then 
				GUI:WndSetVisible(_handle, true);
			end
			local index = exp:sub(i,i);
			ImageSetImageID(_Handle,"TestWndChild_"..i,PreventMonster_c1.RES[tonumber(index)]) 
		else
			local _handle = GetWindow(_Handle, "TestWndChild_"..i);
			if _handle ~= 0 then 
				GUI:WndSetVisible(_handle, false);
			end
		end
	end
	
end

function PreventMonsterChildWnd.RecoverTaskWindow()
	local taskWnd = GetWindow(0, "TaskWindow")
	if taskWnd ~= 0 then
		GUIWndSetVisible(taskWnd, true)
	end
	if TaskWindow._hideWnd ~= 0 then
		GUIWndSetVisible(TaskWindow._hideWnd, false)
	end
	OnScreenSizeChange(taskWnd,TaskWindow._hideWnd,208,31)
end

function PreventMonsterChildWnd:CloseWnd()
	local _handle = GetWindow(0, "PreventMonster_c3");
	if _handle ~= 0 then
		GUIWndClose(_handle)
	end
	
end

PreventMonsterChildWnd:main()