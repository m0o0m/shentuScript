FamilyWnd_Info = {}

FamilyWnd_Info.localString = {}
local l = FamilyWnd_Info.localString
l.familyNotice = "�лṫ��"
l.familyInfo = "�л���Ϣ"
l.myPosition = "�ҵ�ְλ:"
l.quitFamily = "�˳��л�"
l.dissolveFamily = "��ɢ�л�"
l.familyMoney = "�л�Ƹ�:"
l.familyLvl = "�л�ȼ�:"
l.editFamilyNotice = "�༭����"
l.confirmNotice = "ȷ�ϱ༭"
l.tips = "�л�˵��"
l.upgradeFamily = "�����л�"
l.familyInvite = "�������"
l.thisLvlBuff = "��ǰ�ȼ�����:"
l.nextLvlBuff = "��һ�ȼ�����:"
l.tipsHint = "�᳤����ʹ��Ԫ�������лᡣ\n�����л���Ի��ר���л�BUFF��"

local ui = " <form default_parent='FamilyWnd'><dialog OnInit='FamilyWnd_Info.UIInit' id='FamilyWnd_Info' image='1802100002' x='30' y='96' w='658' h='420' OnClose='FamilyWnd_Info.wndClose' revmsg='true'>"
	.."	<edit id='familyNoticeTitle' x='102' y='7' w='129' h='19' revmsg='true' enable='false' text_color='#E6D284' text='�лṫ��' font='system'/>"
	.."	<edit id='familyNoticeRE' x='7' y='32' w='235' h='333' canedit='false' limit='360' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='editFamilyNoticeBtn' image='1800000150' x='162' y='368' w='84' h='32' OnLButtonClick='FamilyWnd_Info.editFamilyNoticeBtn_LC' revmsg='true' text='�༭����' text_color='#C2B6A0'/>"
	.."	<edit id='familyInfoTitle' x='427' y='7' w='129' h='19' revmsg='true' enable='false' text_color='#E6D284' text='�л���Ϣ' font='system'/>"
	.."	<edit id='myPostion_f' x='279' y='64' w='66' h='21' revmsg='true' enable='false' text_color='#FF9304' text='�ҵ�ְλ:' font='system'/>"
	.."	<edit id='myPositionEdit' x='337' y='64' w='66' h='21' revmsg='true' enable='false' text_color='#25A35C' font='system'/>"
	.."	<button id='quitFamilyBtn' image='1800000150' x='526' y='37' w='84' h='32' OnLButtonClick='FamilyWnd_Info.quitFamilyBtn_LC' revmsg='true' text='�˳��л�' text_color='#FF0000'/>"
	.."	<button id='dissolveFamilyBtn' image='1800000150' x='528' y='76' w='84' h='32' OnLButtonClick='FamilyWnd_Info.dissolveFamilyBtn_LC' revmsg='true' text='��ɢ�л�' text_color='#FF0000'/>"
	.."	<edit id='familyMoney_f' x='280' y='135' w='66' h='21' revmsg='true' enable='false' text_color='#FF9304' text='�л�Ƹ�:' font='system'/>"
	.."	<image id='goldImg' image='1806600015' x='335' y='137' w='16' h='14' revmsg='true' enable='false'/>"
	.."	<edit id='familyMoneyEdit' x='357' y='135' w='89' h='21' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='familyMon_f' x='399' y='135' w='66' h='21'  enable='false' text_color='#FF9304' text='��' font='system'/>"
	.."	<image id='backimage' image='1801100033' x='436' y='136' w='16' h='14' revmsg='true' enable='false'/>"
	.."	<image id='goldImg1' image='1806600015' x='437' y='140' w='16' h='14' revmsg='true' enable='false'/>"
	.."	<edit id='familyMoneyEdit1' x='457' y='138' w='40' h='21' canedit='true' revmsg='true' enable='true' type='number'  text='1'  font='system'/>"
	.."	<edit id='familyMon1_f' x='499' y='138' w='66' h='21'  enable='false' text_color='#FF9304' text='��' font='system'/>"
	.."	<button id='donateGold' image='1800000150' x='528' y='132' w='84' h='32' OnLButtonClick='FamilyWnd_Info.donateFamilyBtn_LC' revmsg='true' text='���׽��' text_color='#E6D284'/>"
	.."	<edit id='familyLvl_f' x='280' y='186' w='66' h='21' revmsg='true' enable='false' text_color='#FF9304' text='�л�ȼ�:' font='system'/>"
	.."	<edit id='familyLvlEdit' x='337' y='186' w='66' h='21' revmsg='true' enable='false' text_color='#25A35C' font='system'/>"
	.."	<button id='downgradeFamilyBtn' image='1800000150' x='528' y='180' w='84' h='32' OnLButtonClick='FamilyWnd_Info.DownGradeAlert' revmsg='true' text='�����л�' text_color='#E6D284'/>"
	.."	<richedit id='familyBuff_thisLvlRE' x='286' y='229' w='165' h='126' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<richedit id='familyBuff_nextLvlRE' x='457' y='229' w='165' h='126' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<button id='upgradeFamilyBtn' image='1800000150' x='420' y='180' w='84' h='32' OnLButtonClick='FamilyWnd_Info.upgradeFamilyBtn_LC' revmsg='true' text='�����л�' text_color='#E6D284'/>"
	.."	<image id='tipsImg' image='1800000297' x='287' y='373' w='27' h='30' revmsg='true' tip='�᳤����ʹ��Ԫ�������лᡣ�����л���Ի��ר���л�BUFF��'/>"
	.."	<edit id='tipsEdit' x='315' y='376' w='55' h='20' revmsg='false' tip='�᳤����ʹ��Ԫ�������лᡣ�����л���Ի��ר���л�BUFF��' text='�л�˵��' text_color='#C2B6A0' font='system'/>"
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
		GUIWndSetHint(handle, "<font color='#B8A085'>1����=1����ֵ</font>")
	end
    handle  = GetWindow(_Handle,"familyMoneyEdit1")
	if handle ~= 0 then
		GUIEditSetMaxCharNum(handle, 5)
	end
	handle = GetWindow(_Handle, "upgradeFamilyBtn")
	if handle ~= 0 then
		GUI:WndSetHint(handle, "����2���л�����500�򹫻�Ƹ�\n����3���л�����1000�򹫻�Ƹ�\n����4���л�����1500�򹫻�Ƹ�\n����5���л�����2000�򹫻�Ƹ�\n����6���л�����2500�򹫻�Ƹ�")
	end
	handle = GetWindow(_Handle, "downgradeFamilyBtn")
	if handle ~= 0 then
		GUI:WndSetHint(handle, "�����л�û���κ����ģ�")
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
	
	CLFamilyInfoRequest(1,"FamilyWnd_Info_�лṫ��", "FamilyWnd_Info.getFamilyNotice")
	
	UI:Lua_SubmitForm("�л�", "getFamilyInfo", FamilyWnd.guid)
	FamilyWnd_Info.updataPage()
	
	local hand = GetWindow(_Handle,"tipsImg")
	local handle = GetWindow(_Handle,"tipsEdit")
	local txt1 = "1.���������󹫻�����Ч����ǿ\n"
	local txt2 = "2.����������������������\n"
	local txt3 = "3.����������Ҫ���Ĺ���Ƹ��������������Ĺ���Ƹ�\n"
	local txt4 = "4.����14���޹����Ա���ߣ������Զ���ɢ\n"
	local txt5 = "5.�����ɢ��ֿ�װ���Լ����׽������\n"
	local txt = txt1..txt2..txt3..txt4..txt5 
	if hand ~= 0 then 
		GUIWndSetHint(hand," <font color='#D58840'>����˵����\n</font><font color='#B8A085'>"..txt.."</font>")
	end
	if handle ~= 0 then 
		GUIWndSetHint(handle," <font color='#D58840'>����˵����\n</font><font color='#B8A085'>"..txt.."</font>")
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
		if CLFamilyNoticeConfirm(str,"FamilyWnd_Info_�лṫ��", "FamilyWnd_Info.getFamilyNotice") then
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
	luaMsgBox.new("�˳��л�", "��ȷ��Ҫ�˳���ǰ�л᣿", {"��", "��"}, {"FamilyWnd_Info.quitCurrentFamily", 0}, _handle)
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
	luaMsgBox.new("��ɢ�л�", "��ȷ��Ҫ��ɢ��ǰ�л᣿", {"��", "��"}, {"FamilyWnd_Info.disssolveCurrentFamily", 0}, _handle)
