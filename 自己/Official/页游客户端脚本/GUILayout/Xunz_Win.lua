--勋章升级窗口
Xunz_Win = {}
function Xunz_Win.main()
    local ui = "<form default_parent='AchieveWnd'> <dialog OnInit='Xunz_Win.UIInit' id='Xunz_Win' image='1802200029' x='10' y='75' w='656' h='422' revmsg='true'>"
	.."	<image id='item_image' image='1802200008' x='150' y='25' w='106' h='97' revmsg='true' enable='false'/>"
	.."	<itemctrl id='item' x='172' y='44' w='62' h='60' auto_manage='true' use_back='-1' enable='true' revmsg='true'/>"
	.."	<image id='nxun_image' image='1802200009' x='128' y='125' w='160' h='45' revmsg='true' enable='false'/>"
	.."	<edit id='nxun_edit' x='165' y='134' w='87' h='23' canedit='false' revmsg='true' enable='false' />"
	.."	<image id='p_image' image='1802200017' x='20' y='175' w='155' h='99' revmsg='true' enable='false'/>"
	.."	<image id='p_image1' image='1802200017' x='225' y='175' w='155' h='99' revmsg='true' enable='false'/>"
	.."	<image id='p_image2' image='1800000366' x='182' y='200' w='43' h='58' revmsg='true' enable='false'/>"
	.."	<edit id='editm1' x='28' y='183' w='64' h='22' canedit='false' revmsg='true' enable='false' text_color='#E6D386' text='物理攻击：' />"
	.."	<edit id='edit1' x='89' y='183' w='75' h='22' canedit='false' revmsg='true' enable='false' text='0 - 0' />"
	.."	<edit id='editm2' x='28' y='210' w='64' h='22' canedit='false' revmsg='true' enable='false' text_color='#E6D386' text='魔法攻击：' />"
	.."	<edit id='edit2' x='89' y='209' w='75' h='22' canedit='false' revmsg='true' enable='false' text='0 - 0' />"
	.."	<edit id='editm3' x='28' y='240' w='64' h='21' canedit='false' revmsg='true' enable='false' text_color='#E6D386' text='道术攻击：' />"
	.."	<edit id='edit3' x='89' y='239' w='75' h='22' canedit='false' revmsg='true' enable='false' text='0 - 0' />"
	.."	<edit id='editmm1' x='230' y='181' w='64' h='22' canedit='false' revmsg='true' enable='false' text_color='#E6D386' text='物理攻击：' />"
	.."	<edit id='edi1' x='292' y='181' w='75' h='22' canedit='false' revmsg='true' enable='false' text_color='#00CD30' text='0 - 0' />"
	.."	<edit id='editmm2' x='230' y='210' w='64' h='22' canedit='false' revmsg='true' enable='false' text_color='#E6D386' text='魔法攻击：' />"
	.."	<edit id='edi2' x='292' y='210' w='75' h='22' canedit='false' revmsg='true' enable='false' text_color='#00CD30' text='0 - 0' />"
	.."	<edit id='editmm3' x='230' y='240' w='64' h='22' canedit='false' revmsg='true' enable='false' text_color='#E6D386' text='道术攻击：' />"
	.."	<edit id='edi3' x='292' y='241' w='77' h='19' canedit='false' revmsg='true' enable='false' text_color='#00CD30' text='0 - 0' />"
	.."	<edit id='cjjf' x='165' y='290' w='161' h='26' canedit='false' revmsg='true' enable='false' text_color='#FFF500' text='升级积分' />"
	.."	<image id='jindut_ima' image='1800000364' x='50' y='310' w='321' h='47' revmsg='true' enable='false'/>"
	.."	<image id='jindut_image' image='1800000365' x='78' y='321' w='257' h='36' revmsg='true' enable='false' visible='false'/>"
	.."	<edit id='jifen_edit' x='170' y='327' w='161' h='12' canedit='false' revmsg='true' enable='false' text='0 - 0' />"
	.."	<button id='shengj_button' image='1800000150' x='160' y='365' w='84' h='32' OnLButtonUp='Xunz_Win.get' text_color='#FEE4C1' text='升级勋章'/>"
	.."	<button id='shuom_button' image='1800000297' x='22' y='380' w='27' h='30' revmsg='true'/>"
	.."	<richedit id='shuom_edit' x='52' y='385' w='85' h='19' revmsg='true' text_color='#C2B6A0' text='' />"
	.."	<richedit id='buy_Ach' x='290' y='385' w='100' h='19' revmsg='true' text_color='#C2B6A0' visible='true' text='' />"
	.."	<image id='xun_list' image='1801500077' x='475' y='-3' w='105' h='32' revmsg='true' enable='false'/>"
	.."	<button id='image1' image='1802200010' x='398' y='39' w='234' h='71' revmsg='true'/>"
	.."	<image id='edit_image1' image='1800000301' x='436' y='47' w='181' h='54' revmsg='true' enable='false'/>"
	.."	<image id='get_yes1' image='0' x='552' y='43' w='16' h='16' revmsg='true' enable='false'/>"
	.."	<itemctrl id='item1' x='415' y='55' w='40' h='40' auto_manage='true' use_back='-1' enable='true' revmsg='true'/>"
	.."	<edit id='name1' x='474' y='61' w='66' h='28' canedit='false' revmsg='true' enable='false' text_color='#FFF700' text='' />"
	.."	<button id='image2' image='1802200010' x='398' y='112' w='234' h='71' revmsg='true'/>"
	.."	<image id='edit_image2' image='1800000301' x='436' y='120' w='181' h='54' revmsg='true' enable='false'/>"
	.."	<image id='get_yes2' image='0' x='552' y='116' w='16' h='16' revmsg='true' enable='false'/>"
	.."	<itemctrl id='item2' x='415' y='128' w='40' h='40' auto_manage='true' use_back='-1' enable='true' revmsg='true'/>"
	.."	<edit id='name2' x='474' y='134' w='66' h='28' canedit='false' revmsg='true' enable='false' text_color='#FFF700' text='' />"
	.."	<button id='image3' image='1802200010' x='398' y='185' w='234' h='71' revmsg='true'/>"
	.."	<image id='edit_image3' image='1800000301' x='436' y='195' w='181' h='54' revmsg='true' enable='false'/>"
	.."	<image id='get_yes3' image='0' x='552' y='190' w='16' h='16' revmsg='true' enable='false'/>"
	.."	<itemctrl id='item3' x='415' y='202' w='40' h='40' auto_manage='true' use_back='-1' enable='true' revmsg='true'/>"
	.."	<edit id='name3' x='474' y='208' w='66' h='28' canedit='false' revmsg='true' enable='false' text_color='#FFF700' text='' />"
	.."	<button id='image4' image='1802200010' x='398' y='259' w='234' h='71' revmsg='true'/>"
	.."	<image id='edit_image4' image='1800000301' x='436' y='268' w='181' h='54' revmsg='true' enable='false'/>"
	.."	<image id='get_yes4' image='0' x='552' y='265' w='16' h='16' revmsg='true' enable='false'/>"
	.."	<itemctrl id='item4' x='415' y='275' w='40' h='40' auto_manage='true' use_back='-1' enable='true' revmsg='true'/>"
	.."	<edit id='name4' x='474' y='282' w='66' h='28' canedit='false' revmsg='true' enable='false' text_color='#FFF700' text='' />"
	.."	<button id='image5' image='1802200010' x='398' y='333' w='234' h='71' revmsg='true'/>"
	.."	<image id='edit_image5' image='1800000302' x='436' y='342' w='181' h='54' revmsg='true' enable='false'/>"
	.."	<image id='get_yes5' image='0' x='552' y='338' w='16' h='16' revmsg='true' enable='false'/>"
	.."	<itemctrl id='item5' x='415' y='350' w='40' h='40' auto_manage='true' use_back='-1' enable='true' revmsg='true'/>"
	.."	<edit id='name5' x='474' y='356' w='66' h='28' canedit='false' revmsg='true' enable='false' text_color='#FFF700' text='' />"
	.."	<button id='up_page' image='1800000372' x='631' y='90' w='4095' h='4095' OnLButtonUp='Xunz_Win.up_page' revmsg='true'/>"
	.."	<button id='down_page' image='1800000376' x='631' y='190' w='4095' h='4095' OnLButtonUp='Xunz_Win.down_page' revmsg='true'/>"
	.."	<edit id='msg1' x='95' y='390' w='220' h='25' text_color='RED' align='center' text='' />"
	.."	<edit id='msg2' x='95' y='390' w='220' h='25' text_color='RED' align='center' text='' />"
	.."	<edit id='msg3' x='95' y='390' w='220' h='25' text_color='RED' align='center' text='' />"
	.."	<edit id='msg4' x='95' y='390' w='220' h='25' text_color='RED' align='center' text='' />"
	.."	<edit id='msg5' x='95' y='390' w='220' h='25' text_color='RED' align='center' text='' />"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end	

