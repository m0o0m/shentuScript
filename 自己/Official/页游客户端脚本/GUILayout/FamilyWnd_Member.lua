FamilyWnd_Member = {}

local ui = "<form default_parent='FamilyWnd'> <dialog OnInit='FamilyWnd_Member.UIInit' id='FamilyWnd_Member' image='1802100001' x='30' y='96' w='658' h='420' OnClose='FamilyWnd_Member.wndClose' revmsg='true'>"
	.."	<edit id='positionTitle' x='16' y='0' w='96' h='26' revmsg='true' enable='false' text_color='#C2B6A0' text='职位' font='system'/>"
	.."	<edit id='nameTitle' x='146' y='0' w='96' h='26' revmsg='true' enable='false' text_color='#C2B6A0' text='名称' font='system'/>"
	.."	<edit id='lvlTitle' x='276' y='0' w='96' h='26' revmsg='true' enable='false' text_color='#C2B6A0' text='等级' font='system'/>"
	.."	<edit id='classTitle' x='406' y='0' w='96' h='26' revmsg='true' enable='false' text_color='#C2B6A0' text='职业' font='system'/>"
	.."	<edit id='contributionTitle' x='536' y='0' w='96' h='26' revmsg='true' enable='false' text_color='#C2B6A0' text='贡献值' font='system'/>"
	.."	<button id='playerBtn1' image='1802100013' x='4' y='32' w='650' h='31' OnLButtonClick='FamilyWnd_Member.playerBtn_LC' revmsg='true' param='1' visible='false' text_color='#C2B6A0'/>"
	.."	<edit id='position1' x='16' y='35' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='name1' x='146' y='35' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='lvl1' x='276' y='35' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='class1' x='406' y='35' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='contribution1' x='536' y='35' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<button id='playerBtn2' image='1802100013' x='4' y='66' w='650' h='31' OnLButtonClick='FamilyWnd_Member.playerBtn_LC' revmsg='true' param='2' visible='false' text_color='#C2B6A0'/>"
	.."	<edit id='position2' x='16' y='69' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='name2' x='146' y='69' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='lvl2' x='276' y='69' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='class2' x='406' y='69' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='contribution2' x='536' y='69' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<button id='playerBtn3' image='1802100013' x='4' y='100' w='650' h='31' OnLButtonClick='FamilyWnd_Member.playerBtn_LC' revmsg='true' param='3' visible='false' text_color='#C2B6A0'/>"
	.."	<edit id='position3' x='16' y='103' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='name3' x='146' y='103' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='lvl3' x='276' y='103' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='class3' x='406' y='103' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='contribution3' x='536' y='103' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<button id='playerBtn4' image='1802100013' x='4' y='134' w='650' h='31' OnLButtonClick='FamilyWnd_Member.playerBtn_LC' revmsg='true' param='4' visible='false' text_color='#C2B6A0'/>"
	.."	<edit id='position4' x='16' y='137' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='name4' x='146' y='137' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='lvl4' x='276' y='137' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='class4' x='406' y='137' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='contribution4' x='536' y='137' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<button id='playerBtn5' image='1802100013' x='4' y='168' w='650' h='31' OnLButtonClick='FamilyWnd_Member.playerBtn_LC' revmsg='true' param='5' visible='false' text_color='#C2B6A0'/>"
	.."	<edit id='position5' x='16' y='171' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='name5' x='146' y='171' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='lvl5' x='276' y='171' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='class5' x='406' y='171' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='contribution5' x='536' y='171' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<button id='playerBtn6' image='1802100013' x='4' y='202' w='650' h='31' OnLButtonClick='FamilyWnd_Member.playerBtn_LC' revmsg='true' param='6' visible='false' text_color='#C2B6A0'/>"
	.."	<edit id='position6' x='16' y='205' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='name6' x='146' y='205' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='lvl6' x='276' y='205' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='class6' x='406' y='205' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='contribution6' x='536' y='205' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<button id='playerBtn7' image='1802100013' x='4' y='236' w='650' h='31' OnLButtonClick='FamilyWnd_Member.playerBtn_LC' revmsg='true' param='7' visible='false' text_color='#C2B6A0'/>"
	.."	<edit id='position7' x='16' y='239' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='name7' x='146' y='239' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='lvl7' x='276' y='239' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='class7' x='406' y='239' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='contribution7' x='536' y='239' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<button id='playerBtn8' image='1802100013' x='4' y='270' w='650' h='31' OnLButtonClick='FamilyWnd_Member.playerBtn_LC' revmsg='true' param='8' visible='false' text_color='#C2B6A0'/>"
	.."	<edit id='position8' x='16' y='273' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='name8' x='146' y='273' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='lvl8' x='276' y='273' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='class8' x='406' y='273' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='contribution8' x='536' y='273' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<button id='playerBtn9' image='1802100013' x='4' y='304' w='650' h='31' OnLButtonClick='FamilyWnd_Member.playerBtn_LC' revmsg='true' param='9' visible='false' text_color='#C2B6A0'/>"
	.."	<edit id='position9' x='16' y='307' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='name9' x='146' y='307' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='lvl9' x='276' y='307' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='class9' x='406' y='307' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='contribution9' x='536' y='307' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<button id='playerBtn10' image='1802100013' x='4' y='338' w='650' h='31' OnLButtonClick='FamilyWnd_Member.playerBtn_LC' revmsg='true' param='10' visible='false' text_color='#C2B6A0'/>"
	.."	<edit id='position10' x='16' y='341' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='name10' x='146' y='341' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='lvl10' x='276' y='341' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='class10' x='406' y='341' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='contribution10' x='536' y='341' w='96' h='26' revmsg='true' enable='false' visible='false' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='memberCount' x='15' y='386' w='151' h='26' revmsg='true' enable='false' text='成员人数:' font='system'/>"
	.."	<edit id='memberCount_num' x='85' y='386' w='151' h='26' revmsg='true' enable='false' font='system'/>"
	.."	<image id='pgEditBackImg' image='1800000279' x='298' y='380' w='58' h='34' revmsg='true'/>"
	.."	<edit id='pgEdit' x='310' y='384' w='52' h='26' revmsg='true' enable='false' font='system'/>"
	.."	<button id='pgUpBtn' image='1800000094' x='268' y='387' w='20' h='19' OnLButtonClick='FamilyWnd_Member.pgUpBtn_LC' revmsg='true'/>"
	.."	<button id='pgDownBtn' image='1800000098' x='367' y='387' w='20' h='19' OnLButtonClick='FamilyWnd_Member.pgDownBtn_LC' revmsg='true'/>"
	.."	<check id='showOnlineMemberOnlyCB' image='1800000176' x='520' y='389' w='114' h='21' OnCheckChange='FamilyWnd_Member.showOnlineMemberOnlyCB_CC' revmsg='true' text='只显示在线成员'/>"
	.." </dialog>"
	.."</form>"

