Package = {}

function Package.main()
 
	local ui = "<form><dialog id='Package' image='1800800001' x='-110' y='-170' w='419' h='504' center='true' esc_close='true' drag='true' magic='1' revmsg='true' OnInit='Package.UIInit'>"
	.."<image id='imagepack' image='1801500027' x='175' y='2' w='81' h='29' revmsg='true' enable='false'/>"
	.."<button id='page_5' image='1800000047' x='246' y='45' w='65' h='25' OnLButtonUp='Package.Page' revmsg='true' param='5' text='伍'/>"
	.."<button id='page_4' image='1800000047' x='189' y='45' w='65' h='25' OnLButtonUp='Package.Page' revmsg='true' param='4' text='肆'/>"
	.."<button id='page_3' image='1800000047' x='132' y='45' w='65' h='25' OnLButtonUp='Package.Page' revmsg='true' param='3' text='叁'/>"
	.."<button id='page_2' image='1800000047' x='75' y='45' w='65' h='25' OnLButtonUp='Package.Page' revmsg='true' param='2' text='貮'/>"
	.."<button id='page_1' image='1800000047' x='18' y='45' w='60' h='25' OnLButtonUp='Package.Page' revmsg='true' param='1' text='壹'/>"
	.."<image id='image0' image='1800000080' x='25' y='80' w='46' h='46' revmsg='true'/>"
	
	.."<itemctrl id='Item0' x='28' y='83' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image1' image='1800000080' x='72' y='80' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item1' x='75' y='83' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image2' image='1800000080' x='119' y='80' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item2' x='122' y='83' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image3' image='1800000080' x='166' y='80' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item3' x='169' y='83' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image4' image='1800000080' x='213' y='80' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item4' x='216' y='83' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image5' image='1800000080' x='260' y='80' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item5' x='263' y='83' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image6' image='1800000080' x='307' y='80' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item6' x='310' y='83' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image7' image='1800000080' x='354' y='80' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item7' x='357' y='83' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image8' image='1800000080' x='25' y='127' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item8' x='28' y='130' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image9' image='1800000080' x='72' y='127' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item9' x='75' y='130' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image10' image='1800000080' x='119' y='127' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item10' x='122' y='130' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image11' image='1800000080' x='166' y='127' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item11' x='169' y='130' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image12' image='1800000080' x='213' y='127' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item12' x='216' y='130' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image13' image='1800000080' x='260' y='127' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item13' x='263' y='130' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image14' image='1800000080' x='307' y='127' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item14' x='310' y='130' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image15' image='1800000080' x='354' y='127' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item15' x='357' y='130' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image16' image='1800000080' x='25' y='174' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item16' x='28' y='177' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image17' image='1800000080' x='72' y='174' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item17' x='75' y='177' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image18' image='1800000080' x='119' y='174' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item18' x='122' y='177' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image19' image='1800000080' x='166' y='174' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item19' x='169' y='177' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image20' image='1800000080' x='213' y='174' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item20' x='216' y='177' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image21' image='1800000080' x='260' y='174' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item21' x='263' y='177' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image22' image='1800000080' x='307' y='174' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item22' x='310' y='177' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image23' image='1800000080' x='354' y='174' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item23' x='357' y='177' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image24' image='1800000080' x='25' y='221' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item24' x='28' y='224' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image25' image='1800000080' x='72' y='221' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item25' x='75' y='224' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image26' image='1800000080' x='119' y='221' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item26' x='122' y='224' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image27' image='1800000080' x='166' y='221' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item27' x='169' y='224' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image28' image='1800000080' x='213' y='221' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item28' x='216' y='224' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image29' image='1800000080' x='260' y='221' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item29' x='263' y='224' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image30' image='1800000080' x='307' y='221' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item30' x='310' y='224' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image31' image='1800000080' x='354' y='221' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item31' x='357' y='224' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image32' image='1800000080' x='25' y='268' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item32' x='28' y='271' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image33' image='1800000080' x='72' y='268' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item33' x='75' y='271' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image34' image='1800000080' x='119' y='268' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item34' x='122' y='271' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image35' image='1800000080' x='166' y='268' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item35' x='169' y='271' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image36' image='1800000080' x='213' y='268' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item36' x='216' y='271' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image37' image='1800000080' x='260' y='268' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item37' x='263' y='271' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image38' image='1800000080' x='307' y='268' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item38' x='310' y='271' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<image id='image39' image='1800000080' x='354' y='268' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item39' x='357' y='271' w='40' h='40' OnLButtonClick='Package.Method' OnRButtonUp='Package.Method' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	
	.."<edit id='empty_package' image='0' x='305' y='45' w='109' h='20' canedit='false' revmsg='true' enable='false' text_color=#A9A9A9 font='system'/>"
	.."<image id='Bjb' image='1800000051' x='47' y='420' w='16' h='14' revmsg='true'/>"
	.."<image id='Bjb_image' image='1800800003' x='67' y='410' w='103' h='21' revmsg='true'/>"
	.."<edit id='BindYinLiang' image='0' x='69' y='413' w='200' h='20' canedit='false' revmsg='true' font='system'/>"
	.."<image id='Byb' image='1800000053' x='227' y='420' w='16' h='14' revmsg='true'/>"
	.."<image id='Byb_image' image='1800800003' x='247' y='410' w='103' h='21' revmsg='true'/>"
	.."<edit id='BindYuanBao' image='0' x='249' y='413' w='200' h='20' canedit='false' revmsg='true' font='system'/>"
	.."<image id='jb' image='1800000052' x='47' y='450' w='16' h='14' revmsg='true'/>"
	.."<image id='jb_image' image='1800800003' x='67' y='440' w='103' h='21' revmsg='true'/>"
	.."<edit id='YinLiang' image='0' x='69' y='443' w='200' h='20' canedit='false' revmsg='true' font='system'/>"
	.."<image id='yb' image='1800000054' x='227' y='450' w='16' h='14' revmsg='true'/>"
	.."<image id='yb_image' image='1800800003' x='247' y='440' w='103' h='21' revmsg='true'/>"
	.."<edit id='YuanBao' image='0' x='249' y='443' w='200' h='20' canedit='false' revmsg='true' font='system'/>"
	.."<button id='SettlePackage' image='1800000150' x='15' y='355' w='84' h='32' OnLButtonUp='Package.settle_package' revmsg='true' text='整 理' text_color=#E1E4BF/>"
	.."<button id='DivideItem' image='1800000150' x='115' y='355' w='84' h='32' OnLButtonUp='Package.divideItem' revmsg='true' text='物品拆分' text_color=#E1E4BF/>"
	.."<button id='KuoZhan' image='1800000150' x='215' y='355' w='84' h='32' OnLButtonUp='Package.kuozhan' revmsg='true' text='包裹扩展' text_color=#E1E4BF/>"
	.."<button id='Baitan' image='1800000150' x='315' y='355' w='84' h='32' OnLButtonUp='Package.baitan' revmsg='true' text='摆 摊' text_color=#E1E4BF/>"
	.."<button id='Close' image='1800000043' x='385' y='3' w='32' h='32' OnLButtonUp='Package.closeWnd' revmsg='true'/>"
	.."</dialog></form>"
	GenFormByString(ui)
