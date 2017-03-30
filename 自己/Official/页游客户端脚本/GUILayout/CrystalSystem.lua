CrystalSystem = {}
function CrystalSystem.main()
	if GetWindow(nil,"CrystalSystem") ~= 0 then
		CrystalSystem.closeWnd()
	else
		local ui = "<form>"
		.. "<dialog OnInit='CrystalSystem.UIInit' id='CrystalSystem' image='1803700001' x='280' y='260' w='631' h='441' esc_close='true' drag='true' revmsg='true'>"
		.."	<image id='img_crystal' image='1803700027' x='288' y='8' w='55' h='23' revmsg='true' enable='false'/>"
		.. "<button id='btn1' image='1803700003' x='42' y='52' w='77' h='29' OnLButtonUp='CrystalSystem.itemClick' revmsg='true' text='宝石镶嵌'/>"
		.. "<button id='btn2' image='1803700003' x='120' y='52' w='77' h='29' OnLButtonUp='CrystalSystem.itemClick' revmsg='true' text='宝石拆除'/>"
		.. "<button id='btn3' image='1803700003' x='198' y='52' w='77' h='29' OnLButtonUp='CrystalSystem.itemClick' revmsg='true' text='宝石升级'/>"
		.. "<button id='btn4' image='1803700003' x='276' y='52' w='77' h='29' OnLButtonUp='CrystalSystem.itemClick' revmsg='true' text='宝石转换'/>"
		.. "<button id='close' image='1803700030' x='576' y='8' w='24' h='24' OnLButtonUp='CrystalSystem.closeWnd' revmsg='true'/>"
		.. "<image id='helpimg' image='1800000297' x='480' y='380' w='27' h='30' revmsg='true'/>"
		.. "<edit id='helptxt' x='506' y='379' w='80' h='30' page_btn='true' revmsg='true' text='' text_color='#C2B6A0'/>"
		.. "</dialog>"
		.. "</form>"   
		GenFormByString(ui)
	end	
end

CrystalSystem.WndHandle = 0
CrystalSystem.functionForm = {"宝石镶嵌表单", "宝石拆除表单","宝石升级表单", "宝石转换表单"}
CrystalSystem.functionHandle = {"InlayCrystal", "DismantleCrystal", "OtaCrystal", "ConvCrystal"}

function CrystalSystem.UIInit(_GUIHandle)
	
	CenterWnd(_GUIHandle)
	GUIWndSetSizeM(_GUIHandle, 631, 441)
	CrystalSystem.WndHandle = _GUIHandle
	
	local packageHandle = GetWindow(nil, "Package")
	if packageHandle == 0 then
		CLOnOpenPakage()
		packageHandle = GetWindow(nil, "Package")
	end 
	if packageHandle ~= 0 then
		reset_two_relationWnd(_GUIHandle, packageHandle)
	end
	
	local handle = 0
	for i = 1, #CrystalSystem.functionHandle do
		handle = GetWindow(_GUIHandle, "btn" .. i)
		if handle ~= 0 then
			GUIWndSetParam(handle, i)
			GUIButtonSetStateTextColor(handle,0,MakeARGB(255, 107, 91, 80))
			GUIButtonSetStateTextColor(handle,2,MakeARGB(255, 206, 178, 98))
			if i == 1 then
				GUIButtonSetIsActivePageBtn(handle, true)
			else 
				GUIButtonSetIsActivePageBtn(handle, false)
			end
		end
	end
	UI:Lua_OpenWindow(CrystalSystem.WndHandle, CrystalSystem.functionHandle[1] .. ".lua")
	CrystalSystem.hint(1)
end

function CrystalSystem.itemClick(_handle)
	local sender = GUIWndGetParam(_handle)
	local isPageBtn = GUIButtonGetIsActivePageBtn(_handle)
	if not isPageBtn then
		CrystalSystem.Update(_handle)
		UI:Lua_OpenWindow(CrystalSystem.WndHandle, CrystalSystem.functionHandle[sender] .. ".lua")
	end
	CrystalSystem.hint(sender)
end

function CrystalSystem.Update(_handle)
	for i = 1, #CrystalSystem.functionHandle do
		local handle = GetWindow(nil, "CrystalSystem,btn" .. i)
		local formHandle = GetWindow(nil, "CrystalSystem," .. CrystalSystem.functionHandle[i])	
		if handle == _handle then
			ButtonSetIsActivePageBtn(CrystalSystem.WndHandle, "btn"..i, true)
		else 
			ButtonSetIsActivePageBtn(CrystalSystem.WndHandle, "btn"..i, false)
			if formHandle ~= 0 then
				GUIWndClose(formHandle)
			end
		end
	end
end

function CrystalSystem.closeWnd()
	local handle = GetWindow(nil,"CrystalSystem")
	if handle ~= 0 then
		GUIWndClose(handle)
	end	
	local packageHandle = GetWindow(nil, "Package")
	if packageHandle ~= 0 then
		reset_two_relationWnd(0, packageHandle)
	end
end
 
function CrystalSystem.hint(num)
	local txt_tab = {"宝石镶嵌说明","宝石拆除说明","宝石升级说明","宝石转换说明"}
	local txt_tab2 = {"<font color='#D58840'>宝石镶嵌说明：\n</font><font color='#B8A085'>1.同一件装备镶嵌的宝石种类不可重复\n2.宝石孔可通过消耗破封印解封\n3.破封印可通过参加活动、击杀BOSS、商城购买等方式获得。</font>",
					" <font color='#D58840'>宝石拆除说明：\n</font><font color='#B8A085'>1.宝石拆除100%成功\n2.宝石升级优先消耗绑定金币\n3.背包满时拆除失败</font>",
					" <font color='#D58840'>宝石升级说明：\n</font><font color='#B8A085'>1.宝石升级100%成功\n2.宝石升级优先消耗绑定金币\n3.宝石升级数量不足时，可通过“快捷购买”获得宝石</font>",
					" <font color='#D58840'>宝石转换说明：\n</font><font color='#B8A085'>1.宝石转换100%成功\n2.宝石转换优先消耗绑定金币\n3.转换后的宝石的级别不会降低</font>"
				}
	local handle = GetWindow(CrystalSystem.WndHandle, "helptxt")
	if handle ~= 0 then 
		GUIEditSetTextM(handle,txt_tab[num])
		GUIWndMoveToParentTop(handle)
		GUIWndSetHint(handle,txt_tab2[num] )
	end
	handle = GetWindow(CrystalSystem.WndHandle, "helpimg")
	if handle ~= 0 then 
		GUIWndMoveToParentTop(handle)
		GUIWndSetHint(handle,txt_tab2[num] )
	end
	
end

CrystalSystem.main()