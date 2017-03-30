LittleMap ={}
function LittleMap.main()
--[[	local ui = "<form> <dialog OnInit='LittleMap.UIInit' id='LittleMap' x='872' y='0' w='16' h='16' revmsg='true'>"
	.."    <image id='MapImage' x='11' y='23' w='130' h='125' revmsg='true'/>"
	.."    <image id='MapMaskImage' x='24' y='31' w='101' h='101' image='1800500237' revmsg='true'/>"
	.."    <image id='Image' x='24' y='38' w='101' h='101' image='1800700058' revmsg='true'/>"
	.."    <image id='BackImage' x='0' y='0' w='16' h='16' image='1800700029' revmsg='true'/>"
	.."    <button id='MuteBtn' x='12' y='112' w='32' h='32' image='1800700046' OnLButtonUp='LittleMap.OnMuteBtn' revmsg='true' tip='音效'/>"
	.."    <button id='RankBtn' x='-8' y='53' w='32' h='32' image='1800700038' OnLButtonUp='LittleMap.OnRankBtn' revmsg='true' tip='排行榜（K）'/>"
	.."    <button id='Aid' x='-5' y='85' w='32' h='32' image='1800700042' revmsg='true' tip='辅助（Home）'/>"
	.."    <button id='CampaignBtn' x='5' y='25' w='32' h='32' image='1800700034' OnLButtonUp='LittleMap.OnCampaignBtn' revmsg='true' tip='活动（J）'/>"
	.."    <button id='HelpBtn' x='116' y='25' w='32' h='32' image='1800700054' OnLButtonUp='LittleMap.OnHelpBtn' revmsg='true' tip='帮助'/>"
	.."    <image id='NetworkStatus' x='-10' y='20' w='10' h='10' image='1800700026' revmsg='true'/>"
	.."    <button id='WorldMapBtn' x='47' y='125' w='60' h='19' image='1800700030' OnLButtonUp='LittleMap.OnWorldMapBtn' revmsg='true' text='地图' tip='世界地图（M）'/>"
	.."    <edit id='MapName' x='20' y='2' w='115' h='16' canedit='false' align='center' revmsg='true'  text_color=#C1B6A7/>"
	.."    <edit id='PlayerPos' x='38' y='20' w='75' h='16' canedit='false' align='center' revmsg='true'  text_color=#C1B6A7/>"
	.."    <button id='book' x='110' y='112' w='32' h='32' image='1803800077' OnLButtonUp='LittleMap.OnBookBtn' revmsg='true' tip='图鉴'/>"
	
	.." </dialog>"
	.."</form>"--]]
	 
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUIWndCreateWnd(_Parent,"LittleMap",0,872,0)
	if _Parent ~= 0 then
		GUIWndSetSizeM(_Parent,16, 16)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"MapImage",0,11,23)
	if _GUIHandle ~= 0 then
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,130, 125)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"MapMaskImage",1800500237,24,31)
	if _GUIHandle ~= 0 then
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,101, 101)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"Image",1800700058,24,38)
	if _GUIHandle ~= 0 then
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,103, 95)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"BackImage",1800700029,0,0)
	if _GUIHandle ~= 0 then
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,151, 142)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"Meil",1800700060,10,110)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1002, "LittleMap.OnMeil")
		GUIWndSetHint(_GUIHandle,"邮件（P）")
		CLHotKeyRegister("P", "打开邮件窗口", "LittleMap.OnMeil()");
		GUIWndSetSizeM(_GUIHandle,32, 32)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"Screen",1800700069,102,118)
	if _GUIHandle ~= 0 then
		--GUIWndRegistScript(_GUIHandle,1002, "LittleMap.Screen")
		GUIWndRegistScript(_GUIHandle,1011, "LittleMap.Screen")
		GUIWndRegistScript(_GUIHandle,1012, "LittleMap.ScreenOut")
		GUIWndSetHint(_GUIHandle,"屏蔽")
		--CLHotKeyRegister("P", "打开邮件窗口", "LittleMap.OnMeil()");
		GUIWndSetSizeM(_GUIHandle,32, 32)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"MuteBtn",1800700046,120,95)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1002, "LittleMap.OnMuteBtn")
		GUIWndSetHint(_GUIHandle,"音效")
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,32, 32)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"RankBtn",1800700038,-8,56)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1002, "LittleMap.OnRankBtn")
		GUIWndSetHint(_GUIHandle,"排行榜（K）")
		CLHotKeyRegister("K", "打开排行榜窗口", "LittleMap.OnRankBtn()");  --注册排行榜热键Y
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,32, 32)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"Aid",1800700042,-5,85)
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle,"辅助（Home）")
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,32, 32)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"CampaignBtn",1800700065,-6,17)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1002, "LittleMap.OnCampaignBtn")
		GUIWndSetHint(_GUIHandle,"活动（J）")
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,42, 42)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"activityMagic",3020300300,-113,-92)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAnimateEnable(_GUIHandle, true, 150)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
	--[[_GUIHandle = GUIButtonCreate(_Parent,"HelpBtn",1800700054,116,25)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1002, "LittleMap.OnHelpBtn")
		GUIWndSetHint(_GUIHandle,"帮助")
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,32, 32)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	--]]
	