end
--UI Logic Code Start

Package.WndHandle = 0
Package.Bag_Size_0 = 0
Package.Bag_Size_1 = 0
Package.Bag_Size_2 = 0
Package.Bag_Size_3 = 0
Package.Bag_Size_4 = 0
Package.Bag_Size_Tol = 0
Package.Bag_Size_emp = 0
Package.num_tab = 0
--Package.tab = {}
function Package.UIInit(_handle)
	
	Package.WndHandle = _handle
	GUIWndSetSizeM(_handle, 419, 504)
	local h = 0
	h = GetWindow(_handle,"Bjb")
	if h ~= 0 then
		GUIWndSetHint(h, "<font color='#D58840'>绑定金币\n</font><font color='#B8A085'>绑定金币可用于购买各种药品、装备、刷新任务等\n绑定金币可以通过游戏任务、回收装备等途径获得</font>")
	end
	h = GetWindow(_handle,"Bjb_image")
	if h ~= 0 then
		GUIWndSetHint(h, "<font color='#D58840'>绑定金币\n</font><font color='#B8A085'>绑定金币可用于购买各种药品、装备、刷新任务等\n绑定金币可以通过游戏任务、回收装备等途径获得</font>")
	end
	
	h = GetWindow(_handle,"Byb")
	if h ~= 0 then
		GUIWndSetHint(h, "<font color='#D58840'>绑定元宝\n</font><font color='#B8A085'>绑定元宝可以在商城购买绑定商品\n绑定元宝可以通过参加各种线上活动获得</font>")
	end
	h = GetWindow(_handle,"Byb_image")
	if h ~= 0 then
		GUIWndSetHint(h, "<font color='#D58840'>绑定元宝\n</font><font color='#B8A085'>绑定元宝可以在商城购买绑定商品\n绑定元宝可以通过参加各种线上活动获得</font>")
	end
	
	h = GetWindow(_handle,"jb")
	if h ~= 0 then
		GUIWndSetHint(h, "<font color='#D58840'>金币\n</font><font color='#B8A085'>金币可用于购买各种药品、锻造装备等\n金币可以通过拾取怪物掉落途径获得</font>")
	end
	h = GetWindow(_handle,"jb_image")
	if h ~= 0 then
		GUIWndSetHint(h, "<font color='#D58840'>金币\n</font><font color='#B8A085'>金币可用于购买各种药品、锻造装备等\n金币可以通过拾取怪物掉落途径获得</font>")
	end
	
	h = GetWindow(_handle,"yb")
	if h ~= 0 then
		GUIWndSetHint(h, "<font color='#D58840'>元宝\n</font><font color='#B8A085'>元宝可用于购买商城中的道具，元宝可以通过参\n加活动、充值人民币获得，每充值1元=100元宝</font>")
	end
	h = GetWindow(_handle,"yb_image")
	if h ~= 0 then
		GUIWndSetHint(h, "<font color='#D58840'>元宝\n</font><font color='#B8A085'>元宝可用于购买商城中的道具，元宝可以通过\n参加活动、充值人民币获得，每充值1元=100元宝</font>")
	end
	
	local BtnHandle = 0
	for i = 1 , 5 do 
		BtnHandle = GUIWndFindWindow(Package.WndHandle,'page_'..i)
		GUIWndSetTextArrangeType(BtnHandle,-2,0,0,0);
		GUIButtonSetStateTextColor(BtnHandle,0,MakeARGB(255, 100, 96, 80))
		GUIButtonSetStateTextColor(BtnHandle,2,MakeARGB(255, 201, 184, 116))
	end
	local bjb_edit = '0'
	local Bjb_Edit = GUIWndFindWindow(Package.WndHandle,'BindYinLiang')
    if Bjb_Edit ~= 0 then
		if UI:Lua_GetPlayerSelfProperty64(5) then 
			bjb_edit = as3.tolua(LuaRet)
		end        
		EditSetText(Bjb_Edit,nil,bjb_edit)
    end
	local byb_edit = '0'
	local Byb_Edit = GUIWndFindWindow(Package.WndHandle,'BindYuanBao')
    if Byb_Edit ~= 0 then
		if UI:Lua_GetPlayerSelfProperty64(2) then 
			byb_edit = as3.tolua(LuaRet)
		end        
		EditSetText(Byb_Edit,nil,byb_edit)
    end
	local jb_edit = '0'
	local jb_Edit = GUIWndFindWindow(Package.WndHandle,'YinLiang')
    if jb_Edit ~= 0 then
		if UI:Lua_GetPlayerSelfProperty64(4) then 
			jb_edit = as3.tolua(LuaRet)
		end   
		EditSetText(jb_Edit,nil,jb_edit)
    end
	local yb_edit = '0'
	local yb_Edit = GUIWndFindWindow(Package.WndHandle,'YuanBao')
    if yb_Edit ~= 0 then
		if UI:Lua_GetPlayerSelfProperty64(1) then 
			yb_edit = as3.tolua(LuaRet)
		end   
		EditSetText(yb_Edit,nil,yb_edit)
    end
	RegisterUIEvent(LUA_EVENT_PACKAGECOUNT, 'Package_PackageCount', Package.CountChange)
	RegisterUIEvent(LUA_EVENT_PROPERTYDATALIST, 'Package_PropDataChange', Package.propDataChange)		--玩家数据改变
	RegisterUIEvent(LUA_EVENT_PLAYERATTREXTREF, 'Package_玩家64位属性变更', Package.OnUpdate)
