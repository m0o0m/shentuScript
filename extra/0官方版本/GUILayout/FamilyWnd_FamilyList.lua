FamilyWnd_FamilyList = {}

local ui = "<form default_parent='FamilyWnd'> <dialog OnInit='FamilyWnd_FamilyList.UIInit' id='FamilyWnd_FamilyList' image='1802100001' x='13' y='76' w='658' h='420' OnClose='FamilyWnd_FamilyList.wndClose' revmsg='true'>"
	.."	<button id='pgUpBtn' image='1800000094' x='270' y='389' w='20' h='19' OnLButtonClick='FamilyWnd_FamilyList.pgUpBtn_LC' revmsg='true'/>"
	.."	<button id='pgDownBtn' image='1800000098' x='369' y='389' w='20' h='19' OnLButtonClick='FamilyWnd_FamilyList.pgDownBtn_LC' revmsg='true'/>"
	.."	<image id='pgEditBackImg' image='1800000279' x='300' y='381' w='58' h='34' revmsg='true' enable='false'/>"
	.."	<edit id='pgEdit' x='314' y='383' w='48' h='22' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLvlTitleEdit' x='15' y='1' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#C2B6A0' text='行会等级' font='system'/>"
	.."	<edit id='familyNameTitleEdit' x='143' y='1' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#C2B6A0' text='行会名称' font='system'/>"
	.."	<edit id='familyPresidentTitleEdit' x='286' y='1' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#C2B6A0' text='行会会长' font='system'/>"
	.."	<edit id='familyMembersNumberEdit' x='419' y='1' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#C2B6A0' text='行会人数' font='system'/>"
	.."	<edit id='operationTitleEdit' x='548' y='1' w='78' h='24' align='center' revmsg='true' enable='false' text_color='#C2B6A0' text='操作' font='system'/>"
	.."	<button id='familyBtn1' image='1802100013' x='5' y='33' w='650' h='31' OnLButtonClick='FamilyWnd_FamilyList.familyBtn_LC' revmsg='true' param='1' visible='false'/>"
	.."	<edit id='familyLvlEdit1' x='15' y='34' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit1' x='143' y='34' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit1' x='286' y='34' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit1' x='419' y='34' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='familyBtn2' image='1802100013' x='5' y='67' w='650' h='31' OnLButtonClick='FamilyWnd_FamilyList.familyBtn_LC' revmsg='true' param='2' visible='false'/>"
	.."	<edit id='familyLvlEdit2' x='15' y='68' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit2' x='143' y='68' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit2' x='286' y='68' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit2' x='419' y='68' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='familyBtn3' image='1802100013' x='5' y='101' w='650' h='31' OnLButtonClick='FamilyWnd_FamilyList.familyBtn_LC' revmsg='true' param='3' visible='false'/>"
	.."	<edit id='familyLvlEdit3' x='15' y='102' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit3' x='143' y='102' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit3' x='286' y='102' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit3' x='419' y='102' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='familyBtn4' image='1802100013' x='5' y='135' w='650' h='31' OnLButtonClick='FamilyWnd_FamilyList.familyBtn_LC' revmsg='true' param='4' visible='false'/>"
	.."	<edit id='familyLvlEdit4' x='15' y='136' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit4' x='143' y='136' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit4' x='286' y='136' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit4' x='419' y='136' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='familyBtn5' image='1802100013' x='5' y='169' w='650' h='31' OnLButtonClick='FamilyWnd_FamilyList.familyBtn_LC' revmsg='true' param='5' visible='false'/>"
	.."	<edit id='familyLvlEdit5' x='15' y='170' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit5' x='143' y='170' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit5' x='286' y='170' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit5' x='419' y='170' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='familyBtn6' image='1802100013' x='5' y='203' w='650' h='31' OnLButtonClick='FamilyWnd_FamilyList.familyBtn_LC' revmsg='true' param='6' visible='false'/>"
	.."	<edit id='familyLvlEdit6' x='15' y='204' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit6' x='143' y='204' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit6' x='286' y='204' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit6' x='419' y='204' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='familyBtn7' image='1802100013' x='5' y='237' w='650' h='31' OnLButtonClick='FamilyWnd_FamilyList.familyBtn_LC' revmsg='true' param='7' visible='false'/>"
	.."	<edit id='familyLvlEdit7' x='15' y='238' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit7' x='143' y='238' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit7' x='286' y='238' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit7' x='419' y='238' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='familyBtn8' image='1802100013' x='5' y='271' w='650' h='31' OnLButtonClick='FamilyWnd_FamilyList.familyBtn_LC' revmsg='true' param='8' visible='false'/>"
	.."	<edit id='familyLvlEdit8' x='15' y='272' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit8' x='143' y='272' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit8' x='286' y='272' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit8' x='419' y='272' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='familyBtn9' image='1802100013' x='5' y='305' w='650' h='31' OnLButtonClick='FamilyWnd_FamilyList.familyBtn_LC' revmsg='true' param='9' visible='false'/>"
	.."	<edit id='familyLvlEdit9' x='15' y='306' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit9' x='143' y='306' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit9' x='286' y='306' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit9' x='419' y='306' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='familyBtn10' image='1802100013' x='5' y='339' w='650' h='31' OnLButtonClick='FamilyWnd_FamilyList.familyBtn_LC' revmsg='true' param='10' visible='false'/>"
	.."	<edit id='familyLvlEdit10' x='15' y='340' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit10' x='143' y='340' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit10' x='286' y='340' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit10' x='419' y='340' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.." </dialog>"
	.."</form>"

