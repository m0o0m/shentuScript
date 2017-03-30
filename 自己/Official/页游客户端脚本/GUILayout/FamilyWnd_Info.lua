FamilyWnd_Info = {}

FamilyWnd_Info.localString = {}
local l = FamilyWnd_Info.localString
l.familyNotice = "行会公告"
l.familyInfo = "行会信息"
l.myPosition = "我的职位:"
l.quitFamily = "退出行会"
l.dissolveFamily = "解散行会"
l.familyMoney = "行会财富:"
l.familyLvl = "行会等级:"
l.editFamilyNotice = "编辑公告"
l.confirmNotice = "确认编辑"
l.tips = "行会说明"
l.upgradeFamily = "升级行会"
l.familyInvite = "邀请入会"
l.thisLvlBuff = "当前等级属性:"
l.nextLvlBuff = "下一等级属性:"
l.tipsHint = "会长可以使用元宝升级行会。\n升级行会可以获得专属行会BUFF。"

local ui = " <form default_parent='FamilyWnd'><dialog OnInit='FamilyWnd_Info.UIInit' id='FamilyWnd_Info' image='1802100002' x='30' y='96' w='658' h='420' OnClose='FamilyWnd_Info.wndClose' revmsg='true'>"
	.."	<edit id='familyNoticeTitle' x='102' y='7' w='129' h='19' revmsg='true' enable='false' text_color='#E6D284' text='行会公告' font='system'/>"
	.."	<edit id='familyNoticeRE' x='7' y='32' w='235' h='333' canedit='false' limit='360' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='editFamilyNoticeBtn' image='1800000150' x='162' y='368' w='84' h='32' OnLButtonClick='FamilyWnd_Info.editFamilyNoticeBtn_LC' revmsg='true' text='编辑公告' text_color='#C2B6A0'/>"
	.."	<edit id='familyInfoTitle' x='427' y='7' w='129' h='19' revmsg='true' enable='false' text_color='#E6D284' text='行会信息' font='system'/>"
	.."	<edit id='myPostion_f' x='279' y='64' w='66' h='21' revmsg='true' enable='false' text_color='#FF9304' text='我的职位:' font='system'/>"
	.."	<edit id='myPositionEdit' x='337' y='64' w='66' h='21' revmsg='true' enable='false' text_color='#25A35C' font='system'/>"
	.."	<button id='quitFamilyBtn' image='1800000150' x='526' y='37' w='84' h='32' OnLButtonClick='FamilyWnd_Info.quitFamilyBtn_LC' revmsg='true' text='退出行会' text_color='#FF0000'/>"
	.."	<button id='dissolveFamilyBtn' image='1800000150' x='528' y='76' w='84' h='32' OnLButtonClick='FamilyWnd_Info.dissolveFamilyBtn_LC' revmsg='true' text='解散行会' text_color='#FF0000'/>"
	.."	<edit id='familyMoney_f' x='280' y='135' w='66' h='21' revmsg='true' enable='false' text_color='#FF9304' text='行会财富:' font='system'/>"
	.."	<image id='goldImg' image='1806600015' x='335' y='137' w='16' h='14' revmsg='true' enable='false'/>"
	.."	<edit id='familyMoneyEdit' x='357' y='135' w='89' h='21' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='familyMon_f' x='399' y='135' w='66' h='21'  enable='false' text_color='#FF9304' text='万' font='system'/>"
	.."	<image id='backimage' image='1801100033' x='436' y='136' w='16' h='14' revmsg='true' enable='false'/>"
	.."	<image id='goldImg1' image='1806600015' x='437' y='140' w='16' h='14' revmsg='true' enable='false'/>"
	.."	<edit id='familyMoneyEdit1' x='457' y='138' w='40' h='21' canedit='true' revmsg='true' enable='true' type='number'  text='1'  font='system'/>"
	.."	<edit id='familyMon1_f' x='499' y='138' w='66' h='21'  enable='false' text_color='#FF9304' text='万' font='system'/>"
	.."	<button id='donateGold' image='1800000150' x='528' y='132' w='84' h='32' OnLButtonClick='FamilyWnd_Info.donateFamilyBtn_LC' revmsg='true' text='捐献金币' text_color='#E6D284'/>"
	.."	<edit id='familyLvl_f' x='280' y='186' w='66' h='21' revmsg='true' enable='false' text_color='#FF9304' text='行会等级:' font='system'/>"
	.."	<edit id='familyLvlEdit' x='337' y='186' w='66' h='21' revmsg='true' enable='false' text_color='#25A35C' font='system'/>"
	.."	<button id='downgradeFamilyBtn' image='1800000150' x='528' y='180' w='84' h='32' OnLButtonClick='FamilyWnd_Info.DownGradeAlert' revmsg='true' text='降级行会' text_color='#E6D284'/>"
	.."	<richedit id='familyBuff_thisLvlRE' x='286' y='229' w='165' h='126' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<richedit id='familyBuff_nextLvlRE' x='457' y='229' w='165' h='126' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<button id='upgradeFamilyBtn' image='1800000150' x='420' y='180' w='84' h='32' OnLButtonClick='FamilyWnd_Info.upgradeFamilyBtn_LC' revmsg='true' text='升级行会' text_color='#E6D284'/>"
	.."	<image id='tipsImg' image='1800000297' x='287' y='373' w='27' h='30' revmsg='true' tip='会长可以使用元宝升级行会。升级行会可以获得专属行会BUFF。'/>"
	.."	<edit id='tipsEdit' x='315' y='376' w='55' h='20' revmsg='false' tip='会长可以使用元宝升级行会。升级行会可以获得专属行会BUFF。' text='行会说明' text_color='#C2B6A0' font='system'/>"
	.." </dialog>"
	.."</form>"
	
