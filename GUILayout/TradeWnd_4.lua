TradeWnd_4 = {}
function TradeWnd_4.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"TradeWnd_4",0,25,99)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,576, 442)
		
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"backGround",1800000163,3,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,16, 16)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"column1",28,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"编号")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"column2",94,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"领取奖励条件")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"column3",229,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"领取状态")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"column4",327,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"奖励金额")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"column5",412,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"点击领取")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text4",9,385,282,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4286185269)
		GUI:EditSetTextM(_GUIHandle,"1、一个真正能让玩家赚钱的服，限时奖励倒计时：")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"remainTime",280,384,84,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4279689899)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"text0",9,410,420,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"text1",9,429,420,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"pageEditImage",1806700027,400,386)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,75, 18)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"pageEdit",427,382,40,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291736418)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pgUpBtn",1806700029,375,385)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "TradeWnd_4._pageUp")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,22, 22)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pgDownBtn",1806700033,478,385)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "TradeWnd_4._pageDown")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,22, 22)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	
	TradeWnd_4.UIInit(_Parent)
end

--UI Logic Code Start


function TradeWnd_4.UIInit(_Parent)
	GUI:WndSetIsESCClose(_Parent, false);
	TradeWnd_4.nowPage = 1
	TradeWnd_4._wnd = _Parent
	GUI:WndSetFlagsM(TradeWnd_4._wnd, flg_wndBase_autoTop)
	local _GUIHandle = GetWindow(_Parent, "backGround");
	if _GUIHandle ~= 0 then 
		GUI:WndSetSizeM(_GUIHandle,502, 383)
		GUI:ImageSetAroundImage(_GUIHandle, 1800000163,1800000164,1800000165,1800000166,1800000171,1800000167,1800000168,1800000169,1800000170)
	end
	
	for i = 1, 5 do 
		_GUIHandle = GetWindow(_Parent, "column"..i);
		if _GUIHandle ~= 0 then 
			GUI:EditSetFontM(_GUIHandle, "SIMLI");
			GUI:WndSetTextColorM(_GUIHandle, mkcolor("GREENG"));
		end
	end
	
	local offx = 4;
	local offy = 39;
	for i = 1, 10 do 
		
		local wnd = GUI:ImageCreate(_Parent,"playerBtn"..i,1806900002, offx, offy + (i-1)*34 )
		if _GUIHandle ~= 0 then
		
			GUI:WndRegistScript(wnd,1003, "TradeWnd_4._BtnLC")
			GUI:WndSetParam(wnd, 1)
			GUI:WndSetSizeM(wnd,499, 36)
			GUI:ImageSetParam(wnd, i)
			GUI:ImageSetCheckPoint(wnd, 0)
		end
		
		_GUIHandle = GUI:ImageCreate(wnd,"BtnSelected",1806900003,0,0)
		if _GUIHandle ~= 0 then
		
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetSizeM(_GUIHandle,499, 36)
			GUI:ImageSetParam(_GUIHandle, 0)
			GUI:ImageSetCheckPoint(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:EditCreate(wnd,"ID",2,3,82,30)
		if _GUIHandle ~= 0 then
			-- GUI:WndSetTextColorM(_GUIHandle, mkcolor("GREENG"))
			GUI:WndSetTextColorM(_GUIHandle, 4293181855)
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:EditCreate(wnd,"equipName",80,3,120,30)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, 4294705574)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		_GUIHandle = GUI:EditCreate(wnd,"status",200,3,120,30)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, 0xFFB5E61D)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		_GUIHandle = GUI:EditCreate(wnd,"price",300,3,120,30)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, 0xFFFF4800)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		

		
		
		_GUIHandle = GUI:RichEditCreate(wnd,"operation",420,11,120,30)
		if _GUIHandle ~= 0 then
			
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TradeWnd_4._Operate")
			GUI:RichEditSetEditEnable(_GUIHandle, false);
		end
	end
	_GUIHandle = GetWindow(_Parent, "text0");
	if _GUIHandle ~= 0 then 
		GUI:RichEditAppendString(_GUIHandle, "#COLORCOLOR_GREENG#2、以上奖励#COLORCOLOR_RED#【打到就赚到】#COLORCOLOR_GREENG#，数量有限，限制开区#COLORCOLOR_RED#【24小时内】#COLORCOLOR_GREENG#可领取#COLOREND#");
	end
	_GUIHandle = GetWindow(_Parent, "text1");
	if _GUIHandle ~= 0 then 
		GUI:RichEditAppendString(_GUIHandle, "#COLORCOLOR_GREENG#3、领取奖励时#COLORCOLOR_RED#【会收走装备】#COLORCOLOR_GREENG#，一切拼起步速度，谁先打到谁就额外赚到！#COLOREND#");
	end
	UI:Lua_SubmitForm("寄售表单", "TimeLimitRecycle_Main", "");
