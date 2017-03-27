FamilyWnd_FamilyList = {}

local ui = "<form default_parent='FamilyWnd'> <dialog OnInit='FamilyWnd_FamilyList.UIInit' id='FamilyWnd_FamilyList' image='1802100001' x='30' y='96' w='658' h='420' OnClose='FamilyWnd_FamilyList.wndClose' revmsg='true'>"
	.."	<button id='pgUpBtn' image='1800000094' x='270' y='389' w='20' h='19' OnLButtonClick='FamilyWnd_FamilyList.pgUpBtn_LC' revmsg='true'/>"
	.."	<button id='pgDownBtn' image='1800000098' x='369' y='389' w='20' h='19' OnLButtonClick='FamilyWnd_FamilyList.pgDownBtn_LC' revmsg='true'/>"
	.."	<image id='pgEditBackImg' image='1800000279' x='300' y='381' w='58' h='34' revmsg='true' enable='false'/>"
	.."	<edit id='pgEdit' x='312' y='387' w='48' h='22' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
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

FamilyWnd_FamilyList.FAMILY_LIST_PAGE_SIZE = 10
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
	
	local _GUIHandle = 0
	for i = 1, 10 do
		_GUIHandle = GUIWndFindChildM(_Handle, "familyBtn"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_FamilyList._familyBtn_[i] = _GUIHandle
		end	
		_GUIHandle = GUIWndFindWindow(_Handle, "familyLvlEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyWnd_FamilyList._familyLvlEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindWindow(_Handle, "familyNameEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyWnd_FamilyList._familyNameEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindWindow(_Handle, "familyLeaderEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyWnd_FamilyList._familyLeaderEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindWindow(_Handle, "familyMembersNumberEdit"..i)
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
		_GUIHandle = GUIWndFindChildM(_Handle, commonUI_[i])
		if _GUIHandle ~= 0 then
			FamilyWnd_FamilyList[("_"..commonUI_[i])] = _GUIHandle
		end 
	end
	
	CLGetFamilyList(0,10,"FamilyWnd_FamilyList_获取行会列表","FamilyWnd_FamilyList.getFamilyList")
end

function FamilyWnd_FamilyList.getFamilyList()
	FamilyWnd_FamilyList.ListTotalNum = as3.tolua(LuaParam[1])    --所有行会数量
    FamilyWnd_FamilyList.ListFirstIndex = as3.tolua(LuaParam[2] ) --当前起始序号
    FamilyWnd_FamilyList.ListNum = as3.tolua(LuaParam[3])        --本页数量
	FamilyWnd_FamilyList.FamilyList = {}
	FamilyWnd_FamilyList.FamilyList = getTable(as3.tolua(LuaParam[4]))    --列表数据
	
	for i = 1, #FamilyWnd_FamilyList.FamilyList do
		FamilyWnd_FamilyList.FamilyList[i] = getTable(FamilyWnd_FamilyList.FamilyList[i])
	end
	FamilyWnd_FamilyList.fillPageWnd()	
end

function FamilyWnd_FamilyList.fillPageWnd()
	local index, familyGUID_ = 0 , {}
    for i = 1, 10 do
        if FamilyWnd_FamilyList.FamilyList[i] then
            GUIWndSetVisible(FamilyWnd_FamilyList._familyBtn_[i], true)
            GUIWndSetVisible(FamilyWnd_FamilyList._familyNameEdit_[i], true)
            GUIWndSetVisible(FamilyWnd_FamilyList._familyLeaderEdit_[i], true)
            GUIWndSetVisible(FamilyWnd_FamilyList._familyMembersNumberEdit_[i], true)
            GUIWndSetVisible(FamilyWnd_FamilyList._familyLvlEdit_[i], true)
            GUIEditSetTextM(FamilyWnd_FamilyList._familyNameEdit_[i], FamilyWnd_FamilyList.FamilyList[i][1])
            GUIEditSetTextM(FamilyWnd_FamilyList._familyLeaderEdit_[i], FamilyWnd_FamilyList.FamilyList[i][2])
            GUIEditSetTextM(FamilyWnd_FamilyList._familyMembersNumberEdit_[i], tostring(FamilyWnd_FamilyList.FamilyList[i][3]))
            table.insert(familyGUID_, FamilyWnd_FamilyList.FamilyList[i][5])
        end
    end

    for i = FamilyWnd_FamilyList.ListNum + 1, FamilyWnd_FamilyList.FAMILY_LIST_PAGE_SIZE do
        GUIWndSetVisible(FamilyWnd_FamilyList._familyBtn_[i], false)
        GUIWndSetVisible(FamilyWnd_FamilyList._familyNameEdit_[i], false)
        GUIWndSetVisible(FamilyWnd_FamilyList._familyLeaderEdit_[i], false)
        GUIWndSetVisible(FamilyWnd_FamilyList._familyMembersNumberEdit_[i], false)
        GUIWndSetVisible(FamilyWnd_FamilyList._familyLvlEdit_[i], false)
    end

	as3.tolua(UI:Lua_SubmitForm("行会", "updateFamilyLvlTable", serialize(familyGUID_).."#".."FamilyWnd_FamilyList"))
	FamilyWnd_FamilyList.updatePgBtn()
end

function FamilyWnd_FamilyList.familyBtn_LC(_Handle)
	if FamilyWnd.selfTitleID ~= 1 then 
		return
	end
end

function FamilyWnd_FamilyList.pgUpBtn_LC(_Handle)	
	if FamilyWnd_FamilyList.nowPage > 1 then
        FamilyWnd_FamilyList.nowPage = FamilyWnd_FamilyList.nowPage - 1
        CLGetFamilyList((FamilyWnd_FamilyList.nowPage - 1) * FamilyWnd_FamilyList.FAMILY_LIST_PAGE_SIZE, 10, "FamilyWnd_FamilyList_获取行会列表","FamilyWnd_FamilyList.getFamilyList")
    end
end

function FamilyWnd_FamilyList.pgDownBtn_LC(_Handle)	
	if FamilyWnd_FamilyList.nowPage <= FamilyWnd_FamilyList.pgCount then
        FamilyWnd_FamilyList.nowPage = FamilyWnd_FamilyList.nowPage + 1
        CLGetFamilyList((FamilyWnd_FamilyList.nowPage - 1) * FamilyWnd_FamilyList.FAMILY_LIST_PAGE_SIZE, 10, "FamilyWnd_FamilyList_获取行会列表","FamilyWnd_FamilyList.getFamilyList")
    end
end

function FamilyWnd_FamilyList.updatePgBtn()
	FamilyWnd_FamilyList.pgCount = math.floor((FamilyWnd_FamilyList.ListTotalNum + FamilyWnd_FamilyList.FAMILY_LIST_PAGE_SIZE - 1) / FamilyWnd_FamilyList.FAMILY_LIST_PAGE_SIZE)
	if FamilyWnd_FamilyList.pgCount <= 0 then
		FamilyWnd_FamilyList.pgCount = 1
	end


	FamilyWnd_FamilyList.nowPage = math.floor(FamilyWnd_FamilyList.ListFirstIndex / FamilyWnd_FamilyList.FAMILY_LIST_PAGE_SIZE) + 1

	if FamilyWnd_FamilyList.nowPage <= 0 then
		FamilyWnd_FamilyList.nowPage = 1
	end
	GUIEditSetTextM(FamilyWnd_FamilyList._pgEdit, FamilyWnd_FamilyList.nowPage.." / "..FamilyWnd_FamilyList.pgCount)
	
	if FamilyWnd_FamilyList.nowPage <= 1 then
		GUIWndSetEnableM(FamilyWnd_FamilyList._pgUpBtn, false)
	else
		GUIWndSetEnableM(FamilyWnd_FamilyList._pgUpBtn, true)
	end
	
	if FamilyWnd_FamilyList.nowPage >= FamilyWnd_FamilyList.pgCount then
		GUIWndSetEnableM(FamilyWnd_FamilyList._pgDownBtn, false)
	else
		GUIWndSetEnableM(FamilyWnd_FamilyList._pgDownBtn, true)
	end
end

function FamilyWnd_FamilyList.wndClose()
	local _GUIHandle = GUIWndFindWindow(0, "FamilyWnd_FamilyList") 
	if _GUIHandle == 0 then
		FamilyWnd_FamilyList = nil
	end
end

function FamilyWnd_FamilyList_updateFamiyLvl(lvl_)
	if not FamilyWnd_FamilyList then return end
	for i, v in pairs(lvl_) do
		GUIEditSetTextM(FamilyWnd_FamilyList._familyLvlEdit_[i], v)
	end
end

FamilyWnd_FamilyList.main()