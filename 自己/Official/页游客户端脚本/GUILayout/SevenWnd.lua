SevenWnd ={}
local ui = "<form> <dialog OnInit='SevenWnd.UIInit' id='SevenWnd' center='true' drag='true' esc_close='true' image='1806400059' x='92' y='106' w='748' h='487' revmsg='true'>"
	.."	<edit id='day0' x='564' y='140' w='167' h='26' revmsg='true' text_color='#DED7C5' text='七日返利还剩：' font='system'/>"
	.."	<edit id='day' x='646' y='140' w='60' h='26' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<button id='closed' image='1805900080' x='678' y='133' w='34' h='38' revmsg='true' text_color='#C2B6A0' OnLButtonUp='SevenWnd.closed'/>" 
	.."	<edit id='col' x='376' y='427' w='213' h='26' revmsg='true' align='center' text_color='#DED7C5' font='system'/>"
	
	.."	 <wnd id='wnd1' image='0' x='181' y='60' w='16' h='16' revmsg='true' visible='false'>"
	
		.. "<image id='itemBack1' image='1805600155' x='262' y='180' w='72' h='72' check_point='0' revmsg='true'/>"
		.. "<image id='itemMagic1' image='0' x='262' y='180' w='72' h='72' check_point='0' revmsg='true' fitsize='true'/>"
	
		.."	<itemctrl id='itemctrl' x='262' y='180' w='72' h='72' rbtn_use='true' enable='true' revmsg='true' use_back='-1'/>"
		.."	<button id='get' image='1805600160' x='224' y='288' w='144' h='52' revmsg='true' text_color='#C2B6A0' OnLButtonUp='SevenWnd.getFree'/>"
		.."	<edit id='TestWndChild_6' x='247' y='252' w='101' h='26' revmsg='true' align='center' text_color='#00FF00'  font='system'/>"
	.." </wnd>"
	
	.."	 <wnd id='wnd2' image='0' x='200' y='60' w='16' h='16' revmsg='true' visible='false'>"
	
		.. "<image id='itemBack1' image='1805600155' x='175' y='180' w='72' h='72' check_point='0' revmsg='true'/>"
		.. "<image id='itemMagic1' image='0' x='175' y='180' w='72' h='72' check_point='0' revmsg='true' fitsize='true'/>"
		
		.."	<itemctrl id='itemctrl1' x='175' y='180' w='72' h='72' rbtn_use='true' enable='true' revmsg='true' use_back='-1'/>"
		.."	<button id='button1' image='1806400141' x='137' y='278' w='144' h='52' revmsg='true' text_color='#C2B6A0' OnLButtonUp='SevenWnd.buyGoods' param='1'/>"
		.."	<richedit id='richedit1' x='150' y='336' w='144' h='20' align='center' revmsg='true' font='system'/>"
		.."	<edit id='price1' x='158' y='252' w='104' h='26' align='center' revmsg='true' text_color='#9d7017'  font='system'/>" 
		
		
		.. "<image id='itemBack2' image='1805600155' x='349' y='180' w='72' h='72' check_point='0' revmsg='true'/>"
		.. "<image id='itemMagic2' image='0' x='349' y='180' w='72' h='72' check_point='0' revmsg='true' fitsize='true'/>"
		
		.."	<itemctrl id='itemctrl2' x='349' y='180' w='72' h='72' rbtn_use='true' enable='true' revmsg='true' use_back='-1'/>"
		.."	<button id='button2' image='1806400141' x='317' y='278' w='144' h='52' revmsg='true' text_color='#C2B6A0' OnLButtonUp='SevenWnd.buyGoods' param='2'/>" 
		.."	<richedit id='richedit2' x='330' y='336' w='144' h='20' align='center' revmsg='true' font='system'/>"
		.."	<edit id='price2' x='335' y='252' w='104' h='26' align='center' revmsg='true' text_color='#9d7017' font='system'/>"
	
	.." </wnd>"
	
	.." </dialog>"
	.."</form>"

function SevenWnd.main()
	GenFormByString(ui)
end
SevenWnd.Wnd = 0 
SevenWnd.second = 0
--UI Logic Code Start
function SevenWnd.UIInit(_Handle)
	SevenWnd.Wnd = _Handle
	if CLGetPlayerSelfPropBase(ROLE_PROP_ROLEID) then
		local self_reinLevel = CLGetPlayerCustomIntData(as3.tolua(LuaRet),"Seven_get")  
		if self_reinLevel >= 5 then
			CLHotKeyRegister("Y", "打开宝石窗口", "UI:Lua_OpenWindow(0,\"CrystalSystem.lua\")");  --注册宝石热键Y
		end
	end
	UI:Lua_SubmitForm("七日返利表单", "GetUIInit", "")
end

