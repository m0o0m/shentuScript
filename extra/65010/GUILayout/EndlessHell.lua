EndlessHell = {}
function EndlessHell.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"EndlessHell",1800600003,0,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,361, 524)
		GUI:WndSetIsESCClose(_Parent, true)
		GUI:WndSetMoveWithLBM(_Parent)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"lineImage1",1800600004,20,114)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,327, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"lineImage2",1800600004,21,374)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,327, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"tittle",150,6,127,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294770432)
		GUI:EditSetTextM(_GUIHandle,"�޾���Ԩ")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeButton",1800000043,324,3)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "EndlessHell.closeWnd")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,26, 26)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"introduceText",36,50,300,53)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255,228, 193, 159))
		GUI:RichEditAppendString(_GUIHandle,"    �޾���Ԩ��Ǳ�������ǿ��Ķ�ħ��������������ʿǰȥ��ս��Ѱ�ұ�")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"t1",40,130,145,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"bossName",41,151,295,40)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"reward",40,195,293,70)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"warning",39,280,290,58)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"enterMap",126,418,140,27)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "EndlessHell.Clicked")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"info",95,465,300,40)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	
	EndlessHell.UIInit(_Parent)
end

--UI Logic Code Start
function EndlessHell.UIInit(_Handle)
	EndlessHell._h = _Handle
	GUI:WndSetMagicUI(_Handle, 1)
	GUI:WndSetSizeM(_Handle, 361, 524)
	CenterWnd(_Handle)
	local msgTb = deserialize(FormParam[1])
	if msgTb[1] ~= nil or  msgTb ~= "" then
		local handle = 0
		handle = GetWindow(_Handle, "t1")
		if handle ~= 0 then
			WndSetTextM(handle, "��"..msgTb[1].."��˵��")
		end
		
		handle = GetWindow(_Handle, "bossName")
		if handle ~= 0 then
			GUI:RichEditAppendString(handle, "#COLORCOLOR_GREENG#1.����BOSS: #COLOREND#".."#COLORCOLOR_RED#"..msgTb[2].."#COLOREND#")
		end
		
		handle = GetWindow(_Handle, "reward")
		if handle ~= 0 then
			GUI:RichEditAppendString(handle,"#COLORCOLOR_GREENG#2.�����"..msgTb[1].."�㽱����\n\n#COLOREND#".."#COLORCOLOR_GOLD#   ��ʯ����(С)#COLOREND#".."#COLORCOLOR_GREENG#x"..msgTb[3].."#COLOREND#".."#COLORCOLOR_GOLD#\n\n   ��ש(С)#COLOREND#".."#COLORCOLOR_GREENG#x"..msgTb[4].."#COLOREND#")
		end
		
		handle = GetWindow(_Handle, "warning")
		if handle ~= 0 then
			local a = msgTb[3] + msgTb[4]
			GUI:RichEditAppendString(handle,"#COLORCOLOR_GREENG#3.��ȡ������"..a.."�����ӣ���ȷ���������㹻�ռ�#COLOREND#")
		end
		
		handle = GetWindow(_Handle, "enterMap")
		if handle ~= 0 then
			GUI:RichEditAppendString(handle,"#SELECT#".."�����޾���Ԩ"..msgTb[1].."��".."#SELECTEND#")
		end
		
		local str = ""
		if msgTb[6] >= msgTb[5] then
			str = "#COLORCOLOR_GREENG#"..msgTb[6].."����#COLOREND#"
		else
			str = "#COLORCOLOR_RED#"..msgTb[6].."#COLOREND#".."#COLORCOLOR_GREENG#����#COLOREND#"
		end
		handle = GetWindow(_Handle, "info")
		if handle ~= 0 then
			GUI:RichEditAppendString(handle,"#COLORCOLOR_GREENG#������Ԩƾ֤��"..msgTb[5].."����ӵ��#COLOREND#"..str)
		end
	else
		local handle = GetWindow(_Handle, "introduceText")
		if handle ~= 0 then
			GUI:RichEditClear(handle)
			GUI:RichEditAppendString(handle,"\n    ��ʿ�Ƿ��ջ����㹻��ı��أ���Ҫ��ȥ�ˣ�")
		end
		handle = GetWindow(_Handle, "enterMap")
		if handle ~= 0 then
			GUI:RichEditAppendString(handle,"#SELECT#������ɽ��#SELECTEND#")
			GUI:WndSetPosM(handle, 150, 418)
		end
	end
end

function EndlessHell.Clicked()
	UI:Lua_SubmitForm("�޾���Ԩ��", "_Transmit", "")
end

function EndlessHell.Alert(msg)     --warning message
	local h = GetWindow(EndlessHell._h, "enterMap")
	if h ~= 0 then
		local color = MakeARGB(255,255,0,0)
		window_msg_up(h, msg, -65, -30, 40, color, 2)
	end
end

function EndlessHell.closeWnd()     --�رհ�ť
	if EndlessHell._h ~= 0 then
		GUI:WndClose(EndlessHell._h)
	end
end

EndlessHell.main()