Xunz_Win.WndHandle = 0
Xunz_Win.index = 0
Xunz_Win.jifen = 0
Xunz_Win.page = 1
Xunz_Win.xun_tab = {}
Xunz_Win.xun_jifen = {60000,400000,1450000,2950000,4680000,7800000,14500000,25000000,38000000,50000000,70000000,95000000}
Xunz_Win._control = {}
function Xunz_Win.UIInit(_Parent)
	Xunz_Win.WndHandle = _Parent
	local _handle = GetWindow(_Parent,"shuom_edit")
	if _handle ~= 0 then
		GUIRichEditAppendString(_handle,"#SELECT#积分说明#SELECTEND#")
		GUIWndSetHint(_handle, "<font color='#D58840'>积分说明：\n</font><font color='#B8A085'>1.积分可用来兑换勋章，增强角色属性\n2.积分可以通过完成成就、活动、使用成就令牌获得\n3.成就令牌可以通过商城或右侧链接购买</font>")
	end
	
	_handle = GetWindow(_Parent,"buy_Ach")
	if _handle ~= 0 then
		GUIRichEditAppendString(_handle,"#SELECT#购买成就令牌＞#SELECTEND#")		
		GUIWndRegistScript(_handle, RDWndBaseCL_mouse_lbUp, "Xunz_Win.buy_ach")
	end		
	
	local _nxun_edit = GUIWndFindChildM(_Parent,"nxun_edit")
	if _nxun_edit ~= 0 then	
		GUIEditSetFontM(_nxun_edit,"SIMLI18")
		WndSetTextColorM(_nxun_edit,nil,MakeARGB(255, 255, 217, 70))
	end

	local _jinduti = GUIWndFindChildM(_Parent,"jindut_image")
	if _jinduti ~= 0 then
		GUIWndSetSizeM(_jinduti, 257, 36)		
	end
	
	_handel = GetWindow(_Parent,"up_page")
	if _handel ~= 0 then Xunz_Win._control["up_page"] = _handel end
	_handel = GetWindow(_Parent,"down_page")
	if _handel ~= 0 then Xunz_Win._control["down_page"] = _handel end
	GUIWndSetEnableM(Xunz_Win._control["up_page"],false)

	UI:Lua_SubmitForm("成就积分表单", "xunz", "")
	
	
