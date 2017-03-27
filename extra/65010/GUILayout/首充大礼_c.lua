FirstConsume ={}
local ui = "<form> <dialog OnInit='FirstConsume.UIInit' id='FirstConsume' image='1805300079' x='0' y='0' w='920' h='580' center='true' esc_close='true' drag='true' revmsg='true'>"
	--.."	<image id='showGirl' image='1803400017' x='485' y='-90' w='384' h='500' revmsg='true' enable='false'/>"
	.."	<image id='wndTitleImage' image='1805300085' x='305' y='126' w='213' h='52' revmsg='true' enable='false'/>"
	.."	<button id='closeBtn' image='1803400011' x='805' y='135' w='34' h='33' OnLButtonUp='FirstConsume.wndClose' revmsg='true'/>"
	.."	<image id='itemBackImg'  x='15' y='235'  revmsg='true' enable='false'/>"
	.."	<image id='textBackImg' image='1803400019' x='150' y='220' w='485' h='111' revmsg='true' enable='false'/>"
	.."	<image id='textImg1_1' image='1805300084' x='200' y='210' w='66' h='26' revmsg='true' enable='false'/>"
	.."	<image id='textImg1_2' image='1805300093' x='265' y='188' w='16' h='16' revmsg='true' enable='false'/>"
	.."	<image id='textImg1_3' image='1805300086' x='335' y='210' w='191' h='25' revmsg='true' enable='false'/>"
	.."	<image id='plusSymbolImg' image='1805300087' x='195' y='258' w='20' h='22' revmsg='true' enable='false'/>"
	.."	<image id='textImg2_1' image='1805300088' x='245' y='247' w='63' h='35' revmsg='true' enable='false'/>"
	.."	<image id='textImg2_2' image='1805300089' x='323' y='247' w='299' h='35' revmsg='true' enable='false'/>"
	.."	<image id='textImg3_1' image='1805300090' x='320' y='315' w='52' h='22' revmsg='true' enable='false'/>"
	.."	<image id='textImg3_2' image='1805300092' x='374' y='298' w='118' h='28' revmsg='true' enable='false'/>"
	.."	<image id='textImg3_3' image='1805300091' x='490' y='315' w='157' h='20' revmsg='true' enable='false'/>"
	.."	<image id='number' x='222' y='245' w='50' h='50' revmsg='true' enable='false'/>"
	.."	<image id='weaponIC' x='30' y='23' revmsg='true' enable='false'/>"
	.. "<image id='image1' x='320' y='375'  image='1800000385' revmsg='true' enable='false'/>"
	.. "<image id='image2' x='395' y='375'  image='1800000385' revmsg='true' enable='false'/>"
	.. "<image id='image3' x='470' y='375'  image='1800000385' revmsg='true' enable='false'/>" 
	.. "<image id='image4' x='545' y='375'  image='1800000385' revmsg='true' check_point='0' OnMouseIn='FirstConsume.onIn' OnMouseOut='FirstConsume.onOut'/>" 
	
	.."	<itemctrl id='item1' x='321' y='376' w='60' h='60'  use_back='0' enable='true' revmsg='true'/>"
	.. "<image id='item1_Magic' x='290' y='344'  image='3020110200' revmsg='true' enable='false'/>"
	.."	<itemctrl id='item2' x='396' y='376' w='60' h='60'  use_back='0' enable='true' revmsg='true'/>"
	.. "<image id='item2_Magic' x='365' y='344'  image='3020110200' revmsg='true' enable='false'/>"
	.."	<itemctrl id='item3' x='471' y='376' w='60' h='60' use_back='0' enable='true' revmsg='true'/>"
	.. "<image id='item3_Magic' x='440' y='344'  image='3020110200' revmsg='false' enable='true'/>"
	
	.."	<itemctrl id='item4' x='546' y='376' w='60' h='60'  use_back='0' enable='false' revmsg='false'/>"
	.. "<image id='item4_Magic' x='515' y='344'  image='3020110200' revmsg='true' enable='true' OnMouseIn='FirstConsume.onIn' OnMouseOut='FirstConsume.onOut'/>"
	.."	<button id='rechargeBtn' image='1805300080' x='392' y='450' w='134' h='59' OnLButtonUp='FirstConsume.rechargeBtn_LC' revmsg='true'/>"
	.."	<button id='GetGiftBtn' image='1802900013' x='392' y='450' w='124' h='49' OnLButtonUp='FirstConsume.GetGiftBtn_LQ' revmsg='true'/>"
	
	.."	 <wnd id='Wnd1' image='1806400062' x='610' y='406' w='224' h='308' revmsg='true' visible='false'>"
		.."	<image id='TestWndChild_9' image='1806400062' x='0' y='0' w='224' h='308' check_point='0' revmsg='true'/>"
		.."	<edit id='TestWndChild_7' x='59' y='268' w='116' h='23' revmsg='true' text_color='#00CC33' text='领取首充奖励后开启' font='system'/>"
		.."	<image id='TestWndChild_8' image='1805600050' x='58' y='57' w='109' h='106' check_point='0' revmsg='true'/>"
	.." </wnd>"
	
	.." </dialog>"
	.."</form>"

