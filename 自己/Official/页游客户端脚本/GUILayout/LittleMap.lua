LittleMap ={}
function LittleMap.main()
--[[	local ui = "<form> <dialog OnInit='LittleMap.UIInit' id='LittleMap' x='872' y='0' w='16' h='16' revmsg='true'>"
	.."    <image id='MapImage' x='11' y='23' w='130' h='125' revmsg='true'/>"
	.."    <image id='MapMaskImage' x='24' y='31' w='101' h='101' image='1800500237' revmsg='true'/>"
	.."    <image id='Image' x='24' y='38' w='101' h='101' image='1800700058' revmsg='true'/>"
	.."    <image id='BackImage' x='0' y='0' w='16' h='16' image='1800700029' revmsg='true'/>"
	.."    <button id='MuteBtn' x='12' y='112' w='32' h='32' image='1800700046' OnLButtonUp='LittleMap.OnMuteBtn' revmsg='true' tip='��Ч'/>"
	.."    <button id='RankBtn' x='-8' y='53' w='32' h='32' image='1800700038' OnLButtonUp='LittleMap.OnRankBtn' revmsg='true' tip='���а�K��'/>"
	.."    <button id='Aid' x='-5' y='85' w='32' h='32' image='1800700042' revmsg='true' tip='������Home��'/>"
	.."    <button id='CampaignBtn' x='5' y='25' w='32' h='32' image='1800700034' OnLButtonUp='LittleMap.OnCampaignBtn' revmsg='true' tip='���J��'/>"
	.."    <button id='HelpBtn' x='116' y='25' w='32' h='32' image='1800700054' OnLButtonUp='LittleMap.OnHelpBtn' revmsg='true' tip='����'/>"
	.."    <image id='NetworkStatus' x='-10' y='20' w='10' h='10' image='1800700026' revmsg='true'/>"
	.."    <button id='WorldMapBtn' x='47' y='125' w='60' h='19' image='1800700030' OnLButtonUp='LittleMap.OnWorldMapBtn' revmsg='true' text='��ͼ' tip='�����ͼ��M��'/>"
	.."    <edit id='MapName' x='20' y='2' w='115' h='16' canedit='false' align='center' revmsg='true'  text_color=#C1B6A7/>"
	.."    <edit id='PlayerPos' x='38' y='20' w='75' h='16' canedit='false' align='center' revmsg='true'  text_color=#C1B6A7/>"
	.."    <button id='book' x='110' y='112' w='32' h='32' image='1803800077' OnLButtonUp='LittleMap.OnBookBtn' revmsg='true' tip='ͼ��'/>"
	
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
		GUIWndSetHint(_GUIHandle,"�ʼ���P��")
		CLHotKeyRegister("P", "���ʼ�����", "LittleMap.OnMeil()");
		GUIWndSetSizeM(_GUIHandle,32, 32)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"Screen",1800700069,102,118)
	if _GUIHandle ~= 0 then
		--GUIWndRegistScript(_GUIHandle,1002, "LittleMap.Screen")
		GUIWndRegistScript(_GUIHandle,1011, "LittleMap.Screen")
		GUIWndRegistScript(_GUIHandle,1012, "LittleMap.ScreenOut")
		GUIWndSetHint(_GUIHandle,"����")
		--CLHotKeyRegister("P", "���ʼ�����", "LittleMap.OnMeil()");
		GUIWndSetSizeM(_GUIHandle,32, 32)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"MuteBtn",1800700046,120,95)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1002, "LittleMap.OnMuteBtn")
		GUIWndSetHint(_GUIHandle,"��Ч")
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,32, 32)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"RankBtn",1800700038,-8,56)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1002, "LittleMap.OnRankBtn")
		GUIWndSetHint(_GUIHandle,"���а�K��")
		CLHotKeyRegister("K", "�����а񴰿�", "LittleMap.OnRankBtn()");  --ע�����а��ȼ�Y
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,32, 32)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"Aid",1800700042,-5,85)
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle,"������Home��")
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,32, 32)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"CampaignBtn",1800700065,-6,17)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1002, "LittleMap.OnCampaignBtn")
		GUIWndSetHint(_GUIHandle,"���J��")
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
		GUIWndSetHint(_GUIHandle,"����")
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,32, 32)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	--]]
	
