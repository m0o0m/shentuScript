Sweeps ={}

--[[local ui = "<form> <dialog OnInit='Sweeps.UIInit' id='Sweeps' image='1804600011' x='412' y='250' w='256' h='192' center='true' drag='true' revmsg='true'>"
	.."	<edit id='title' x='25' y='6' w='211' h='25' align='center' revmsg='true' text_color='#fceaa0' text='' font='SIMLI18'/>"
	.."	<edit id='TestWndChild_2' x='45' y='49' w='104' h='25' revmsg='true' text_color='#C2B6A0' text='获得：' font='system'/>"
	.."	<edit id='reward1' x='76' y='75' w='120' h='25' align='center' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."	<edit id='reward2' x='76' y='100' w='120' h='25' align='center' revmsg='true' text_color='#C2B6A0' text='' font='system'/>"
	.."	<button id='closed' image='1800000068' x='227' y='6' w='24' h='24' revmsg='true' OnLButtonUp='Sweeps.closed' text_color='#C2B6A0'/>"
	.."	<button id='sure' image='1800000431' x='85' y='148' w='88' h='31' revmsg='true' OnLButtonUp='Sweeps.closed' text='确定' text_color='#C2B6A0'/>"
	.." </dialog>"
	.."</form>"
--]]

local ui = "<form> <dialog OnInit='Sweeps.UIInit' id='Sweeps' image='1808300000' x='467' y='340' w='516' h='238' center='true' drag='true' revmsg='true'>"
	--.."	<edit id='title' x='147' y='8' w='211' h='25' align='center' revmsg='true' text_color='#FCEAA0' font='SIMLI18'/>"
	
	.."	<image id='titleImg' image='1808300060' x='164' y='-24' w='46' h='46' check_point='0' fitsize='false' revmsg='false' enable='false' />"
	.."	<edit id='TestWndChild_2' x='139' y='39' w='104' h='25' revmsg='true' text_color='#C2B6A0' text='即可获得：' font='system'/>"
	.."	<itemctrl id='itemctrl1' x='181' y='64' w='46' h='46' rbtn_use='true' enable='true' revmsg='true' use_back='1806600011'/>"
	.."	<image id='TestWndChild_6' image='1892100043' x='181' y='64' w='46' h='46' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<edit id='reward1' x='235' y='74' w='120' h='25' revmsg='true' text_color='#C2B6A0' font='system'/>"
	
	.."	<image id='item' image='1806600011' x='181' y='111' w='46' h='46' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='itemImg2' image='0' x='181' y='111' w='46' h='46' check_point='0' fitsize='true' revmsg='true'/>"
	
	.."	<itemctrl id='itemctrl2' x='181' y='111' w='46' h='46' rbtn_use='true' enable='true' revmsg='true' use_back='-1'/>"
	.."	<edit id='reward2' x='235' y='119' w='120' h='25' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<button id='closed' image='1803400011' x='400' y='23' w='24' h='24' OnLButtonUp='Sweeps.closed' revmsg='true' text_color='#C2B6A0'/>"
	.."	<button id='sure' image='1800000431' x='214' y='185' w='88' h='31' OnLButtonUp='Sweeps.sure' revmsg='true' text='确定' text_color='#C2B6A0'/>"
	.." </dialog>"
	.."</form>"
	
	
function Sweeps.main()
	local handle = GetWindow("","Sweeps")
	if handle ~= 0 then
		GUIWndClose(handle)
	end
	GenFormByString(ui)
end
Sweeps.Wnd = 0 
--UI Logic Code Start
function Sweeps.UIInit(_Handle)
	Sweeps.Wnd = _Handle
	Sweeps.param  = Dailyone.param 
	Sweeps.index = Dailyone.index
	--local title = deserialize(as3.tolua(FormParam[1]))
	
	local tab = {{1500000,{"魂珠碎片小",2,"狂暴之灵（小）"}},
				{600000,{"羽毛",12,"神灵之羽"}},
				{600000,{"护盾碎片小",25,"盾牌残片（小）"}},
				{1500000,{"魂珠碎片小",2,"狂暴之灵（小）"}},
				{600000,{"宝石结晶小",12,"珠宝碎片（小）"}},
				{600000,{"1级宝石箱",2,"1级宝石箱"}},
				}
	local tab_sweep = {"单倍扫荡","双倍扫荡"}
	 
	local hand = GetWindow(_Handle,"title")
	if hand ~= 0 then
		GUIEditSetTextM(hand,tab_sweep[Dailyone.param])
	end
	hand = GetWindow(_Handle,"reward2")
	if hand ~= 0 then
		GUIEditSetTextM(hand,tab[Sweeps.index][2][3].. "*" .. Dailyone.param*tab[Sweeps.index][2][2])
	end
	hand = GetWindow(_Handle,"reward1")
	if hand ~= 0 then
		GUIEditSetTextM(hand,"经验"..tab[Sweeps.index][1]*Dailyone.param)
	end	
	hand = GetWindow(_Handle,"TestWndChild_6")
	if hand ~= 0 then
		GUIWndSetHint(hand, "<font color='#9D8972'>".. tab[Sweeps.index][1]*Sweeps.param.."</font>")
	end	
	hand = GetWindow(_Handle,"itemctrl2")
	if hand ~= 0 then
		RDItemCtrlSetGUIDataPropByKeyName(Sweeps.Wnd, "itemctrl2", tab[Sweeps.index][2][1], 0, true)
		
		local itemTemp = CLGetItemTemplateHandleByKeyName(tab[Sweeps.index][2][1])
		if CLGetItemTemplatePropByHandle(itemTemp,ITEM_PROP_COLOR) then
			if as3.tolua(LuaRet) ~= nil then
				local color =  as3.tolua(LuaRet)
				if color == "PURPLE" then  --紫   -- 黄  -- 红  -- 绿  --蓝
					ImageSetImageID(Sweeps.Wnd, "itemImg2",1891430004)
				elseif color == "GOLD" then
					ImageSetImageID(Sweeps.Wnd, "itemImg2",1891430001)
				elseif color == "RED" then
					ImageSetImageID(Sweeps.Wnd, "itemImg2",1891430000)
				elseif color == "GREENG" then
					ImageSetImageID(Sweeps.Wnd, "itemImg2",1891430003)
				elseif color == "BLUE" then
					ImageSetImageID(Sweeps.Wnd, "itemImg2",1891430002)
				else
					ImageSetImageID(Sweeps.Wnd, "itemImg2",0)
				end
			end
		end
		
	end	
end

function Sweeps.sure(h)
	Dailyone.handle = h
	if Sweeps.param~=0 then 
		UI:Lua_SubmitForm("每日副本表单", "Sweeps", Sweeps.index .."#"..Sweeps.param )
	end
end
function Sweeps.closed()
	local hand = GetWindow("","Sweeps")
	if hand ~= 0 then 
		GUIWndClose(hand)	
	end
end
Sweeps.main()