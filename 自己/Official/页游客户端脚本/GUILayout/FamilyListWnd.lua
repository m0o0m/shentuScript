FamilyListWnd = {}
local ui = "<form> <dialog OnInit='FamilyListWnd.UIInit' id='FamilyListWnd' image='1806500000' x='0' y='0' w='684' h='511' OnClose='FamilyListWnd.wndClose' center = 'true' esc_close='true' drag='true' revmsg='true'>"
		.."	<image id='wndTitleImg' image='1807700000' x='328' y='8' w='80' h='27' revmsg='true' enable='false'/>"
	.."	<image id='wndBackImg2' image='1802100001' x='32' y='76' w='658' h='420' revmsg='true' enable='false'/>"
	--.."	<image id='wndBackImg3' image='1806500001' x='32' y='76' w='0' h='0' revmsg='true' enable='false'/>"
	.."	<button id='closeBtn' image='1803700030' x='667' y='6' w='26' h='26' OnLButtonClick='luaWndClose' revmsg='true'/>"
	.."	<button id='familyListBtn' image='1806500017' x='49' y='47' w='72' h='27' page_btn='true' revmsg='true' text='行会列表' text_color='#C2B6A0'/>"
	.."	<button id='pgUpBtn' image='1806700029' x='302' y='465' w='20' h='19' OnLButtonClick='FamilyListWnd.pgUpBtn_LC' revmsg='true'/>"
	.."	<button id='pgDownBtn' image='1806700033' x='401' y='465' w='20' h='19' OnLButtonClick='FamilyListWnd.pgDownBtn_LC' revmsg='true'/>"
	.."	<image id='pgEditBackImg' image='1800000279' x='332' y='457' w='58' h='34' revmsg='true' enable='false'/>"
	.."	<edit id='pgEdit' x='344' y='463' w='48' h='22' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLvlTitleEdit' x='47' y='77' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#C2B6A0' text='行会等级' font='system'/>"
	.."	<edit id='familyNameTitleEdit' x='175' y='77' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#C2B6A0' text='行会名称' font='system'/>"
	.."	<edit id='familyLeaderTitleEdit' x='318' y='77' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#C2B6A0' text='行会会长' font='system'/>"
	.."	<edit id='familyMembersNumberEdit' x='451' y='77' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#C2B6A0' text='行会人数' font='system'/>"
	.."	<edit id='operationTitleEdit' x='580' y='77' w='78' h='24' align='center' revmsg='true' enable='false' text_color='#C2B6A0' text='操作' font='system'/>"
	.."	<button id='createFamilyBtn' image='1807700006' x='585' y='457' w='84' h='32' OnLButtonClick='FamilyListWnd.createFamilyBtn_LC' revmsg='true' text='创建行会'/>"
	.."	<button id='familyBtn1' image='1807700002' x='37' y='109' w='650' h='31' revmsg='true'/>"
	.."	<edit id='familyLvlEdit1' x='47' y='111' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit1' x='175' y='111' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit1' x='318' y='111' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit1' x='451' y='111' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='operationBtn1' image='1806400136' x='584' y='113' w='67' h='23' OnLButtonClick='FamilyListWnd.operationBtn_LC' revmsg='true' param='1'/>"
	.."	<button id='familyBtn2' image='1807700002' x='37' y='143' w='650' h='31' revmsg='true'/>"
	.."	<edit id='familyLvlEdit2' x='47' y='145' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit2' x='175' y='145' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit2' x='318' y='145' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit2' x='451' y='145' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='operationBtn2' image='1806400136' x='584' y='147' w='67' h='23' OnLButtonClick='FamilyListWnd.operationBtn_LC' revmsg='true' param='2'/>"
	.."	<button id='familyBtn3' image='1807700002' x='37' y='177' w='650' h='31' revmsg='true'/>"
	.."	<edit id='familyLvlEdit3' x='47' y='179' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit3' x='175' y='179' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit3' x='318' y='179' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit3' x='451' y='179' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='operationBtn3' image='1806400136' x='584' y='181' w='67' h='23' OnLButtonClick='FamilyListWnd.operationBtn_LC' revmsg='true' param='3'/>"
	.."	<button id='familyBtn4' image='1807700002' x='37' y='211' w='650' h='31' revmsg='true'/>"
	.."	<edit id='familyLvlEdit4' x='47' y='213' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit4' x='175' y='213' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit4' x='318' y='213' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit4' x='451' y='213' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='operationBtn4' image='1806400136' x='584' y='215' w='67' h='23' OnLButtonClick='FamilyListWnd.operationBtn_LC' revmsg='true' param='4'/>"
	.."	<button id='familyBtn5' image='1807700002' x='37' y='245' w='650' h='31' revmsg='true'/>"
	.."	<edit id='familyLvlEdit5' x='47' y='247' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit5' x='175' y='247' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit5' x='318' y='247' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit5' x='451' y='247' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='operationBtn5' image='1806400136' x='584' y='249' w='67' h='23' OnLButtonClick='FamilyListWnd.operationBtn_LC' revmsg='true' param='5'/>"
	.."	<button id='familyBtn6' image='1807700002' x='37' y='279' w='650' h='31' revmsg='true'/>"
	.."	<edit id='familyLvlEdit6' x='47' y='281' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit6' x='175' y='281' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit6' x='318' y='281' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit6' x='451' y='281' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='operationBtn6' image='1806400136' x='584' y='283' w='67' h='23' OnLButtonClick='FamilyListWnd.operationBtn_LC' revmsg='true' param='6'/>"
	.."	<button id='familyBtn7' image='1807700002' x='37' y='313' w='650' h='31' revmsg='true'/>"
	.."	<edit id='familyLvlEdit7' x='47' y='315' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit7' x='175' y='315' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit7' x='318' y='315' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit7' x='451' y='315' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='operationBtn7' image='1806400136' x='584' y='317' w='67' h='23' OnLButtonClick='FamilyListWnd.operationBtn_LC' revmsg='true' param='7'/>"
	.."	<button id='familyBtn8' image='1807700002' x='37' y='347' w='650' h='31' revmsg='true'/>"
	.."	<edit id='familyLvlEdit8' x='47' y='349' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit8' x='175' y='349' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit8' x='318' y='349' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit8' x='451' y='349' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='operationBtn8' image='1806400136' x='584' y='351' w='67' h='23' OnLButtonClick='FamilyListWnd.operationBtn_LC' revmsg='true' param='8'/>"
	.."	<button id='familyBtn9' image='1807700002' x='37' y='381' w='650' h='31' revmsg='true'/>"
	.."	<edit id='familyLvlEdit9' x='47' y='383' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit9' x='175' y='383' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit9' x='318' y='383' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit9' x='451' y='383' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='operationBtn9' image='1806400136' x='584' y='385' w='67' h='23' OnLButtonClick='FamilyListWnd.operationBtn_LC' revmsg='true' param='9'/>"
	.."	<button id='familyBtn10' image='1807700002' x='37' y='415' w='650' h='31' revmsg='true'/>"
	.."	<edit id='familyLvlEdit10' x='47' y='417' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyNameEdit10' x='175' y='417' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyLeaderEdit10' x='318' y='417' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='familyMembersNumberEdit10' x='451' y='417' w='80' h='24' align='center' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<button id='operationBtn10' image='1806400136' x='584' y='419' w='67' h='23' OnLButtonClick='FamilyListWnd.operationBtn_LC' revmsg='true' param='10'/>"
	.." </dialog>"
	.."</form>"

