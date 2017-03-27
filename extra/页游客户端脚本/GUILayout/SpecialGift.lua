SpecialGift ={}
function SpecialGift.main()
	local ui = "<form default_parent='OpenServiceActivities'> <dialog OnInit='SpecialGift.UIInit' id='SpecialGift' x='177' y='57' w='636' h='493' revmsg='true'>"
	.."	<image id='BackImage' x='0' y='144' w='636' h='349' image='1803000001' revmsg='true'/>"	
	.."	<image id='GiftBoxImg' x='0' y='185' w='278' h='267' image='1803000031' enable='false'/>"
	.."	<button id='GiftBtn1' x='0' y='0' w='157' h='144' param='1' image='1804900007' revmsg='true' OnLButtonClick='SpecialGift.selectGift'/>"
	.."	<button id='GiftBtn2' x='159' y='0' w='157' h='144' param='2' image='1804900011' revmsg='true' OnLButtonClick='SpecialGift.selectGift'/>"
	.."	<button id='GiftBtn3' x='318' y='0' w='157' h='144' param='3' image='1804900015' revmsg='true' OnLButtonClick='SpecialGift.selectGift'/>"
	.."	<button id='GiftBtn4' x='477' y='0' w='157' h='144' param='4' image='1804900019' revmsg='true' OnLButtonClick='SpecialGift.selectGift'/>"
	.."	<image id='GiftEditBackImg1' x='0' y='105' w='148' h='33' image='1804900032' enable='false'/>"
	.."	<image id='GiftEditBackImg2' x='159' y='105' w='148' h='33' image='1804900032' enable='false'/>"
	.."	<image id='GiftEditBackImg3' x='318' y='105' w='148' h='33' image='1804900032' enable='false'/>"
	.."	<image id='GiftEditBackImg4' x='477' y='105' w='148' h='33' image='1804900032' enable='false'/>"
	.."	<image id='GiftEditImg1' x='50' y='111' w='115' h='27' image='1804900027' enable='false'/>"
	.."	<image id='GiftEditImg2' x='211' y='111' w='115' h='27' image='1804900028' enable='false'/>"
	.."	<image id='GiftEditImg3' x='370' y='111' w='115' h='27' image='1804900029' enable='false'/>"
	.."	<image id='GiftEditImg4' x='525' y='111' w='115' h='27' image='1804900030' enable='false'/>"
	.."	<image id='GiftImage' x='240' y='185' w='361' h='60' image='1803000002' revmsg='true'/>"
	.."	<edit id='InfoEdit' x='277' y='199' w='230' h='16' revmsg='true' text_color='#CBC190' text='花费          即可获得'/>"
	.."	<edit id='costEdit' x='302' y='199' w='70' h='16' revmsg='true' align='center' text_color='#FFFF00' text='88888元宝'/>"
	.."	<edit id='GiftNameEdit' x='420' y='199' w='72' h='16' revmsg='true' text_color='#FFFF00' text='无敌礼包'/>"
	.."	<button id='GetRewardsBtn' enable='false' x='366' y='406' w='134' h='59' image='1803000003' revmsg='true' OnLButtonClick='SpecialGift.award'/>"
	.."	<itemctrl id='ItemCell1' x='337' y='263' use_back='1800000384' w='56' h='56' enable='true' revmsg='true'/>"
	.."	<itemctrl id='ItemCell2' x='407' y='263' use_back='1800000384' w='56' h='56' enable='true' revmsg='true'/>"
	.."	<itemctrl id='ItemCell3' x='477' y='263' use_back='1800000384' w='56' h='56' enable='true' revmsg='true'/>"
	.."	<itemctrl id='ItemCell4' x='301' y='334' use_back='1800000384' w='56' h='56' enable='true' revmsg='true'/>"
	.."	<itemctrl id='ItemCell5' x='371' y='334' use_back='1800000384' w='56' h='56' enable='true' revmsg='true'/>"
	.."	<itemctrl id='ItemCell6' x='441' y='334' use_back='1800000384' w='56' h='56' enable='true' revmsg='true'/>"
	.."	<itemctrl id='ItemCell7' x='511' y='334' use_back='1800000384' w='56' h='56' enable='true' revmsg='true'/>"
	
	.."	<image id='item_magic1' x='365' y='292'  image='3020110000' w='56' h='56' enable='true' revmsg='true'/>"
	.."	<image id='item_magic2' x='435' y='292'  image='3020110000' w='56' h='56' enable='true' revmsg='true'/>"
	.."	<image id='item_magic3' x='505' y='292'  image='3020110000' w='56' h='56' enable='true' revmsg='true'/>"
	.."	<image id='item_magic4' x='329' y='363'  image='3020110000' w='56' h='56' enable='true' revmsg='true'/>"
	.."	<image id='item_magic5' x='399' y='363'  image='3020110000' w='56' h='56' enable='true' revmsg='true'/>"
	.."	<image id='item_magic6' x='469' y='363'  image='3020110000' w='56' h='56' enable='true' revmsg='true'/>"
	.."	<image id='item_magic7' x='539' y='363'  image='3020110000' w='56' h='56' enable='true' revmsg='true'/>"
	
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end