end

function FamilyWnd_Info.DownGradeAlert(handle)
	FamilyWnd_Info.ClickedBtn = handle
	luaMsgBox.new("�����л�", "��ȷ��Ҫ���͵�ǰ�л�ȼ���", {"��", "��"}, {"FamilyWnd_Info.downgradeFamilyBtn_LC", 0}, _handle)
end

function FamilyWnd_Info.disssolveCurrentFamily(_handle)
	CLFamilyDismiss("FamilyWnd_Info_��ɢ�л�","FamilyWnd_Info.dismissFamilyCB")
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end

function FamilyWnd_Info.upgradeFamilyBtn_LC(handle)
	FamilyWnd_Info.ClickedBtn = handle
	UI:Lua_SubmitForm("�л�","upgradeFamilyLevel",FamilyWnd.guid)
end

function FamilyWnd_Info.downgradeFamilyBtn_LC(_handle)
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
	UI:Lua_SubmitForm("�л�","downgradeFamilyLevel",FamilyWnd.guid)
end

function FamilyWnd_Info.donateFamilyBtn_LC(handle)
	FamilyWnd_Info.ClickedBtn = handle
	local handle = GetWindow(nil,"FamilyWnd,FamilyWnd_Info,familyMoneyEdit1")
	local moneyStr = GUIEditGetTextM(handle)
	UI:Lua_SubmitForm("�л�","donateMoney",moneyStr)
end

function FamilyWnd_Info.getBuffStr(lvl)
	local reStr = ""
	local buffBaseNum = 163
	local buffInfo_ = {
		{"������", {11, 10}, {}},
		{"��������", {13, 12}, {}},
		{"ħ������", {15, 14}, {}},
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