--[[	_GUIHandle = GUIButtonCreate(_Parent,"NewbeeBtn",1800700073,116,25)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1002, "LittleMap.OnNewbeeBtn")
		GUIWndSetHint(_GUIHandle,"新手宝典")
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,32, 32)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end--]]
	
	
	_GUIHandle = GUIImageCreate(_Parent,"NetworkStatus",1800700026,120,150)
	if _GUIHandle ~= 0 then
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,10, 10)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"WorldMapBtn",1800700030,47,128)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1002, "LittleMap.OnWorldMapBtn")
		GUIWndSetTextM(_GUIHandle,"地图")
		GUIWndSetHint(_GUIHandle,"世界地图（M）")
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,60, 19)
		GUIWndSetTextColorM(_GUIHandle, MakeARGB(255, 230, 210, 132))
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
		GUIWndSetTextArrangeType(_GUIHandle,0,2,0,0)
	end
	
	_GUIHandle = GUIEditCreate(_Parent,"MapName",20,2,115,16)
	if _GUIHandle ~= 0 then
		GUIWndSetParam(_GUIHandle, 0)
		--GUIWndSetTextColorM(_GUIHandle, 4290885287)
		GUIWndSetTextColorM(_GUIHandle, MakeARGB(255, 0, 255, 12))
		GUIEditSetCanEdit(_GUIHandle, false)
		GUIEditSetFontCenter(_GUIHandle)
		--GUIWndSetCanRevMsg(_GUIHandle, false)
		GUIWndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUIEditCreate(_Parent,"PlayerPos",38,20,75,16)
	if _GUIHandle ~= 0 then
		GUIWndSetParam(_GUIHandle, 0)
		--GUIWndSetTextColorM(_GUIHandle, 4290885287)	
		GUIWndSetTextColorM(_GUIHandle, MakeARGB(255, 153, 153, 0))
		GUIEditSetCanEdit(_GUIHandle, false)
		GUIEditSetFontCenter(_GUIHandle)
		--GUIWndSetCanRevMsg(_GUIHandle, false)
		GUIWndSetEnableM(_GUIHandle, false)
	end
	
--[[	_GUIHandle = GUIImageCreate(_Parent,"redSpots",1800000055,-188,18)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle,13, 13)
		GUIImageSetCheckPoint(_GUIHandle, 0)
		GUIWndSetVisible(_GUIHandle, false)
		
	end--]]
