TradeWnd_2 = {}
function TradeWnd_2.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"TradeWnd_2",0,25,99)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,576, 442)
		GUI:WndSetIsESCClose(_Parent, true)
		GUI:WndSetMoveWithLBM(_Parent)
		-- GUI:WndSetMagicUI(_Parent,1)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"backGround",1800000163,3,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,16, 16)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"column1",30,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"编号")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"column2",115,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"装备名称")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"column3",233,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"回购价格")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"column4",323,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"出售玩家")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"column5",412,12,120,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"回购操作")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text0",9,406,68,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4286185269)
		GUI:EditSetTextM(_GUIHandle,"回购说明：")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text1",67,406,321,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4279689899)
		GUI:EditSetTextM(_GUIHandle,"所有装备均来自玩家回收，无玩家回收，则无物品可回购")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"pageEditImage",1806700027,400,405)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,75, 18)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"pageEdit",427,401,40,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291736418)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pgUpBtn",1806700029,375,404)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "TradeWnd_2._pageUp")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,22, 22)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pgDownBtn",1806700033,478,404)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "TradeWnd_2._pageDown")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,22, 22)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	
	TradeWnd_2.UIInit(_Parent)
end

--UI Logic Code Start


function TradeWnd_2.UIInit(_Parent)
	GUI:WndSetIsESCClose(_Parent, false);
	TradeWnd_2.nowPage = 1
	TradeWnd_2._wnd = _Parent
	GUI:WndSetFlagsM(TradeWnd_2._wnd, flg_wndBase_autoTop)
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
		
			GUI:WndRegistScript(wnd,1003, "TradeWnd_2._BtnLC")
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
		
		
		_GUIHandle = GUI:EditCreate(wnd,"price",200,3,120,30)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, 0xFFFF4800)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		_GUIHandle = GUI:EditCreate(wnd,"player",297,3,120,30)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, 0xFFFF4800)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:RichEditCreate(wnd,"operation",420,11,120,30)
		if _GUIHandle ~= 0 then
			
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TradeWnd_2._Operate")
			GUI:RichEditSetEditEnable(_GUIHandle, false);
			-- GUI:RichEditAppendString(_GUIHandle, "#SELECT##COLORCOLOR_GRAY#确认回收#COLOREND##SELECTEND#");
			-- GUI:WndSetCanRevMsg(_GUIHandle,false);
		end
	end
	UI:Lua_SubmitForm("寄售表单", "EquipRecycle_Main", "");
end

function TradeWnd_2._BtnLC(h)
	if TradeWnd_2._saveHanle ~= 0 and TradeWnd_2._saveHanle ~= nil then 
		WndSetVisible(TradeWnd_2._saveHanle, "BtnSelected", false);
	end
	WndSetVisible(h, "BtnSelected", true);
	TradeWnd_2._saveHanle = h;
end


function TradeWnd_2:Updata(DATA)
	self.page = math.ceil(#DATA/10);
	self.DATA = DATA;
	self:newPage();
	
end

function TradeWnd_2._pageUp()
	if TradeWnd_2.nowPage <= 1 then 
		return
	end
	TradeWnd_2.nowPage = TradeWnd_2.nowPage - 1
	TradeWnd_2:newPage()
end

function TradeWnd_2._pageDown()
	if TradeWnd_2.nowPage >= TradeWnd_2.page then 
		return
	end
	TradeWnd_2.nowPage = TradeWnd_2.nowPage + 1
	TradeWnd_2:newPage()
end

function TradeWnd_2:newPage()
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
			EditSetTextM(self._wnd, "playerBtn"..i..",player", ""..self.DATA[index][3]);
			local _GUIHandle = GetWindow(self._wnd, "playerBtn"..i..",operation");
			if _GUIHandle ~= 0 then 
				if data[4] == 0 then
					GUI:WndSetCanRevMsg(_GUIHandle, true);
					GUI:RichEditAppendString(_GUIHandle, "#SELECT##COLORCOLOR_YELLOW#确认回购#COLOREND##SELECTEND#");
				else
					GUI:WndSetCanRevMsg(_GUIHandle, false);
					GUI:RichEditAppendString(_GUIHandle, "#SELECT##COLORCOLOR_GRAY#已经售出#COLOREND##SELECTEND#");
				end
			end 	
		else	
			EditSetTextM(self._wnd, "playerBtn"..i..",ID", "");
			EditSetTextM(self._wnd, "playerBtn"..i..",equipName", "");
			EditSetTextM(self._wnd, "playerBtn"..i..",price", "");
			EditSetTextM(self._wnd, "playerBtn"..i..",player", "");
		end 
	end
	
end

function TradeWnd_2._Operate(_Handle)
	
	local param = GUI:WndGetParam(_Handle);
	local index = (TradeWnd_2.nowPage - 1) * 10 + param
	UI:Lua_SubmitForm("寄售表单", "EquipRecycle_BuyBack", ""..index);
end



TradeWnd_2.main()

