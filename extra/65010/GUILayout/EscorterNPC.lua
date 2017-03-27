EscorterNPC ={}
-----------------------------------------面板一:接任务面板---------------------------
local ui1 = "<form> <dialog OnInit='EscorterNPC:UIInit' id='EscorterNPC' image='1805600001' x='220' y='41' w='846' h='569' revmsg='true' esc_close='true' center='true' drag='true'>"
	.."	<button id='Close' image='1805900080' x='780' y='5' w='26' h='26' OnLButtonUp='EscorterNPC:CloseWnd' revmsg='true'/>"
	.."	<image id='BackGround' image='1808500000' x='37' y='57' w='774' h='487' check_point='0' revmsg='false'/>"
	.."	<image id='Title' image='1808500001' x='383' y='5' w='102' h='28' check_point='0' revmsg='false'/>"
	.."	<edit id='double' x='629' y='62' w='177' h='23' revmsg='true' text_color='#FF0000' text='' font='system'/>"
	.."	<image id='TestWndChild_10' image='1808500002' x='38' y='92' w='152' h='324' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_11' image='1808500003' x='193' y='92' w='152' h='324' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_12' image='1808500004' x='348' y='92' w='152' h='324' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_13' image='1808500005' x='503' y='92' w='152' h='324' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_14' image='1808500006' x='657' y='92' w='152' h='324' check_point='0' revmsg='true'/>"
	--.."	<image id='backimg1' image='1805600052' x='190' y='416' w='152' h='324' check_point='0' revmsg='true' fitsize='true' visible='true'/>"
	.."	<image id='backimg1' image='1805600052' x='38' y='92' w='152' h='324' check_point='0' revmsg='true' fitsize='true' visible='true'/>"
	.."	<edit id='TestWndChild_15' x='53' y='442' w='67' h='24' revmsg='true' text_color='#E4C19F' text='护送对象：' font='system'/>"
	.."	<edit id='TestWndChild_16' x='120' y='442' w='126' h='23' revmsg='true' text_color='#00FF00' text='一级镖车' font='system'/>"
	.."	<edit id='TestWndChild_17' x='53' y='471' w='68' h='24' revmsg='true' text_color='#E4C19F' text='刷新消耗：' font='system'/>"
	.."	<edit id='TestWndChild_18' x='122' y='471' w='158' h='24' revmsg='true' text_color='#F2C200' text='护送令／250领券／50元宝' font='system'/>"
	.."	<edit id='TestWndChild_19' x='322' y='472' w='36' h='23' revmsg='true' text_color='#E4C19F' text='免费：' font='system'/>"
	.."	<edit id='SumCount' x='361' y='472' w='70' h='23' revmsg='true' text_color='#00FF00' text='3／3次' font='system'/>"
	
	--.."	<check id='Check' image='1800000176' x='53' y='503' w='21' h='21' checked='false' auto_change='true' text='刷出' revmsg='true' text_color='#E4C19F'/>"
	--.."	<image id='comboboxBK' image='1807200006' x='112' y='503' w='107' h='26' fitsize='true' check_point='0' revmsg='true' enable='false'/>"
	--.."	<combobox id='ComboBox' x='118' y='500' w='100' h='30' length='700' image='1800000172' fill_image='1901500047' OnComboStrChange='EscorterNPC.OnStrChange' revmsg='true' />"
	.."	<edit id='TestWndChild_24' x='439' y='435' w='64' h='23' revmsg='true' text_color='#E4C19F' text='完成次数：' font='system'/>"
	.."	<edit id='CompCount' x='503' y='435' w='70' h='23' revmsg='true' text_color='#00FF00' text='0／3' font='system'/>"
	
	.."	<edit id='TestWndChild_26' x='439' y='460' w='64' h='23' revmsg='true' text_color='#E4C19F' text='护送奖励：' font='system'/>"
	.."	<edit id='EXP' x='503' y='460' w='119' h='23' revmsg='true' text_color='#F2C200' text='' font='system'/>"
	.."	<edit id='BindGold' x='631' y='460' w='131' h='23' revmsg='true' text_color='#F2C200' text='' font='system'/>"
	.."	<edit id='Achieve' x='503' y='478' w='120' h='23' revmsg='true' text_color='#F2C200' text='' font='system'/>"
	
	.."	<edit id='TestWndChild_25' x='439' y='500' w='64' h='23' revmsg='true' text_color='#E4C19F' text='运镖押金：' font='system'/>"
	.."	<edit id='Deposit' x='503' y='500' w='70' h='23' revmsg='true' text_color='#00FF00' text='' font='system'/>"
	.."	<button id='Refresh' image='1806100002' x='320' y='500' w='88' h='31' revmsg='true' text='刷新对象' OnLButtonUp='EscorterNPC:Refresh' text_color='#E4C19F'/>"
	.."	<button id='Begin' image='1806100002' x='687' y='500' w='88' h='31' revmsg='true' text='开始护送' OnLButtonUp='EscorterNPC:Begin' text_color='#E4C19F'/>"
	.." </dialog>"
	.."</form>"