--[[	
-	local buih = GUIButtonCreate(_Parent,"acticityDetail",1803800014,-56,157)
	if buih ~= 0 then
		GUIWndRegistScript(buih,1002, "LittleMap.OnCampaignBtn")
		GUIWndSetParam(buih, 0)
		GUI:WndMoveToParentTop(buih)
		GUI:WndSetVisible(buih, false)
		GUIWndSetSizeM(buih,42, 42)
		GUIButtonSetDownTextPosChange(buih, false)
	end--]]
	
	local uih = GUIImageCreate(_Parent,"textBackground",1804600061,-60,157)
	if uih ~= 0 then
		GUIWndRegistScript(uih,1002, "LittleMap.OnCampaignBtn")
		GUI:ImageSetFitSize(uih, true)
		--GUIWndSetSizeM(_GUIHandle,200, 24)
		GUI:WndSetVisible(uih, false)
		GUIImageSetCheckPoint(uih, 0)
	end	
	
	
	_GUIHandle = GUIImageCreate(uih,"acticityDetail",1804600113, 0, 0)
	if _GUIHandle ~= 0 then
		GUI:ImageSetFitSize(_GUIHandle, true)
		GUIWndRegistScript(_GUIHandle,1011, "LittleMap.OnMouseMoveIn")
		GUIWndRegistScript(_GUIHandle,1012, "LittleMap.OnMouseMoveOut")
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:EditCreate(uih,"timeContent",42, 9, 200, 20)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 212, 198, 89))
		--GUI:EditSetTextM(_GUIHandle,"龙魂之刃   14:00 - 14:15")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUIImageCreate(uih,"acticityMagic",3020301500, -23, -18)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAnimateEnable(_GUIHandle, true, 150)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
--[[	UI:Lua_GetScreenSize()
	local _SW = as3.tolua(LuaRet[1])
	local _SH = as3.tolua(LuaRet[2])
	_GUIHandle = GUIButtonCreate(nil, "newMail", 1800500162, _SW/2-24, _SH-200)	--new邮件
	if _GUIHandle ~= 0 then
		GUIWndSetVisible(_GUIHandle, true)
		GUIWndSetHint(_GUIHandle, "您有新的邮件")
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "LittleMap.OnMeil")
	end--]]
	
	--_GUIHandle = GUIButtonCreate(_Parent,"book",1803800077,110,112)
	--if _GUIHandle ~= 0 then
	--	GUIWndRegistScript(_GUIHandle,1002, "LittleMap.OnBookBtn")
	--	GUIWndSetHint(_GUIHandle,"图鉴")
	--	GUIWndSetParam(_GUIHandle, 0)
	--	GUIWndSetSizeM(_GUIHandle,33, 33)
	--	GUIButtonSetDownTextPosChange(_GUIHandle, false)
	--end
	
	--GenFormByString(ui)
end
LittleMap.torf = false
LittleMap.closed = 0
LittleMap._wnd = 0
function LittleMap.UIInit(_handle)
	LittleMap._wnd = _handle
	
	--RegisterUIEvent(LUA_EVENT_ONNEWMAIL, "Little_新邮件", LittleMap.newMail)

	--CLHotKeyRegister("HOME", "打开辅助窗口", "UI:Lua_OpenWindow(0,\"GameSettingDlg.lua\")");  --注册辅助窗口热键Y
	--CLHotKeyRegister("M", "打开地图窗口", "LittleMap.OnWorldMapBtn()");  --注册地图热键M

end

--[[function LittleMap.OnHelpBtn()
	UI:Lua_SubmitForm("LittleMap","web","")
	--CLOpenUrlUseIEByType(4)
end
--]]

function LittleMap.OnNewbeeBtn()
	CL:OnOpenNewBee()
end

function LittleMap.OnBookBtn()
	UI:Lua_OpenWindow(LittleMap._wnd, "HandBook.lua")
end

function LittleMap.OnCampaignBtn()
	CLOnOpenCampaign()
end

