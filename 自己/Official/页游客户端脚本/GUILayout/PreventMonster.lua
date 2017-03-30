PreventMonster ={}
local ui = "<form> <dialog OnInit='PreventMonster.UIInit' id='PreventMonster' image='1806100012' x='292' y='73' w='384' h='505' esc_close='true' drag='true' visible='false' revmsg='true'>"
	.."	<image id='title' image='1805500039' x='164' y='12' w='126' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<edit id='edit1' x='49' y='74' w='276' h='35' revmsg='true' text_color='#00ff00' text='副本条件：' font='SIMLI18'/>"
	.."	<edit id='text2' x='74' y='303' w='276' h='28' revmsg='true' text_color='#E4C19F' text='3、击杀弓箭手可以使其化身为更厉害的法神' font='system'/>"
	.."	<edit id='text1' x='74' y='275' w='275' h='28' revmsg='true' text_color='#E4C19F' text='2、摆放弓箭手或法神击杀怪物即可获得经验' font='system'/>"
	.."	<button id='closeBtn' image='1805900080' x='341' y='2' w='34' h='38' OnLButtonUp='PreventMonster.CloseWnd' revmsg='true'/>"
	.."	<edit id='map1' x='86' y='112' w='219' h='28' text='进入等级：' revmsg='true' font='system' text_color='#E4C19F' />"
	.."	<edit id='map2' x='164' y='112' w='151' h='28' font='system' text='66级' text_color='#00ff00' />"
	.."	<edit id='map3' x='86' y='140' w='180' h='28' text='剩余任务次数：' revmsg='true' font='system' text_color='#E4C19F' />"
	.."	<edit id='counts' x='175' y='140' w='144' h='28' text='' revmsg='true' font='system' text_color='#00ff00'/>"
	.."	<edit id='map5' x='86' y='168' w='219' h='28' text='副本时间限制：' revmsg='true' font='system' text_color='#E4C19F' />"
	.."	<edit id='duration' x='175' y='168' w='155' h='28' text='20分钟' revmsg='true' font='system' text_color='#00ff00' />"
	.."	<edit id='map7' x='53' y='218' w='219' h='28' text='副本介绍：' revmsg='true' font='system' text_color='#E4C19F' />"
	.."	<edit id='map8' x='74' y='247' w='275' h='28' text='1、镇魔塔防产出海量经验' revmsg='true' font='system' text_color='#E4C19F' />"
	.."	<edit id='text3' x='74' y='331' w='276' h='28' revmsg='true' text_color='#E4C19F' text='4、完成镇魔塔防最高可获得经验：3亿' font='system'/>"
	.."	<image id='TestWndChild_0' image='1806100013' x='42' y='385' w='299' h='2' revmsg='true'/>"
	.."	<button id='btn' image='1800000150' x='149' y='419' w='88' h='31' revmsg='true' text='领取任务' OnLButtonUp='PreventMonster.Accept' text_color='#C2B6A0'/>"
	.." </dialog>"
	.."</form>"
	
---------------------------------------------------下面是#SELECT#领取奖励#SELECTEND#面板----------------------------------------