-----------------------------------------面板二:交任务面板---------------------------
local ui2 = "<form> <dialog OnInit='EscorterNPC:UIInit2' id='EscorterSucceed' image='1808500019' x='287' y='186' w='516' h='256' visible='false' revmsg='true'>"
	.."	<image id='ItemBack1' image='1800000133' x='124' y='78' w='68' h='68' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='expImage' image='1892100043' x='124' y='78' w='68' h='68' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='ItemBack2' image='1800000133' x='232' y='79' w='68' h='68' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='ingotImage' image='1892100042' x='232' y='79' w='68' h='68' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='ItemBack3' image='1800000133' x='337' y='79' w='68' h='68' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='achieveImage' image='1891410023' x='337' y='79' w='68' h='68' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<button id='Get' image='1808500007' x='208' y='207' w='110' h='38' revmsg='true' text_color='#C2B6A0' OnLButtonUp='EscorterNPC:Get'>"
		.."	<edit id='CountDown' x='90' y='8' w='80' h='20' revmsg='true' text_color='#00ff00' text='6s' font='system'/>"
	.." </button>"
	.."	<edit id='TestWndChild_2' x='217' y='179' w='86' h='22' revmsg='true' text_color='#C2B6A0' text='今日还可押运：' font='system'/>"
	.."	<edit id='RemainCount' x='302' y='179' w='83' h='22' revmsg='true' text_color='#C2B6A0' font='system'/>"
	
	.."	<edit id='EXP' x='135' y='126' w='68' h='19' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='BindGold' x='242' y='127' w='68' h='19' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='Achieve' x='347' y='127' w='68' h='19' revmsg='true' text_color='#E4C19F' font='system'/>"
	.." </dialog>"
	.."</form>"
-----------------------------------------面板三:任务失败面板---------------------------
local ui3 = "<form> <dialog OnInit='EscorterNPC:UIInit3' id='EscorterFail' image='1808500020' x='287' y='186' w='516' h='256' visible='false' revmsg='true'>"
	
	.."	<edit id='TestWndChild_2' x='203' y='140' w='86' h='22' revmsg='true' text_color='#C2B6A0' text='今日还可押运：' font='system'/>"
	.."	<edit id='RemainCount' x='288' y='140' w='83' h='22' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='TestWndChild_4' x='95' y='69' w='357' h='25' revmsg='true' text_color='#C2B6A0' text='很遗憾，此次运镖失败，请不要气馁，努力提升自己，寻求' font='system'/>"
	.."	<edit id='TestWndChild_5' x='95' y='103' w='354' h='26' revmsg='true' text_color='#C2B6A0' text='可靠团队，相信你一定可以成长起来！' font='system'/>"
	.."	<button id='Continue' image='1808500011' x='145' y='197' w='110' h='38' revmsg='true' text_color='#C2B6A0' OnLButtonUp='EscorterNPC:Continue'/>"
	.."	<button id='End' image='1808500015' x='284' y='197' w='110' h='38' revmsg='true' text_color='#C2B6A0' OnLButtonUp='EscorterNPC:End'/>"
	.." </dialog>"
	.."</form>"