--[[	RegisterUIEvent(LUA_EVENT_ONEQUIPMENT, "穿装备", "Package.Method")
	RegisterUIEvent(LUA_EVENT_OFFEQUIPMENT, "脱装备", "Package.Method")
	RegisterUIEvent(LUA_EVENT_ONDROPITEM, "扔装备", "Package.Method")
	RegisterUIEvent(LUA_EVENT_ONADDITEM, "捡装备", "Package.Method") --]]
	
	ButtonSetIsActivePageBtn(_handle,'page_1',true)
	if CLGetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_0) then 
		Package.Bag_Size_0 = tonumber(as3.tolua(LuaRet))
	end
	if CLGetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_1) then 
		Package.Bag_Size_1 = tonumber(as3.tolua(LuaRet))
	end
	if CLGetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_2) then 
		Package.Bag_Size_2 = tonumber(as3.tolua(LuaRet))
	end
	if CLGetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_3) then 
		Package.Bag_Size_3 = tonumber(as3.tolua(LuaRet))
	end
	if CLGetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_4) then 
		Package.Bag_Size_4 = tonumber(as3.tolua(LuaRet))
	end
	
	Package.CheckBagTabBtn()
	
	local CrystalSystemHandle = GetWindow(nil, "CrystalSystem")
	if CrystalSystemHandle ~= 0 then
		reset_two_relationWnd(CrystalSystemHandle, _handle)
	end
	--[[local CrystalSystemHandle = GetWindow(nil, "Recycle")
	if CrystalSystemHandle ~= 0 then
		reset_two_relationWnd(_handle, CrystalSystemHandle)
	end--]]
	
	if CL:GetPackageItemGUIDList() then
		local a = getTable(as3.tolua(LuaRet))
		Package.Bag_Size_emp = #a
	end
	Package.Bag_Size_Tol = Package.Bag_Size_0 + Package.Bag_Size_1 + Package.Bag_Size_2 + Package.Bag_Size_3 + Package.Bag_Size_4
	EditSetText(Package.WndHandle,'empty_package','背包空间: '..Package.Bag_Size_emp..'/'.. Package.Bag_Size_Tol)
	