function FirstConsume.main()
	local handle = GetWindow(0,"FirstConsume")
	if handle ~= 0 then
		GUI:WndClose(handle)
	else
		GenFormByString(ui)
	end
end

--UI Logic Code Start
local param_ = deserialize(FormParam[1])
local param_1 = deserialize(FormParam[2])
function FirstConsume.UIInit(_Handle)
	FirstConsume.WndHandle = _Handle
	local _GUIHandle = 0
	GUI:WndSetSizeM(FirstConsume.WndHandle,920,583)
	CenterWnd(FirstConsume.WndHandle)
	
	local _GUIHandle1 = GUI:WndFindWindow(_Handle,"rechargeBtn")
	local _GUIHandle2 = GUI:WndFindWindow(_Handle,"GetGiftBtn")
	if param_1 ~= nil then
		GUI:WndSetVisible(_GUIHandle2,true)
		GUI:WndSetEnableM(_GUIHandle2, true)
		GUI:WndSetVisible(_GUIHandle1,false)
		GUI:WndSetEnableM(_GUIHandle1, false)
	else
		GUI:WndSetVisible(_GUIHandle1,true)
		GUI:WndSetEnableM(_GUIHandle1, true)
		GUI:WndSetVisible(_GUIHandle2,false)
		GUI:WndSetEnableM(_GUIHandle2, false)			
	end
		
	_GUIHandle = GUI:WndFindWindow(_Handle, "weaponIC")
	if _GUIHandle ~= 0 then 	
		GUI:ImageSetDrawCenter(_GUIHandle,true)
		WndAddEffect(_Handle,"weaponIC",3020070000,0,0,150,0)
		--[[GUI:ImageSetAnimateEnable(_GUIHandle, true, 150)
		ImageSetImageID(_Handle, "weaponIC", 3020070000)--]]
		FirstConsume._weaponIC = _GUIHandle
	end
	
	_GUIHandle = GUI:WndFindWindow(_Handle, "itemBackImg")
	if _GUIHandle ~= 0 then 		
		GUI:ImageSetDrawCenter(_GUIHandle,true)
		WndAddEffect(_Handle,"itemBackImg",3020080000,0,0,150,0)
	--[[	GUI:ImageSetAnimateEnable(_GUIHandle, true, 150)
		ImageSetImageID(_Handle, "itemBackImg", 3020080000)--]]
	end
	
	
	_GUIHandle = GUI:WndFindWindow(_Handle, "item1")
	local bind = true
	if _GUIHandle ~= 0 then
		if param_[1][4] == 1 then
			bind = true
		else
			bind = false
		end
		RDItemCtrlSetGUIDataByKeyName(_GUIHandle, param_[1][2], param_[1][3], bind)
	end
	
	
	
	
	local numImgID = tonumber(CL:Plus(tostring(1801500014), tostring(param_[1][1])))                      --+6武器
	ImageSetImageID(_Handle, "number", numImgID)


	
	
	local count = #param_[2]/3
	for i = 1, count do
		_GUIHandle = GUI:WndFindWindow(_Handle, "item"..(i+1))
		if _GUIHandle ~= 0 then
			if param_[2][i*3] == 1 then
				bind = true
			else
				bind = false
			end
			RDItemCtrlSetGUIDataByKeyName(_GUIHandle, param_[2][i*3-2], param_[2][i*3-1], bind)
		end
	end
	
	for i=1,4 do
		local _Handle = GUI:WndFindChildM(_Handle, "item"..i.."_Magic")
		GUI:ImageSetAnimateEnable(_Handle, true, 150)
	end
end

function FirstConsume.rechargeBtn_LC()
	CL:OpenUrlUseIEByType(3)
end

function FirstConsume.onIn()
	local handle =GetWindow(0,"FirstConsume,Wnd1")
	if handle ~= 0 then 
		GUI:WndSetVisible(handle,true)
	end
end

function FirstConsume.onOut()
	local handle =GetWindow(0,"FirstConsume,Wnd1")
	if handle ~= 0 then 
		GUI:WndSetVisible(handle,false)
	end
end

function FirstConsume.GetGiftBtn_LQ()
	UI:Lua_SubmitForm("首充大礼_s","firstConsume_reward","")
end

function FirstConsume.wndClose()
	if FirstConsume.WndHandle ~= 0 then
		GUI:WndClose(FirstConsume.WndHandle)
	end
end

FirstConsume.main()