function LittleMap.OnRankBtn()
	UI:Lua_SubmitForm("等级判断表单", "OnOpenTop", "")
	--CLOnOpenTop()
end

function LittleMap.OnMuteBtn(h)
	local imageID = 0
	if GUIWndGetImageID(h) == 1800700046 then
		imageID = 1800700050
	else
		imageID = 1800700046
	end
	GUIWndSetImageID(h, imageID)	
	CLOnSoundMute()
end

function LittleMap.OnWorldMapBtn()
	CurrentMapKeyName = nil
	CLOnOpenWorld()
end
--[[
function LittleMap.newMail()
	local btn = GUIWndFindChildM(LittleMap._wnd, "Meil")
	if btn ~= 0 then
		GUIButtonSetShine(btn, true)
	end
	btn = GetWindow(nil, "newMail")
	if btn ~= 0 then
		GUIWndSetVisible(btn, true)
	end
end
--]]
function LittleMap.OnMeil()
	CLOnMailWindow()
	local btn = GUIWndFindChildM(GameMainBar._wnd, "newMail")
	if btn ~= 0 then
		GUIWndSetVisible(btn, false)
	end
end

function LittleMap.Screen()
	LittleMap.closed = 1
	UI:Lua_OpenWindow(LittleMap._wnd, "Screen.lua")
end

function LittleMap.ScreenOut()
	LittleMap.closed = 0
	CLAddDelayTask("Screen.closed()",300, 1)
	
end

function LittleMap.AddActivityMagic()
	local handle = GetWindow(nil, "LittleMap,activityMagic")
	if handle ~= 0 then
		--WndAddEffect(GameMainBar._wnd,"CampaignBtn",3000100500,-133,-220,150,0)
		--if not (GUIButtonGetShine(handle)) then
		--GUIButtonSetShine(handle,true)
		GUI:WndSetVisible(handle, true)
		--end
	end
end

function LittleMap.DelActivityMagic()
	local handle = GetWindow(nil, "LittleMap,activityMagic")
	if handle ~= 0 then
		--WndAddEffect(GameMainBar._wnd,"CampaignBtn",3000100500,-133,-220,150,0)
		--GUIButtonSetShine(handle,false)
		GUI:WndSetVisible(handle, false)
	end
end


