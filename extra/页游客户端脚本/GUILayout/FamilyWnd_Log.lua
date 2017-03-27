FamilyWnd_Log = {}
FamilyWnd_Log.localString = {}
FamilyWnd_Log.nowPage = 1
local ui = "<form default_parent='FamilyWnd'> <dialog OnInit='FamilyWnd_Log.UIInit' id='FamilyWnd_Log' image='1802100003' x='30' y='96' w='658' h='420' OnClose='FamilyWnd_Log.wndClose' revmsg='true'>"
	.."	<edit id='logTitle' x='300' y='1' w='142' h='22' revmsg='true' enable='false' text_color='#E6D284' text='记录消息' font='system'/>"
	.."	<button id='logBtn1' image='1802100013' x='3' y='32' w='650' h='31' revmsg='true'/>"
	.."	<richedit id='logTextRE1' x='204' y='40' w='441' h='20' revmsg='false' enable='false' font='system'/>"
	.."	<button id='logBtn2' image='1802100013' x='3' y='66' w='650' h='31' revmsg='true'/>"
	.."	<richedit id='logTextRE2' x='204' y='74' w='441' h='20' revmsg='false' enable='false' font='system'/>"
	.."	<button id='logBtn3' image='1802100013' x='3' y='100' w='650' h='31' revmsg='true'/>"
	.."	<richedit id='logTextRE3' x='204' y='108' w='441' h='20' revmsg='false' enable='false' font='system'/>"
	.."	<button id='logBtn4' image='1802100013' x='3' y='134' w='650' h='31' revmsg='true'/>"
	.."	<richedit id='logTextRE4' x='204' y='142' w='441' h='20' revmsg='false' enable='false' font='system'/>"
	.."	<button id='logBtn5' image='1802100013' x='3' y='168' w='650' h='31' revmsg='true'/>"
	.."	<richedit id='logTextRE5' x='204' y='176' w='441' h='20' revmsg='false' enable='false' font='system'/>"
	.."	<button id='logBtn6' image='1802100013' x='3' y='202' w='650' h='31' revmsg='true'/>"
	.."	<richedit id='logTextRE6' x='204' y='210' w='441' h='20' revmsg='false' enable='false' font='system'/>"
	.."	<button id='logBtn7' image='1802100013' x='3' y='236' w='650' h='31' revmsg='true'/>"
	.."	<richedit id='logTextRE7' x='204' y='244' w='441' h='20' revmsg='false' enable='false' font='system'/>"
	.."	<button id='logBtn8' image='1802100013' x='3' y='270' w='650' h='31' revmsg='true'/>"
	.."	<richedit id='logTextRE8' x='204' y='278' w='441' h='20' revmsg='false' enable='false' font='system'/>"
	.."	<button id='logBtn9' image='1802100013' x='3' y='304' w='650' h='31' revmsg='true'/>"
	.."	<richedit id='logTextRE9' x='204' y='312' w='441' h='20' revmsg='false' enable='false' font='system'/>"
	.."	<button id='logBtn10' image='1802100013' x='3' y='338' w='650' h='31' revmsg='true'/>"
	.."	<richedit id='logTextRE10' x='204' y='346' w='441' h='20' revmsg='false' enable='false' font='system'/>"
	.."	<image id='pgEditBackImg' image='1800000279' x='299' y='380' w='58' h='34' revmsg='true' enable='false'/>"
	.."	<button id='pgUpBtn' image='1800000094' x='266' y='387' w='20' h='19' OnLButtonClick='FamilyWnd_Log.pgUpBtn_LC' revmsg='true'/>"
	.."	<button id='pgDownBtn' image='1800000098' x='369' y='387' w='20' h='19' OnLButtonClick='FamilyWnd_Log.pgDownBtn_LC' revmsg='true'/>"
	.."	<edit id='pgEdit' x='311' y='383' w='51' h='26' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.." </dialog>"
	.."</form>"

function FamilyWnd_Log.main()
	GenFormByString(ui)
end