--[[	_GUIHandle = GUIButtonCreate(_Parent,"NewbeeBtn",1800700073,116,25)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1002, "LittleMap.OnNewbeeBtn")
		GUIWndSetHint(_GUIHandle,"���ֱ���")
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
		GUIWndSetTextM(_GUIHandle,"��ͼ")
		GUIWndSetHint(_GUIHandle,"�����ͼ��M��")
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
		--GUI:EditSetTextM(_GUIHandle,"����֮��   14:00 - 14:15")
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
	_GUIHandle = GUIButtonCreate(nil, "newMail", 1800500162, _SW/2-24, _SH-200)	--new�ʼ�
	if _GUIHandle ~= 0 then
		GUIWndSetVisible(_GUIHandle, true)
		GUIWndSetHint(_GUIHandle, "�����µ��ʼ�")
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "LittleMap.OnMeil")
	end--]]
	
	--_GUIHandle = GUIButtonCreate(_Parent,"book",1803800077,110,112)
	--if _GUIHandle ~= 0 then
	--	GUIWndRegistScript(_GUIHandle,1002, "LittleMap.OnBookBtn")
	--	GUIWndSetHint(_GUIHandle,"ͼ��")
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
	
	--RegisterUIEvent(LUA_EVENT_ONNEWMAIL, "Little_���ʼ�", LittleMap.newMail)

	--CLHotKeyRegister("HOME", "�򿪸�������", "UI:Lua_OpenWindow(0,\"GameSettingDlg.lua\")");  --ע�Ḩ�������ȼ�Y
	--CLHotKeyRegister("M", "�򿪵�ͼ����", "LittleMap.OnWorldMapBtn()");  --ע���ͼ�ȼ�M

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
	UI:Lua_SubmitForm("�ȼ��жϱ�", "OnOpenTop", "")
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
						["�޾���Ԩ"] = {"�޾���Ԩ   10:00 - 10:15", "�޾���Ԩ   14:00 - 14:15", "�޾���Ԩ   22:00 - 22:15"},
						["Ԫ�����껪"] = {"Ԫ�����껪   11:00 - 11:15", "Ԫ�����껪   15:00 - 15:15"},
						["Ĥ�ݳ���"] = {"Ĥ�ݳ���   11:30 - 12:30", "Ĥ�ݳ���   17:30 - 18:30"},
						["˭������"] = {"˭������   12:40 - 13:20"},
						["����֮��"] = {"����֮��   16:00 - 16:15"},
						["Ѱ���ᱦ"] = {"Ѱ���ᱦ   19:00 - 19:15"},
						["��ħ����"] = {"��ħ����   19:25 - 20:00"},
						["ҹϮ��ɽ��"] = {"ҹϮ��ɽ��   21:25 - 21:45"},
	}--]]
	local handle = GetWindow(0, "LittleMap,textBackground")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, true)
		
	end 
	handle = GetWindow(0, "LittleMap,textBackground,acticityDetail")
	if handle ~= 0 then
		local content = ""
		if string.find(str,"�޾���Ԩ") then
			content = "<font color='#9C846D'>�޾���Ԩһ��13�㣬ÿ�����BOSS\n���أ�������һ����Ҫ��ɱ����Ԩ\n�ػ��ߡ���á���Ԩƾ֤����ÿ��\n����һ��ɻ�ô����Ľ�Һ��̻�ʯ\n������</font>"
		end
		if string.find(str,"Ԫ�����껪") then
			content = "<font color='#9C846D'>ÿ��11:00��15:00��Ԫ��BOSS��\nЯ������Ԫ�������ǵ��ң���ɱ\n���ɻ�ô���Ԫ�����Ԫ������\n����Ϊ����ʰȡ��</font>"
		end
		if string.find(str,"Ĥ�ݳ���") then
			content = "<font color='#9C846D'>�����������ɽ�ǵ�ͼ��ȫ����\n�����������ʼĤ�ݣ��ɻ��\n�������飬�ȼ�Խ�ߣ�����Խ�࣡</font>"
		end
		if string.find(str,"˭������") then
			content = "<font color='#9C846D'>˭�������ͼΪ����PK��ֱ��ʣ��\nһ����ң������һ��ʤ������\n��ô���Ԫ�������������������\n�ɻ�ý�ҽ�����</font>"
		end
		if string.find(str,"����֮��") then
			content = "<font color='#9C846D'>������󣬽�����ͼ��ֻҪ\nվ������֮����Χ8���ڣ�������\n������֮�е���ҫ����ô���������</font>"
		end
		if string.find(str,"Ѱ���ᱦ") then
			content = "<font color='#9C846D'>���ʼ�󣬻�ɱBOSS���䡾����\nӡ�ı��䡿�����б���3���ӿɻ��\n�������������������⣬\n�򿪺�ɻ������2000Ԫ������!</font>"
		end
		if string.find(str,"��ħ����") then
			content = "<font color='#9C846D'>���ͼ�л�ˢ�³�����BOSS��\n����BOSS��ᱬ����ħ���ƣ���\n��ʰȡ�������ʱ�ɽ��뽱��\n��ͼ�һ���ë��</font>"
		end
		if string.find(str,"ȺӢ����") then
			content = "<font color='#9C846D'>1.����ڻ��ͼ�ֺ졢����\n����Ӫ����ɱ�ж���Ӫ��ҿɻ�û�\n�֣����ո��ݻ���������ý�����\n2.��Ӫÿ5���ӱ��һ�Ρ�\n3.�����������κ���Ʒ��</font>"
		end
		if string.find(str,"��ħ���") then
			content = "<font color='#9C846D'>����ܣ����ͼ�л�ˢ��\n������BOSS������BOSS�����\n�ɻ�û���֣�BOSS������\n�����BOSS���ֵ��ߣ�����ʰ\nȡ�������ʱ��������ǰ\n5����ҿɽ��뽱����ͼ��</font>"
		end
		if string.find(str,"Ѻ���淨") then
			content = "<font color='#9C846D'>����ܣ�����ɽ�����ڳ���\n��ȡ��ͬ�ȼ����ڳ����Ͻ�Ѻ��\n�������ǵ�����ʦ��ȡ������\n�ӽ��ڿ�ʼ��10���ӵ�ʱ��ȥ��ɣ�\n;��С�ı�����Ŷ��</font>"
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