--[[	for i=0,39 do 
		
		local _GUIHandle = 0 
		if i<8 then
			_GUIHandle = GUIImageCreate(Package.WndHandle, "tipimg"..i, 1804600006, 32+i*47, 104) --更好的装备  25 123 - 0 18
		elseif i<16 then
			_GUIHandle = GUIImageCreate(Package.WndHandle, "tipimg"..i, 1804600006, 32+(i-8)*47, 151)
		elseif i<24 then
			_GUIHandle = GUIImageCreate(Package.WndHandle, "tipimg"..i, 1804600006, 32+(i-16)*47, 198)
		elseif i<32 then
			_GUIHandle = GUIImageCreate(Package.WndHandle, "tipimg"..i, 1804600006, 32+(i-24)*47, 245)
		else
			_GUIHandle = GUIImageCreate(Package.WndHandle, "tipimg"..i, 1804600006, 32+(i-32)*47, 291)
		end
		if _GUIHandle ~= 0 then
			GUIWndSetEnableM(_GUIHandle, false)
			GUIWndSetVisible(_GUIHandle, false)
		end
	end --]]
	--Package.Method()
	
end

function Package.update(num_tab) 
	for i=0,39 do 
		local hand = GUIWndFindWindow(Package.WndHandle,"tipimg".. i)
		if hand ~= 0 then 
			GUIWndSetVisible(hand,  false) 
		end
	end
	Package.num_tab = num_tab
	for i=1,5 do 
		if ButtonGetIsActivePageBtn(Package.WndHandle,'page_'..i) then 
			for j=1,#num_tab do
				if num_tab[j] > 21+40*(i-1) and num_tab[j] < 62+40*(i-1) then 
					local index  = tonumber(num_tab[j])-22 -40*(i-1) 
					local handle = GUIWndFindWindow(Package.WndHandle,"tipimg".. index)
					if handle ~= 0 then 
						GUIWndSetVisible(handle,  true) 
					end
				end 
			end
			break
		end
	end

end
function Package.Methodhouse() 
	--CLAddDelayTask("Package.Method()",500,1)
end