local ui_2 = "<form> <dialog OnInit='PreventMonster.UIInit2' id='PreventMonster2' image='1806100012' x='292' y='73' w='384' h='505' esc_close='true' drag='true' visible='false' revmsg='true'>"
	.."	<image id='title' image='1805500039' x='164' y='12' w='126' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='closeBtn' image='1805900080' x='341' y='2' w='34' h='38' OnLButtonUp='PreventMonster.CloseWnd2' revmsg='true'/>"
	.."	<edit id='edit1' x='49' y='65' w='276' h='35' revmsg='true' text_color='#00FF00' text='本次副本统计：' font='SIMLI18'/>"
	.."	<edit id='map1' x='76' y='107' w='219' h='28' revmsg='true' text_color='#E4C19F' text='获得经验：' font='system'/>"
	.."	<edit id='getExp' x='154' y='107' w='151' h='28' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<edit id='map3' x='76' y='143' w='180' h='28' revmsg='true' text_color='#E4C19F' text='损失经验：' font='system'/>"
	.."	<edit id='lostExp' x='154' y='143' w='144' h='28' revmsg='true' text_color='#EE0000' font='system'/>"
	.."	<image id='TestWndChild_0' image='1806100013' x='42' y='178' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<edit id='map7' x='53' y='192' w='219' h='28' revmsg='true' text_color='#00FF00' text='奖励领取：' font='SIMLI18'/>"
	.."	<edit id='map5' x='74' y='234' w='219' h='28' revmsg='true' text_color='#E4C19F' text='1倍经验' font='system'/>"
	.."	<edit id='multiple1' x='128' y='234' w='155' h='28' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<richedit id='richedit1' x='239' y='241' w='74' h='28' text='' param='1' revmsg='true' font='system'/>"
	.."	<edit id='map6' x='74' y='273' w='219' h='28' revmsg='true' text_color='#E4C19F' text='2倍经验' font='system'/>"
	.."	<edit id='multiple2' x='128' y='273' w='155' h='28' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<richedit id='richedit2' x='239' y='280' w='74' h='28' text='' param='2'  revmsg='true' font='system'/>"
	.."	<edit id='map8' x='74' y='312' w='219' h='28' revmsg='true' text_color='#E4C19F' text='3倍经验' font='system'/>"
	.."	<edit id='multiple3' x='128' y='312' w='155' h='28' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<richedit id='richedit3' x='239' y='319' w='74' h='28' text='' param='3' revmsg='true' font='system'/>"
	.."	<edit id='map9' x='74' y='351' w='219' h='28' revmsg='true' text_color='#E4C19F' text='4倍经验' font='system'/>"
	.."	<edit id='multiple4' x='128' y='351' w='155' h='28' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<richedit id='richedit4' x='239' y='358' w='74' h='28' text='' param='4' revmsg='true' font='system'/>"
	.."	<edit id='map10' x='74' y='389' w='219' h='28' revmsg='true' text_color='#E4C19F' text='5倍经验' font='system'/>"
	.."	<edit id='multiple5' x='128' y='390' w='155' h='28' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<richedit id='richedit5' x='239' y='397' w='74' h='28' text='' param='5'  revmsg='true' font='system'/>"
	.."	<edit id='map13' x='74' y='427' w='219' h='28' revmsg='true' text_color='#E4C19F' text='8倍经验' font='system'/>"
	.."	<edit id='multiple6' x='128' y='427' w='155' h='28' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<richedit id='richedit6' x='239' y='434' w='74' h='28' text='' param='6' revmsg='true' font='system'/>"
	.." </dialog>"
	.."</form>"

---------------------------------------------------下面是 滚动经验值界面 面板----------------------------------------
local ui_3 = "<form> <dialog OnInit='PreventMonster3:UIInit3' id='PreventMonster3' image='' x='454' y='217' w='286' h='51' esc_close='true' drag='true' revmsg='true' visible='false'>"
	.."	<image id='animate' type='animate' image='3020000000'  x='-5' y='-85' w='79' h='31' enable='false' revmsg='false'/>"
	.."	<image id='TestWndChild_0' image='1808300002' x='0' y='0' w='286' h='51' check_point='0' revmsg='false' enable='false' />"
	.."	<image id='TestWndChild_1' image='1808300011' x='104' y='-15' w='79' h='31' check_point='0' revmsg='false' enable='false' />"
	.."	<image id='getExp1' image='1808300013' x='72' y='17' w='15' h='21' check_point='0' revmsg='true'/>"
	.."	<image id='getExp2' image='1808300013' x='89' y='17' w='15' h='21' check_point='0' revmsg='true'/>"
	.."	<image id='getExp3' image='1808300013' x='107' y='17' w='15' h='21' check_point='0' revmsg='true'/>"
	.."	<image id='getExp4' image='1808300013' x='125' y='17' w='15' h='21' check_point='0' revmsg='true'/>"
	.."	<image id='getExp5' image='1808300013' x='142' y='17' w='15' h='21' check_point='0' revmsg='true'/>"
	.."	<image id='getExp6' image='1808300013' x='159' y='17' w='15' h='21' check_point='0' revmsg='true'/>"
	.."	<image id='getExp7' image='1808300013' x='178' y='17' w='15' h='21' check_point='0' revmsg='true'/>"
	.."	<image id='getExp8' image='1808300013' x='194' y='17' w='15' h='21' check_point='0' revmsg='true'/>"
	.."	<image id='getExp9' image='1808300013' x='211' y='17' w='15' h='21' check_point='0' revmsg='true'/>"
	.." </dialog>"
	.."</form>"


