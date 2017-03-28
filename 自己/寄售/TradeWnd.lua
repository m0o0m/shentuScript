TradeWnd = {}
function TradeWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"TradeWnd",0,0,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,534, 505)
		GUI:WndSetIsESCClose(_Parent, true)
		GUI:WndSetMoveWithLBM(_Parent)
		GUI:WndSetMagicUI(_Parent,1)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"BkImg1",1806500000,0,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,560, 555)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Title",175,3,220,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294894158)
		GUI:EditSetTextM(_GUIHandle,"回收 Ｒｍｂ 点— 寄售")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"BkImg2",1806500001,22,48)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,520, 500)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1805900080,492,7)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "TradeWnd._Close")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,32, 30)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"button1",1806500017,33,57)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "TradeWnd._BtnLc")
		GUI:WndSetTextM(_GUIHandle,"回收RMB点")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,77, 30)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"button2",1806500017,124,57)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "TradeWnd._BtnLc")
		GUI:WndSetTextM(_GUIHandle,"装备回购")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,77, 30)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"button3",1806500017,219,56)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "TradeWnd._BtnLc")
		GUI:WndSetTextM(_GUIHandle,"RMB点兑换")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,77, 30)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"button4",1806500017,306,56)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "TradeWnd._BtnLc")
		GUI:WndSetTextM(_GUIHandle,"限时奖励")
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,77, 30)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"money",410,60,129,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4279689899)
		GUI:EditSetTextM(_GUIHandle,"")
	end
	
	
	
	TradeWnd.UIInit(_Parent)
end

--UI Logic Code Start
local SCRIPT = 
{
	{"TradeWnd_1", "TradeWnd_2", "TradeWnd_4", "TradeWnd_5",},
	{"TradeWnd_1.lua", "TradeWnd_2.lua", "TradeWnd_4.lua", "TradeWnd_5.lua",},
	
}

function TradeWnd.UIInit(_Parent)
	TradeWnd._wnd = _Parent;
	CenterWnd(_Parent);
	UI:Lua_SubmitForm("寄售表单", "Main", "");
	local _GUIHandle = GetWindow(_Parent, "Title");
	if _GUIHandle ~= 0 then 
		GUI:EditSetFontM(_GUIHandle, "SIMLI18");
	end 
	for i = 1, 4 do 
		_handle = GetWindow(_Parent, "button"..i);
		if _handle ~= 0 then 
			GUI:ButtonSetDownTextPosChange(_handle, true);
			GUI:WndSetTextArrangeType(_handle, 0, 0, 0, 0);
			GUI:ButtonSetStateTextColor(_handle, 0, mkcolor("GRAY"));
			GUI:ButtonSetStateTextColor(_handle, 1, mkcolor("GOLD2"));
			GUI:ButtonSetStateTextColor(_handle, 2, mkcolor("GOLD2"));
			
		end
	end
	_handle = GetWindow(_Parent, "button1");
	if _handle ~= 0 then 
		TradeWnd._BtnLc(_handle);
	end 
end

function TradeWnd:Updata(rmb)
	EditSetTextM(self._wnd, "money", "RMB点余额："..rmb)
end

function TradeWnd._BtnLc(_handle)
	if ButtonGetIsActivePageBtn(_handle, nil) then 
		return
	end
	local param = GUI:WndGetParam(_handle);
	for i = 1, 4 do 
		local _hand = GetWindow(TradeWnd._wnd, "button"..i);
		if _hand ~= 0 then 
			GUI:WndSetTextColorM(_hand, 4284637794)
			ButtonSetIsActivePageBtn(_hand, nil, false);
		end 
		_hand = GetWindow(TradeWnd._wnd, SCRIPT[1][i]);
		if _hand ~= 0 then 
			GUI:WndClose(_hand);
		end
	end 
	ButtonSetIsActivePageBtn(_handle, nil, true);
	GUI:WndSetTextColorM(_handle, mkcolor("GOLD2"))
	UI:Lua_OpenWindow(TradeWnd._wnd, SCRIPT[2][tonumber(param)]);
end


function TradeWnd._Close(_handle)
	local _handle = GetWindow(0, "TradeWnd");
	if _handle ~= 0 then 
		GUI:WndClose(_handle);
	end 
end
TradeWnd.main();