function Package.Method()
	--[[
		tab = {
		["lua1"]={},
		["lua2"]={},
		["lua3"]={},
		["lua4"]={},
		["lua5"]={},
		["lua6"]={},
		["lua7"]={},
		["lua8"]={},
		["lua9"]={},
		["lua10"]={},
		["lua11"]={},
		["lua12"]={},
		["lua13"]={},
		["lua14"]={},
		["lua15"]={},
		}
	--local tab = Package.tab
	local Handle = GetWindow(nil, "Package")
	if Handle == 0 then
		return 
	end
	local itemlist_self ={}     --自身装备列表
	if as3.tolua(UI:Lua_GetPlayerSelfEquipData()) then
		itemlist_self  = getTable(as3.tolua(LuaRet)) 
	end

	local self_job = 0
	if CLGetPlayerSelfPropBase(ROLE_PROP_JOB) then 
		self_job = tonumber(as3.tolua(LuaRet))
	end	
	local sex = 0
	if CLGetPlayerSelfPropBase(ROLE_PROP_SEX) then 
		sex = tonumber(as3.tolua(LuaRet))
	end
	for i = 1 ,#itemlist_self do  
		local Temp = CLGetItemTemplateHandleByGUID(itemlist_self[i])
		if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_SUBTYPE) then 
			local item_type = tonumber(as3.tolua(LuaRet))	
			if item_type ~= 0 then 
				tab["lua"..item_type][#tab["lua"..item_type]+1] = itemlist_self[i]  
				if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_LEVEL) then 
					local level = tonumber(as3.tolua(LuaRet))
					tab["lua"..item_type][#tab["lua"..item_type]+1] = level 
				end
			end 
		end
	end
	
	local itemlist_bag = {}
	if CLGetPackageItemGUIDList() then
		local levellist = getTable(as3.tolua(LuaRet))
		for i=1,#levellist do 
			local Temp = CLGetItemTemplateHandleByGUID(levellist[i])
			if CLGetItemTemplatePropByHandle(Temp, ITEM_PROP_TYPE) then 
				local prop_type = tonumber(as3.tolua(LuaRet))	
				if prop_type == 1 then  
					if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_JOB) then    --辨别职业
						local job = tonumber(as3.tolua(LuaRet))	
						if job == 0  or job == self_job then 
							if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_GENDER) then   --辨别性别
							local gender = tonumber(as3.tolua(LuaRet))
								if 	gender == 0 or gender == sex then  
									itemlist_bag[#itemlist_bag+1] =levellist[i]
								end
							end
						end
					end
				end
			end
		end
	end
	UI:Lua_SubmitForm("包裹表单", "GetItem", serialize(tab).."#"..serialize(itemlist_bag))--]]
end



function Package.propDataChange()
	dbg("propDataChange")
	local tab = getTable(as3.tolua(LuaParam[1]))
	for i = 1 , #tab do
		local preTab = getTable(tab[i])
		if tonumber(as3.tolua(preTab[1])) == ROLE_PROP32_BAG_SIZE_0 then
			Package.Bag_Size_0=as3.tolua(preTab[2])
			Package.CheckBagTabBtn()
		end 
		if tonumber(as3.tolua(preTab[1])) == ROLE_PROP32_BAG_SIZE_1 then
			Package.Bag_Size_1=as3.tolua(preTab[2])
			Package.CheckBagTabBtn()
		end 
		if tonumber(as3.tolua(preTab[1]))  == ROLE_PROP32_BAG_SIZE_2 then
			Package.Bag_Size_2=as3.tolua(preTab[2])
			Package.CheckBagTabBtn()
		end 
		if tonumber(as3.tolua(preTab[1]))  == ROLE_PROP32_BAG_SIZE_3 then
			Package.Bag_Size_3=as3.tolua(preTab[2])
			Package.CheckBagTabBtn()
		end 
		if tonumber(as3.tolua(preTab[1]))  == ROLE_PROP32_BAG_SIZE_4 then
			Package.Bag_Size_4=as3.tolua(preTab[2])
			Package.CheckBagTabBtn()
		end
	end	
end

function Package.CheckBagTabBtn()
	Package.Bag_Size_Tol=Package.Bag_Size_0+Package.Bag_Size_1+Package.Bag_Size_2+Package.Bag_Size_3+Package.Bag_Size_4
	WndSetVisible(Package.WndHandle, 'page_5', false)
	WndSetVisible(Package.WndHandle, 'page_4', false)
	WndSetVisible(Package.WndHandle, 'page_3', false)
	WndSetVisible(Package.WndHandle, 'page_2', false)
	WndSetVisible(Package.WndHandle, 'page_1', false)
	if(Package.Bag_Size_Tol>0) then 
		WndSetVisible(Package.WndHandle, 'page_1', true)
	end
	if(Package.Bag_Size_Tol>40) then 
		WndSetVisible(Package.WndHandle, 'page_2', true)
	end
	if(Package.Bag_Size_Tol>80) then 
		WndSetVisible(Package.WndHandle, 'page_3', true)
	end
	if(Package.Bag_Size_Tol>120) then 
		WndSetVisible(Package.WndHandle, 'page_4', true)
	end
	if(Package.Bag_Size_Tol>160) then 
		WndSetVisible(Package.WndHandle, 'page_5', true)
	end