PreventMonster.RESOURCE = 
{
	[0] = 1804600045,
	1804600046, 1804600047, 1804600048, 1804600049, 1804600050, 1804600051, 1804600052, 1804600053, 1804600054, 
	
}

function PreventMonster.main()
	local index = tonumber(deserialize(as3.tolua(FormParam[1])));
	--msg(''..index)
	if index == 1 then 
		local _handle = GetWindow(0, "PreventMonster");
		if _handle ~= 0 then	
			GUIWndClose(_handle);
		else
			GenFormByString(ui)
		end
	elseif index == 2 then
		local _handle = GetWindow(0, "PreventMonster2");
		if _handle ~= 0 then	
			GUIWndClose(_handle);
		else
			GenFormByString(ui_2);
		end
	elseif index == 3 then
		---------------------------------------------------下面是 滚动经验值界面 面板----------------------------------------
		PreventMonster3 = {}
		function PreventMonster3:UIInit3(_this)
			CenterWnd(_this);
			GUI:WndSetVisible(_this, true);
			PreventMonster3.Handle3 = _this;
			self._wnd = _this;
			local _handle = GetWindow(_this, "animate");
			if _handle ~= 0 then	
				GUIImageSetAnimateEnable(_handle, true, 150);
				WndMoveToParentBottom(_this, "animate");
			end
			--[[
			WndMoveToParentTop(_this, "TestWndChild_0");
			WndMoveToParentTop(_this, "TestWndChild_1");
			--]]
			local getExp = tostring(deserialize(as3.tolua(FormParam[2])));
			self.getExp = getExp
			self.num = #getExp;
			
			for i = 1, 9 do
				if i <= #getExp then
					local _handle = GetWindow(_this, "getExp"..i);
					if _handle ~= 0 then 
						GUI:WndSetVisible(_handle, true);
					end
				else
					local _handle = GetWindow(_this, "getExp"..i);
					if _handle ~= 0 then 
						GUI:WndSetVisible(_handle, false);
					end
				end
			end
			self.count = 0;
			self.index = 0;
			GUIWndAddTimerBrief(_this, 150, "PreventMonster3:RollNumber")  --设置定时器
			--CLAddDelayTask("PreventMonster3.RollNumber()", 300, 10);   
		end
		
		function PreventMonster3:RollNumber()
			self.count = self.count + 1;
			if  self.count <= 15 then
				for i = 1, self.num do 
					local random = math.random(0, 9);
					ImageSetImageID(self._wnd, "getExp"..i, PreventMonster.RESOURCE[tonumber(random)]);
				end	
			elseif self.count <= 30 then 
				if self.index ~= 1 then 
					self.index = 1;
					for i = 1, #self.getExp do 
						local index = string.sub(self.getExp, i, i);
						ImageSetImageID(self._wnd, "getExp"..i, PreventMonster.RESOURCE[tonumber(index)]);
					end
				end
			else
				GUIWndClose(self._wnd)
			end
			
		end
		
		GenFormByString(ui_3)
	end
end