function FamilyListWnd.main()
	GenFormByString(ui)
end
FamilyListWnd.localString = {}
local l = FamilyListWnd.localString
l.familyCountPrefix = "行会数量:"
l.familyLvl = "行会等级"
l.familyName = "行会名称"
l.familyLeader = "行会会长"
l.familyMembersNumber = "行会人数"
l.operation = "操作"
l.operation_ = {"申请入会", "取消申请",}
l.createFamily = "创建行会"
l.familyList = "行会列表"

FamilyListWnd.FAMILY_LIST_PAGE_SIZE = 10
FamilyListWnd._familyBtn_ = {}
FamilyListWnd._familyLeaderEdit_ = {}
FamilyListWnd._familyLvlEdit_ = {}
FamilyListWnd._familyMembersNumberEdit_ = {}
FamilyListWnd._familyNameEdit_ = {}
FamilyListWnd._operationBtn_ = {}
FamilyListWnd.nowPage = 1

--UI Logic Code Start
function FamilyListWnd.UIInit(_Handle)
	FamilyListWnd._wnd = _Handle
	GUIWndSetSizeM(_Handle, 684, 511)
	local _handle = GUIWndFindChildM(_Handle, "familyListBtn")
	if _handle~= 0 then
		GUIButtonSetIsActivePageBtn(_handle, true)
	end	
	local _GUIHandle, _btn = 0, 0
	for i = 1, 10 do
		_btn = GUI:WndFindChildM(_Handle, "familyBtn"..i)
		FamilyListWnd._familyBtn_[i] = _btn
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyLvlEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyListWnd._familyLvlEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyNameEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyListWnd._familyNameEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyLeaderEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyListWnd._familyLeaderEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyMembersNumberEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyListWnd._familyMembersNumberEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindWindow(_Handle, "operationBtn"..i)
		if _GUIHandle ~= 0 then 
			FamilyListWnd._operationBtn_[i] = _GUIHandle
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
			FamilyListWnd[("_"..commonUI_[i])] = _GUIHandle
		end 
	end
	
	CLGetFamilyList(0,10,"FamilyWnd_FamilyList_获取行会列表","FamilyListWnd.getFamilyList")