end

function Package.CountChange()
	local count = as3.tolua(LuaParam[1])
	local tolcount = as3.tolua(LuaParam[2])
	EditSetText(Package.WndHandle,'empty_package','背包空间: '..count..'/'.. tolcount)
end

function Package.Page(_handle)
	--[[for i=0,39 do 
		local hand = GUIWndFindWindow(Package.WndHandle,"tipimg".. i)
		if hand ~= 0 then 
			GUIWndSetVisible(hand,  false)
		end
	end--]]
		
	local index = GUIWndGetParam(_handle)
	for i = 1 , 5 do 
		if i == index then
			ButtonSetIsActivePageBtn(_handle,nil,true)
			CLPackageActivePage(index);
			
			--[[for j=1,#Package.num_tab do    														--比较好的装备 提示
				if Package.num_tab[j] > 21+40*(i-1) and Package.num_tab[j] < 62+40*(i-1) then 
					local num  = tonumber(Package.num_tab[j])-22-40*(i-1)
					local handle = GUIWndFindWindow(Package.WndHandle,"tipimg".. num)
					if handle ~= 0 then
						GUIWndSetVisible(handle,  true)
					end
				end
			end--]]
			
		else
			ButtonSetIsActivePageBtn(Package.WndHandle,'page_'..i,false)
		end
	end
	
end

function Package.OnUpdate()
	local _Message = as3.tolua(LuaParam[1])
	local _AttyType = as3.tolua(LuaParam[2])
	local _ChangeType = as3.tolua(LuaParam[3])
	
	if tonumber(_AttyType) == 1 then
		if UI:Lua_GetPlayerSelfProperty64(1) then 
			local _edit = as3.tolua(LuaRet)
			EditSetText(Package.WndHandle,'YuanBao',''.._edit)
		end
	elseif tonumber(_AttyType) == 2 then
		if UI:Lua_GetPlayerSelfProperty64(2) then 
			local _edit = as3.tolua(LuaRet)
			EditSetText(Package.WndHandle,'BindYuanBao',''.._edit)
		end
	elseif tonumber(_AttyType) == 4 then
		if UI:Lua_GetPlayerSelfProperty64(4) then 
			local _edit = as3.tolua(LuaRet)
			EditSetText(Package.WndHandle,'YinLiang',''.._edit)
		end
	elseif tonumber(_AttyType) == 5 then
		if UI:Lua_GetPlayerSelfProperty64(5) then 
			local _edit = as3.tolua(LuaRet)
			EditSetText(Package.WndHandle,'BindYinLiang',''.._edit)
		end		
	end
	
	
end	


function Package.closeWnd(_handle)

	GUIWndClose(Package.WndHandle)
	local CrystalSystemHandle = GetWindow(nil, "CrystalSystem")
	if CrystalSystemHandle ~= 0 then
		reset_two_relationWnd(CrystalSystemHandle, 0)
	end
	--[[local CrystalSystemHandle = GetWindow(nil, "Recycle")
	if CrystalSystemHandle ~= 0 then
		reset_two_relationWnd(CrystalSystemHandle, 0)
	end--]]
end

function Package.settle_package(_handle)
	Package.timed = 3 
	local hand = GetWindow(nil,"Package,SettlePackage")
	if hand ~= 0 then 
		if Package.timed >= 1 then 
			GUIWndSetTextM(hand,"3s")
			GUIWndSetEnableM(hand, false)
		end
	end
	CLAddDelayTask("Package.daojishi()", 1000, 3)
	CLDoItemArrange(0)
	--Package.Method() 
end
function Package.daojishi()
	Package.timed = Package.timed -1
	local hand = GetWindow(nil,"Package,SettlePackage")
	if hand ~= 0 then 
		if Package.timed >= 1 then 
			GUIWndSetTextM(hand,tostring(Package.timed).."s")
			GUIWndSetEnableM(hand, false)
		else 
			GUIWndSetTextM(hand,"整理")
			GUIWndSetEnableM(hand, true)
		end
	end
end
function Package.baitan(_handle)
	CLOnOpenStall()

end
function Package.divideItem(_handle)
	CLDoItemSplit()

end
function Package.kuozhan(_handle)
	CLOnOpenBagExpand()
end


Package.main()