--UI Logic Code Start
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
		_GUIHandle = GUIWndFindChildM(_Handle, commonUI_[i])
		if _GUIHandle ~= 0 then
			FamilyWnd_Log[("_"..commonUI_[i])] = _GUIHandle
		end 
	end
	
	FamilyWnd_Log._logBtn_ = {}
	FamilyWnd_Log._logTextRE_ = {}
	for i = 1, 10 do
		_GUIHandle = GUIWndFindChildM(_Handle, "logBtn"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_Log._logBtn_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindChildM(_Handle, "logTextRE"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_Log._logTextRE_[i] = _GUIHandle
		end
	end
	
	as3.tolua(UI:Lua_SubmitForm("行会", "getFamilyLog", FamilyWnd.guid))
end

function FamilyWnd_Log.updatePage()
	local index = 0
	for i = 1, 10 do
		index = (FamilyWnd_Log.nowPage -1)*10 + i
		if FamilyWnd_Log.logList_[index] then
			GUIRichEditSetTotalLine(FamilyWnd_Log._logTextRE_[i], 1)
			GUIWndSetVisible(FamilyWnd_Log._logBtn_[i], true)
			GUIWndSetVisible(FamilyWnd_Log._logTextRE_[i], true)
			GUIRichEditClear(FamilyWnd_Log._logTextRE_[i])
			GUIRichEditAppendString(FamilyWnd_Log._logTextRE_[i],  FamilyWnd_Log.getLogStr(index))
		else
			GUIWndSetVisible(FamilyWnd_Log._logBtn_[i], false)
			GUIWndSetVisible(FamilyWnd_Log._logTextRE_[i], false)
		end
	end
	FamilyWnd_Log.updatePgBtn()
end

function FamilyWnd_Log.getLogStr(index)
	local str = ""
	if FamilyWnd_Log.logList_[index]["type"] == 1 then
		str = "【"..FamilyWnd_Log.logList_[index]["player_name"].."】".."捐了".."#COLORCOLOR_RED#"..FamilyWnd_Log.logList_[index]["equip_name"].."#COLORCOLOREND#"
		.."获得".."#COLORCOLOR_RED#"..FamilyWnd_Log.logList_[index]["item_value"].."#COLORCOLOREND#".."贡献值"
	elseif FamilyWnd_Log.logList_[index]["type"] == 2 then
		str = "【"..FamilyWnd_Log.logList_[index]["player_name"].."】".."消耗".."#COLORCOLOR_GREEN#"..FamilyWnd_Log.logList_[index]["item_value"].."#COLORCOLOREND#"
		.."点贡献值,兑换了".."#COLORCOLOR_RED#"..FamilyWnd_Log.logList_[index]["equip_name"].."#COLORCOLOREND#"
	elseif FamilyWnd_Log.logList_[index]["type"] == 3 then
		str = "【"..FamilyWnd_Log.logList_[index]["player_name"].."】".."摧毁了".."#COLORCOLOR_RED#"..FamilyWnd_Log.logList_[index]["equip_name"].."#COLORCOLOREND#"
	end
	return str
end

--function FamilyWnd_Log.getFamilyBulltin()
--	GUIRichEditClear(FamilyWnd_Log._logRE)
--	GUIRichEditAppendString(FamilyWnd_Log._logRE, as3.tolua(LuaParam[1]))
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
	GUIEditSetTextM(FamilyWnd_Log._pgEdit, FamilyWnd_Log.nowPage.." / "..pgCount)
	
	if FamilyWnd_Log.nowPage <= 1 then
		GUIWndSetEnableM(FamilyWnd_Log._pgUpBtn, false)
	else
		GUIWndSetEnableM(FamilyWnd_Log._pgUpBtn, true)
	end
	
	if FamilyWnd_Log.nowPage >= pgCount then
		GUIWndSetEnableM(FamilyWnd_Log._pgDownBtn, false)
	else
		GUIWndSetEnableM(FamilyWnd_Log._pgDownBtn, true)
	end
end

function FamilyWnd_Log.wndClose()
	local wnd = GUIWndFindWindow(0, "FamilyWnd_Log") 
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

	--//泛型的for循环不按顺序遍历
	--//通过下面
	--[[for k,v in pairsByKeys(data_) do
		table.insert(FamilyWnd_Log.logList_, 1, data_[k])
	end--]]
	for i = 1, #data_ do
		table.insert(FamilyWnd_Log.logList_, 1, data_[i])
	end
	

	FamilyWnd_Log.updatePage()
end

--//iterator
function pairsByKeys(t)  
    local a = {}  
    for n in pairs(t) do  
        a[#a+1] = n  
    end  
    table.sort(a)  
    local i = 0  
    return function()  
        i = i + 1  
        return a[i], t[a[i]]  
    end  
end 

FamilyWnd_Log.main()