end

function TradeWnd_4._BtnLC(h)
	if TradeWnd_4._saveHanle ~= 0 and TradeWnd_4._saveHanle ~= nil then 
		WndSetVisible(TradeWnd_4._saveHanle, "BtnSelected", false);
	end
	WndSetVisible(h, "BtnSelected", true);
	TradeWnd_4._saveHanle = h;
end


function TradeWnd_4:Updata(DATA)
	remainTime = tonumber(DATA[1])
	if remainTime <= 0 then
		self.gameOver = true;
		local _handle = GetWindow(self._wnd, "remainTime")
		if _handle ~= 0 then 
			GUI:EditSetTextM(_handle, "0天0时0分0秒")
		end
		for i = 1, 10 do 
			local _handle = GetWindow(self._wnd, "playerBtn"..i..",operation");
			if _handle ~= 0 then 
				GUI:WndSetCanRevMsg(_handle, false);
				GUI:RichEditAppendString(_handle, "#SELECT##COLORCOLOR_GRAY#时限已到#COLOREND##SELECTEND#");
			end
		end 
	else
		self.remainTime = remainTime
		local remainTime_str = GetLeaveTimeString(self.remainTime)
		local _handle = GetWindow(self._wnd, "remainTime")
		if _handle ~= 0 then 
			GUI:EditSetTextM(_handle, remainTime_str)
			
		end
		GUI:WndAddTimerBrief(self._wnd, 1000, "TradeWnd_4:RemainTimeUpdata")
	end
	self.DATA = DATA[2];
	self.page = math.ceil(#self.DATA/10);
	self:newPage();
	
end

function TradeWnd_4:RemainTimeUpdata()
	if self.remainTime <= 0 then 
		
	else
		self.remainTime = self.remainTime - 1
		local remainTime_str = GetLeaveTimeString(self.remainTime)
		local _handle = GetWindow(self._wnd, "remainTime")
		if _handle ~= 0 then 
			GUI:EditSetTextM(_handle, remainTime_str)
		end
	end
end

function TradeWnd_4._pageUp()
	if TradeWnd_4.nowPage <= 1 then 
		return
	end
	TradeWnd_4.nowPage = TradeWnd_4.nowPage - 1
	TradeWnd_4:newPage()
end

function TradeWnd_4._pageDown()
	if TradeWnd_4.nowPage >= TradeWnd_4.page then 
		return
	end
	TradeWnd_4.nowPage = TradeWnd_4.nowPage + 1
	TradeWnd_4:newPage()
end

function TradeWnd_4:newPage()
	EditSetTextM(self._wnd, "pageEdit", self.nowPage.." / "..self.page);
	local index = (self.nowPage - 1) * 10
	for i = 1, 10 do 
		local _GUIHandle = GetWindow(self._wnd, "playerBtn"..i..",operation");
		if _GUIHandle ~= 0 then 
			GUI:RichEditClear(_GUIHandle);
		end 
		index = index + 1
		local data = self.DATA[index];
		if data then 
			EditSetTextM(self._wnd, "playerBtn"..i..",ID", "NO."..index);
			EditSetTextM(self._wnd, "playerBtn"..i..",equipName", ""..self.DATA[index].desc);
			EditSetTextM(self._wnd, "playerBtn"..i..",status", "剩余 1 名额");
			EditSetTextM(self._wnd, "playerBtn"..i..",price", ""..self.DATA[index]["val"].." RMB点");
			local _GUIHandle = GetWindow(self._wnd, "playerBtn"..i..",operation");
			if _GUIHandle ~= 0 then 
				if self.gameOver then 
					GUI:WndSetCanRevMsg(_GUIHandle, false);
					GUI:RichEditAppendString(_GUIHandle, "#SELECT##COLORCOLOR_GRAY#时限已到#COLOREND##SELECTEND#");
				else
					GUI:WndSetCanRevMsg(_GUIHandle, true);
					GUI:RichEditAppendString(_GUIHandle, "#SELECT##COLORCOLOR_YELLOW#确认回收#COLOREND##SELECTEND#");
				end
				
			end 
		else	
			EditSetTextM(self._wnd, "playerBtn"..i..",ID", "");
			EditSetTextM(self._wnd, "playerBtn"..i..",equipName", "");
			EditSetTextM(self._wnd, "playerBtn"..i..",price", "");
			EditSetTextM(self._wnd, "playerBtn"..i..",status", "");
		end 
	end
	
end

function TradeWnd_4._Operate(_Handle)
	local param = GUI:WndGetParam(_Handle);
	local index = (TradeWnd_4.nowPage - 1) * 10 + param
	UI:Lua_SubmitForm("寄售表单", "TimeLimitRecycle_Recycle", ""..index);
end



TradeWnd_4.main()