end
function xunzl(data,vis)
	local handle = GetWindow(nil,"AchieveWnd,image3")
	if handle ~= 0 then 
		if tonumber(vis) == 1 then 
			GUIWndSetVisible(handle,true)
		else 
			GUIWndSetVisible(handle,false)
		end
	end 
	Xunz_Win.index = tonumber(data[2])
	Xunz_Win.jifen = tonumber(data[3])
	Xunz_Win.xun_tab = data[1]
	xunz_updata(Xunz_Win.index,Xunz_Win.jifen)
end

function xunz_updata(inde,jifen)
	local index = inde + 1 
	if inde >= #Xunz_Win.xun_tab then 
		index = inde
	end
	local handel = GetWindow(Xunz_Win.WndHandle,"item",nil)		
	RDItemCtrlSetGUIDataByKeyName(handel, Xunz_Win.xun_tab[index], 1, true)
	local temp = CLGetItemTemplateHandleByKeyName(Xunz_Win.xun_tab[index])
	local name = ""
	if CLGetItemTemplatePropByHandle(temp,ITEM_PROP_NAME) then
		name = as3.tolua(LuaRet)
	end
	local _handle =  GetWindow(Xunz_Win.WndHandle,"nxun_edit",nil)
	EditSetText(_handle,nil,name)
	local temp1 = 0 
	if index > 1 then
		temp1 = CLGetItemTemplateHandleByKeyName(Xunz_Win.xun_tab[index - 1])
	end	
	local tab1 = {{80,81},{82,83},{84,85}}
	for i = 1 , 3 do 
		local mi = 0 
		local ma = 0
		if CLGetItemTemplatePropByHandle(temp,tab1[i][1]) then
			ma = as3.tolua(LuaRet)
		end
		if CLGetItemTemplatePropByHandle(temp,tab1[i][2]) then
			mi = as3.tolua(LuaRet)
		end
		local _handle =  GetWindow(Xunz_Win.WndHandle,"edi"..i,nil)
		EditSetText(_handle,nil,mi.." - "..ma)
		if temp1 ~= 0 then 
			if CLGetItemTemplatePropByHandle(temp1,tab1[i][1]) then
				ma = as3.tolua(LuaRet)
			end
			if CLGetItemTemplatePropByHandle(temp1,tab1[i][2]) then
				mi = as3.tolua(LuaRet)
			end
			local _handle =  GetWindow(Xunz_Win.WndHandle,"edit"..i,nil)
			EditSetText(_handle,nil,mi.." - "..ma)
		end	
	end
	Xunz_Win.list_update(Xunz_Win.page)
	Xunz_Win.jifen_update(inde,jifen)
