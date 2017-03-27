ElseItem4 ={}
function ElseItem4.main()
local ui = "<form default_parent='FurnaceWnd'> <dialog OnInit='ElseItem4.UIInit' id='ElseItem4' image='1803900017' x='416' y='4' w='286' h='499' drag='true' revmsg='true'>"
	.."	<image id='buy_title' image='1803900033' x='80' y='5' w='119' h='25' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='close' image='1800000068' x='255' y='6' w='24' h='24' OnLButtonUp='ElseItem4.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<image id='wnd_back1' image='1803900021' x='11' y='53' w='250' h='60' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='wnd_back2' image='1803900021' x='11' y='126' w='250' h='60' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='wnd_back3' image='1803900021' x='11' y='201' w='250' h='60' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='wnd_back4' image='1803900021' x='11' y='273' w='250' h='60' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='wnd_back5' image='1803900021' x='11' y='345' w='250' h='60' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='wnd_back6' image='1803900021' x='11' y='415' w='250' h='60' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='name_back1' image='0' x='56' y='56' w='181' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='name_back2' image='0' x='56' y='129' w='181' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='name_back3' image='0' x='56' y='203' w='181' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='name_back4' image='0' x='56' y='276' w='181' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='name_back5' image='0' x='56' y='348' w='181' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='name_back6' image='0' x='56' y='418' w='181' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='itemctrl_back1' image='1803900036' x='21' y='57' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<image id='itemctrl_back2' image='1803900036' x='21' y='130' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<image id='itemctrl_back3' image='1803900036' x='21' y='205' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<image id='itemctrl_back4' image='1803900036' x='21' y='277' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<image id='itemctrl_back5' image='1803900036' x='21' y='349' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<image id='itemctrl_back6' image='1803900036' x='21' y='420' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<image id='itemctrl_cb1' image='0' x='16' y='54' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<image id='itemctrl_cb2' image='0' x='16' y='127' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<image id='itemctrl_cb3' image='0' x='16' y='202' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<image id='itemctrl_cb4' image='0' x='16' y='274' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<image id='itemctrl_cb5' image='0' x='16' y='346' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<image id='itemctrl_cb6' image='0' x='16' y='417' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<edit id='name1' x='85' y='68' w='122' h='28' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='name2' x='85' y='141' w='122' h='28' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='name3' x='83' y='215' w='122' h='28' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='name4' x='85' y='288' w='122' h='28' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='name5' x='85' y='359' w='122' h='28' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='name6' x='85' y='429' w='122' h='28' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<image id='get_yes1' image='0' x='168' y='53' w='85' h='58' check_point='0' revmsg='true'/>"
	.."	<image id='get_yes2' image='0' x='168' y='127' w='85' h='58' check_point='0' revmsg='true'/>"
	.."	<image id='get_yes3' image='0' x='166' y='200' w='85' h='58' check_point='0' revmsg='true'/>"
	.."	<image id='get_yes4' image='0' x='168' y='271' w='85' h='58' check_point='0' revmsg='true'/>"
	.."	<image id='get_yes5' image='0' x='168' y='344' w='85' h='58' check_point='0' revmsg='true'/>"
	.."	<image id='get_yes6' image='0' x='168' y='416' w='85' h='58' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item1' x='21' y='57' w='51' h='51' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item2' x='21' y='130' w='51' h='51' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item3' x='21' y='205' w='51' h='51' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item4' x='21' y='277' w='51' h='51' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item5' x='21' y='349' w='51' h='51' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item6' x='21' y='420' w='51' h='51' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<button id='up_page' image='1800000372' x='257' y='146' w='20' h='61' OnLButtonUp='ElseItem4.up_page' revmsg='true'/>"
	.."	<button id='down_page' image='1800000376' x='257' y='241' w='20' h='61' OnLButtonUp='ElseItem4.down_page' revmsg='true'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end

--UI Logic Code Start
ElseItem4.WndHandle = 0
ElseItem4._control = {}
ElseItem4.tab = {}
ElseItem4.lev = 0
ElseItem4.nowPage = 1
function ElseItem4.UIInit(_Handle)
	ElseItem4.WndHandle = _Handle
	for i = 1 , 6 do 
		local _handel = GetWindow(_Handle,"item"..i)
		if _handel ~= 0 then ElseItem4._control["item"..i] = _handel end
	end
	_handel = GetWindow(_Handle,"up_page")
	if _handel ~= 0 then ElseItem4._control["up_page"] = _handel end
	_handel = GetWindow(_Handle,"down_page")
	if _handel ~= 0 then ElseItem4._control["down_page"] = _handel end
	GUIWndSetEnableM(ElseItem4._control["up_page"],false)
	UI:Lua_SubmitForm("神炉表单", "qita_hunzhu", "")
	
end