function FamilyWnd_Info.main()
	GenFormByString(ui)
end

--UI Logic Code Start
function FamilyWnd_Info.UIInit(_Handle)
	FamilyWnd_Info._wnd = _Handle
	FamilyWnd._nowPage = _Handle
	FamilyWnd_Info.ClickedBtn = 0
	local handle  = GetWindow(_Handle,"donateGold")
	if handle ~= 0 then
		GUIWndSetHint(handle, "<font color='#B8A085'>1万金币=1贡献值</font>")
	end
    handle  = GetWindow(_Handle,"familyMoneyEdit1")
	if handle ~= 0 then
		GUIEditSetMaxCharNum(handle, 5)
	end
	handle = GetWindow(_Handle, "upgradeFamilyBtn")
	if handle ~= 0 then
		GUI:WndSetHint(handle, "升级2级行会消耗500万公会财富\n升级3级行会消耗1000万公会财富\n升级4级行会消耗1500万公会财富\n升级5级行会消耗2000万公会财富\n升级6级行会消耗2500万公会财富")
	end
	handle = GetWindow(_Handle, "downgradeFamilyBtn")
	if handle ~= 0 then
		GUI:WndSetHint(handle, "降级行会没有任何消耗！")
	end
	local commonUI_ = {
		"upgradeFamilyBtn",
		"downgradeFamilyBtn",
		"quitFamilyBtn",
		"dissolveFamilyBtn",
		"familyNoticeRE",
		"myPositionEdit",
		"familyLvlEdit",
		"familyMoneyEdit",
		"familyBuff_thisLvlRE",
		"familyBuff_nextLvlRE",
		"editFamilyNoticeBtn",
	} 
	local _GUIHandle = 0
	for i, v in pairs(commonUI_) do
		_GUIHandle = GUIWndFindChildM(_Handle, v)
		if _GUIHandle ~= 0 then
			FamilyWnd_Info[("_"..v)] = _GUIHandle
		end 
	end
		
	_GUIHandle = GUIWndFindChildM(_Handle, "familyNoticeRE")
	if _GUIHandle then
		GUIWndSetTextArrangeType(_GUIHandle,0,0,4,0);
		GUIEditSetMultiLineEdit(_GUIHandle,true)
	end
	
	CLFamilyInfoRequest(1,"FamilyWnd_Info_行会公告", "FamilyWnd_Info.getFamilyNotice")
	
	UI:Lua_SubmitForm("行会", "getFamilyInfo", FamilyWnd.guid)
	FamilyWnd_Info.updataPage()
	
	local hand = GetWindow(_Handle,"tipsImg")
	local handle = GetWindow(_Handle,"tipsEdit")
	local txt1 = "1.公会升级后公会属性效果增强\n"
	local txt2 = "2.公会升级后容纳人数减少\n"
	local txt3 = "3.公会升级需要消耗公会财富，降级不会消耗公会财富\n"
	local txt4 = "4.连续14天无公会成员在线，公会自动解散\n"
	local txt5 = "5.公会解散后仓库装备以及贡献将会清空\n"
	local txt = txt1..txt2..txt3..txt4..txt5 
	if hand ~= 0 then 
		GUIWndSetHint(hand," <font color='#D58840'>公会说明：\n</font><font color='#B8A085'>"..txt.."</font>")
	end
	if handle ~= 0 then 
		GUIWndSetHint(handle," <font color='#D58840'>公会说明：\n</font><font color='#B8A085'>"..txt.."</font>")
	end
	