---------------------------------------------------下面是 领取任务界面 面板----------------------------------------
--UI Logic Code Start
function PreventMonster.UIInit(_Handle)
	CenterWnd(_Handle);
	GUI:WndSetVisible(_Handle, true);
	PreventMonster.Handle = _Handle;
	PreventMonster.count = tonumber(deserialize(as3.tolua(FormParam[2])));
	--msg(''..PreventMonster.count)
	if PreventMonster.count <= 0 then 
		PreventMonster.count = 0
	end
	
	EditSetText(_Handle, "counts", "".. PreventMonster.count .. "次");
	if PreventMonster.count <= 0 then 
		local _handle = GetWindow(_Handle, "btn");
		if _handle ~= 0 then 
			GUI:WndSetEnableM(_handle, "false");
		end
	end

end

function PreventMonster.Accept()
	UI:Lua_SubmitForm("封魔副本表单", "main", "")
end

function PreventMonster.msg1(str)
	local hand = GetWindow(0,"PreventMonster,btn")
	if hand ~= 0 then 
		window_msg_up(hand,str, -70, 0, 60, MakeARGB(255, 255, 0, 0),1.5)
	end
end

function PreventMonster.CloseWnd()
	
	GUIWndClose(PreventMonster.Handle)
	--PreventMonster = nil
end




---------------------------------------------------下面是领取奖励面板逻辑代码----------------------------------------

function PreventMonster.UIInit2(_this)
	local grade = tonumber(deserialize(as3.tolua(FormParam[4])));
	for i = 1, 6 do 
		local _handle = GetWindow(_this, "richedit"..i);
		if i <= grade then 
			GUI:WndSetEnableM(_handle, true);
			GUIRichEditAppendString(_handle, "#SELECT#领取奖励#SELECTEND#")
			GUIWndRegistScript(_handle, RDWndBaseCL_mouse_lbUp, "PreventMonster.Get")
			if i == grade then 
				WndAddEffect(_handle, "", 3020100300, -4, -5, 150, 0);
			end
		else
			--GUI:WndSetEnableM(_handle, false);
			GUIRichEditAppendString(_handle, "#COLORCOLOR_GRAY#领取奖励#COLORCOLOREND#");
		end
	end
	local hint = 
	{
		"免费领取",
		"<font color='#9D8972'>2倍领取,消耗500元宝</font>",
		"<font color='#9D8972'>3倍领取（VIP1），消耗1100元宝</font>",
		"<font color='#9D8972'>4倍领取（VIP2），消耗1800元宝</font>",
		"<font color='#9D8972'>5倍领取（VIP3），消耗2600元宝</font>",
		"<font color='#9D8972'>8倍领取（VIP4），消耗5000元宝</font>",
	}	
	PreventMonster.Handle2 = _this;
	CenterWnd(_this);
	GUI:WndSetVisible(_this, true);
	local getExp = tonumber(deserialize(as3.tolua(FormParam[2])));
	local lostExp = tonumber(deserialize(as3.tolua(FormParam[3])));
	EditSetText(_this, "getExp", "".. getExp);
	EditSetText(_this, "lostExp", "".. lostExp);
	for i = 1, 6 do 
		if i == 6 then 
			local total = getExp * 8;
			EditSetText(_this, "multiple"..i, "x".. total);
			
		else
			local total = getExp * i;
			EditSetText(_this, "multiple"..i, "x".. total);
		end
		local _handle = GetWindow(_this, "richedit"..i);
		if _handle ~= 0 then 
			GUIWndSetHint(_handle, hint[i]);
		end
	end
	
	
end


function PreventMonster.Get(_handle)
	local index = GUIWndGetParam(_handle);
	UI:Lua_SubmitForm("封魔副本表单","GetAward",""..index);
end

function PreventMonster.YBMsg()
	luaMsgBox.new("元宝", "    很抱歉，您的元宝不足", {"前往充值", "取消"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
end

function PreventMonster.msg(index, str)
	index = tonumber(index);
	local hand = GetWindow(0,"PreventMonster2,multiple"..index)
	if hand ~= 0 then 
		window_msg_up(hand,str, 20, 0, 60, MakeARGB(255, 255, 0, 0),1.5)
	end
end

function PreventMonster.CloseWnd2()
	GUIWndClose(PreventMonster.Handle2)
end


PreventMonster.main()