end

function Xunz_Win.jifen_update(inde,jifen)
	Xunz_Win.index = tonumber(inde)
	Xunz_Win.jifen = tonumber(jifen)
	local index = inde + 1
	if inde >= #Xunz_Win.xun_tab then 
		index = inde
	end
	local _handle = GetWindow(Xunz_Win.WndHandle,"jifen_edit",nil)
	EditSetText(_handle,nil,jifen.." - "..Xunz_Win.xun_jifen[index])
	local _jindutImage = GetWindow(Xunz_Win.WndHandle,"jindut_image",nil)
	if _jindutImage ~= 0 then
		local value = 0
		if tonumber(jifen) > 0 then
			local a = tonumber(jifen)
			local b = tonumber(Xunz_Win.xun_jifen[index])
			value = a/b
		end
		if value > 0 then
			GUIWndSetVisible(_jindutImage,true)
			GUIImageSetDrawRect(_jindutImage,0,value,0,1)
		else
			GUIWndSetVisible(_jindutImage,false)
		end
	end	
	if tonumber(inde) ~= #Xunz_Win.xun_tab then
		local handle = GetWindow(Xunz_Win.WndHandle, "shengj_button")
		local achScore_tab = {60000,400000,1450000,2950000,4680000,7800000,14500000,25000000,38000000,50000000,70000000,95000000,0}
		if handle ~= 0 then
			if Xunz_Win.jifen >= achScore_tab[index] then
				WndAddEffect(handle, "shengj_button", 3020100700, -13, -8, 100, 0)
			else
				WndDelEffect(handle)
			end
		end
	end
end	

function Xunz_Win.up_page(_handle)
	Xunz_Win.page = Xunz_Win.page - 1
	Xunz_Win.updatePgBtn()
	Xunz_Win.list_update(Xunz_Win.page)
end

