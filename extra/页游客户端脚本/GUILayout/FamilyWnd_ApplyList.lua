FamilyWnd_ApplyList = {}
local ui = "<form default_parent='FamilyWnd'> <dialog OnInit='FamilyWnd_ApplyList.UIInit' id='FamilyWnd_ApplyList' image='1802100022' x='30' y='96' w='658' h='420' OnClose='FamilyWnd_ApplyList.wndClose' revmsg='true'>"
	.."	<button id='pgUpBtn' image='1800000094' x='270' y='390' w='20' h='19' OnLButtonClick='FamilyWnd_ApplyList.pgUpBtn_LC' revmsg='true' enable='false'/>"
	.."	<button id='pgDownBtn' image='1800000098' x='370' y='390' w='20' h='19' OnLButtonClick='FamilyWnd_ApplyList.pgDownBtn_LC' revmsg='true' enable='false'/>"
	.."	<image id='pgEditBackImg' image='1800000279' x='300' y='380' w='58' h='34' revmsg='true' enable='false'/>"
	.."	<edit id='pgEdit' x='312' y='385' w='48' h='22' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='lvlTitleEdit' x='45' y='1' w='100' h='24' align='center' revmsg='true' enable='false' text_color='#C2B6A0' text='等级' font='system'/>"
	.."	<edit id='nameTitleEdit' x='200' y='1' w='106' h='24' align='center' revmsg='true' enable='false' text_color='#C2B6A0' text='申请人' font='system'/>"
	.."	<edit id='jobTitleEdit' x='362' y='1' w='84' h='24' align='center' revmsg='true' enable='false' text_color='#C2B6A0' text='职业' font='system'/>"
	.."	<edit id='operationTitleEdit' x='531' y='1' w='78' h='24' align='center' revmsg='true' enable='false' text_color='#C2B6A0' text='操作' font='system'/>"
	.."	<button id='playerBtn1' image='1802100013' x='5' y='33' w='650' h='31' OnLButtonClick='FamilyWnd_ApplyList.playerBtn_LC' revmsg='true' param='1' visible='false'/>"
	.."	<edit id='lvlEdit1' x='45' y='35' w='100' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='nameEdit1' x='200' y='35' w='106' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='jobEdit1' x='362' y='35' w='84' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<button id='acceptBtn1' image='1800000039' x='522' y='36' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.acceptBtn_LC' revmsg='true' param='1' text='同意' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='refuseBtn1' image='1800000039' x='572' y='36' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.refuseBtn_LC' revmsg='true' param='1' text='拒绝' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='playerBtn2' image='1802100013' x='5' y='67' w='650' h='31' OnLButtonClick='FamilyWnd_ApplyList.playerBtn_LC' revmsg='true' param='2' visible='false'/>"
	.."	<edit id='lvlEdit2' x='45' y='69' w='100' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='nameEdit2' x='200' y='69' w='106' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='jobEdit2' x='362' y='69' w='84' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<button id='acceptBtn2' image='1800000039' x='522' y='70' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.acceptBtn_LC' revmsg='true' param='2' text='同意' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='refuseBtn2' image='1800000039' x='572' y='70' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.refuseBtn_LC' revmsg='true' param='2' text='拒绝' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='playerBtn3' image='1802100013' x='5' y='101' w='650' h='31' OnLButtonClick='FamilyWnd_ApplyList.playerBtn_LC' revmsg='true' param='3' visible='false'/>"
	.."	<edit id='lvlEdit3' x='45' y='103' w='100' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='nameEdit3' x='200' y='103' w='106' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='jobEdit3' x='362' y='103' w='84' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<button id='acceptBtn3' image='1800000039' x='522' y='104' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.acceptBtn_LC' revmsg='true' param='3' text='同意' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='refuseBtn3' image='1800000039' x='572' y='104' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.refuseBtn_LC' revmsg='true' param='3' text='拒绝' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='playerBtn4' image='1802100013' x='5' y='135' w='650' h='31' OnLButtonClick='FamilyWnd_ApplyList.playerBtn_LC' revmsg='true' param='4' visible='false'/>"
	.."	<edit id='lvlEdit4' x='45' y='137' w='100' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='nameEdit4' x='200' y='137' w='106' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='jobEdit4' x='362' y='137' w='84' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<button id='acceptBtn4' image='1800000039' x='522' y='138' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.acceptBtn_LC' revmsg='true' param='4' text='同意' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='refuseBtn4' image='1800000039' x='572' y='138' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.refuseBtn_LC' revmsg='true' param='4' text='拒绝' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='playerBtn5' image='1802100013' x='5' y='169' w='650' h='31' OnLButtonClick='FamilyWnd_ApplyList.playerBtn_LC' revmsg='true' param='5' visible='false'/>"
	.."	<edit id='lvlEdit5' x='45' y='171' w='100' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='nameEdit5' x='200' y='171' w='106' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='jobEdit5' x='362' y='171' w='84' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<button id='acceptBtn5' image='1800000039' x='522' y='172' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.acceptBtn_LC' revmsg='true' param='5' text='同意' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='refuseBtn5' image='1800000039' x='572' y='172' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.refuseBtn_LC' revmsg='true' param='5' text='拒绝' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='playerBtn6' image='1802100013' x='5' y='203' w='650' h='31' OnLButtonClick='FamilyWnd_ApplyList.playerBtn_LC' revmsg='true' param='6' visible='false'/>"
	.."	<edit id='lvlEdit6' x='45' y='205' w='100' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='nameEdit6' x='200' y='205' w='106' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='jobEdit6' x='362' y='205' w='84' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<button id='acceptBtn6' image='1800000039' x='522' y='206' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.acceptBtn_LC' revmsg='true' param='6' text='同意' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='refuseBtn6' image='1800000039' x='572' y='206' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.refuseBtn_LC' revmsg='true' param='6' text='拒绝' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='playerBtn7' image='1802100013' x='5' y='237' w='650' h='31' OnLButtonClick='FamilyWnd_ApplyList.playerBtn_LC' revmsg='true' param='7' visible='false'/>"
	.."	<edit id='lvlEdit7' x='45' y='239' w='100' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='nameEdit7' x='200' y='239' w='106' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='jobEdit7' x='362' y='239' w='84' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<button id='acceptBtn7' image='1800000039' x='522' y='240' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.acceptBtn_LC' revmsg='true' param='7' text='同意' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='refuseBtn7' image='1800000039' x='572' y='240' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.refuseBtn_LC' revmsg='true' param='7' text='拒绝' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='playerBtn8' image='1802100013' x='5' y='271' w='650' h='31' OnLButtonClick='FamilyWnd_ApplyList.playerBtn_LC' revmsg='true' param='8' visible='false'/>"
	.."	<edit id='lvlEdit8' x='45' y='273' w='100' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='nameEdit8' x='200' y='273' w='106' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='jobEdit8' x='362' y='273' w='84' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<button id='acceptBtn8' image='1800000039' x='522' y='274' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.acceptBtn_LC' revmsg='true' param='8' text='同意' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='refuseBtn8' image='1800000039' x='572' y='274' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.refuseBtn_LC' revmsg='true' param='8' text='拒绝' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='playerBtn9' image='1802100013' x='5' y='305' w='650' h='31' OnLButtonClick='FamilyWnd_ApplyList.playerBtn_LC' revmsg='true' param='9' visible='false'/>"
	.."	<edit id='lvlEdit9' x='45' y='307' w='100' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='nameEdit9' x='200' y='307' w='106' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='jobEdit9' x='362' y='307' w='84' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<button id='acceptBtn9' image='1800000039' x='522' y='308' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.acceptBtn_LC' revmsg='true' param='9' text='同意' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='refuseBtn9' image='1800000039' x='572' y='308' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.refuseBtn_LC' revmsg='true' param='9' text='拒绝' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='playerBtn10' image='1802100013' x='5' y='339' w='650' h='31' OnLButtonClick='FamilyWnd_ApplyList.playerBtn_LC' revmsg='true' param='10' visible='false'/>"
	.."	<edit id='lvlEdit10' x='45' y='341' w='100' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='nameEdit10' x='200' y='341' w='106' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<edit id='jobEdit10' x='362' y='341' w='84' h='24' align='center' revmsg='true' enable='false' visible='false' text_color='#E6D284' font='system'/>"
	.."	<button id='acceptBtn10' image='1800000039' x='522' y='342' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.acceptBtn_LC' revmsg='true' param='10' text='同意' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='refuseBtn10' image='1800000039' x='572' y='342' w='41' h='25' OnLButtonClick='FamilyWnd_ApplyList.refuseBtn_LC' revmsg='true' param='10' text='拒绝' visible='false' text_color='#C2B6A0'/>"
	
	.."	<check id='check1' image='1800000176' OnLButtonClick='FamilyWnd_ApplyList.check' param='1' x='13' y='38' w='21' h='21' checked='false' auto_change='false' revmsg='true' text_color='#C2B6A0' visible='false'/>"
	.."	<check id='check2' image='1800000176' OnLButtonClick='FamilyWnd_ApplyList.check' param='2' x='13' y='72' w='21' h='21' checked='false' auto_change='false' revmsg='true' text_color='#C2B6A0' visible='false'/>"
	.."	<check id='check3' image='1800000176' OnLButtonClick='FamilyWnd_ApplyList.check' param='3' x='13' y='106' w='21' h='21' checked='false' auto_change='false' revmsg='true' text_color='#C2B6A0' visible='false'/>"
	.."	<check id='check4' image='1800000176' OnLButtonClick='FamilyWnd_ApplyList.check' param='4' x='13' y='140' w='21' h='21' checked='false' auto_change='false' revmsg='true' text_color='#C2B6A0' visible='false'/>"
	.."	<check id='check5' image='1800000176' OnLButtonClick='FamilyWnd_ApplyList.check' param='5' x='13' y='174' w='21' h='21' checked='false' auto_change='false' revmsg='true' text_color='#C2B6A0' visible='false'/>"
	.."	<check id='check6' image='1800000176' OnLButtonClick='FamilyWnd_ApplyList.check' param='6' x='13' y='208' w='21' h='21' checked='false' auto_change='false' revmsg='true' text_color='#C2B6A0' visible='false'/>"
	.."	<check id='check7' image='1800000176' OnLButtonClick='FamilyWnd_ApplyList.check' param='7' x='13' y='242' w='21' h='21' checked='false' auto_change='false' revmsg='true' text_color='#C2B6A0' visible='false'/>"
	.."	<check id='check8' image='1800000176' OnLButtonClick='FamilyWnd_ApplyList.check' param='8' x='13' y='276' w='21' h='21' checked='false' auto_change='false' revmsg='true' text_color='#C2B6A0' visible='false'/>"
	.."	<check id='check9' image='1800000176' OnLButtonClick='FamilyWnd_ApplyList.check' param='9' x='13' y='310' w='21' h='21' checked='false' auto_change='false' revmsg='true' text_color='#C2B6A0' visible='false'/>"
	.."	<check id='check10' image='1800000176'OnLButtonClick='FamilyWnd_ApplyList.check' param='10' x='13' y='344' w='21' h='21' checked='false' auto_change='false' revmsg='true' text_color='#C2B6A0' visible='false'/>"
	.."	<check id='check' image='1800000176' OnLButtonClick='FamilyWnd_ApplyList.checkall' x='13' y='384' w='50' h='21' checked='false' auto_change='false' revmsg='true' text='全选' text_color='#C2B6A0' visible='false'/>"
	.."	<button id='pass' image='1800000150' OnLButtonClick='FamilyWnd_ApplyList.pfall' param='1' x='450' y='381' w='84' h='32' revmsg='true' text='一键通过' text_color='#C2B6A0' visible='false'/>"
	.."	<button id='fail' image='1800000150' OnLButtonClick='FamilyWnd_ApplyList.pfall' param='0' x='551' y='381' w='84' h='32' revmsg='true' text='一键拒绝' text_color='#C2B6A0' visible='false'/>"
	
	.." </dialog>"
	.."</form>"

