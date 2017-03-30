FamilyWnd_Warehouse = {}
FamilyWnd_Warehouse.localString = {}
local ui = "<form default_parent='FamilyWnd'> <dialog OnInit='FamilyWnd_Warehouse.UIInit' id='FamilyWnd_Warehouse' image='1802100005' x='30' y='96' w='658' h='420' OnClose='FamilyWnd_Warehouse.wndClose' revmsg='true'>"
	.."	<edit id='myPackageEdit' x='23' y='9' w='90' h='21' revmsg='true' enable='false' text_color='#FF9304' text='我的背包' font='system'/>"
	.."	<edit id='donateTipEdit' x='157' y='9' w='150' h='20' revmsg='true' enable='false' text_color='#C2B6A0' text='' font='system'/>"
	.."	<edit id='familyWarehouseEdit' x='363' y='9' w='87' h='20' revmsg='true' enable='false' text_color='#FF9304' text='行会仓库' font='system'/>"
	.."	<edit id='exchangeTipEdit' x='515' y='9' w='150' h='20' revmsg='true' enable='false' text_color='#C2B6A0' text='' font='system'/>"
	.."	<image id='leftArrowImg' image='1800000366' x='308' y='100' w='43' h='58'/>"
	.."	<image id='rightArrowImg' image='1800000367' x='308' y='214' w='43' h='58'/>"
	.."	<edit id='donateEdit' x='65' y='383' w='46' h='23' revmsg='true' enable='false' text_color='#C2B6A0' text='捐献' font='system'/>"
	.."	<image id='donateMoneyEditBakImg' image='1800000279' x='135' y='378' w='58' h='34'/>"
	.."	<edit id='donateMoneyEdit' x='145' y='384' w='46' h='23' revmsg='true' canedit='true' limit='6'type='number' font='system'/>"
	.."	<image id='moneyTypeImg' image='1806600015' x='106' y='389' w='16' h='14'/>"
	.."	<edit id='moneyUnitEdit' x='195' y='387' w='15' h='15' revmsg='true' enable='false' text_color='#C2B6A0' text='万' font='system'/>"
	.."	<button id='donateEquipBtn' image='1800000150' x='217' y='330' w='84' h='32' revmsg='true' text='捐献装备' text_color='#C2B6A0'/>"
	.."	<button id='donateMoneyBtn' image='1800000150' x='217' y='380' w='84' h='32' revmsg='true' text='捐献金币' text_color='#C2B6A0'/>"
	.."	<edit id='donateScore_f' x='436' y='383' w='69' h='21' revmsg='true' enable='false' text_color='#C2B6A0' text='贡献值' font='system'/>"
	.."	<edit id='donateScoreEdit' x='495' y='383' w='45' h='20' revmsg='true' enable='false' text_color='#25A35C' font='system'/>"
	.."	<button id='exchangeItem' image='1800000150' x='555' y='380' w='84' h='32' revmsg='true' text='兑换物品' text_color='#C2B6A0'/>"
	.."	<button id='destroyItem' image='1800000150' x='340' y='330' w='84' h='32' revmsg='true' text='销毁物品' text_color='#C2B6A0'/>"
	.."	<button id='warehousePgUpBtn' image='1800000094' x='433' y='337' w='20' h='19' revmsg='true'/>"
	.."	<button id='warehousePgDownBtn' image='1800000098' x='517' y='337' w='20' h='19' revmsg='true'/>"
	.."	<image id='warehousePgEditBackImg' image='1800000279' x='459' y='327' w='58' h='34'/>"
	.."	<edit id='warehousePgEdit' x='480' y='332' w='53' h='24' revmsg='true' enable='false' text_color='#C2B6A0' font='system'/>"
	.."	<check id='showCanExchangeCB' image='1800000176' x='553' y='319' w='86' h='21' revmsg='true' text='显示可兑换' text_color='#C2B6A0'/>"
	.."	<check id='showSelfClassCB' image='1800000176' x='553' y='340' w='86' h='21' revmsg='true' text='显示本职业' text_color='#C2B6A0'/>"
	.."	<itemctrl id='myItem1' x='13' y='30' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem2' x='61' y='30' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem3' x='109' y='30' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem4' x='157' y='30' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem5' x='205' y='30' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem6' x='253' y='30' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem7' x='13' y='78' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem8' x='61' y='78' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem9' x='109' y='78' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem10' x='157' y='78' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem11' x='205' y='78' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem12' x='253' y='78' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem13' x='13' y='126' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem14' x='61' y='126' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem15' x='109' y='126' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem16' x='157' y='126' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem17' x='205' y='126' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem18' x='253' y='126' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem19' x='13' y='174' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem20' x='61' y='174' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem21' x='109' y='174' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem22' x='157' y='174' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem23' x='205' y='174' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem24' x='253' y='174' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem25' x='13' y='222' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem26' x='61' y='222' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem27' x='109' y='222' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem28' x='157' y='222' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem29' x='205' y='222' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem30' x='253' y='222' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem31' x='13' y='270' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem32' x='61' y='270' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem33' x='109' y='270' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem34' x='157' y='270' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem35' x='205' y='270' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='myItem36' x='253' y='270' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem1' x='359' y='30' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem2' x='407' y='30' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem3' x='455' y='30' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem4' x='503' y='30' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem5' x='551' y='30' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem6' x='599' y='30' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem7' x='359' y='78' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem8' x='407' y='78' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem9' x='455' y='78' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem10' x='503' y='78' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem11' x='551' y='78' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem12' x='599' y='78' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem13' x='359' y='126' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem14' x='407' y='126' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem15' x='455' y='126' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem16' x='503' y='126' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem17' x='551' y='126' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem18' x='599' y='126' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem19' x='359' y='174' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem20' x='407' y='174' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem21' x='455' y='174' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem22' x='503' y='174' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem23' x='551' y='174' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem24' x='599' y='174' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem25' x='359' y='222' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem26' x='407' y='222' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem27' x='455' y='222' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem28' x='503' y='222' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem29' x='551' y='222' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem30' x='599' y='222' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem31' x='359' y='270' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem32' x='407' y='270' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem33' x='455' y='270' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem34' x='503' y='270' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem35' x='551' y='270' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<itemctrl id='warehouseItem36' x='599' y='270' w='48' h='48' auto_manage='true' rbtn_use='true' use_back='1800000138' enable='true' revmsg='true'/>"
	.."	<button id='warehouseMyPgUpBtn' image='1800000094' x='83' y='337' w='20' h='19' revmsg='true'/>"
	.."	<button id='warehouseMyPgDownBtn' image='1800000098' x='167' y='337' w='20' h='19' revmsg='true'/>"
	.."	<image id='warehouseMyPgEditBackImg' image='1800000279' x='109' y='327' w='58' h='34'/>"
	.."	<edit id='warehouseMyPgEdit' x='130' y='332' w='53' h='24' revmsg='true' enable='false' text_color='#C2B6A0' font='system'/>"
	.." </dialog>"
	.."</form>"

