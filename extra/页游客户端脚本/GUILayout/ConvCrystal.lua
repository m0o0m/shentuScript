ConvCrystal ={}  
local ui = "<form default_parent ='CrystalSystem'> <dialog OnInit='ConvCrystal.UIInit' id='ConvCrystal' image='1803700017' x='34' y='81' w='564' h='342' >"

	.."	<image id='aMagic' image='3020300900' type='animate' x='163' y='-19' w='193' h='313'/>"
	.."	<image id='TestWndChild_6' image='1803700025' x='64' y='116' w='445' h='133' check_point='0' revmsg='true'/>"
	.."	<image id='img1' image='' x='77' y='146' w='82' h='82' revmsg='true'/>"
	.."	<image id='img2' image='' x='162' y='146' w='82' h='82' revmsg='true'/>"
	.."	<image id='img3' image='' x='247' y='146' w='82' h='82' revmsg='true'/>"
	.."	<image id='img4' image='' x='332' y='146' w='82' h='82' revmsg='true'/>"
	.."	<image id='img5' image='' x='417' y='146' w='82' h='82' revmsg='true'/>"
	
	.."	<itemctrl id='item' OnItemMoveIn='ConvCrystal.put' OnLButtonDown='ConvCrystal.clean' use_back='1803700013' x='260' y='23' w='53' h='53' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item1'  use_back='1800000385' param='1' OnLButtonUp='ConvCrystal.check_in' x='90' y='160' w='55' h='55' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item2'  use_back='1800000385' param='2' OnLButtonUp='ConvCrystal.check_in' x='175' y='160' w='55' h='55' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item3' use_back='1800000385' param='3' OnLButtonUp='ConvCrystal.check_in' x='260' y='160' w='55' h='55' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item4'  use_back='1800000385' param='4' OnLButtonUp='ConvCrystal.check_in' x='345' y='160' w='55' h='55' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item5'  use_back='1800000385' param='5' OnLButtonUp='ConvCrystal.check_in' x='430' y='160' w='55' h='55' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<image id='TestWndChild_13' image='1800800003' x='238' y='268' w='103' h='21' revmsg='true'/>"
	.."	<image id='TestWndChild_14' image='1806600014' x='239' y='270' w='17' h='17' revmsg='true'/>"
	.."	<edit id='gold' x='260' y='269' w='80' h='19' revmsg='true' text_color='#C2B6A0' text='0' font='system'/>"
	.."	<button id='switch' image='1803700007' x='245' y='298' w='88' h='31' OnLButtonUp='ConvCrystal.switch' revmsg='true' text_color='#C2B6A0'  text='转  换'  enable='true'/>"
	.."	<richedit id='buyedit' x='345' y='273' w='100' h='20' OnLButtonUp='ConvCrystal.buy' text='#SELECT#购买金币＞#SELECTEND#' revmsg='true' text_color='#00FF00' font='system'/>"
	
	.."	<image id='magic1' image='3020300800' type='animate' x='116' y='188' w='73' h='73' revmsg='true' visible='false'/>"
	.."	<image id='magic2' image='3020300800' type='animate' x='201' y='188' w='73' h='73' revmsg='true' visible='false'/>"
	.."	<image id='magic3' image='3020300800' type='animate' x='286' y='188' w='73' h='73' revmsg='true' visible='false'/>"
	.."	<image id='magic4' image='3020300800' type='animate' x='371' y='188' w='73' h='73' revmsg='true' visible='false'/>"
	.."	<image id='magic5' image='3020300800' type='animate' x='456' y='188' w='73' h='73' revmsg='true' visible='false'/>"
	
	.." </dialog>"
	.."</form>"

function ConvCrystal.main()
	GenFormByString(ui)
end
ConvCrystal.crystal_tab ={}
ConvCrystal.num = 0
ConvCrystal.guid = 0
ConvCrystal.level = 0
ConvCrystal.check = 0

ConvCrystal.consumption = {10000,20000,40000,80000,160000,320000,640000,1280000,2560000,5120000,10240000,20480000}
--UI Logic Code Start
function ConvCrystal.UIInit(_Handle)
	ConvCrystal.Wnd=_Handle
	local handle = GUIWndFindChildM(_Handle,"switch")   
	if handle ~= 0 then 
		GUIButtonSetStateTextColor(handle,0,MakeARGB(255, 192, 182, 160))
		GUIButtonSetStateTextColor(handle,2,MakeARGB(255, 237, 192, 161))
	end
	for i=1 , 5 do 
		handle = GetWindow(_Handle,"item"..i) 
		if handle ~= 0 then 
			GUIItemCtrlSetHighlightImageID(handle, 0)
		end
		handle = GetWindow(_Handle,"magic"..i)
		if handle ~= 0 then	
			GUIImageSetDrawCenter(handle,true)		
			GUIImageSetAnimateEnable(handle, true, 150)
			GUIImageSetTransfrom(handle, 8219, 8219,0)	
		end
	end
end

function ConvCrystal.check_in(_Handle)
	if string.find(RDItemCtrlGetGUIDataKeyName(ConvCrystal.Wnd, "item"),"宝石") == nil then 
		return
	end
	
	local param = tonumber(WndGetParam(_Handle))
	for i=1,5 do 
		local handle = GetWindow(ConvCrystal.Wnd,"magic"..i)
		if handle ~= 0 then
			if param == i then
				GUIWndSetVisible(handle,true)
				ConvCrystal.check = param
			else
				GUIWndSetVisible(handle,false)
			end
		end	
	end
	
