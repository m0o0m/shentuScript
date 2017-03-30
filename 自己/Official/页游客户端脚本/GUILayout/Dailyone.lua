Dailyone ={}
local ui = "<form> <dialog OnInit='Dailyone.UIInit' id='Dailyone' image='1806100012' x='98' y='108' w='384' h='505' center='true' esc_close='true' drag='true' revmsg='true'>"
	.."	<button id='TestWndChild_1' image='1805900080' x='333' y='5' w='34' h='38' OnLButtonClick='Dailyone.closed' revmsg='true' text_color='#C2B6A0'/>"
	.."	<button id='inter' image='1800600007' x='130' y='415' w='102' h='32' OnLButtonClick='Dailyone.inter' revmsg='true' text='进入副本' text_color='#C2B6A0'/>"
	.."	<itemctrl id='TestWndChild_5' x='62' y='113' w='48' h='48' rbtn_use='true' enable='true' use_back='1800000147' revmsg='true'/>"
	.."	<image id='itemBack' image='1800000147' x='62' y='173' w='48' h='48' check_point='0' revmsg='true'/>"
	.."	<image id='itemBackc' image='1891430001' x='62' y='173' w='48' h='48' fitsize='true' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='TestWndChild_6' init_item='魂珠碎片小' x='62' y='173' w='48' h='48' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"

	.."	<edit id='TestWndChild_7' x='127' y='123' w='194' h='20' revmsg='true' text_color='#C2B6A0' text='副本经验：150000' font='system'/>"
	.."	<richedit id='TestWndChild_8' x='130' y='185' w='150' h='20' revmsg='true' text_color='#ffffff' text='狂暴之灵（小）' font='system'/>"
	--.."	<edit id='TestWndChild_9' x='225' y='185' w='94' h='20' revmsg='true' text_color='#C2B6A0' text='x2' font='system'/>"
	.."	<image id='TestWndChild_10' image='1806100013' x='42' y='260' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<richedit id='TestWndChild_12' x='274' y='457' w='94' h='20' text='#SELECT#返回列表#SELECTEND#' text_color='#00FF00' OnLButtonClick='Dailyone.back' revmsg='true' font='system'/>"
	.."	<edit id='TestWndChild_13' x='65' y='315' w='113' h='20' revmsg='true' text_color='#C2B6A0' text='剩余进入次数： 次' font='system'/>"
	.."	<edit id='descripticeDispText' x='185' y='315' w='200' h='20' revmsg='true' text_color='#00ff0c' font='system'/>"
	.."	<edit id='cishu' x='148' y='315' w='24' h='20' revmsg='true' text_color='#C2B6A0' text='2' font='system'/>"
	.."	<edit id='TestWndChild_15' x='65' y='346' w='113' h='20' revmsg='true' text_color='#C2B6A0' text='消耗副本秘钥：' font='system'/>"
	.."	<edit id='TestWndChild_16' x='147' y='346' w='25' h='20' revmsg='true' text_color='#00FF00' text='1个' font='system'/>"
	.."	<edit id='TestWndChild_18' x='176' y='346' w='113' h='20' revmsg='true' text_color='#C2B6A0' text='（拥有1个）' font='system'/>"
	.."	<edit id='TestWndChild_17' x='65' y='379' w='202' h='20' revmsg='true' text_color='#C2B6A0' text='通关时间限制：30分钟' font='system'/>"
	.."	<image id='TestWndChild_19' image='1892100043' x='64' y='114' w='45' h='45' fitsize='true' check_point='0' revmsg='true' tip ='获得1500000经验'/>"
	.."	<richedit id='buy' x='268' y='351' w='110' h='20' text='#SELECT#购买秘钥#SELECTEND#' OnLButtonClick='Dailyone.buy' revmsg='true' visible='false' font='system' text_color='#00FF00'/>"
	.."	<image id='TestWndChild_3' image='1806100007' x='165' y='8' w='51' h='27' revmsg='true'/>"
	.."	<image id='TestWndChild_14' image='1806100009' x='44' y='69' w='224' h='28' revmsg='true'/>"
	.."	<image id='TestWndChild_11' image='1806100011' x='46' y='282' w='224' h='28' revmsg='true'/>"
	
	.."	<richedit id='single' x='57' y='457' w='110' h='20' text='#SELECT#单倍扫荡#SELECTEND#' param='1' OnLButtonClick='Dailyone.sweeps' visible='false' revmsg='true' font='system' text_color='#00FF00'/>"
	.."	<richedit id='double' x='165' y='457' w='110' h='20' text='#SELECT#双倍扫荡#SELECTEND#' param='2' OnLButtonClick='Dailyone.sweeps' visible='false' revmsg='true' font='system' text_color='#00FF00'/>"
	
	.." </dialog>"
	.."</form>"
