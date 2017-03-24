TradeWnd_3 = {}
function TradeWnd_3.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"TradeWnd_3",0,25,100)
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
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"column2",104,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"玩家名字")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"column3",214,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"充值金额")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"column4",327,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"充值时间")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"column5",452,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"状态")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text0",7,391,68,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4286185269)
		GUI:EditSetTextM(_GUIHandle,"说明：")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text1",42,391,400,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4279689899)
		GUI:EditSetTextM(_GUIHandle,"满100RMB点起可充值，1RMB点可获得100元宝，充值即可到账。")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"pageEditImage",1806700027,404,389)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,75, 18)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"pageEdit",431,385,40,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291736418)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pgUpBtn",1806700029,379,388)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "TradeWnd_3._pageUp")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,22, 22)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pgDownBtn",1806700033,482,388)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "TradeWnd_3._pageDown")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,22, 22)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text2",80,418,40,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293018112)
		GUI:EditSetTextM(_GUIHandle,"金额：")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"0",1806700027,116,419)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 22)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"input1",119,418,50,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text4",308,419,176,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4279689899)
		GUI:EditSetTextM(_GUIHandle,"PS：本系统跟网页充值无区别")
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"recharge",1800900042,186,413)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TradeWnd_3._Recharge")
		GUI:WndSetTextM(_GUIHandle,"确认充值")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,96, 31)
	end
	
	
	
	TradeWnd_3.UIInit(_Parent)
end

--UI Logic Code Start


function TradeWnd_3.UIInit(_Parent)
	GUI:WndSetIsESCClose(_Parent, false);
	TradeWnd_3.nowPage = 1
	TradeWnd_3._wnd = _Parent
	GUI:WndSetFlagsM(TradeWnd_3._wnd, flg_wndBase_autoTop)
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
		
		
		_GUIHandle = GUI:EditCreate(wnd,"player",70,3,120,30)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, 4294705574)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		_GUIHandle = GUI:EditCreate(wnd,"price",185,3,120,30)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, 0xFFB5E61D)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		_GUIHandle = GUI:EditCreate(wnd,"time",300,3,120,30)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, 0xFFFF4800)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		_GUIHandle = GUI:EditCreate(wnd,"status",445,3,120,30)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetTextColorM(_GUIHandle, mkcolor("YELLOW"));
		end
	end
	
	_GUIHandle = GetWindow(_Parent, "input1");
	if _GUIHandle ~= 0 then 
		GUI:EditSetBNumber(_GUIHandle, true)
		GUI:EditSetMaxCharNum(_GUIHandle, 5);
	end	
	_GUIHandle = GetWindow(_Parent, "input2");
	if _GUIHandle ~= 0 then 
		GUI:EditSetMaxCharNum(_GUIHandle, 15);
	end
	_GUIHandle = GetWindow(_Parent, "recharge");
	if _GUIHandle ~= 0 then 
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:ButtonSetStateTextColor(_GUIHandle, 0, mkcolor("GOLD2"));
		GUI:ButtonSetStateTextColor(_GUIHandle, 1, mkcolor("GOLD2"));
		GUI:ButtonSetStateTextColor(_GUIHandle, 2, mkcolor("GOLD2"));
		GUI:ButtonSetShine(_GUIHandle, true);
	end
	UI:Lua_SubmitForm("寄售表单", "RMB2Ingot_Main", "");
end

function TradeWnd_3._BtnLC(h)
	if TradeWnd_3._saveHanle ~= 0 and TradeWnd_3._saveHanle ~= nil then 
		WndSetVisible(TradeWnd_3._saveHanle, "BtnSelected", false);
	end
	WndSetVisible(h, "BtnSelected", true);
	TradeWnd_3._saveHanle = h;
end


function TradeWnd_3:Updata(DATA)
	self.page = math.ceil(#DATA/10);
	self.DATA = DATA;
	self:newPage();
	
end

function TradeWnd_3._pageUp()
	if TradeWnd_3.nowPage <= 1 then 
		return
	end
	TradeWnd_3.nowPage = TradeWnd_3.nowPage - 1
	TradeWnd_3:newPage()
end

function TradeWnd_3._pageDown()
	if TradeWnd_3.nowPage >= TradeWnd_3.page then 
		return
	end
	TradeWnd_3.nowPage = TradeWnd_3.nowPage + 1
	TradeWnd_3:newPage()
end

function TradeWnd_3:newPage()
	EditSetTextM(self._wnd, "pageEdit", self.nowPage.." / "..self.page);
	local index = (self.nowPage - 1) * 10
	for i = 1, 10 do 
		index = index + 1
		local data = self.DATA[index];
		if data then 
			EditSetTextM(self._wnd, "playerBtn"..i..",ID", "NO."..index);
			EditSetTextM(self._wnd, "playerBtn"..i..",player", ""..self.DATA[index][1]);
			EditSetTextM(self._wnd, "playerBtn"..i..",price", ""..self.DATA[index][2].." RMB点");
			EditSetTextM(self._wnd, "playerBtn"..i..",time", ""..self.DATA[index][3]);
			EditSetTextM(self._wnd, "playerBtn"..i..",status", "已完成");
		else	
			EditSetTextM(self._wnd, "playerBtn"..i..",ID", "");
			EditSetTextM(self._wnd, "playerBtn"..i..",player", "");
			EditSetTextM(self._wnd, "playerBtn"..i..",price", "");
			EditSetTextM(self._wnd, "playerBtn"..i..",time", "");
			EditSetTextM(self._wnd, "playerBtn"..i..",status", "");
		end 
	end
end

function TradeWnd_3._Recharge(_Handle)
	local num = 0
	local _han = GetWindow(TradeWnd_3._wnd, "input1");
	if _han ~= 0 then 
		num = GUI:EditGetInt(_han);
	end
	dbg("num======================="..num);
	UI:Lua_SubmitForm("寄售表单", "RMB2Ingot_Recharge", ""..num);
end



TradeWnd_3.main()