-----------------------------------------面板四:右边的小窗口---------------------------
local ui4 = "<form> <dialog OnInit='EscorterNPC:UIInit4' id='EscorterRightWnd' image='0' x='-8' y='250' w='16' h='16' revmsg='true'>"
	.."	<edit id='Title' x='65' y='-25' w='111' h='21' revmsg='true' text_color='#C2B6A0' text='押送镖银' font='SIMLI18'/>"
	.."	<image id='FbWndHeadBack' image='1805000002' x='1' y='-27' w='216' h='27' check_point='0' revmsg='true'/>"
	.."	<button id='HideBtn' image='1805000003' x='192' y='-27' w='26' h='27' OnLButtonUp='EscorterNPC.OnHideWndBtn' revmsg='true'/>"
	.."<image id='ContentBack' image='1805000007,1805000009,1805000013,1805000015,1805000008,1805000014,1805000010,1805000012,1805000011' x='0' y='0' w='225' h='290' check_point='0' revmsg='true'/>"
	.."	<edit id='EscorterLevel' x='17' y='17' w='130' h='20' revmsg='true' text_color='#F8B551' text='' font='SIMLI18'/>"
	
	.."	<image id='ItemBack1' image='1800000133' x='17' y='53' w='58' h='58' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='exp' image='1892100043' x='17' y='53' w='58' h='58' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='ItemBack2' image='1800000133' x='80' y='54' w='58' h='58' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='ingot' image='1892100042' x='80' y='54' w='58' h='58' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='ItemBack3' image='1800000133' x='143' y='54' w='58' h='58' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='achieve' image='1891410023' x='143' y='54' w='58' h='58' check_point='0' fitsize='true' revmsg='true'/>"
	
	.."	<edit id='EXP' x='33' y='91' w='52' h='19' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='BindGold' x='94' y='92' w='53' h='19' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='Achieve' x='155' y='92' w='56' h='19' revmsg='true' text_color='#E4C19F' font='system'/>"
	
	.."	<button id='wudi' image='1800600034' x='22' y='127' w='66' h='26' revmsg='true' text_color='#C2B6A0'/>"
	.."	<edit id='TestWndChild_4' x='42' y='173' w='69' h='25' revmsg='true' text_color='#D6A327' text='无敌BUFF' font='system'/>"
	.."	<button id='help' image='1800600038' x='118' y='130' w='66' h='26' revmsg='true' text_color='#C2B6A0'/>"
	.."	<edit id='TestWndChild_1' x='134' y='176' w='69' h='25' revmsg='true' text_color='#D6A327' text='帮会求援' font='system'/>"
	
	
	
	.."	<edit id='restTimes' x='52' y='210' w='118' h='24' revmsg='true' text_color='#00FF00' text='' font='system'/>"
	.."	<button id='Escorter' image='1800000134' x='20' y='245' w='70' h='37' OnLButtonUp='EscorterNPC:Escorter' revmsg='true' text='护 送' text_color='#C2B6A0'/>"
	.."	<button id='GiveUp' image='1800000134' x='117' y='245' w='70' h='37' OnLButtonUp='EscorterNPC:GiveUp' revmsg='true' text='放 弃' text_color='#C2B6A0'/>"
	
	
	.." </dialog>"
	.."</form>"


local DATA = deserialize(FormParam[1])
--msg(type(DATA[1]))
function EscorterNPC.main()
	if DATA[1] == 1 then 
		GenFormByString(ui1)
	elseif  DATA[1] == 2 then 
		GenFormByString(ui2)
	elseif  DATA[1] == 3 then 
		GenFormByString(ui3)
	elseif  DATA[1] == 4 then 
		GenFormByString(ui4)
	end
end