function Dailyone.main()
	GenFormByString(ui)
end
Dailyone.Wnd = 0
Dailyone.index = 0
Dailyone.param = 0
--UI Logic Code Start
function Dailyone.UIInit(_Handle)
		
	local tab = {{1500000,{"魂珠碎片小",2,"狂暴之灵（小）"}},
				{600000,{"羽毛",12,"神灵之羽"}},
				{600000,{"护盾碎片小",25,"盾牌残片（小）"}},
				{1500000,{"魂珠碎片小",2,"狂暴之灵（小）"}},
				{600000,{"宝石结晶小",12,"宝珠碎片（小）"}},
				{600000,{"1级宝石箱",2,"1级宝石箱"}}
				}
	
	Dailyone.Wnd = _Handle
	
	local handle = GetWindow(nil, "Daily_FB_Dlg")
	if handle ~= 0 then 
		GUIWndClose(handle)
	end

	local cishu = as3.tolua(FormParam[1])
	local itemnum = as3.tolua(FormParam[2])
	Dailyone.index = tonumber(as3.tolua(FormParam[3]))
	local ised = tonumber(as3.tolua(FormParam[4]))
	local hand = GetWindow(_Handle,"TestWndChild_7")
	if hand ~= 0 then 
		GUIEditSetTextM(hand,"副本经验："..tab[Dailyone.index][1])
	end 
	hand = GetWindow(_Handle,"TestWndChild_6")
	if hand ~= 0 then 
		RDItemCtrlSetGUIDataByKeyName(hand,tab[Dailyone.index][2][1], 1, false)
		local Temp = CLGetItemTemplateHandleByKeyName(tab[Dailyone.index][2][1])
		if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_COLOR) then
			if as3.tolua(LuaRet) ~= nil then
				local color =  as3.tolua(LuaRet)
				--msg("i = "..color)
				if color == "PURPLE" then  --紫   -- 黄  -- 红  -- 绿
					ImageSetImageID(_Handle,"itemBackc",1891430004)
				elseif color == "GOLD" or color == "YELLOW" then
					ImageSetImageID(_Handle,"itemBackc",1891430001)
				elseif color == "RED" then
					ImageSetImageID(_Handle,"itemBackc",1891430000)
				elseif color == "GREENG" then
					ImageSetImageID(_Handle,"itemBackc",1891430003)
				elseif color == "WHITE" then
					ImageSetImageID(_Handle,"itemBackc",0)
				end
			end
		end
	end
	
	hand = GetWindow(_Handle,"TestWndChild_8")
	if hand ~= 0 then 
		--GUIEditSetTextM(hand, )
		GUIRichEditClear(hand)
		GUIRichEditAppendString(hand,"#COLORCOLOR_YELLOW#".. tab[Dailyone.index][2][3].."#COLOREND#  x"..tab[Dailyone.index][2][2])	
	end 


	hand = GetWindow(_Handle,"cishu")
	if hand ~= 0 then 
		GUIWndSetTextColorM(hand, MakeARGB(255, 255,217, 1))   
		GUIEditSetTextM(hand, "".. cishu)
		if cishu == 0 and hand ~= 0 then  
			GUIWndSetTextColorM(hand, MakeARGB(255, 255, 0, 0))  
			hand = GetWindow(_Handle,"inter")  
			GUIWndSetEnableM(hand,false) 
		end 
	end 
	hand = GetWindow(_Handle,"TestWndChild_18")
	if hand ~= 0 then 
		GUIEditSetTextM(hand, "（拥有".. itemnum.."个)")
		if itemnum == 0 then       
			GUIWndSetTextColorM(hand,MakeARGB(255, 255, 0, 0)) 
			hand = GetWindow(_Handle,"buy")
			if hand ~= 0 then 
				GUIWndSetVisible(hand,true) 
			end
			hand = GetWindow(_Handle,"inter")
			if hand ~= 0 then         
				GUIWndSetEnableM(hand,false)
			end
		else
			GUIWndSetTextColorM(hand,MakeARGB(255, 194, 182, 160))
		end 
	end
	if ised == 1 then
		hand = GetWindow(_Handle,"single")
		if hand ~= 0 then  
			GUIWndSetVisible(hand,true) 
		end
		hand = GetWindow(_Handle,"double")
		if hand ~= 0 then  
			GUIWndSetVisible(hand,true)
			WndAddEffect(_Handle, "double", 3020100300, -5, -5, 100, 0)
		end
	end
	
	
	CL:GetPlayerSelfProperty32(201)
	local lv = as3.tolua(LuaRet)
	if lv <= 3 then
		local handle = GetWindow(_Handle,"descripticeDispText")
		if handle ~= 0 then
			GUIEditSetTextM(handle, "成为VIP4进入次数增加1次")
		end
	else
		local handle = GetWindow(_Handle,"descripticeDispText")
		if handle ~= 0 then
			GUIEditSetTextM(handle, "当前VIP"..lv.."，进入次数增加1次")
		end
	end
