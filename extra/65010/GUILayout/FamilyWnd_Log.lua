FamilyWnd_Log = {}
function FamilyWnd_Log.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"FamilyWnd_Log",1802100003,30,96)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,658, 420)
		GUI:WndSetIsESCClose(_Parent, false)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"logTitle",300,1,142,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetTextM(_GUIHandle,"记录消息")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"logBtn1",1802100013,3,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"logTextRE1",204,40,441,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"logBtn2",1802100013,3,66)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"logTextRE2",204,74,441,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"logBtn3",1802100013,3,100)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"logTextRE3",204,108,441,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"logBtn4",1802100013,3,134)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"logTextRE4",204,142,441,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"logBtn5",1802100013,3,168)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"logTextRE5",204,176,441,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"logBtn6",1802100013,3,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"logTextRE6",204,210,441,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"logBtn7",1802100013,3,236)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"logTextRE7",204,244,441,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"logBtn8",1802100013,3,270)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"logTextRE8",204,278,441,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"logBtn9",1802100013,3,304)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"logTextRE9",204,312,441,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"logBtn10",1802100013,3,338)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"logTextRE10",204,346,441,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"pgEditBackImg",1800000279,299,380)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,58, 34)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pgUpBtn",1800000094,266,387)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Log.pgUpBtn_LC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pgDownBtn",1800000098,369,387)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Log.pgDownBtn_LC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"pgEdit",311,383,51,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
    end
    
    
    
    FamilyWnd_Log.UIInit(_Parent)
end

--UI Logic Code Start
FamilyWnd_Log.localString = {}
FamilyWnd_Log.nowPage = 1