--UI Logic Code Start
function EscorterNPC:UIInit(_Handle)
	self._wnd = _Handle;
	for i = 1, 5 do 
		local _handle = GetWindow(0, "EscorterNPC,backimg"..i)
		if _handle ~= 0 then 
			GUI:WndSetSizeM(_handle,152,324)
			GUI:ImageSetTransfrom(_handle, 10000, 10000, 180)
			
		end
	end
	UI:Lua_ShowTypeMsg(3, "123")
	--[[
	local refresh_remain = tonumber(deserialize(as3.tolua(FormParam[1])));
	local remain = tonumber(deserialize(as3.tolua(FormParam[2])));
	--]]
	local _handle = GUI:WndFindChildM(_Handle, "double")
	if _handle ~= 0 then 
		local IsInCampaign = DATA[2];
		--IsInCampaign = 1
		if IsInCampaign == 0 then 
			GUI:EditSetTextColor(_handle, 0xFFFF0000)
			GUI:EditSetTextM(_handle, "注意，当前不是双倍护送时间！");
		else
			GUI:EditSetTextColor(_handle, 0xFF00FF00)
			GUI:EditSetTextM(_handle, "现在是双倍奖励时间！");
		end
	end
	--msg(''..DATA[0])
	self.AWARD = DATA[3];
	--msg(serialize(DATA[3]))
	local index = DATA[4] + 1;
	self.index = index;
	local AWARD_LV = self.AWARD[1][index]; --奖励
	_handle = GUI:WndFindChildM(_Handle, "EXP")
	if _handle ~= 0 then 
		GUI:EditSetTextColor(_handle, 0xFF00FF00)
		GUI:EditSetTextM(_handle, "经验："..AWARD_LV[1]);
	end
	_handle = GUI:WndFindChildM(_Handle, "BindGold")
	if _handle ~= 0 then 
		GUI:EditSetTextColor(_handle, 0xFF00FF00)
		GUI:EditSetTextM(_handle, "绑定金币："..AWARD_LV[2]);
	end
	_handle = GUI:WndFindChildM(_Handle, "Achieve")
	if _handle ~= 0 then 
		GUI:EditSetTextColor(_handle, 0xFF00FF00)
		GUI:EditSetTextM(_handle, "功勋："..AWARD_LV[3]);
	end
	local deposit = self.AWARD[2][index]; --押金
	_handle = GUI:WndFindChildM(_Handle, "Deposit")
	if _handle ~= 0 then 
		GUI:EditSetTextColor(_handle, 0xFF00FF00)
		GUI:EditSetTextM(_handle, ""..deposit);
	end
	
	local refresh_remain = DATA[4];
	local remain = DATA[5];
	_handle = GUI:WndFindChildM(_Handle, "SumCount")
	if _handle ~= 0 then 
		if tonumber(refresh_remain) <= 0 then
			GUI:EditSetTextColor(_handle, 0xFFFF0000)
		else
			GUI:EditSetTextColor(_handle, 0xFF00FF00)
		end
		GUI:EditSetTextM(_handle, refresh_remain.."/3次");
	end
	_handle = GUI:WndFindChildM(_Handle, "CompCount")
	if _handle ~= 0 then 
		if tonumber(remain) >= 3 then
			GUI:EditSetTextColor(_handle, 0xFFFF0000)
		else
			GUI:EditSetTextColor(_handle, 0xFF00FF00)
		end
		GUI:EditSetTextM(_handle, remain.."/3");
	end
	--[[
	_handle = GetWindow(_Handle, "ComboBox")
	if _handle ~= 0 then 
		msg('ComboBox')
		GUI:ComboBoxClear(_handle)
		GUI:ComboBoxAddString(_handle, "二级镖车", 0, 0)
		GUI:ComboBoxAddString(_handle, "三级镖车", 1, 0)
		GUI:ComboBoxAddString(_handle, "四级镖车", 2, 0)
		GUI:ComboBoxAddString(_handle, "五级镖车", 3, 0)
		GUI:ComboBoxSetCurSelect(_handle, 0)
	end
	--]]
end

function EscorterNPC:Refresh()
	--UI:Lua_ShowTypeMsg(7, "123")
	UI:Lua_SubmitForm("押镖表单", "Refresh", "")
end

function EscorterNPC:Update(level)
	--msg("EscorterNPC:Update")
	index = tonumber(level) + 1;
	self.index = index;
	local AWARD_LV = self.AWARD[1][index]; --奖励
	local _handle = GUI:WndFindChildM(self._wnd, "EXP")
	if _handle ~= 0 then 
		GUI:EditSetTextColor(_handle, 0xFF00FF00)
		GUI:EditSetTextM(_handle, "经验："..AWARD_LV[1]);
	end
	_handle = GUI:WndFindChildM(self._wnd, "BindGold")
	if _handle ~= 0 then 
		GUI:EditSetTextColor(_handle, 0xFF00FF00)
		GUI:EditSetTextM(_handle, "绑定金币："..AWARD_LV[2]);
	end
	_handle = GUI:WndFindChildM(self._wnd, "Achieve")
	if _handle ~= 0 then 
		GUI:EditSetTextColor(_handle, 0xFF00FF00)
		GUI:EditSetTextM(_handle, "功勋："..AWARD_LV[3]);
	end
	local deposit = self.AWARD[2][index]; --押金
	_handle = GUI:WndFindChildM(self._wnd, "Deposit")
	if _handle ~= 0 then 
		GUI:EditSetTextColor(_handle, 0xFF00FF00)
		GUI:EditSetTextM(_handle, ""..deposit);
	end
	
	
	