function FamilyWnd_Member.main()
	GenFormByString(ui)
end

FamilyWnd_Member.localString = {}
if not webColor then webColor = {} end
webColor.whiteText		= CLMakeARGB(255, 255, 255, 255)
webColor.normalText		= CLMakeARGB(255, 194, 182, 160)
webColor.goldenText		= CLMakeARGB(255, 230, 210, 132)
webColor.goldenText_hl	= CLMakeARGB(255, 250, 222, 65)
webColor.blueText		= CLMakeARGB(255, 69, 221, 254)
webColor.purpleText		= CLMakeARGB(255, 230, 2, 237)
webColor.greenText		= CLMakeARGB(255, 37, 163, 92)
webColor.grayText		= CLMakeARGB(255, 192, 192, 192)
webColor.orangeText		= CLMakeARGB(255, 255, 147, 4)
webColor.redText		= CLMakeARGB(255, 255, 0, 0)

FamilyWnd_Member.nowPage = 1
FamilyWnd_Member._playerBtn_ = {}
FamilyWnd_Member._class_ = {}
FamilyWnd_Member._contribution_ = {}
FamilyWnd_Member._lvl_ = {}
FamilyWnd_Member._name_ = {}
FamilyWnd_Member._position_ = {}

--UI Logic Code Start
function FamilyWnd_Member.UIInit(_Handle)
	FamilyWnd_Member._wnd = _Handle
	FamilyWnd._nowPage = _Handle
	--RegisterUIEvent(LUA_EVENT_FAMILYMEMBER, "FamilyWnd_Member_行会成员", FamilyWnd_Member.getMemberInfo)
	as3.tolua(UI:Lua_OpenWindow(_Handle, "Menu.lua"))
	
	local _GUIHandle = 0
	local commonUI_ ={
		"pgEdit",
		"pgUpBtn",
		"pgDownBtn",
		"memberCount_num",
	} 
	for i = 1, #commonUI_ do
		_GUIHandle = GUIWndFindChildM(_Handle, commonUI_[i])
		if _GUIHandle ~= 0 then
			FamilyWnd_Member[("_"..commonUI_[i])] = _GUIHandle
		end 
	end
	for i = 1, 10 do
		_GUIHandle = GUIWndFindChildM(_Handle, "playerBtn"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_Member._playerBtn_[i] = _GUIHandle
		end 
		_GUIHandle = GUIWndFindChildM(_Handle, "position"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_Member._position_[i] = _GUIHandle
		end 
		_GUIHandle = GUIWndFindChildM(_Handle, "name"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_Member._name_[i] = _GUIHandle
		end 
		_GUIHandle = GUIWndFindChildM(_Handle, "lvl"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_Member._lvl_[i] = _GUIHandle
		end 
		_GUIHandle = GUIWndFindChildM(_Handle, "class"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_Member._class_[i] = _GUIHandle
		end 
		_GUIHandle = GUIWndFindChildM(_Handle, "contribution"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_Member._contribution_[i] = _GUIHandle
		end 
	end
	
	CLFamilyInfoRequest(2048,"FamilyWnd_Member_行会成员", "FamilyWnd_Member.getMemberInfo")
end

function FamilyWnd_Member.getMemberInfo()
	if not FamilyWnd_Member.member_ then
		FamilyWnd_Member.member_ = {}
	end
	
		FamilyWnd_Member.memberOnline_ = {}
		--1.index;2.num;3.totalNum
		FamilyWnd_Member.member_ = getTable(as3.tolua(LuaParam[4]))
		for i = 1, #FamilyWnd_Member.member_ do
			FamilyWnd_Member.member_[i] = getTable(FamilyWnd_Member.member_[i])
			if FamilyWnd_Member.member_[i][10] == 1 then
				table.insert(FamilyWnd_Member.memberOnline_, FamilyWnd_Member.member_[i])
			end
		end
	
		FamilyWnd_Member.updatePage()
		GUIEditSetTextM(FamilyWnd_Member._memberCount_num, #FamilyWnd_Member.memberOnline_.." / "..#FamilyWnd_Member.member_)
	
end

FamilyWnd_Member.playerGUID_ = {}
function FamilyWnd_Member.updatePage()
	FamilyWnd_Member.playerGUID_ = {}
	local index, tempT_ = 0, {}
	for i = 1, 10 do
		if FamilyWnd_Member.showOnlineOnly then
			tempT_ = FamilyWnd_Member.memberOnline_
		else
			tempT_ = FamilyWnd_Member.member_
		end
		index = (FamilyWnd_Member.nowPage-1)*10 + i
		if tempT_[index] then
			GUIWndSetVisible(FamilyWnd_Member._class_[i], true)
			GUIWndSetVisible(FamilyWnd_Member._contribution_[i], true)
			GUIWndSetVisible(FamilyWnd_Member._lvl_[i], true)
			GUIWndSetVisible(FamilyWnd_Member._name_[i], true)
			GUIWndSetVisible(FamilyWnd_Member._playerBtn_[i], true)
			GUIWndSetVisible(FamilyWnd_Member._position_[i], true)
			
			GUIEditSetTextM(FamilyWnd_Member._class_[i], RDJOBName[tempT_[index][4]])
			GUIEditSetTextM(FamilyWnd_Member._lvl_[i], tempT_[index][3])
			GUIEditSetTextM(FamilyWnd_Member._name_[i], tempT_[index][2])
			if FamilyWnd.familyTitle_ then
				for j, k in pairs(FamilyWnd.familyTitle_) do
					if k[1] == tempT_[index][6] then
						GUIEditSetTextM(FamilyWnd_Member._position_[i], k[2])
						break
					end
				end
			else
				FamilyWnd_Member.needfamilyTitle = 1
			end
			if tempT_[index][10] == 1 then
				GUIWndSetImageID(FamilyWnd_Member._playerBtn_[i], 1802100013)
				GUIEditSetTextColor(FamilyWnd_Member._class_[i], webColor.goldenText)
				GUIEditSetTextColor(FamilyWnd_Member._contribution_[i], webColor.goldenText)
				GUIEditSetTextColor(FamilyWnd_Member._lvl_[i], webColor.goldenText)
				GUIEditSetTextColor(FamilyWnd_Member._name_[i], webColor.goldenText)
				GUIEditSetTextColor(FamilyWnd_Member._position_[i], webColor.goldenText)
			else
				GUIWndSetImageID(FamilyWnd_Member._playerBtn_[i], 1802100017)
				GUIEditSetTextColor(FamilyWnd_Member._class_[i], webColor.grayText)
				GUIEditSetTextColor(FamilyWnd_Member._contribution_[i], webColor.grayText)
				GUIEditSetTextColor(FamilyWnd_Member._lvl_[i], webColor.grayText)
				GUIEditSetTextColor(FamilyWnd_Member._name_[i], webColor.grayText)
				GUIEditSetTextColor(FamilyWnd_Member._position_[i], webColor.grayText)
			end
			table.insert(FamilyWnd_Member.playerGUID_, tempT_[index][1])
		else
			GUIWndSetVisible(FamilyWnd_Member._class_[i], false)
			GUIWndSetVisible(FamilyWnd_Member._contribution_[i], false)
			GUIWndSetVisible(FamilyWnd_Member._lvl_[i], false)
			GUIWndSetVisible(FamilyWnd_Member._name_[i], false)
			GUIWndSetVisible(FamilyWnd_Member._playerBtn_[i], false)
			GUIWndSetVisible(FamilyWnd_Member._position_[i], false)
		end
	end
	
	as3.tolua(UI:Lua_SubmitForm("行会", "updatePlayerContribution", serialize(FamilyWnd_Member.playerGUID_)))
	FamilyWnd_Member.updatePgBtn()
end

function FamilyWnd_Member.pgUpBtn_LC(_Handle)
	FamilyWnd_Member.nowPage = FamilyWnd_Member.nowPage - 1
	FamilyWnd_Member.updatePage()
end

function FamilyWnd_Member.pgDownBtn_LC(_Handle)
	FamilyWnd_Member.nowPage = FamilyWnd_Member.nowPage + 1
	FamilyWnd_Member.updatePage()
end

function FamilyWnd_Member.updatePgBtn()
	local pgCount = 0
	if FamilyWnd_Member.showOnlineOnly then
		pgCount = math.ceil(#FamilyWnd_Member.memberOnline_/10)
	else
		pgCount = math.ceil(#FamilyWnd_Member.member_/10)
	end
	if pgCount == 0 then
		pgCount = 1
	end
	GUIEditSetTextM(FamilyWnd_Member._pgEdit, FamilyWnd_Member.nowPage.." / "..pgCount)
	
	if FamilyWnd_Member.nowPage <= 1 then
		GUIWndSetEnableM(FamilyWnd_Member._pgUpBtn, false)
	else
		GUIWndSetEnableM(FamilyWnd_Member._pgUpBtn, true)
	end
	
	if FamilyWnd_Member.nowPage >= pgCount then
		GUIWndSetEnableM(FamilyWnd_Member._pgDownBtn, false)
	else
		GUIWndSetEnableM(FamilyWnd_Member._pgDownBtn, true)
	end
end

function FamilyWnd_Member.showOnlineMemberOnlyCB_CC(_Handle)
	FamilyWnd_Member.showOnlineOnly = GUICheckBoxGetCheck(_Handle)
	FamilyWnd_Member.nowPage = 1
	FamilyWnd_Member.updatePage()
end

function FamilyWnd_Member.playerBtn_LC(_Handle)
	FamilyWnd_Member.selBtnIndex = GUIWndGetParam(_Handle)
	GUIGetWndMousePos(FamilyWnd_Member._wnd)
	GUIWndSetPosM(Menu._wnd["FamilyWnd_Member"],  as3.tolua(LuaRet[1]), as3.tolua(LuaRet[2]))
	GUIWndSetVisible(Menu._wnd["FamilyWnd_Member"], true)
end

function FamilyWnd_Member.wndClose()
	local wnd = GUIWndFindWindow(0, "FamilyWnd_Member") 
	if wnd == 0 then
	--	UnRegisterUIEvent(LUA_EVENT_FAMILYMEMBER, "FamilyWnd_Member_行会成员")
		FamilyWnd_Member = nil
	end
end

--client
function FamilyWnd_Member_updatePlayerContribution(list_)
	if not FamilyWnd_Member then return end
	for i, v in pairs(list_) do
		GUIEditSetTextM(FamilyWnd_Member._contribution_[i], v)
	end
end

FamilyWnd_Member.main()