function ElseItem4.updata(data)
	ElseItem4.lev = data[1]
	ElseItem4.tab = data[2]
	--初始化当前页
	ElseItem4.nowPage = 1
	if ElseItem4.lev <= 3 then 
		ElseItem4.nowPage = 1
	elseif ElseItem4.lev > 3 then
		if (ElseItem4.lev + 3) <= #ElseItem4.tab then  --策划说最多显示等级后面大三级的装备
			ElseItem4.nowPage = ElseItem4.lev + 3 - 5    
		else
			ElseItem4.nowPage = #ElseItem4.tab - 5
		end
		
	end
	ElseItem4.updatelist()
	ElseItem4.updatePgBtn()
end

function ElseItem4.up_page(_handle)
	ElseItem4.nowPage = ElseItem4.nowPage - 1
	ElseItem4.updatePgBtn()
	ElseItem4.updatelist()
end

function ElseItem4.down_page(_handle)
	ElseItem4.nowPage = ElseItem4.nowPage + 1
	ElseItem4.updatePgBtn()
	ElseItem4.updatelist()
end

function ElseItem4.updatePgBtn()
	
	--是否是首页
	if ElseItem4.nowPage == 1 then
		GUIWndSetEnableM(ElseItem4._control["up_page"], false)
	else
		GUIWndSetEnableM(ElseItem4._control["up_page"], true)
	end
	
	--是否是尾页
	local pgCount = 0
	if ElseItem4.lev <= 3 then 
		pgCount = 1
	elseif ElseItem4.lev > 3 then
		if (ElseItem4.lev + 3 - 5) <= (#ElseItem4.tab - 5) then 
			pgCount = ElseItem4.lev + 3 - 5    --策划说最多显示等级后面大三级的装备,坑爹的需求
		else
			pgCount = #ElseItem4.tab - 5
		end
		
	end
	if ElseItem4.nowPage == pgCount then
		GUIWndSetEnableM(ElseItem4._control["down_page"],false)
	else
		GUIWndSetEnableM(ElseItem4._control["down_page"],true)
	end
end

function ElseItem4.updatelist()
	for i = 1 , 6 do
		GUIItemCtrlClearItemData(ElseItem4._control["item"..i])
		EditSetText(ElseItem4.WndHandle,"name"..i,"")
		ImageSetImageID(ElseItem4.WndHandle,"name_back"..i,0)
		ImageSetImageID(ElseItem4.WndHandle,"get_yes"..i,0)
	end
	local a = ElseItem4.nowPage
	local b = ElseItem4.lev - ElseItem4.nowPage + 1   
	for i = 1 , 6 do
		RDItemCtrlSetGUIDataByKeyName(ElseItem4._control["item"..i],ElseItem4.tab[a],0,false)
		local Temp = CLGetItemTemplateHandleByKeyName(ElseItem4.tab[a])
		local item_name = ""
		if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_NAME) then
			item_name = as3.tolua(LuaRet)	
		end
		EditSetText(ElseItem4.WndHandle,"name"..i,item_name)
		a = a + 1
		if b < 1 then
			ImageSetImageID(ElseItem4.WndHandle,"name_back"..i,1800000302)
			--ImageSetImageID(ElseItem4.WndHandle,"get_yes"..i,1800000296)
		else
			if i <= b then
				ImageSetImageID(ElseItem4.WndHandle,"name_back"..i,1800000301)	
				ImageSetImageID(ElseItem4.WndHandle,"get_yes"..i,1800000295)	
			else 
				ImageSetImageID(ElseItem4.WndHandle,"name_back"..i,1800000302)
				--ImageSetImageID(ElseItem4.WndHandle,"get_yes"..i,1800000296)
			end	
		end
		if CLGetItemTemplatePropByHandle(Temp, ITEM_PROP_COLOR) then
			if as3.tolua(LuaRet) ~= nil then
				local color =  as3.tolua(LuaRet)
				--local wnd = GUIWndFindChildM(MailListWnd._wndHandle, "detailWnd")
				--msg(""..color)
				if color == "PURPLE" then  --紫   -- 黄  -- 红  -- 绿
					ImageSetImageID(ElseItem4.WndHandle, "itemctrl_cb"..i,1891430004)
				elseif color == "GOLD" or color == "YELLOW" then
					ImageSetImageID(ElseItem4.WndHandle, "itemctrl_cb"..i,1891430001)
				elseif color == "RED" then
					ImageSetImageID(ElseItem4.WndHandle, "itemctrl_cb"..i,1891430000)
				elseif color == "SKYBLUE" then
					ImageSetImageID(ElseItem4.WndHandle, "itemctrl_cb"..i,1891430002)
				elseif color == "GREENG" then
					ImageSetImageID(ElseItem4.WndHandle, "itemctrl_cb"..i,1891430003)
				elseif color == "WHITE" then
					ImageSetImageID(ElseItem4.WndHandle, "itemctrl_cb"..i,0)
				end
			end
		end
	end
end

function ElseItem4.closeWnd(_handle)		
	GUIWndClose(ElseItem4.WndHandle)
end

ElseItem4.main()