function LittleMap.ShowActivitySchedule(str)
	if str == "" then 
		return
	end
	--msg("innnnnn")
	--msg("str = "..tostring(str))
	--[[local contentTb = {
						["无尽深渊"] = {"无尽深渊   10:00 - 10:15", "无尽深渊   14:00 - 14:15", "无尽深渊   22:00 - 22:15"},
						["元宝嘉年华"] = {"元宝嘉年华   11:00 - 11:15", "元宝嘉年华   15:00 - 15:15"},
						["膜拜城主"] = {"膜拜城主   11:30 - 12:30", "膜拜城主   17:30 - 18:30"},
						["谁与争锋"] = {"谁与争锋   12:40 - 13:20"},
						["龙魂之刃"] = {"龙魂之刃   16:00 - 16:15"},
						["寻龙夺宝"] = {"寻龙夺宝   19:00 - 19:15"},
						["镇魔宝塔"] = {"镇魔宝塔   19:25 - 20:00"},
						["夜袭巫山城"] = {"夜袭巫山城   21:25 - 21:45"},
	}--]]
	local handle = GetWindow(0, "LittleMap,textBackground")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, true)
		
	end 
	handle = GetWindow(0, "LittleMap,textBackground,acticityDetail")
	if handle ~= 0 then
		local content = ""
		if string.find(str,"无尽深渊") then
			content = "<font color='#9C846D'>无尽深渊一共13层，每层均有BOSS\n镇守，进入下一层需要击杀【深渊\n守护者】获得【深渊凭证】，每闯\n入下一层可获得大量的金币和蕴魂石\n奖励！</font>"
		end
		if string.find(str,"元宝嘉年华") then
			content = "<font color='#9C846D'>每天11:00、15:00，元宝BOSS将\n携带大量元宝于龙城捣乱，击杀\n它可获得大量元宝与绑元奖励，\n掉落为自由拾取！</font>"
		end
		if string.find(str,"膜拜城主") then
			content = "<font color='#9C846D'>活动开启后，在巫山城地图安全区内\n点击城主雕像开始膜拜，可获得\n大量经验，等级越高，经验越多！</font>"
		end
		if string.find(str,"谁与争锋") then
			content = "<font color='#9C846D'>谁与争锋地图为自由PK，直至剩下\n一个玩家，则该玩家获得胜利，可\n获得大量元宝奖励，其他参与玩家\n可获得金币奖励！</font>"
		end
		if string.find(str,"龙魂之刃") then
			content = "<font color='#9C846D'>活动开启后，进入活动地图，只要\n站在龙魂之刃周围8格内，即可享\n受龙魂之刃的照耀，获得大量奖励！</font>"
		end
		if string.find(str,"寻龙夺宝") then
			content = "<font color='#9C846D'>活动开始后，击杀BOSS掉落【被封\n印的宝箱】，持有宝箱3分钟可获得\n随机奖励，活动结束后宝箱解封，\n打开后可获得至多2000元宝奖励!</font>"
		end
		if string.find(str,"镇魔宝塔") then
			content = "<font color='#9C846D'>活动地图中会刷新出各种BOSS，\n击败BOSS后会爆出镇魔令牌，自\n由拾取，活动结束时可进入奖励\n地图兑换羽毛！</font>"
		end
		if string.find(str,"群英争霸") then
			content = "<font color='#9C846D'>1.玩家在活动地图分红、蓝两\n个阵营，击杀敌对阵营玩家可获得积\n分，最终根据积分排名获得奖励。\n2.阵营每5分钟变更一次。\n3.死亡不掉落任何物品。</font>"
		end
		if string.find(str,"禁魔神殿") then
			content = "<font color='#9C846D'>活动介绍：活动地图中会刷新\n出各种BOSS，击败BOSS后玩家\n可获得活动积分，BOSS死亡掉\n落大量BOSS积分道具，自由拾\n取，活动结束时积分排名前\n5的玩家可进入奖励地图！</font>"
		end
		if string.find(str,"押镖玩法") then
			content = "<font color='#9C846D'>活动介绍：于巫山城运镖车夫处\n接取不同等级的镖车并上缴押金，\n运至龙城的总镖师获取奖励，\n从接镖开始有10分钟的时限去完成，\n途中小心被劫镖哦。</font>"
		end
		GUIWndSetHint(handle,content)
	end
	handle = GetWindow(0, "LittleMap,textBackground,timeContent")
	if handle ~= 0 then
		GUI:EditSetTextM(handle, str)
	end
end



function LittleMap.HideActivitySchedule()
	local handle = GetWindow(0, "LittleMap,textBackground")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, false)
	end
end

function LittleMap.OnMouseMoveIn(this)
	if this ~= 0 then
		ImageSetImageID(this,nil,1804600114)
	end
end

function LittleMap.OnMouseMoveOut(this)
	if this ~= 0 then
		ImageSetImageID(this,nil,1804600113)
	end
end

function LittleMap.addEffect_BuyExp()
	local _handle = GetWindow(nil, "LittleMap") WndAddEffect(_handle, "LittleMap", 3006600000, -624, -150, 100, 1) 
end

function LittleMap.redSpotsF()  
	local handle = GetWindow("", "LittleMap,redSpots")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false)
	end
end

function LittleMap.redSpotsT()
	local handle = GetWindow("", "LittleMap,redSpots")
	if handle ~= 0 then
		WndMoveToParentTop(handle)
		GUIWndSetVisible(handle, true)
	end
end
LittleMap.main()