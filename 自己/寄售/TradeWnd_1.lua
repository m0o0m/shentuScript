TradeWnd_1 = {}
function TradeWnd_1.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"TradeWnd_1",0,25,100)
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
	
	_GUIHandle = GUI:EditCreate(_Parent,"column1",47,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"编号")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"column2",139,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"装备名称")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"column3",269,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"回收价格")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"column4",391,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"回收操作")
	end
	
	

	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text0",13,397,68,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4286185269)
		GUI:EditSetTextM(_GUIHandle,"操作说明：")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text1",71,397,281,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4279689899)
		GUI:EditSetTextM(_GUIHandle,"点击确认回收扣除对应的装备，给予对应的人民币数量.")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text2",13,418,68,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4286185269)
		GUI:EditSetTextM(_GUIHandle,"重要提示：")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text3",71,418,281,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4279689899)
		GUI:EditSetTextM(_GUIHandle,"回收始终开发，限时回收合区后将停止回收，请抓紧时间.")
	end
	
		_GUIHandle = GUI:ImageCreate(_Parent,"pageEditImage",1806700027,387,410)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,75, 18)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"pageEdit",414,406,40,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291736418)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pgUpBtn",1806700029,362,409)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "TradeWnd_1._pageUp")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,22, 22)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pgDownBtn",1806700033,465,409)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "TradeWnd_1._pageDown")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,22, 22)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	
	TradeWnd_1.UIInit(_Parent)
end

--UI Logic Code Start


function TradeWnd_1.UIInit(_Parent)
	GUI:WndSetIsESCClose(_Parent, false);
	TradeWnd_1.nowPage = 1
	TradeWnd_1._wnd = _Parent
	GUI:WndSetFlagsM(TradeWnd_1._wnd, flg_wndBase_autoTop)
	local _GUIHandle = GetWindow(_Parent, "backGround");
	if _GUIHandle ~= 0 then 
		GUI:WndSetSizeM(_GUIHandle,502, 383)
		GUI:ImageSetAroundImage(_GUIHandle, 1800000163,1800000164,1800000165,1800000166,1800000171,1800000167,1800000168,1800000169,1800000170)
	end
	
	for i = 1, 4 do 
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
		
			GUI:WndRegistScript(wnd,1003, "TradeWnd_1._BtnLC")
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
		
		_GUIHandle = GUI:EditCreate(wnd,"ID",0,3,120,30)
		if _GUIHandle ~= 0 then
			-- GUI:WndSetTextColorM(_GUIHandle, mkcolor("GREENG"))
			GUI:WndSetTextColorM(_GUIHandle, 4293181855)
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:EditCreate(wnd,"equipName",110,3,120,30)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, 4294705574)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:EditCreate(wnd,"price",240,3,120,30)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, 0xFFFF4800)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:RichEditCreate(wnd,"operation",400,11,120,30)
		if _GUIHandle ~= 0 then
			
			
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TradeWnd_1._Operate")
			GUI:RichEditSetEditEnable(_GUIHandle, false);
		end
	end
	UI:Lua_SubmitForm("寄售表单", "RMBRecycle_Main", "");
end

function TradeWnd_1._BtnLC(h)
	if TradeWnd_1._saveHanle ~= 0 and TradeWnd_1._saveHanle ~= nil then 
		WndSetVisible(TradeWnd_1._saveHanle, "BtnSelected", false);
	end
	WndSetVisible(h, "BtnSelected", true);
	TradeWnd_1._saveHanle = h;
end


function TradeWnd_1:Updata(DATA)
	self.page = math.ceil(#DATA/10);
	self.DATA = DATA;
	self:newPage();
	
end

function TradeWnd_1._pageUp()
	if TradeWnd_1.nowPage <= 1 then 
		return
	end
	TradeWnd_1.nowPage = TradeWnd_1.nowPage - 1
	TradeWnd_1:newPage()
end

function TradeWnd_1._pageDown()
	if TradeWnd_1.nowPage >= TradeWnd_1.page then 
		return
	end
	TradeWnd_1.nowPage = TradeWnd_1.nowPage + 1
	TradeWnd_1:newPage()
end

function TradeWnd_1:newPage()
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
			EditSetTextM(self._wnd, "playerBtn"..i..",equipName", ""..self.DATA[index][1]);
			EditSetTextM(self._wnd, "playerBtn"..i..",price", ""..self.DATA[index][2].." RMB点");
			local _GUIHandle = GetWindow(self._wnd, "playerBtn"..i..",operation");
			if _GUIHandle ~= 0 then 
				GUI:RichEditAppendString(_GUIHandle, "#SELECT##COLORCOLOR_YELLOW#确认回收#COLOREND##SELECTEND#");
			end 
		else	
			EditSetTextM(self._wnd, "playerBtn"..i..",ID", "");
			EditSetTextM(self._wnd, "playerBtn"..i..",equipName", "");
			EditSetTextM(self._wnd, "playerBtn"..i..",price", "");
		end 
	end
	
end

function TradeWnd_1._Operate(_Handle)
	local param = GUI:WndGetParam(_Handle);
	local index = (TradeWnd_1.nowPage - 1) * 10 + param
	UI:Lua_SubmitForm("寄售表单", "RMBRecycle_Recycle", ""..index);
end



TradeWnd_1.main()

