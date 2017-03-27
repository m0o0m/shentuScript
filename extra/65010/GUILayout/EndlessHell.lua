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
		GUI:EditSetTextM(_GUIHandle,"无尽深渊")
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
		GUI:RichEditAppendString(_GUIHandle,"    无尽深渊中潜藏着许多强大的恶魔，吸引了无数勇士前去挑战，寻找宝")
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
			WndSetTextM(handle, "第"..msgTb[1].."层说明")
		end
		
		handle = GetWindow(_Handle, "bossName")
		if handle ~= 0 then
			GUI:RichEditAppendString(handle, "#COLORCOLOR_GREENG#1.镇守BOSS: #COLOREND#".."#COLORCOLOR_RED#"..msgTb[2].."#COLOREND#")
		end
		
		handle = GetWindow(_Handle, "reward")
		if handle ~= 0 then
			GUI:RichEditAppendString(handle,"#COLORCOLOR_GREENG#2.进入第"..msgTb[1].."层奖励：\n\n#COLOREND#".."#COLORCOLOR_GOLD#   灵石精华(小)#COLOREND#".."#COLORCOLOR_GREENG#x"..msgTb[3].."#COLOREND#".."#COLORCOLOR_GOLD#\n\n   金砖(小)#COLOREND#".."#COLORCOLOR_GREENG#x"..msgTb[4].."#COLOREND#")
		end
		
		handle = GetWindow(_Handle, "warning")
		if handle ~= 0 then
			local a = msgTb[3] + msgTb[4]
			GUI:RichEditAppendString(handle,"#COLORCOLOR_GREENG#3.领取奖励需"..a.."个格子，请确保背包有足够空间#COLOREND#")
		end
		
		handle = GetWindow(_Handle, "enterMap")
		if handle ~= 0 then
			GUI:RichEditAppendString(handle,"#SELECT#".."进入无尽深渊"..msgTb[1].."层".."#SELECTEND#")
		end
		
		local str = ""
		if msgTb[6] >= msgTb[5] then
			str = "#COLORCOLOR_GREENG#"..msgTb[6].."个）#COLOREND#"
		else
			str = "#COLORCOLOR_RED#"..msgTb[6].."#COLOREND#".."#COLORCOLOR_GREENG#个）#COLOREND#"
		end
		handle = GetWindow(_Handle, "info")
		if handle ~= 0 then
			GUI:RichEditAppendString(handle,"#COLORCOLOR_GREENG#消耗深渊凭证："..msgTb[5].."个（拥有#COLOREND#"..str)
		end
	else
		local handle = GetWindow(_Handle, "introduceText")
		if handle ~= 0 then
			GUI:RichEditClear(handle)
			GUI:RichEditAppendString(handle,"\n    勇士是否收获了足够多的宝藏，想要回去了？")
		end
		handle = GetWindow(_Handle, "enterMap")
		if handle ~= 0 then
			GUI:RichEditAppendString(handle,"#SELECT#返回巫山城#SELECTEND#")
			GUI:WndSetPosM(handle, 150, 418)
		end
	end
end

function EndlessHell.Clicked()
	UI:Lua_SubmitForm("无尽深渊表单", "_Transmit", "")
end

function EndlessHell.Alert(msg)     --warning message
	local h = GetWindow(EndlessHell._h, "enterMap")
	if h ~= 0 then
		local color = MakeARGB(255,255,0,0)
		window_msg_up(h, msg, -65, -30, 40, color, 2)
	end
end

function EndlessHell.closeWnd()     --关闭按钮
	if EndlessHell._h ~= 0 then
		GUI:WndClose(EndlessHell._h)
	end
end

EndlessHell.main()