end

function EscorterNPC:Begin()
	UI:Lua_SubmitForm("押镖表单", "Begin", "")
end

function EscorterNPC.msg1(str)
	local hand = GetWindow(nil,"EscorterNPC,Refresh")
	if hand ~= 0 then 
		window_msg_up(hand,str,-77,-25,60,MakeARGB(255, 255, 0, 0),1.5)
	end
end

function EscorterNPC.msg2(str)
	local hand = GetWindow(nil,"EscorterNPC,Begin")
	if hand ~= 0 then 
		window_msg_up(hand,str,-77,-25,60,MakeARGB(255, 255, 0, 0),1.5)
	end
end



function EscorterNPC:CloseWnd()
	WndClose(self._wnd);
end

--------------------------------------------------------------------------------------------
--------------------------面板二:运镖成功面板逻辑-----------------------------
--UI Logic Code Start
function EscorterNPC:UIInit2(_Handle)
	--msg('UIInit2')
	self._Wnd2 = _Handle;
	CenterWnd(_Handle);
	GUI:WndSetVisible(_Handle, true);
	--[[
	local refresh_remain = tonumber(deserialize(as3.tolua(FormParam[1])));
	local remain = tonumber(deserialize(as3.tolua(FormParam[2])));
	--]]
	
	local AWARD = DATA[2];
	local _handle = GUI:WndFindChildM(_Handle, "EXP")
	if _handle ~= 0 then 
		GUI:EditSetTextColor(_handle, 0xFF00FF00)
		GUI:EditSetTextM(_handle, ""..AWARD[1]);
	end
	_handle = GUI:WndFindChildM(_Handle, "BindGold")
	if _handle ~= 0 then 
		GUI:EditSetTextColor(_handle, 0xFF00FF00)
		GUI:EditSetTextM(_handle, ""..AWARD[2]);
	end
	_handle = GUI:WndFindChildM(_Handle, "Achieve")
	if _handle ~= 0 then 
		GUI:EditSetTextColor(_handle, 0xFF00FF00)
		GUI:EditSetTextM(_handle, ""..AWARD[3]);
	end
	
	local remain = DATA[3];
	_handle = GUI:WndFindChildM(_Handle, "RemainCount")
	if _handle ~= 0 then 
		if remain <= 0 then
			GUI:EditSetTextColor(_handle, 0xFFFF0000)
		else
			GUI:EditSetTextColor(_handle, 0xFF00FF00)
		end
		GUI:EditSetTextM(_handle, remain.."");
	end
	
	self.count = 6
	if GUI:WndAddTimerBrief(_Handle, 1000, "EscorterNPC:UpdataPerSecond") then
		
	end
	
	
end

function EscorterNPC:UpdataPerSecond()
	--msg("count")
	self.count = self.count - 1
	if self.count >= 0 then 
		EditSetText(self._Wnd2, "Get,CountDown", "".. self.count .. "s");
	end
	if self.count <= 0 then 
		self:Get();
	end
end


function EscorterNPC:Get()
	UI:Lua_SubmitForm("押镖表单", "GetAward", "")
	GUI:WndClose(self._Wnd2)
end

--------------------------------------------------------------------------------------------
--------------------------运镖失败面板逻辑-----------------------------
--UI Logic Code Start
function EscorterNPC:UIInit3(_Handle)
	--msg('UIInit2')
	self._Wnd3 = _Handle;
	CenterWnd(_Handle);
	GUI:WndSetVisible(_Handle, true);
	--[[
	local refresh_remain = tonumber(deserialize(as3.tolua(FormParam[1])));
	local remain = tonumber(deserialize(as3.tolua(FormParam[2])));
	--]]
	local remain = DATA[2];
	local _handle = GUI:WndFindChildM(_Handle, "RemainCount")
	if _handle ~= 0 then 
		if remain <= 0 then
			GUI:EditSetTextColor(_handle, 0xFFFF0000)
			local _hand = GetWindow(_Handle, "Continue")
			if _hand ~= 0 then 
				GUI:WndSetEnableM(_hand, false)
			end
		else
			GUI:EditSetTextColor(_handle, 0xFF00FF00)
		end
		GUI:EditSetTextM(_handle, remain.."");
	end
	
	
end



function EscorterNPC:Continue()
	GUI:WndClose(self._Wnd3);
	UI:Lua_SubmitForm("押镖表单", "Continue", "")