function FamilyWnd_Warehouse.main()
	GenFormByString(ui)
end
--UI Logic Code Start
function FamilyWnd_Warehouse.UIInit(_Parent)
	FamilyWnd_Warehouse._wnd = _Parent
	FamilyWnd._nowPage = _Handle
	local handle = GetWindow(_Parent,"donateMoneyBtn")
	if handle ~= 0 then
		GUIWndSetHint(handle, "<font color='#B8A085'>1万金币=1贡献值</font>")
	end
	CLFamilyInfoRequest(128,"FamilyWnd_行会仓库", "FamilyWnd_Warehouse.getFamilyBasicInfo")
end


 function FamilyWnd_Warehouse.getFamilyBasicInfo()
	FamilyWnd_Warehouse.createTime = as3.tolua(LuaParam[1])
	FamilyWnd_Warehouse.guid = as3.tolua(LuaParam[2])
	FamilyWnd_Warehouse.memberNum = as3.tolua(LuaParam[3])
	FamilyWnd_Warehouse.name = as3.tolua(LuaParam[4])
	FamilyWnd_Warehouse.selfTitleID = as3.tolua(LuaParam[5])
	FamilyWnd_Warehouse.updateFamilyWarehouse()
end

function FamilyWnd_Warehouse.updateFamilyWarehouse()
	if FamilyWnd_Warehouse.selfTitleID ~= 1 then
		local handle = GetWindow(nil,"FamilyWnd,FamilyWnd_Warehouse,destroyItem")
		GUIWndSetVisible(handle, false)
	end
end


function FamilyWnd_Warehouse.wndClose()
	local wnd = GUIWndFindWindow(0, "FamilyWnd_Warehouse") 
	if wnd == 0 then
		FamilyWnd_Warehouse = nil
	end
end

FamilyWnd_Warehouse.main()