end

function FamilyWnd_Info.updataPage()
	if FamilyWnd.selfTitleID ~= 1 then
		GUIWndSetVisible(FamilyWnd_Info._dissolveFamilyBtn, false)
		GUIWndSetVisible(FamilyWnd_Info._upgradeFamilyBtn, false)
		GUIWndSetVisible(FamilyWnd_Info._downgradeFamilyBtn, false)
		GUIWndSetVisible(FamilyWnd_Info._editFamilyNoticeBtn, false)
	end
	
	if FamilyWnd.familyTitle_ then
		for i = 1, #FamilyWnd.familyTitle_ do
			if FamilyWnd.selfTitleID == FamilyWnd.familyTitle_[i][1] then
				GUIEditSetTextM(FamilyWnd_Info._myPositionEdit, FamilyWnd.familyTitle_[i][2])
				break
			end
		end
	end
	
	if FamilyWnd.selfTitleID == 1 then
		GUIWndSetEnableM(FamilyWnd_Info._editFamilyNoticeBtn, true)
		GUIWndSetVisible(FamilyWnd_Info._quitFamilyBtn, false)
	else
		GUIWndSetEnableM(FamilyWnd_Info._editFamilyNoticeBtn, false)
		GUIWndSetVisible(FamilyWnd_Info._quitFamilyBtn, true)
	end

end

function FamilyWnd_Info.getFamilyNotice()
	GUIEditSetTextM(FamilyWnd_Info._familyNoticeRE, as3.tolua(LuaParam[1]))
end

function FamilyWnd_Info.editFamilyNoticeBtn_LC(_Handle)
	if GUIWndGetEnableM(FamilyWnd_Info._familyNoticeRE) then
		local str = GUIEditGetTextM(FamilyWnd_Info._familyNoticeRE)
		if CLFamilyNoticeConfirm(str,"FamilyWnd_Info_行会公告", "FamilyWnd_Info.getFamilyNotice") then
			GUIWndSetEnableM(FamilyWnd_Info._familyNoticeRE, false)
			GUIWndSetTextM(_Handle, l.editFamilyNotice)
			GUIEditSetCanEdit(FamilyWnd_Info._familyNoticeRE,false)
		end
	else
		GUIWndSetEnableM(FamilyWnd_Info._familyNoticeRE, true)
		GUIWndSetTextM(_Handle, l.confirmNotice)
		GUIEditSetCanEdit(FamilyWnd_Info._familyNoticeRE,true)
		WndSetFocusM(FamilyWnd_Info._familyNoticeRE)
	end
end

function FamilyWnd_Info.quitFamilyBtn_LC()
	luaMsgBox.new("退出行会", "您确定要退出当前行会？", {"是", "否"}, {"FamilyWnd_Info.quitCurrentFamily", 0}, _handle)
end

function FamilyWnd_Info.quitCurrentFamily(_handle)
	CLFamilyQuitRequest("","FamilyWnd_Info_quit","FamilyWnd_Info.quitFamilyCB")
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end

function FamilyWnd_Info.quitFamilyCB()
	GUIWndClose(FamilyWnd._wnd)
end

function FamilyWnd_Info.dismissFamilyCB()
	GUIWndClose(FamilyWnd._wnd)
end

function FamilyWnd_Info.dissolveFamilyBtn_LC()
	luaMsgBox.new("解散行会", "您确定要解散当前行会？", {"是", "否"}, {"FamilyWnd_Info.disssolveCurrentFamily", 0}, _handle)
end

function FamilyWnd_Info.DownGradeAlert(handle)
	FamilyWnd_Info.ClickedBtn = handle
	luaMsgBox.new("降级行会", "您确定要降低当前行会等级？", {"是", "否"}, {"FamilyWnd_Info.downgradeFamilyBtn_LC", 0}, _handle)
end

function FamilyWnd_Info.disssolveCurrentFamily(_handle)
	CLFamilyDismiss("FamilyWnd_Info_解散行会","FamilyWnd_Info.dismissFamilyCB")
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end