function FamilyWnd_Log.UIInit(_Handle)
	FamilyWnd_Log._wnd = _Handle
	FamilyWnd._nowPage = _Handle
	
	local _GUIHandle
	local commonUI_ = {
		"pgUpBtn",
		"pgDownBtn",
		"pgEdit",
	} 
	for i = 1, #commonUI_ do
		_GUIHandle = GUI:WndFindChildM(_Handle, commonUI_[i])
		if _GUIHandle ~= 0 then
			FamilyWnd_Log[("_"..commonUI_[i])] = _GUIHandle
		end 
	end
	
	FamilyWnd_Log._logBtn_ = {}
	FamilyWnd_Log._logTextRE_ = {}
	for i = 1, 10 do
		_GUIHandle = GUI:WndFindChildM(_Handle, "logBtn"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_Log._logBtn_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindChildM(_Handle, "logTextRE"..i)
		if _GUIHandle ~= 0 then
			GUI:WndSetCanRevMsg(_GUIHandle, false)
			GUI:RichEditSetTotalLine(_GUIHandle, 1)
			FamilyWnd_Log._logTextRE_[i] = _GUIHandle
		end
	end
	
	UI:Lua_GUID2Str(FamilyWnd.guid)
	UI:Lua_SubmitForm("行会", "getFamilyLog", LuaRet)
end

function FamilyWnd_Log.updatePage()
	local index = 0
	for i = 1, 10 do
		index = (FamilyWnd_Log.nowPage -1)*10 + i
		if FamilyWnd_Log.logList_[index] then
			GUI:WndSetVisible(FamilyWnd_Log._logBtn_[i], true)
			GUI:WndSetVisible(FamilyWnd_Log._logTextRE_[i], true)
			GUI:RichEditClear(FamilyWnd_Log._logTextRE_[i])
			GUI:RichEditAppendString(FamilyWnd_Log._logTextRE_[i],  FamilyWnd_Log.getLogStr(index))
		else
			GUI:WndSetVisible(FamilyWnd_Log._logBtn_[i], false)
			GUI:WndSetVisible(FamilyWnd_Log._logTextRE_[i], false)
		end
	end
	FamilyWnd_Log.updatePgBtn()
end

function FamilyWnd_Log.getLogStr(index)
	local str = ""
	if FamilyWnd_Log.logList_[index]["type"] == 1 then
		str = "#COLORCOLOR_WHITE#【"..FamilyWnd_Log.logList_[index]["player_name"].."】".."捐了".."#COLORCOLOR_RED#"..FamilyWnd_Log.logList_[index]["equip_name"].."#COLORCOLOREND##COLORCOLOR_WHITE#"
		.."获得".."#COLORCOLOR_RED#"..FamilyWnd_Log.logList_[index]["item_value"].."#COLORCOLOREND##COLORCOLOR_WHITE#".."贡献值"
	elseif FamilyWnd_Log.logList_[index]["type"] == 2 then
		str = "#COLORCOLOR_WHITE#【"..FamilyWnd_Log.logList_[index]["player_name"].."】".."消耗".."#COLORCOLOR_GREENG#"..FamilyWnd_Log.logList_[index]["item_value"].."#COLORCOLOREND##COLORCOLOR_WHITE#"
		.."点贡献值,兑换了".."#COLORCOLOR_RED#"..FamilyWnd_Log.logList_[index]["equip_name"].."#COLORCOLOREND#"
	elseif FamilyWnd_Log.logList_[index]["type"] == 3 then
		str = "#COLORCOLOR_WHITE#【"..FamilyWnd_Log.logList_[index]["player_name"].."】".."摧毁了".."#COLORCOLOR_RED#"..FamilyWnd_Log.logList_[index]["equip_name"].."#COLORCOLOREND##COLORCOLOR_WHITE#"
	end
	return str
end
--function FamilyWnd_Log.getFamilyBulltin()
--	GUI:RichEditClear(FamilyWnd_Log._logRE)
--	GUI:RichEditAppendString(FamilyWnd_Log._logRE, LuaParam[1])
--end

function FamilyWnd_Log.pgUpBtn_LC(_Handle)
	FamilyWnd_Log.nowPage = FamilyWnd_Log.nowPage - 1
	FamilyWnd_Log.updatePgBtn()
	FamilyWnd_Log.updatePage()
end

function FamilyWnd_Log.pgDownBtn_LC(_Handle)
	FamilyWnd_Log.nowPage = FamilyWnd_Log.nowPage + 1
	FamilyWnd_Log.updatePgBtn()
	FamilyWnd_Log.updatePage()
end

function FamilyWnd_Log.updatePgBtn()
	local pgCount = math.ceil(#FamilyWnd_Log.logList_/10)
	if pgCount == 0 then
		pgCount = 1
	end
	GUI:EditSetTextM(FamilyWnd_Log._pgEdit, FamilyWnd_Log.nowPage.." / "..pgCount)
	
	if FamilyWnd_Log.nowPage <= 1 then
		GUI:WndSetEnableM(FamilyWnd_Log._pgUpBtn, false)
	else
		GUI:WndSetEnableM(FamilyWnd_Log._pgUpBtn, true)
	end
	
	if FamilyWnd_Log.nowPage >= pgCount then
		GUI:WndSetEnableM(FamilyWnd_Log._pgDownBtn, false)
	else
		GUI:WndSetEnableM(FamilyWnd_Log._pgDownBtn, true)
	end
end

function FamilyWnd_Log.wndClose()
	local wnd = GUI:WndFindWindow(0, "FamilyWnd_Log") 
	if wnd == 0 then
		FamilyWnd_Log = nil
	end
end

--form client
function FamilyWnd_Log_logdata(data)
	if not FamilyWnd_Log then return end
	local data_ = data
	if data_ == "" or data_ == nil then 
		data_ = {}
	end
	if not FamilyWnd_Log.logList_ then FamilyWnd_Log.logList_ = {} end
	for k,v in pairs(data_) do
		table.insert(FamilyWnd_Log.logList_, 1, data_[k])
	end
	FamilyWnd_Log.updatePage()
end

FamilyWnd_Log.main()