end

function FamilyListWnd.pgUpBtn_LC(_Handle)
	if FamilyListWnd.nowPage > 1 then

        FamilyListWnd.nowPage = FamilyListWnd.nowPage - 1
        CLGetFamilyList((FamilyListWnd.nowPage - 1) * FamilyListWnd.FAMILY_LIST_PAGE_SIZE, 10, "FamilyListWnd_获取行会列表","FamilyListWnd.getFamilyList")
    end
end

function FamilyListWnd.pgDownBtn_LC(_Handle)
	if FamilyListWnd.nowPage <= FamilyListWnd.pgCount then

        FamilyListWnd.nowPage = FamilyListWnd.nowPage + 1
        CLGetFamilyList((FamilyListWnd.nowPage - 1) * FamilyListWnd.FAMILY_LIST_PAGE_SIZE, 10, "FamilyListWnd_获取行会列表","FamilyListWnd.getFamilyList")
    end
end

function FamilyListWnd.updatePgBtn()
	FamilyListWnd.pgCount = math.floor((FamilyListWnd.ListTotalNum + FamilyListWnd.FAMILY_LIST_PAGE_SIZE - 1) / FamilyListWnd.FAMILY_LIST_PAGE_SIZE)

	if FamilyListWnd.pgCount <= 0 then
		FamilyListWnd.pgCount = 1
	end


	FamilyListWnd.nowPage = math.floor(FamilyListWnd.ListFirstIndex / FamilyListWnd.FAMILY_LIST_PAGE_SIZE) + 1

	if FamilyListWnd.nowPage <= 0 then
		FamilyListWnd.nowPage = 1
	end
	GUIEditSetTextM(FamilyListWnd._pgEdit, FamilyListWnd.nowPage.." / "..FamilyListWnd.pgCount)
	
	if FamilyListWnd.nowPage <= 1 then
		GUIWndSetEnableM(FamilyListWnd._pgUpBtn, false)
	else
		GUIWndSetEnableM(FamilyListWnd._pgUpBtn, true)
	end
	
	if FamilyListWnd.nowPage >= FamilyListWnd.pgCount then
		GUIWndSetEnableM(FamilyListWnd._pgDownBtn, false)
	else
		GUIWndSetEnableM(FamilyListWnd._pgDownBtn, true)
	end
end

function FamilyListWnd.createFamilyBtn_LC()
	as3.tolua(UI:Lua_SubmitForm("行会", "CreateFamilySelf", ""))
end