function Xunz_Win.down_page(_handle)
	Xunz_Win.page = Xunz_Win.page + 1
	Xunz_Win.updatePgBtn()
	Xunz_Win.list_update(Xunz_Win.page)
end

function Xunz_Win.updatePgBtn()
	local pgCount = #Xunz_Win.xun_tab - 4
	--是否是首页
	if Xunz_Win.page == 1 then
		GUIWndSetEnableM(Xunz_Win._control["up_page"], false)
	else
		GUIWndSetEnableM(Xunz_Win._control["up_page"], true)
	end
	--是否是尾页
	if Xunz_Win.page == pgCount then
		GUIWndSetEnableM(Xunz_Win._control["down_page"],false)
	else
		GUIWndSetEnableM(Xunz_Win._control["down_page"],true)
	end
end

function Xunz_Win.list_update(pag)
	for i = 1 , 5 do
		local _handle = GUIWndFindChildM(Xunz_Win.WndHandle,"item"..i)
		GUIItemCtrlClearItemData(_handle)
		EditSetText(Xunz_Win.WndHandle,"name"..i,"")
		ImageSetImageID(Xunz_Win.WndHandle,"edit_image"..i,0)
		ImageSetImageID(Xunz_Win.WndHandle,"get_yes"..i,0)
	end
	local a = pag
	local b = Xunz_Win.index - pag + 1   
	for i = 1 , 5 do
		local _handle1 = GUIWndFindChildM(Xunz_Win.WndHandle,"item"..i)
		RDItemCtrlSetGUIDataByKeyName(_handle1,Xunz_Win.xun_tab[a],0,false)
		local temp = CLGetItemTemplateHandleByKeyName(Xunz_Win.xun_tab[a])
		local name = ""
		if CLGetItemTemplatePropByHandle(temp,ITEM_PROP_NAME) then
			name = as3.tolua(LuaRet)
		end
		EditSetText(Xunz_Win.WndHandle,"name"..i,name)
		if b < 1 then
			ImageSetImageID(Xunz_Win.WndHandle,"edit_image"..i,1800000302)
			ImageSetImageID(Xunz_Win.WndHandle,"get_yes"..i,1800000296)
		else
			if i <= b then
				ImageSetImageID(Xunz_Win.WndHandle,"edit_image"..i,1800000301)	
				ImageSetImageID(Xunz_Win.WndHandle,"get_yes"..i,1800000295)	
			else 
				ImageSetImageID(Xunz_Win.WndHandle,"edit_image"..i,1800000302)
				ImageSetImageID(Xunz_Win.WndHandle,"get_yes"..i,1800000296)
			end	
		end
		a = a + 1
	end

end

function Xunz_Win.get(_handle)
	UI:Lua_SubmitForm("成就积分表单", "get_xun", "")
end	
function Xunz_Win.msg_up(str)
	local index = 1 
	for i = 1 , 5 do 
		if EditGetText(Xunz_Win.WndHandle,"msg"..i) == "" then
			index = i
		end
	end	
	EditSetText(Xunz_Win.WndHandle,"msg"..index,str)
	local _handle = GetWindow(nil,"AchieveWnd,Xunz_Win,msg"..index)
	if _handle ~= 0 then
		GUI:WndTween(_handle, "<Tween><Frame time='3' y = '340' /></Tween>","Xunz_Win.clear("..index..")")
	end		
end	
function Xunz_Win.clear(index)
	EditSetText(Xunz_Win.WndHandle,"msg"..index,"")
	local _handle = GetWindow(nil,"AchieveWnd,Xunz_Win,msg"..index)
	GUI:WndTween(_handle, "<Tween><Frame time='1' y = '390' /></Tween>","")
end

function Xunz_Win.buy_ach(_handle)
	local _handle1 = GetWindow(nil,"AchieveWnd, Buy_ach")
	if _handle1 == 0 then
		UI:Lua_OpenWindow(AchieveWnd.WndHandle, "Buy_ach.lua")
	else
		GUIWndClose(_handle1)
	end
end

Xunz_Win.main()