end

function ConvCrystal.put(_Handle, GUIData, DragIn, GUIDd, ItemId, KeyNamee, ItemPos, IsBound, Count)
  
	local buttonhand = GetWindow(ConvCrystal.Wnd, "switch")
	if buttonhand ~= 0 then 
		GUIWndSetEnableM(buttonhand,true)
	end
	ConvCrystal.crystal_tab ={"级物攻宝石","级魔攻宝石","级道攻宝石","级物防宝石","级魔防宝石","级生命宝石"}
	if CLGetItemTemplatePropByHandle(GUIData,ITEM_PROP_TYPE) then
		local chief = tonumber(as3.tolua(LuaRet))
		if chief == 5 and CLGetItemTemplatePropByHandle(GUIData,ITEM_PROP_SUBTYPE) then
			if tonumber(as3.tolua(LuaRet)) == 6 then 
				for i=#ConvCrystal.crystal_tab,1,-1 do 
					if string.find(KeyNamee,ConvCrystal.crystal_tab[i]) then     --魔防
						table.remove(ConvCrystal.crystal_tab,i)
						break
					end
				end
				local l = string.find(KeyNamee,"级")-1
				local level = tonumber(string.sub(KeyNamee,0,l))
				local hand = GetWindow(ConvCrystal.Wnd,"gold")
				if hand ~= 0 then
					GUIEditSetTextM(hand,Count*ConvCrystal.consumption[level])
					local m1,m2= 0,0
					if CLGetPlayerSelfProperty64(4) then 
						m1 = as3.tolua(LuaRet)
					end
					if CLGetPlayerSelfProperty64(5) then 
						m2 = as3.tolua(LuaRet)
					end
					if m1+m2 >= Count*ConvCrystal.consumption[level] then 
						GUIWndSetTextColorM(hand,MakeARGB(255, 194, 182, 160))
					else
						GUIWndSetTextColorM(hand,MakeARGB(255, 255, 0, 0))
					end
				end
				ConvCrystal.level = level
				ConvCrystal.num = Count
				ConvCrystal.guid = GUIDd
				for j=1,#ConvCrystal.crystal_tab do 
					ConvCrystal.crystal_tab[j] = level..ConvCrystal.crystal_tab[j]
					RDItemCtrlSetGUIDataPropByKeyName(ConvCrystal.Wnd, "item"..j, ConvCrystal.crystal_tab[j], Count, IsBound)
				end
				return true
			end
		end
	end
	return false
end


function ConvCrystal.switch(_Handle)
	
	local num =ConvCrystal.check
	local _hand = GetWindow(ConvCrystal.Wnd, "item")
	local GUIData =RDItemCtrlGetGUIDataKeyName(ConvCrystal.Wnd, "item")
	if GUIData ~= "" then 
		for i=1,5 do 
			local hand = GetWindow(ConvCrystal.Wnd, "img"..i)
			if hand ~= 0 and GUIImageGetImageID(hand) ~= 0 then 
				--num = i      
				ConvCrystal.num =  RDItemCtrlGetGUIDataPropByType(ConvCrystal.Wnd,"item"..i,ITEMGUIDATA_ITEMCOUNT)
				break
			end
		end
		if num==0 then 
			msg_up("请选择宝石类型")
		else
			UI:Lua_SubmitForm("宝石转换表单", "switch", ConvCrystal.guid.."#"..ConvCrystal.crystal_tab[num].."#"..ConvCrystal.num.."#"..ConvCrystal.level)
		end	
	else 
		msg_up("请放入宝石")
	end
end

function msg_up(str)
	local _handle = GetWindow(nil,"CrystalSystem,ConvCrystal,switch")
	local color = MakeARGB(255, 255, 0, 0)
	window_msg_up(_handle , str , -70 , -16 , 70 , color , 3)
end	
function ConvCrystal.clean()
	
	local _hand = GetWindow(ConvCrystal.Wnd,"gold")
	if _hand ~= 0 then
		GUIWndSetTextColorM(_hand,MakeARGB(255, 194, 182, 160))
		GUIEditSetTextM(_hand,0)
	end
	for i=1,5 do 
		local hand = GetWindow(ConvCrystal.Wnd,"item"..i)
		if hand ~= 0 then 
			GUIItemCtrlClearItemData(hand)
		end
		--ImageSetImageID(ConvCrystal.Wnd,"img"..i,0) 
		hand = GetWindow(ConvCrystal.Wnd,"magic"..i)
		if hand ~= 0 then
			GUIWndSetVisible(hand,false)	
		end	
	end
	hand = GetWindow(ConvCrystal.Wnd,"item")
	if hand ~= 0 then
		GUIItemCtrlClearItemData(hand)
	end
	local buttonhand = GetWindow(ConvCrystal.Wnd, "switch")
	if buttonhand ~= 0 then 
		GUIWndSetEnableM(buttonhand,false)
	end
end

function ConvCrystal.buy(_handle)
	local  handle  = GetWindow("", "GoldBuy")
	if handle == 0 then
		UI:Lua_OpenWindow("", "GoldBuy.lua")
	else
		GUIWndClose(handle)
	end	
end
	
ConvCrystal.main()