function FamilyWnd_FamilyList.main()
	GenFormByString(ui)
end

FamilyWnd_FamilyList.localString = {}
local l = FamilyWnd_FamilyList.localString
l.familyCountPrefix = "行会数量:"
l.familyLvl = "行会等级"
l.familyName = "行会名称"
l.familyPresident = "行会会长"
l.familyMembersNumber = "行会人数"
l.operation = "操作"

FamilyWnd_FamilyList._familyBtn_ = {}
FamilyWnd_FamilyList._familyLeaderEdit_ = {}
FamilyWnd_FamilyList._familyLvlEdit_ = {}
FamilyWnd_FamilyList._familyMembersNumberEdit_ = {}
FamilyWnd_FamilyList._familyNameEdit_ = {}
FamilyWnd_FamilyList.nowPage = 1

--UI Logic Code Start
function FamilyWnd_FamilyList.UIInit(_Handle)
	FamilyWnd_FamilyList._wnd = _Handle
	FamilyWnd._nowPage = _Handle
--	RegisterUIEvent(LUA_EVENT_FAMILYLIST, "FamilyWnd_FamilyList_获取行会列表", FamilyWnd_FamilyList.getFamilyList)
	--UI:Lua_OpenWindow(_Handle, "Menu.lua")
	
	local _GUIHandle = 0
	for i = 1, 10 do
		_GUIHandle = GUI:WndFindChildM(_Handle, "familyBtn"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_FamilyList._familyBtn_[i] = _GUIHandle
		end	
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyLvlEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyWnd_FamilyList._familyLvlEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyNameEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyWnd_FamilyList._familyNameEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyLeaderEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyWnd_FamilyList._familyLeaderEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyMembersNumberEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyWnd_FamilyList._familyMembersNumberEdit_[i] = _GUIHandle
		end
	end
	
	local commonUI_ ={
		"pgEdit",
		"pgUpBtn",
		"pgDownBtn",
	} 
	for i = 1, #commonUI_ do
		_GUIHandle = GUI:WndFindChildM(_Handle, commonUI_[i])
		if _GUIHandle ~= 0 then
			FamilyWnd_FamilyList[("_"..commonUI_[i])] = _GUIHandle
		end 
	end
	
	CL:FamilyInfoRequest(256,"FamilyWnd_FamilyList_获取行会列表","FamilyWnd_FamilyList.getFamilyList")
end

function FamilyWnd_FamilyList.getFamilyList()
	if FamilyWnd_FamilyList then
		FamilyWnd_FamilyList.familyList_ = {}
		FamilyWnd_FamilyList.familyList_ = getTable(LuaParam[1])
		for i = 1, #FamilyWnd_FamilyList.familyList_ do
			FamilyWnd_FamilyList.familyList_[i] = getTable(FamilyWnd_FamilyList.familyList_[i])
		end
		FamilyWnd_FamilyList.fillPageWnd()
	end
end

function FamilyWnd_FamilyList.fillPageWnd()
	local index, guid_ = 0, {} 
	for i = 1, 10 do
		index = (FamilyWnd_FamilyList.nowPage-1)*10 + i
		if FamilyWnd_FamilyList.familyList_[index] then
			FamilyWnd_FamilyList.setBtnVisible(i, true)
			GUI:EditSetTextM(FamilyWnd_FamilyList._familyNameEdit_[i], FamilyWnd_FamilyList.familyList_[index][1])
			GUI:EditSetTextM(FamilyWnd_FamilyList._familyLeaderEdit_[i], FamilyWnd_FamilyList.familyList_[index][2])
			GUI:EditSetTextM(FamilyWnd_FamilyList._familyMembersNumberEdit_[i], FamilyWnd_FamilyList.familyList_[index][3])
			table.insert(guid_, FamilyWnd_FamilyList.familyList_[index][5])
		else
			FamilyWnd_FamilyList.setBtnVisible(i, false)
		end
	end

	UI:Lua_SubmitForm("行会", "updateFamilyLvlTable", serialize(guid_).."#".."FamilyWnd_FamilyList")
	FamilyWnd_FamilyList.updatePgBtn()
end

function FamilyWnd_FamilyList.familyBtn_LC(_Handle)
	if FamilyWnd.selfTitleID ~= 1 then 
		return
	end
	
	--FamilyWnd_FamilyList.selBtnIndex = GUI:WndGetParam(_Handle)
	--GUI:GetWndMousePos(FamilyWnd_FamilyList._wnd)
	--GUI:WndSetPosM(Menu._wnd["FamilyWnd_FamilyList"],  LuaRet[1], LuaRet[2])
	--GUI:WndSetVisible(Menu._wnd["FamilyWnd_FamilyList"], true)
end

function FamilyWnd_FamilyList.pgUpBtn_LC(_Handle)
	FamilyWnd_FamilyList.nowPage = FamilyWnd_FamilyList.nowPage - 1
	FamilyWnd_FamilyList.updatePgBtn()
	FamilyWnd_FamilyList.fillPageWnd()
end

function FamilyWnd_FamilyList.pgDownBtn_LC(_Handle)
	FamilyWnd_FamilyList.nowPage = FamilyWnd_FamilyList.nowPage + 1
	FamilyWnd_FamilyList.updatePgBtn()
	FamilyWnd_FamilyList.fillPageWnd()
end

function FamilyWnd_FamilyList.updatePgBtn()
	local pgCount = math.ceil(#FamilyWnd_FamilyList.familyList_/10)
	if pgCount == 0 then
		pgCount = 1
	end
	GUI:EditSetTextM(FamilyWnd_FamilyList._pgEdit, FamilyWnd_FamilyList.nowPage.." / "..pgCount)
	
	if FamilyWnd_FamilyList.nowPage <= 1 then
		GUI:WndSetEnableM(FamilyWnd_FamilyList._pgUpBtn, false)
	else
		GUI:WndSetEnableM(FamilyWnd_FamilyList._pgUpBtn, true)
	end
	
	if FamilyWnd_FamilyList.nowPage >= pgCount then
		GUI:WndSetEnableM(FamilyWnd_FamilyList._pgDownBtn, false)
	else
		GUI:WndSetEnableM(FamilyWnd_FamilyList._pgDownBtn, true)
	end
end

function FamilyWnd_FamilyList.setBtnVisible(index, bool)
	GUI:WndSetVisible(FamilyWnd_FamilyList._familyBtn_[index], bool)
	GUI:WndSetVisible(FamilyWnd_FamilyList._familyNameEdit_[index], bool)
	GUI:WndSetVisible(FamilyWnd_FamilyList._familyLeaderEdit_[index], bool)
	GUI:WndSetVisible(FamilyWnd_FamilyList._familyLvlEdit_[index], bool)
	GUI:WndSetVisible(FamilyWnd_FamilyList._familyMembersNumberEdit_[index], bool)
end

function FamilyWnd_FamilyList.wndClose()
	local _GUIHandle = GUI:WndFindWindow(0, "FamilyWnd_FamilyList") 
	if _GUIHandle == 0 then
--		UnRegisterUIEvent(LUA_EVENT_FAMILYLIST, "FamilyWnd_FamilyList_获取行会列表")
		FamilyWnd_FamilyList = nil
	end
end

--client
function FamilyWnd_FamilyList_updateFamiyLvl(lvl_)
	if not FamilyWnd_FamilyList then return end
	for i, v in pairs(lvl_) do
		GUI:EditSetTextM(FamilyWnd_FamilyList._familyLvlEdit_[i], v)
	end
end

FamilyWnd_FamilyList.main()