function FamilyListWnd.getFamilyList()
	FamilyListWnd.ListTotalNum = as3.tolua(LuaParam[1])    --所有行会数量
    FamilyListWnd.ListFirstIndex = as3.tolua(LuaParam[2] ) --当前起始序号
    FamilyListWnd.ListNum = as3.tolua(LuaParam[3])        --本页数量
	FamilyListWnd.FamilyList = {}
	FamilyListWnd.FamilyList = getTable(as3.tolua(LuaParam[4]))    --列表数据
	
	for i = 1, #FamilyListWnd.FamilyList do
		FamilyListWnd.FamilyList[i] = getTable(FamilyListWnd.FamilyList[i])
	end
	FamilyListWnd.fillPageWnd()
end

function FamilyListWnd.fillPageWnd()
	local index, familyGUID_ = 0 , {}
    for i = 1, 10 do
        if FamilyListWnd.FamilyList[i] then
            GUIWndSetVisible(FamilyListWnd._familyBtn_[i], true)
            GUIWndSetVisible(FamilyListWnd._familyNameEdit_[i], true)
            GUIWndSetVisible(FamilyListWnd._familyLeaderEdit_[i], true)
            GUIWndSetVisible(FamilyListWnd._familyMembersNumberEdit_[i], true)
            GUIWndSetVisible(FamilyListWnd._operationBtn_[i], true)
            GUIWndSetVisible(FamilyListWnd._familyLvlEdit_[i], true)
            GUIEditSetTextM(FamilyListWnd._familyNameEdit_[i], FamilyListWnd.FamilyList[i][1])
            GUIEditSetTextM(FamilyListWnd._familyLeaderEdit_[i], FamilyListWnd.FamilyList[i][2])
            GUIEditSetTextM(FamilyListWnd._familyMembersNumberEdit_[i], tostring(FamilyListWnd.FamilyList[i][3]))
            GUIWndSetTextM(FamilyListWnd._operationBtn_[i], l.operation_[(FamilyListWnd.FamilyList[i][4]+1)])
            table.insert(familyGUID_, FamilyListWnd.FamilyList[i][5])
        end
    end

    for i = FamilyListWnd.ListNum + 1, FamilyListWnd.FAMILY_LIST_PAGE_SIZE do
        GUIWndSetVisible(FamilyListWnd._familyBtn_[i], false)
        GUIWndSetVisible(FamilyListWnd._familyNameEdit_[i], false)
        GUIWndSetVisible(FamilyListWnd._familyLeaderEdit_[i], false)
        GUIWndSetVisible(FamilyListWnd._familyMembersNumberEdit_[i], false)
        GUIWndSetVisible(FamilyListWnd._operationBtn_[i], false)
        GUIWndSetVisible(FamilyListWnd._familyLvlEdit_[i], false)
    end

	as3.tolua(UI:Lua_SubmitForm("行会", "updateFamilyLvlTable", serialize(familyGUID_).."#".."FamilyListWnd"))
	FamilyListWnd.updatePgBtn()
end

function FamilyListWnd.operationBtn_LC(_Handle)
	local index = GUIWndGetParam(_Handle)	
	if GUIWndGetText(_Handle) == l.operation_[2] then
		--取消申请
		CLFamilyCancelJoinReq(FamilyListWnd.FamilyList[index][5],"FamilyListWnd_取消申请","FamilyListWnd.cancelJoinCB")
		GUIWndSetTextM(_Handle, l.operation_[1])
		return
	end
	GUIWndSetTextM(_Handle, l.operation_[2])
	CLFamilyJoinRequest(FamilyListWnd.FamilyList[index][5])
end

function FamilyListWnd.cancelJoinCB()
	local family_cancel_guidstr = as3.tolua(LuaParam[1])
end

function FamilyListWnd.wndClose()
	local _GUIHandle = GUIWndFindWindow(0, "FamilyListWnd") 
	if _GUIHandle == 0 then
	--	UnRegisterUIEvent(LUA_EVENT_FAMILYLIST, "FamilyListWnd_获取行会列表")
		FamilyListWnd = nil
	end
end

--form client
function FamilyListWnd_updateFamiyLvl(lvl_)
	if not FamilyListWnd then return end
	for i, v in pairs(lvl_) do
		GUIEditSetTextM(FamilyListWnd._familyLvlEdit_[i], v)
	end
end

FamilyListWnd.main()