end

function Dailyone.itemnum(itemNum)
	if itemNum ~= 0 then 
		local hand = GetWindow(Dailyone.Wnd,"TestWndChild_18")
		if hand ~= 0 then 
			GUIEditSetTextM(hand, "（拥有"..itemNum.."个)")
			GUIWndSetTextColorM(hand,MakeARGB(255, 194, 182, 160))
		end   
		hand = GetWindow(Dailyone.Wnd,"buy")
		if hand ~= 0 then 
			GUIWndSetVisible(hand,false) 
		end
		hand = GetWindow(Dailyone.Wnd,"inter")
		if hand ~= 0 then         
			GUIWndSetEnableM(hand,true)
		end
	else
		local hand = GetWindow(Dailyone.Wnd,"TestWndChild_18")
		if hand ~= 0 then 
			GUIEditSetTextM(hand, "（拥有"..itemNum.."个)")
			GUIWndSetTextColorM(hand,MakeARGB(255, 255, 0, 0))
		end   
		hand = GetWindow(Dailyone.Wnd,"buy")
		if hand ~= 0 then 
			GUIWndSetVisible(hand,true) 
		end
		hand = GetWindow(Dailyone.Wnd,"inter")
		if hand ~= 0 then         
			GUIWndSetEnableM(hand,false)
		end
	end
end

function Dailyone.back(_Handle)
	UI:Lua_SubmitForm("每日副本表单", "OpenMainUI", "") 
	Dailyone.closed(_Handle)
end

function Dailyone.inter(_Handle) 
	UI:Lua_SubmitForm("每日副本表单", "EnterMap"..Dailyone.index, "") 
end

function Dailyone.buy(_Handle)
	UI:Lua_SubmitForm("每日副本表单", "BuyFbKeys", "") 
end

function Dailyone.closed()
	local h = GetWindow("","Dailyone")
	if h ~= 0 then 
		GUIWndClose(h)
	end
	h = GetWindow("","Sweeps")
	if h ~= 0 then 
		GUIWndClose(h)
	end
end

function Dailyone.MsgUp(msg)
	local handle = GetWindow(Dailyone.Wnd,"buy")
	local color = MakeARGB(255,255,0,0) 
	window_msg_up(handle, msg, -83, -10, 30, color, 2)
end

function Dailyone.sweeps(h)
	CL:GetPlayerSelfProperty32(201)
	local lv = as3.tolua(LuaRet)
	if lv < 2 then 
		GameMainBar.CommonRechage("VIP2即可扫荡")
		return
	end
	local param = 0 
	Dailyone.param = GUIWndGetParam(h)
	Dailyone.handle=h
	if Dailyone.param ~= 0 then
		UI:Lua_OpenWindow("", "Sweeps.lua")
		--UI:Lua_SubmitForm("每日副本表单", "Sweeps", Dailyone.index .."#"..param )
	end
end

function Dailyone.Msg(mess)
	local color = MakeARGB(255,255,0,0) 
	window_msg_up(Dailyone.handle, mess, -70, -10, 50, color, 2)
end

function Dailyone.down(num)
	local hand = GetWindow(Dailyone.Wnd,"cishu")
	if hand ~= 0 then 
		GUIEditSetTextM(hand, "".. num)
		if num == 0 then  
			GUIWndSetTextColorM(hand, MakeARGB(255, 255, 0, 0))  
			hand = GetWindow(Dailyone.Wnd,"inter")
			if hand ~= 0 then         
				GUIWndSetEnableM(hand,false)
			end
		else
			GUIWndSetTextColorM(hand, MakeARGB(255, 255,217, 1))   
		end 
	end     
end
Dailyone.main()