end

function EscorterNPC:End()
	GUI:WndClose(self._Wnd3)
	
end


function EscorterNPC:ChangeWnd()
	GUI:WndClose(self._wnd);
	local taskWnd = GetWindow(0, "GameMainInterface,TaskWindow")
	if taskWnd ~= 0 then
		GUI:WndSetVisible(taskWnd, false)
	end
	CL:AutoRunByPos('巫山城',222,258);
end

function EscorterNPC:RestoreWnd()
	local _handle = GetWindow(0, "EscorterRightWnd")
	if _handle ~= 0 then 
		GUI:WndClose(_handle);
	end
	if TaskWindow._hideWnd ~= 0 then
		GUIWndSetVisible(TaskWindow._hideWnd, false)
	end
	OnScreenSizeChange(taskWnd,TaskWindow._hideWnd,208,31)
	local taskWnd = GetWindow(0, "GameMainInterface,TaskWindow")
	if taskWnd ~= 0 then
		GUI:WndSetVisible(taskWnd, true)
	end
end


--------------------------------------------------------------------------------------------
----------------------------右边的小窗口面板逻辑---------------------------
--UI Logic Code Start

function EscorterNPC:UIInit4(_Handle)
	self._wnd4 = _Handle
	self.times4 = 600;
	local _GUIHandle = 0
    local sX = CL:GetScreenWidth()
    GUI:WndSetPosM(_Handle, sX-208, 250)

	local STR = {"一级镖车","二级镖车","三级镖车","四级镖车","五级镖车",}
	local index = DATA[4];
	--local COLOR = {0xFF00FF00}
	if index then 
		local _handle = GUI:WndFindChildM(_Handle, "EscorterLevel")
		if _handle ~= 0 then 
			GUI:EditSetTextColor(_handle, 0xFF00FF00)
			local IsInCampaign = DATA[2];
			IsInCampaign = 1
			if IsInCampaign == 0 then 
				GUI:EditSetTextM(_handle, ""..STR[index]);
			else
				GUI:EditSetTextM(_handle, ""..STR[index].."（双倍）");
			end
		end
	end
	
	local AWARD = DATA[3];
	local _handle = GUI:WndFindChildM(_Handle, "EXP")
	if _handle ~= 0 then 
		GUI:EditSetTextColor(_handle, 0xFF00FF00)
		GUI:EditSetTextM(_handle, ""..AWARD[1]);
	end
	_handle = GUI:WndFindChildM(_Handle, "BindGold")
	if _handle ~= 0 then 
		GUI:EditSetTextColor(_handle, 0xFF00FF00)
		GUI:EditSetTextM(_handle, ""..AWARD[2]);
	end
	_handle = GUI:WndFindChildM(_Handle, "Achieve")
	if _handle ~= 0 then 
		GUI:EditSetTextColor(_handle, 0xFF00FF00)
		GUI:EditSetTextM(_handle, ""..AWARD[3]);
	end
	
	if GUI:WndAddTimerBrief(_Handle, 1000, "EscorterNPC:Timeupdata4") then    --设置定时器
		--DailyFbWnd.time_id = as3.tolua(LuaRet)
	end
	
end

function EscorterNPC:Timeupdata4()
	--每过一秒调用更新函数
	--msg(type(self.times4))
	if self.times4 <= 0 then 
		UI:Lua_SubmitForm("押镖表单", "TimeOut", "")
		GUI:WndClose(self._wnd4);
	else
		self.times4 = self.times4 - 1      
	end
	
	local minutes = math.floor(self.times4/60)
	if minutes < 10 then 
		minutes = '0'..minutes
	end
	
	local seconds = self.times4%60
	if seconds < 10 then 
		seconds = '0'..seconds
	end
	
	local time_str = minutes..':'..seconds
	
	local handle = GetWindow(self._wnd4, "restTimes")
	if handle ~= 0 then	
		GUI:EditSetTextM(handle, "剩余时间 "..time_str)
	end

end

function EscorterNPC:Escorter()
	
	CL:AutoRunByPos('巫山城',222,258);
	
end

function EscorterNPC:GiveUp()
	UI:Lua_SubmitForm("押镖表单", "TimeOut", "")
	GUI:WndClose(self._wnd4);
end


function EscorterNPC:SendFamilyMsg(str)
	UI:Lua_ShowTypeMsg(3, str)
end



EscorterNPC.main()







