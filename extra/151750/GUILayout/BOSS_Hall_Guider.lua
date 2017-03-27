BOSS_Hall_Guider = {}
function BOSS_Hall_Guider.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"BOSS_Hall_Guider",1806100012,302,81)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,384, 505)
		GUI:WndSetIsESCClose(_Parent, true)
		GUI:WndSetMoveWithLBM(_Parent)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TitleImg",1805500021,134,11)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,126, 22)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"title3",176,144,68,35)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle,"说   明")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"caption",44,80,299,23)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"     毫无疑问，灭神禁地绝对是神途里刷新最多BOSS的")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text6",75,201,276,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"1.进入条件：成为VIP（充值1元就能成为VIP）")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text2",75,226,276,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"2.BOSS数量：一层10个，二层5个，三层3个")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text3",75,251,276,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"3.刷新时间：15-360分钟")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text4",75,276,276,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"4.掉落材料：全系列材料")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"enterMap",130,379,130,26)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "BOSS_Hall_Guider.EnterMap")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#→『进入BOSS大厅』←#SELECTEND#")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text5",75,301,276,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"5.掉落装备：全系列装备")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1805900080,326,7)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "BOSS_Hall_Guider.CloseWnd")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 38)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_16",44,99,299,23)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle," 地方！数量多、刷新快，且掉落全系列装备！！！")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"TestWndChild_18",147,206,65,18)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "BOSS_Hall_Guider.Recharge")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#成为VIP#SELECTEND#")
	end
	
	
	BOSS_Hall_Guider.UIInit(_Parent)
end

--UI Logic Code Start
function BOSS_Hall_Guider.UIInit(_Handle)
	BOSS_Hall_Guider._wnd = _Handle
	BOSS_Hall_Guider._wnd = _Handle
	GUI:WndSetSizeM(BOSS_Hall_Guider._wnd,361, 524)
	CenterWnd(BOSS_Hall_Guider._wnd)
	GUI:WndSetMagicUI(BOSS_Hall_Guider._wnd, 1)
	GUI:WndSetIsESCClose(BOSS_Hall_Guider._wnd, true)
end

function BOSS_Hall_Guider.Recharge()
	CL:OpenUrlUseIEByType(3)
end

function BOSS_Hall_Guider.EnterMap()
	UI:Lua_SubmitForm("BossHall_s","EnterBossHall","")
end

function BOSS_Hall_Guider.MsgUp(msg)   --消息提示
	local handle = GetWindow(BOSS_Hall_Guider._wnd, "enterMap")
	local color = MakeARGB(255,255,0,0)
	window_msg_up(handle, msg, -50, -10, 30, color, 2)
end

function BOSS_Hall_Guider.CloseWnd()
	if BOSS_Hall_Guider._wnd ~= 0 then
		GUI:WndClose(BOSS_Hall_Guider._wnd)
	end
end

BOSS_Hall_Guider.main()