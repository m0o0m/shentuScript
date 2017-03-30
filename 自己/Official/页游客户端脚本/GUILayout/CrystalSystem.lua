CrystalSystem = {}
function CrystalSystem.main()
	if GetWindow(nil,"CrystalSystem") ~= 0 then
		CrystalSystem.closeWnd()
	else
		local ui = "<form>"
		.. "<dialog OnInit='CrystalSystem.UIInit' id='CrystalSystem' image='1803700001' x='280' y='260' w='631' h='441' esc_close='true' drag='true' revmsg='true'>"
		.."	<image id='img_crystal' image='1803700027' x='288' y='8' w='55' h='23' revmsg='true' enable='false'/>"
		.. "<button id='btn1' image='1803700003' x='42' y='52' w='77' h='29' OnLButtonUp='CrystalSystem.itemClick' revmsg='true' text='��ʯ��Ƕ'/>"
		.. "<button id='btn2' image='1803700003' x='120' y='52' w='77' h='29' OnLButtonUp='CrystalSystem.itemClick' revmsg='true' text='��ʯ���'/>"
		.. "<button id='btn3' image='1803700003' x='198' y='52' w='77' h='29' OnLButtonUp='CrystalSystem.itemClick' revmsg='true' text='��ʯ����'/>"
		.. "<button id='btn4' image='1803700003' x='276' y='52' w='77' h='29' OnLButtonUp='CrystalSystem.itemClick' revmsg='true' text='��ʯת��'/>"
		.. "<button id='close' image='1803700030' x='576' y='8' w='24' h='24' OnLButtonUp='CrystalSystem.closeWnd' revmsg='true'/>"
		.. "<image id='helpimg' image='1800000297' x='480' y='380' w='27' h='30' revmsg='true'/>"
		.. "<edit id='helptxt' x='506' y='379' w='80' h='30' page_btn='true' revmsg='true' text='' text_color='#C2B6A0'/>"
		.. "</dialog>"
		.. "</form>"   
		GenFormByString(ui)
	end	
end

CrystalSystem.WndHandle = 0
CrystalSystem.functionForm = {"��ʯ��Ƕ��", "��ʯ�����","��ʯ������", "��ʯת����"}
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
	local txt_tab = {"��ʯ��Ƕ˵��","��ʯ���˵��","��ʯ����˵��","��ʯת��˵��"}
	local txt_tab2 = {"<font color='#D58840'>��ʯ��Ƕ˵����\n</font><font color='#B8A085'>1.ͬһ��װ����Ƕ�ı�ʯ���಻���ظ�\n2.��ʯ�׿�ͨ�������Ʒ�ӡ���\n3.�Ʒ�ӡ��ͨ���μӻ����ɱBOSS���̳ǹ���ȷ�ʽ��á�</font>",
					" <font color='#D58840'>��ʯ���˵����\n</font><font color='#B8A085'>1.��ʯ���100%�ɹ�\n2.��ʯ�����������İ󶨽��\n3.������ʱ���ʧ��</font>",
					" <font color='#D58840'>��ʯ����˵����\n</font><font color='#B8A085'>1.��ʯ����100%�ɹ�\n2.��ʯ�����������İ󶨽��\n3.��ʯ������������ʱ����ͨ������ݹ��򡱻�ñ�ʯ</font>",
					" <font color='#D58840'>��ʯת��˵����\n</font><font color='#B8A085'>1.��ʯת��100%�ɹ�\n2.��ʯת���������İ󶨽��\n3.ת����ı�ʯ�ļ��𲻻ή��</font>"
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