function FamilyWnd_ApplyList.main()
	GenFormByString(ui)
end

FamilyWnd_ApplyList.localString = {}
local l = FamilyWnd_ApplyList.localString
l.lvl = "等级"
l.name = "申请人"
l.job = "职业"
l.operation = "操作"
l.accept = "同意"
l.refuse = "拒绝"

FamilyWnd_ApplyList._playerBtn_ = {}
FamilyWnd_ApplyList._lvlEdit_ = {}
FamilyWnd_ApplyList._nameEdit_ = {}
FamilyWnd_ApplyList._jobEdit_ = {}
FamilyWnd_ApplyList._acceptBtn_ = {}
FamilyWnd_ApplyList._refuseBtn_ = {}
FamilyWnd_ApplyList.nowPage = 1
FamilyWnd_ApplyList._passtab = {}
FamilyWnd_ApplyList._check = {}
--UI Logic Code Start
function FamilyWnd_ApplyList.UIInit(_Handle)
	local _handle1 = GetWindow(GameMainBar._wnd,"family_applyer")
	GUIWndSetVisible(_handle1,false)   ----清空按钮右上角提示申请入会人数
	FamilyWnd_ApplyList._wnd = _Handle
	FamilyWnd._nowPage = _Handle
	FamilyWnd_ApplyList._passtab = {}
	--RegisterUIEvent(LUA_EVENT_FAMILYAPPLY, "FamilyWnd_ApplyList_申请列表", FamilyWnd_ApplyList.getApplyList)
	CLFamilyInfoRequest(64,"FamilyWnd_ApplyList_申请列表", "FamilyWnd_ApplyList.getApplyList")
	as3.tolua(UI:Lua_OpenWindow(_Handle, "Menu.lua"))
	
	local _GUIHandle = 0
	for i = 1, 10 do
		_GUIHandle = GUIWndFindChildM(_Handle, "playerBtn"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList._playerBtn_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindChildM(_Handle, "nameEdit"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList._nameEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindChildM(_Handle, "lvlEdit"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList._lvlEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindChildM(_Handle, "jobEdit"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList._jobEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindChildM(_Handle, "acceptBtn"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList._acceptBtn_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindChildM(_Handle, "refuseBtn"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList._refuseBtn_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindChildM(_Handle, "check"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList._check[i] = _GUIHandle
		end
	end
	
	local commonUI_ = {
		"pgEdit",
		"pgUpBtn",
		"pgDownBtn"
	} 
	for i = 1, #commonUI_ do
		_GUIHandle = GUIWndFindChildM(_Handle, commonUI_[i])
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList[("_"..commonUI_[i])] = _GUIHandle
		end 
	end
end

function FamilyWnd_ApplyList.getApplyList()
	FamilyWnd_ApplyList.applyList_ = {}
	--1.totalNum;2.index;3.num
	FamilyWnd_ApplyList.applyList_ = getTable(as3.tolua(LuaParam[4]))
	for i = 1, #FamilyWnd_ApplyList.applyList_ do 
		FamilyWnd_ApplyList.applyList_[i] = getTable(FamilyWnd_ApplyList.applyList_[i])
		FamilyWnd_ApplyList._passtab[i] = "false"
	end
	
	local tab = {"check","pass","fail"}
	for i=1,#tab do 
		local _Handle = GUIWndFindChildM(FamilyWnd_ApplyList._wnd, tab[i])
		if #FamilyWnd_ApplyList.applyList_ ~= 0 and _Handle ~= 0  then  
			GUIWndSetVisible(_Handle,true) 
		else 
			GUIWndSetVisible(_Handle,false) 
		end
	end
	
	FamilyWnd_ApplyList.updataPage()
	GameMainBar.ApplyFamily()
end

function FamilyWnd_ApplyList.updataPage()
	local index = i
	for i = 1, 10 do
		index = (FamilyWnd_ApplyList.nowPage - 1)*10 + i
		local _Handle = GUIWndFindChildM(FamilyWnd_ApplyList._wnd, "check"..i)
		if _Handle ~= 0 then 
			GUIWndSetVisible(_Handle,false) 
			GUICheckBoxSetCheck(_Handle, false)
		end
		if FamilyWnd_ApplyList.applyList_[index] then
			FamilyWnd_ApplyList.setBtnVisible(i, true)
			GUIEditSetTextM(FamilyWnd_ApplyList._lvlEdit_[i], FamilyWnd_ApplyList.applyList_[index][3])
			GUIEditSetTextM(FamilyWnd_ApplyList._nameEdit_[i], FamilyWnd_ApplyList.applyList_[index][2])
			GUIEditSetTextM(FamilyWnd_ApplyList._jobEdit_[i], RDJOBName[FamilyWnd_ApplyList.applyList_[index][4]])
			
			if _Handle ~= 0 then 
				GUIWndSetVisible(_Handle,true) 
				
			end
		else
			FamilyWnd_ApplyList.setBtnVisible(i, false)
		end
	end
	
	FamilyWnd_ApplyList.updatePgBtn()
end

function FamilyWnd_ApplyList.setBtnVisible(i, bool)
	
	
	GUIWndSetVisible(FamilyWnd_ApplyList._check[i], bool)
	GUIWndSetVisible(FamilyWnd_ApplyList._playerBtn_[i], bool)
	GUIWndSetVisible(FamilyWnd_ApplyList._lvlEdit_[i], bool)
	GUIWndSetVisible(FamilyWnd_ApplyList._nameEdit_[i], bool)
	GUIWndSetVisible(FamilyWnd_ApplyList._jobEdit_[i], bool)
	GUIWndSetVisible(FamilyWnd_ApplyList._acceptBtn_[i], bool)
	GUIWndSetVisible(FamilyWnd_ApplyList._refuseBtn_[i], bool)
end

function FamilyWnd_ApplyList.playerBtn_LC(_Handle)
	FamilyWnd_ApplyList.selBtnIndex = GUIWndGetParam(_Handle)
	GUIGetWndMousePos(FamilyWnd_ApplyList._wnd)
	GUIWndSetPosM(Menu._wnd["FamilyWnd_ApplyList"],  as3.tolua(LuaRet[1]), as3.tolua(LuaRet[2]))
	GUIWndSetVisible(Menu._wnd["FamilyWnd_ApplyList"], true)
end

function FamilyWnd_ApplyList.acceptBtn_LC(_Handle)
	local param = GUIWndGetParam(_Handle)
	local index = (FamilyWnd_ApplyList.nowPage - 1)*10 + param
	if CLFamilyJoinDenyOrAccept(1,FamilyWnd_ApplyList.applyList_[index][2]) then
		FamilyWnd_ApplyList.setBtnVisible(param, false)
	end
	CLFamilyInfoRequest(64,"FamilyWnd_ApplyList_申请列表", "FamilyWnd_ApplyList.getApplyList")
end

function FamilyWnd_ApplyList.refuseBtn_LC(_Handle)
	local param = GUIWndGetParam(_Handle)
	local index = (FamilyWnd_ApplyList.nowPage - 1)*10 + param
	if CLFamilyJoinDenyOrAccept(0,FamilyWnd_ApplyList.applyList_[index][2]) then
		FamilyWnd_ApplyList.setBtnVisible(param, false)
	end
end

function FamilyWnd_ApplyList.pgUpBtn_LC(_Handle)
	FamilyWnd_ApplyList.nowPage = FamilyWnd_ApplyList.nowPage - 1
	FamilyWnd_ApplyList.updataPage()
end

function FamilyWnd_ApplyList.pgDownBtn_LC(_Handle)
	FamilyWnd_ApplyList.nowPage = FamilyWnd_ApplyList.nowPage + 1
	FamilyWnd_ApplyList.updataPage()
end

function FamilyWnd_ApplyList.updatePgBtn()
	local pgCount = math.ceil(#FamilyWnd_ApplyList.applyList_/10)
	if pgCount == 0 then
		pgCount = 1
	end
	GUIEditSetTextM(FamilyWnd_ApplyList._pgEdit, FamilyWnd_ApplyList.nowPage.." / "..pgCount)
	
	if FamilyWnd_ApplyList.nowPage <= 1 then
		GUIWndSetEnableM(FamilyWnd_ApplyList._pgUpBtn, false)
	else
		GUIWndSetEnableM(FamilyWnd_ApplyList._pgUpBtn, true)
	end
	
	if FamilyWnd_ApplyList.nowPage >= pgCount then
		GUIWndSetEnableM(FamilyWnd_ApplyList._pgDownBtn, false)
	else
		GUIWndSetEnableM(FamilyWnd_ApplyList._pgDownBtn, true)
	end
end

function FamilyWnd_ApplyList.wndClose()
	local _GUIHandle = GUIWndFindWindow(0, "FamilyWnd_ApplyList") 
	if _GUIHandle == 0 then
	--	UnRegisterUIEvent(LUA_EVENT_FAMILYAPPLY, "FamilyWnd_ApplyList_申请列表")
		FamilyWnd_ApplyList = nil
	end
end

function FamilyWnd_ApplyList.check(_Handle)
	local param = GUIWndGetParam(_Handle)
	local index = (FamilyWnd_ApplyList.nowPage - 1)*10 + param
	if _Handle ~= 0 then 
		local t_f = GUICheckBoxGetCheck(_Handle)
		FamilyWnd_ApplyList._passtab[index] = t_f
	end
end 

function FamilyWnd_ApplyList.checkall(_Handle)
	local t_f = false
	if _Handle ~= 0 then 
		t_f = GUICheckBoxGetCheck(_Handle)
	end
	for i=1,10 do 
		local hand = GetWindow(FamilyWnd_ApplyList._wnd, "check"..i)
		if hand  ~= 0 then 
			GUICheckBoxSetCheck(hand,t_f)
		end
	end
	for i =1 , #FamilyWnd_ApplyList._passtab do 
		FamilyWnd_ApplyList._passtab[i] = t_f
	end
end

function FamilyWnd_ApplyList.pfall(_Handle)
	local param = GUIWndGetParam(_Handle)
	for i=1,#FamilyWnd_ApplyList._passtab do 
		if tostring(FamilyWnd_ApplyList._passtab[i]) == "true" then
			CLFamilyJoinDenyOrAccept(tonumber(param),FamilyWnd_ApplyList.applyList_[i][2])
		end
	end
	
	CLFamilyInfoRequest(64,"FamilyWnd_ApplyList_申请列表", "FamilyWnd_ApplyList.getApplyList")
end

FamilyWnd_ApplyList.main()