function SevenWnd.Init(tab)
	local handle = 0
	if tonumber(tab[2][1]) ==0 then 
		handle = GetWindow(nil,"SevenWnd,wnd1")
		if handle ~= 0 then 
			GUIWndSetVisible(handle,true)
		end
		handle = GetWindow(nil,"SevenWnd,wnd2")
		if handle ~= 0 then 
			GUIWndSetVisible(handle,false)
		end 
		handle = GetWindow(nil,"SevenWnd,wnd1,itemctrl")
		RDItemCtrlSetGUIDataPropByKeyName(nil,"SevenWnd,wnd1,itemctrl", tab[1][1][1], tab[1][1][2], true)
		
		local itemTemp = CLGetItemTemplateHandleByKeyName(tab[1][1][1])
		if CLGetItemTemplatePropByHandle(itemTemp,ITEM_PROP_COLOR) then
			if as3.tolua(LuaRet) ~= nil then
				local color =  as3.tolua(LuaRet)
				if color == "PURPLE" then  --紫   -- 黄  -- 红  -- 绿  --蓝
					ImageSetImageID(nil,"SevenWnd,wnd1,itemMagic1",1891430004)
				elseif color == "GOLD" then
					ImageSetImageID(nil,"SevenWnd,wnd1,itemMagic1",1891430001)
				elseif color == "RED" then
					ImageSetImageID(nil,"SevenWnd,wnd1,itemMagic1",1891430000)
				elseif color == "GREENG" then
					ImageSetImageID(nil,"SevenWnd,wnd1,itemMagic1",1891430003)
				elseif color == "BLUE" then
					ImageSetImageID(nil,"SevenWnd,wnd1,itemMagic1",1891430002)
				else
					ImageSetImageID(nil,"SevenWnd,wnd1,itemMagic1",0)
				end
			end
		end
	
	else
		handle = GetWindow(nil,"SevenWnd,wnd1")
		if handle ~= 0 then 
			GUIWndSetVisible(handle,false)
		end
		handle = GetWindow(nil,"SevenWnd,wnd2")
		if handle ~= 0 then 
			GUIWndSetVisible(handle,true)
		end
		for i=1,2 do
			handle = GetWindow(nil,"SevenWnd,wnd2,richedit"..i)
			if handle ~= 0 then 
				GUIRichEditClear(handle)
				GUIRichEditAppendString(handle,"（今日还可购买#COLORCOLOR_GREENG#"..tab[2][1+i].."#COLOREND#次）") 
				if tonumber(tab[2][1+i]) <= 0 then 
					handle = GetWindow(nil,"SevenWnd,wnd2,button"..i)
					if handle ~= 0 then
						GUIWndSetEnableM(handle, false)
					end
				end
			end
			RDItemCtrlSetGUIDataPropByKeyName(nil,"SevenWnd,wnd2,itemctrl"..i, tab[1][i+1][1], tab[1][i+1][2], true)
			
			local itemTemp = CLGetItemTemplateHandleByKeyName(tab[1][i+1][1])
			if CLGetItemTemplatePropByHandle(itemTemp,ITEM_PROP_COLOR) then
				if as3.tolua(LuaRet) ~= nil then
					local color =  as3.tolua(LuaRet)
					if color == "PURPLE" then  --紫   -- 黄  -- 红  -- 绿  --蓝
						ImageSetImageID(nil,"SevenWnd,wnd2,itemMagic"..i,1891430004)
					elseif color == "GOLD" then
						ImageSetImageID(nil,"SevenWnd,wnd2,itemMagic"..i,1891430001)
					elseif color == "RED" then
						ImageSetImageID(nil,"SevenWnd,wnd2,itemMagic"..i,1891430000)
					elseif color == "GREENG" then
						ImageSetImageID(nil,"SevenWnd,wnd2,itemMagic"..i,1891430003)
					elseif color == "BLUE" then
						ImageSetImageID(nil,"SevenWnd,wnd2,itemMagic"..i,1891430002)
					else
						ImageSetImageID(nil,"SevenWnd,wnd2,itemMagic"..i,0)
					end
				end
			end
		
			handle = GetWindow(nil,"SevenWnd,wnd2,price"..i)
			if handle ~= 0 then
				GUIEditSetTextM(handle,"售价："..tab[1][i+1][3].."元宝")
			end
		end
	end
	handle = GetWindow(nil,"SevenWnd,day")
	if handle ~= 0 then 
		GUIEditSetTextM(handle,tab[2][5].."天")
	end	
	
	SevenWnd.second = tonumber(tab[2][4])
	CLAddDelayTask("SevenWnd.clocking()", 1000, 0)
end

function SevenWnd.clocking()
	SevenWnd.second = SevenWnd.second - 1
	if SevenWnd.second <= 0 then return end
	local str = GetLeaveTimeString(SevenWnd.second)  
	local handle = GetWindow(nil,"SevenWnd,col")
	if handle ~= 0 then 
		GUIEditSetTextM(handle,"好礼刷新倒计时:"..str)
	end
end


function SevenWnd.getFree(_Handle)
	UI:Lua_SubmitForm("七日返利表单", "GetFree", "")
end

function SevenWnd.buyGoods(_Handle)
	local j = WndGetParam(_Handle)
	UI:Lua_SubmitForm("七日返利表单", "buyGoods", j.."")
end

function SevenWnd.closed(_Handle)
	local handle = GetWindow(nil,"SevenWnd")
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end
  
SevenWnd.main()