SpecialGift.WndHandle = 0
SpecialGift.SelectIndex = 0
SpecialGift.isQuest = 0
function SpecialGift.UIInit(_Handle)
	SpecialGift.WndHandle=_Handle
	for i=1,7 do 
		local handle = GetWindow(_Handle,"item_magic"..i)
		if handle ~= 0 then	
			GUIImageSetDrawCenter(handle,true)		
			GUIImageSetAnimateEnable(handle, true, 150)
			--GUIImageSetTransfrom(handle, 6500, 6500,0)	
		end	
	end
	if as3.tolua(FormParam[1]) ~= nil then
		SpecialGift.isQuest = tonumber(as3.tolua(FormParam[1]))
	end	

	UI:Lua_SubmitForm("开服活动","get_gift_info", "1")
	
	
end

SpecialGift.info = {}

function SpecialGift.showInfo(_Ret)
	SpecialGift.info=_Ret
	local _GUIHandle = 0
	if SpecialGift.isQuest ~= 0 then
		_GUIHandle = GUIWndFindChildM(SpecialGift.WndHandle, "GiftBtn"..SpecialGift.isQuest)
	else
		_GUIHandle = GUIWndFindChildM(SpecialGift.WndHandle, "GiftBtn1")
	end	
	if _GUIHandle ~= 0 then
		SpecialGift.selectGift(_GUIHandle)
	end
end

function SpecialGift.selectGift(_Handle)
	local param = GUIWndGetParam(_Handle)
	SpecialGift.SelectIndex = param
	local _GUIHandle = 0
	for i = 1, 4 do
		_GUIHandle=GUIWndFindChildM(SpecialGift.WndHandle, "GiftBtn"..i)
		if i == param then
			GUIButtonSetIsActivePageBtn(_GUIHandle, true)
		else
			GUIButtonSetIsActivePageBtn(_GUIHandle, false)
		end
	end
	_GUIHandle=GUIWndFindChildM(SpecialGift.WndHandle, "costEdit")
	GUIEditSetTextM(_GUIHandle, SpecialGift.info[2][param].."元宝")
	_GUIHandle=GUIWndFindChildM(SpecialGift.WndHandle, "GiftNameEdit")
	GUIEditSetTextM(_GUIHandle, SpecialGift.info[1][param])
	_GUIHandle=GUIWndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
	if SpecialGift.info[3][param] ~= 1 then
		GUIWndSetEnableM(_GUIHandle, true)
	else
		GUIWndSetEnableM(_GUIHandle, false)
	end
	local award={}
	for i = 1, #SpecialGift.info[4][param] do
		award=SpecialGift.info[4][param][i]
		_GUIHandle=GUIWndFindChildM(SpecialGift.WndHandle, "ItemCell"..i)
		RDItemCtrlSetGUIDataByKeyName(_GUIHandle, award[1], award[2], award[3])
	end
end

function SpecialGift.award(_Handle)
	local _GUIHandle = GUIWndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
	GUIWndSetEnableM(_GUIHandle, false)
	UI:Lua_SubmitForm("开服活动","get_gift_award", ""..SpecialGift.SelectIndex)
end

function SpecialGift.awardBack(_State,_Index)
	local _GUIHandle = 0
	if _State == 1 then
		SpecialGift.info[3][_Index] = 1
		if _Index == SpecialGift.SelectIndex then
			_GUIHandle=GUIWndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
			GUIWndSetEnableM(_GUIHandle, false)
		end
	else
		if _Index == SpecialGift.SelectIndex then
			_GUIHandle=GUIWndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
			GUIWndSetEnableM(_GUIHandle, true)
		end
	end
end

SpecialGift.main()