function FamilyWnd_Info.upgradeFamilyBtn_LC(handle)
	FamilyWnd_Info.ClickedBtn = handle
	UI:Lua_SubmitForm("行会","upgradeFamilyLevel",FamilyWnd.guid)
end

function FamilyWnd_Info.downgradeFamilyBtn_LC(_handle)
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
	UI:Lua_SubmitForm("行会","downgradeFamilyLevel",FamilyWnd.guid)
end

function FamilyWnd_Info.donateFamilyBtn_LC(handle)
	FamilyWnd_Info.ClickedBtn = handle
	local handle = GetWindow(nil,"FamilyWnd,FamilyWnd_Info,familyMoneyEdit1")
	local moneyStr = GUIEditGetTextM(handle)
	UI:Lua_SubmitForm("行会","donateMoney",moneyStr)
end

function FamilyWnd_Info.getBuffStr(lvl)
	local reStr = ""
	local buffBaseNum = 163
	local buffInfo_ = {
		{"物理攻击", {11, 10}, {}},
		{"道术攻击", {13, 12}, {}},
		{"魔法攻击", {15, 14}, {}},
		{"", 0, 0},
	}
	local att = 0
	for i = 10, 28, 2 do
		CLGetBuffProp(buffBaseNum + lvl, i)
		att = as3.tolua(LuaRet)
		for j ,v in pairs(buffInfo_) do
			if type(v[2]) == "table" then
				for k = 1, 2 do
					if v[2][k] == att then
						CLGetBuffProp(buffBaseNum + lvl, i+1)
						if as3.tolua(LuaRet) then
							buffInfo_[j][3][k] = as3.tolua(LuaRet)
						end
					end
				end
			else
				if v[2] == att then
					CLGetBuffProp(buffBaseNum + lvl, i+1)
					if as3.tolua(LuaRet) then
						buffInfo_[j][3] = as3.tolua(LuaRet)
					end
				end
			end
		end
	end
	
	for i, v in pairs(buffInfo_) do
		if v[3] ~= {} and v[3] ~= 0 and v[1] and v[3][1] and v[3][2] then
			if type(v[3]) == "table" then
				reStr = reStr.. v[1].."  "..v[3][1].." - "..v[3][2].."\n\n"
			else
				reStr = reStr..v[1].."  "..v[3].."\n\n"
			end
		end
	end
	return reStr
end

function FamilyWnd_Info.wndClose()
	local wnd = GUIWndFindWindow(0, "FamilyWnd_Info") 
	if wnd == 0 then
		FamilyWnd_Info = nil
	end
end

function update_wealth(data)
	if not FamilyWnd_Info then return end
	FamilyWnd_Info.wealth = data
	local handle = GetWindow(nil,"FamilyWnd,FamilyWnd_Info,familyMoneyEdit")
	GUIEditSetTextM(handle,FamilyWnd_Info.wealth)
end	



function update_level(data)
	if not FamilyWnd_Info then return end
	
	data = tonumber(data)
	FamilyWnd_Info.level = data
	local handle = GetWindow(nil,"FamilyWnd,FamilyWnd_Info,familyLvlEdit")
	GUIEditSetTextM(handle,FamilyWnd_Info.level)
	
	if data > 0 then 
		GUIRichEditClear(FamilyWnd_Info._familyBuff_thisLvlRE)
		GUIRichEditClear(FamilyWnd_Info._familyBuff_nextLvlRE)
		GUIRichEditAppendString(FamilyWnd_Info._familyBuff_thisLvlRE, "\n#COLORCOLOR_YELLOW#"..l.thisLvlBuff.."#COLORCOLOREND#\n\n"..FamilyWnd_Info.getBuffStr(data))
		GUIRichEditAppendString(FamilyWnd_Info._familyBuff_nextLvlRE, "\n#COLORCOLOR_YELLOW#"..l.nextLvlBuff.."#COLORCOLOREND#\n\n"..FamilyWnd_Info.getBuffStr(data+1))
	end
end	

function FamilyWnd_Info.AlertMessage(str)
	if FamilyWnd_Info.ClickedBtn ~= 0 then
		local color = MakeARGB(255, 255, 0, 0)
		window_msg_up(FamilyWnd_Info.ClickedBtn, str, -68, -30, 40, color, 2)
		--window_msg_up(handle , str, 58, -16, 70, color, 3)
	end
end

FamilyWnd_Info.main()