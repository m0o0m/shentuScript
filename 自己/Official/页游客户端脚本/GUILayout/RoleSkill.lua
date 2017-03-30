RoleSkill = {}

function RoleSkill.main()
	local ui = "<form default_parent='RoleGUI'><dialog id='RoleSkill' x='0' y='0' w='637' h='504' revmsg='true' OnInit='RoleSkill.UIInit' OnClose='RoleSkill.wndClose'>"
	.."<wnd id='ItemCell1' x='35' y='54' w='255' h='62' revmsg='true'>"
	.."<image id='SkillBackImg1' image='1800900027' x='0' y='0' w='255' h='62' revmsg='true'/>"
	.."<edit id='SkillNameEdit1' x='62' y='12' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color=#FF9900 font='system'/>"
	.."<itemctrl id='SkillItem1' x='14' y='11' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800900028' revmsg='true' enable='true'/>"
	.."<edit id='SkillLevelEdit1' x='140' y='11' w='70' h='16' canedit='false' revmsg='true' enable='false' text_color=#D1B262 font='system'/>"
	.."<button id='SkillBtn1' image='1800900046' x='205' y='11' w='40' h='40' OnLButtonUp='RoleSkill.SkillBarLeftBtnUp' revmsg='true' param='1'/>"
	.."<image id='SkillProficiencyBackImg1' image='1800900115' x='63' y='32' w='134' h='17' revmsg='true'/>"
	.."<image id='SkillProficiencyImg1' image='1800900116' x='65' y='34' w='130' h='13' revmsg='true'/>"
	.."<edit id='SkillProficiencyEdit1' x='65' y='34' w='130' h='13' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	
	.."</wnd>"
	.."<wnd id='ItemCell2' x='35' y='124' w='255' h='62' revmsg='true'>"
	.."<image id='SkillBackImg2' image='1800900027' x='0' y='0' w='255' h='62' revmsg='true'/>"
	.."<edit id='SkillNameEdit2' x='62' y='12' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color=#FF9900 font='system'/>"
	.."<itemctrl id='SkillItem2' x='14' y='11' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800900028' revmsg='true' enable='true'/>"
	.."<edit id='SkillLevelEdit2' x='140' y='11' w='70' h='16' canedit='false' revmsg='true' enable='false' text_color=#D1B262 font='system'/>"
	.."<button id='SkillBtn2' image='1800900046' x='205' y='11' w='40' h='40' OnLButtonUp='RoleSkill.SkillBarLeftBtnUp' revmsg='true' param='2'/>"
	.."<image id='SkillProficiencyBackImg2' image='1800900115' x='63' y='32' w='134' h='17' revmsg='true'/>"
	.."<image id='SkillProficiencyImg2' image='1800900116' x='65' y='34' w='130' h='13' revmsg='true'/>"
	.."<edit id='SkillProficiencyEdit2' x='65' y='34' w='130' h='13' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	
	.."</wnd>"
	.."<wnd id='ItemCell3' x='35' y='194' w='255' h='62' revmsg='true'>"
	.."<image id='SkillBackImg3' image='1800900027' x='0' y='0' w='255' h='62' revmsg='true'/>"
	.."<edit id='SkillNameEdit3' x='62' y='12' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color=#FF9900 font='system'/>"
	.."<itemctrl id='SkillItem3' x='14' y='11' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800900028' revmsg='true' enable='true'/>"
	.."<edit id='SkillLevelEdit3' x='140' y='11' w='70' h='16' canedit='false' revmsg='true' enable='false' text_color=#D1B262 font='system'/>"
	.."<button id='SkillBtn3' image='1800900046' x='205' y='11' w='40' h='40' OnLButtonUp='RoleSkill.SkillBarLeftBtnUp' revmsg='true' param='3'/>"
	.."<image id='SkillProficiencyBackImg3' image='1800900115' x='63' y='32' w='134' h='17' revmsg='true'/>"
	.."<image id='SkillProficiencyImg3' image='1800900116' x='65' y='34' w='130' h='13' revmsg='true'/>"
	.."<edit id='SkillProficiencyEdit3' x='65' y='34' w='130' h='13' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	
	.."</wnd>"
	.."<wnd id='ItemCell4' x='35' y='264' w='255' h='62' revmsg='true'>"
	.."<image id='SkillBackImg4' image='1800900027' x='0' y='0' w='255' h='62' revmsg='true'/>"
	.."<edit id='SkillNameEdit4' x='62' y='12' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color=#FF9900 font='system'/>"
	.."<itemctrl id='SkillItem4' x='14' y='11' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800900028' revmsg='true' enable='true'/>"
	.."<edit id='SkillLevelEdit4' x='140' y='11' w='70' h='16' canedit='false' revmsg='true' enable='false' text_color=#D1B262 font='system'/>"
	.."<button id='SkillBtn4' image='1800900046' x='205' y='11' w='40' h='40' OnLButtonUp='RoleSkill.SkillBarLeftBtnUp' revmsg='true' param='4'/>"
	.."<image id='SkillProficiencyBackImg4' image='1800900115' x='63' y='32' w='134' h='17' revmsg='true'/>"
	.."<image id='SkillProficiencyImg4' image='1800900116' x='65' y='34' w='130' h='13' revmsg='true'/>"
	.."<edit id='SkillProficiencyEdit4' x='65' y='34' w='130' h='13' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	
	.."</wnd>"
	.."<wnd id='ItemCell5' x='35' y='334' w='255' h='62' revmsg='true'>"
	.."<image id='SkillBackImg5' image='1800900027' x='0' y='0' w='255' h='62' revmsg='true'/>"
	.."<edit id='SkillNameEdit5' x='62' y='12' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color=#FF9900 font='system'/>"
	.."<itemctrl id='SkillItem5' x='14' y='11' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800900028' revmsg='true' enable='true'/>"
	.."<edit id='SkillLevelEdit5' x='140' y='11' w='70' h='16' canedit='false' revmsg='true' enable='false' text_color=#D1B262 font='system'/>"
	.."<button id='SkillBtn5' image='1800900046' x='205' y='11' w='40' h='40' OnLButtonUp='RoleSkill.SkillBarLeftBtnUp' revmsg='true' param='5'/>"
	.."<image id='SkillProficiencyBackImg5' image='1800900115' x='63' y='32' w='134' h='17' revmsg='true'/>"
	.."<image id='SkillProficiencyImg5' image='1800900116' x='65' y='34' w='130' h='13' revmsg='true'/>"
	.."<edit id='SkillProficiencyEdit5' x='65' y='34' w='130' h='13' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	
	.."</wnd>"
	.."<wnd id='ItemCell6' x='35' y='404' w='255' h='62' revmsg='true'>"
	.."<image id='SkillBackImg6' image='1800900027' x='0' y='0' w='255' h='62' revmsg='true'/>"
	.."<edit id='SkillNameEdit6' x='62' y='12' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color=#FF9900 font='system'/>"
	.."<itemctrl id='SkillItem6' x='14' y='11' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800900028' revmsg='true' enable='true'/>"
	.."<edit id='SkillLevelEdit6' x='140' y='11' w='70' h='16' canedit='false' revmsg='true' enable='false' text_color=#D1B262 font='system'/>"
	.."<button id='SkillBtn6' image='1800900046' x='205' y='11' w='40' h='40' OnLButtonUp='RoleSkill.SkillBarLeftBtnUp' revmsg='true' param='6'/>"
	.."<image id='SkillProficiencyBackImg6' image='1800900115' x='63' y='32' w='134' h='17' revmsg='true'/>"
	.."<image id='SkillProficiencyImg6' image='1800900116' x='65' y='34' w='130' h='13' revmsg='true'/>"
	.."<edit id='SkillProficiencyEdit6' x='65' y='34' w='130' h='13' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	
	.."</wnd>"
	.."<wnd id='ItemCell7' x='309' y='54' w='255' h='62' revmsg='true'>"
	.."<image id='SkillBackImg7' image='1800900027' x='0' y='0' w='255' h='62' revmsg='true'/>"
	.."<edit id='SkillNameEdit7' x='62' y='12' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color=#FF9900 font='system'/>"
	.."<itemctrl id='SkillItem7' x='14' y='11' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800900028' revmsg='true' enable='true'/>"
	.."<edit id='SkillLevelEdit7' x='140' y='11' w='70' h='16' canedit='false' revmsg='true' enable='false' text_color=#D1B262 font='system'/>"
	.."<button id='SkillBtn7' image='1800900046' x='205' y='11' w='40' h='40' OnLButtonUp='RoleSkill.SkillBarLeftBtnUp' revmsg='true' param='7'/>"
	.."<image id='SkillProficiencyBackImg7' image='1800900115' x='63' y='32' w='134' h='17' revmsg='true'/>"
	.."<image id='SkillProficiencyImg7' image='1800900116' x='65' y='34' w='130' h='13' revmsg='true'/>"
	.."<edit id='SkillProficiencyEdit7' x='65' y='34' w='130' h='13' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	
	.."</wnd>"
	.."<wnd id='ItemCell8' x='309' y='124' w='255' h='62' revmsg='true'>"
	.."<image id='SkillBackImg8' image='1800900027' x='0' y='0' w='255' h='62' revmsg='true'/>"
	.."<edit id='SkillNameEdit8' x='62' y='12' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color=#FF9900 font='system'/>"
	.."<itemctrl id='SkillItem8' x='14' y='11' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800900028' revmsg='true' enable='true'/>"
	.."<edit id='SkillLevelEdit8' x='140' y='11' w='70' h='16' canedit='false' revmsg='true' enable='false' text_color=#D1B262 font='system'/>"
	.."<button id='SkillBtn8' image='1800900046' x='205' y='11' w='40' h='40' OnLButtonUp='RoleSkill.SkillBarLeftBtnUp' revmsg='true' param='8'/>"
	.."<image id='SkillProficiencyBackImg8' image='1800900115' x='63' y='32' w='134' h='17' revmsg='true'/>"
	.."<image id='SkillProficiencyImg8' image='1800900116' x='65' y='34' w='130' h='13' revmsg='true'/>"
	.."<edit id='SkillProficiencyEdit8' x='65' y='34' w='130' h='13' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	
	.."</wnd>"
	.."<wnd id='ItemCell9' x='309' y='194' w='255' h='62' revmsg='true'>"
	.."<image id='SkillBackImg9' image='1800900027' x='0' y='0' w='255' h='62' revmsg='true'/>"
	.."<edit id='SkillNameEdit9' x='62' y='12' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color=#FF9900 font='system'/>"
	.."<itemctrl id='SkillItem9' x='14' y='11' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800900028' revmsg='true' enable='true'/>"
	.."<edit id='SkillLevelEdit9' x='140' y='11' w='70' h='16' canedit='false' revmsg='true' enable='false' text_color=#D1B262 font='system'/>"
	.."<button id='SkillBtn9' image='1800900046' x='205' y='11' w='40' h='40' OnLButtonUp='RoleSkill.SkillBarLeftBtnUp' revmsg='true' param='9'/>"
	.."<image id='SkillProficiencyBackImg9' image='1800900115' x='63' y='32' w='134' h='17' revmsg='true'/>"
	.."<image id='SkillProficiencyImg9' image='1800900116' x='65' y='34' w='130' h='13' revmsg='true'/>"
	.."<edit id='SkillProficiencyEdit9' x='65' y='34' w='130' h='13' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	
	.."</wnd>"
	.."<wnd id='ItemCell10' x='309' y='264' w='255' h='62' revmsg='true'>"
	.."<image id='SkillBackImg10' image='1800900027' x='0' y='0' w='255' h='62' revmsg='true'/>"
	.."<edit id='SkillNameEdit10' x='62' y='12' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color=#FF9900 font='system'/>"
	.."<itemctrl id='SkillItem10' x='14' y='11' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800900028' revmsg='true' enable='true'/>"
	.."<edit id='SkillLevelEdit10' x='140' y='11' w='70' h='16' canedit='false' revmsg='true' enable='false' text_color=#D1B262 font='system'/>"
	.."<button id='SkillBtn10' image='1800900046' x='205' y='11' w='40' h='40' OnLButtonUp='RoleSkill.SkillBarLeftBtnUp' revmsg='true' param='10'/>"
	.."<image id='SkillProficiencyBackImg10' image='1800900115' x='63' y='32' w='134' h='17' revmsg='true'/>"
	.."<image id='SkillProficiencyImg10' image='1800900116' x='65' y='34' w='130' h='13' revmsg='true'/>"
	.."<edit id='SkillProficiencyEdit10' x='65' y='34' w='130' h='13' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	
	.."</wnd>"
	.."<wnd id='ItemCell11' x='309' y='334' w='255' h='62' revmsg='true'>"
	.."<image id='SkillBackImg11' image='1800900027' x='0' y='0' w='255' h='62' revmsg='true'/>"
	.."<edit id='SkillNameEdit11' x='62' y='12' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color=#FF9900 font='system'/>"
	.."<itemctrl id='SkillItem11' x='14' y='11' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800900028' revmsg='true' enable='true'/>"
	.."<edit id='SkillLevelEdit11' x='140' y='11' w='70' h='16' canedit='false' revmsg='true' enable='false' text_color=#D1B262 font='system'/>"
	.."<button id='SkillBtn11' image='1800900046' x='205' y='11' w='40' h='40' OnLButtonUp='RoleSkill.SkillBarLeftBtnUp' revmsg='true' param='11'/>"
	.."<image id='SkillProficiencyBackImg11' image='1800900115' x='63' y='32' w='134' h='17' revmsg='true'/>"
	.."<image id='SkillProficiencyImg11' image='1800900116' x='65' y='34' w='130' h='13' revmsg='true'/>"
	.."<edit id='SkillProficiencyEdit11' x='65' y='34' w='130' h='13' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	
	.."</wnd>"
	.."<wnd id='ItemCell12' x='309' y='404' w='255' h='62' revmsg='true'>"
	.."<image id='SkillBackImg12' image='1800900027' x='0' y='0' w='255' h='62' revmsg='true'/>"
	.."<edit id='SkillNameEdit12' x='62' y='12' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color=#FF9900 font='system'/>"
	.."<itemctrl id='SkillItem12' x='14' y='11' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800900028' revmsg='true' enable='true'/>"
	.."<edit id='SkillLevelEdit12' x='140' y='11' w='70' h='16' canedit='false' revmsg='true' enable='false' text_color=#D1B262 font='system'/>"
	.."<button id='SkillBtn12' image='1800900046' x='205' y='11' w='40' h='40' OnLButtonUp='RoleSkill.SkillBarLeftBtnUp' revmsg='true' param='12'/>"
	.."<image id='SkillProficiencyBackImg12' image='1800900115' x='63' y='32' w='134' h='17' revmsg='true'/>"
	.."<image id='SkillProficiencyImg12' image='1800900116' x='65' y='34' w='130' h='13' revmsg='true'/>"
	.."<edit id='SkillProficiencyEdit12' x='65' y='34' w='130' h='13' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	
	.."</wnd>"
	.."<button id='UpBtn' image='1800000352' x='580' y='186' w='26' h='70' OnLButtonUp='RoleSkill.up_page' revmsg='true'/>"
	.."<button id='DownBtn' image='1800000356' x='580' y='265' w='26' h='70' OnLButtonUp='RoleSkill.down_page' revmsg='true'/>"
	.."</dialog></form>"
	GenFormByString(ui)
end

--UI Logic Code Start
RoleSkill.num = 12  --每页技能栏数目
RoleSkill.page = 1 --当前是第几页
RoleSkill.WndHandle = 0
RoleSkill.skill_list = {}
RoleSkill.quickbar_list = {}

RoleSkill.Open = false

function RoleSkill.UIInit(_Handle)
	RoleSkill.WndHandle = _Handle
	RoleSkill.Open = true
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleEquipment")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleRein")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	local _GUIHandle = GetWindow(nil,"RoleReinPoint")
	if  _GUIHandle ~= 0   then
		GUIWndClose(_GUIHandle)
	end
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleInner")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	

	local _GUIHandle = GetWindow(nil,"RoleGUI,TitleImg")
	if _GUIHandle ~= 0 then
		GUIWndSetImageID(_GUIHandle, 1801500082)
	end
	
	for i = 1, 4 do
		_GUIHandle=GetWindow(nil,"RoleGUI,StateBtn_"..i)
		GUIButtonSetIsActivePageBtn(_GUIHandle, false)
	end		
	_GUIHandle = GetWindow(nil,"RoleGUI,StateBtn_2")--按钮
	GUIButtonSetIsActivePageBtn(_GUIHandle, true)
	WndMoveToParentTop(_GUIHandle)
	RegisterUIEvent(LUA_EVENT_ONADDSKILL, "RoleSkill_技能升级", RoleSkill.OnUpdateLevel)
	RegisterUIEvent(LUA_EVENT_SKILLPROFICIENCY, "RoleSkill_技能熟练度变更", RoleSkill.OnUpdateShul)
	RegisterUIEvent(LUA_EVENT_OPENSKILLGUI, "RoleSkill_技能面板打开", RoleSkill.OnSkillOpen)
	RegisterUIEvent(LUA_EVENT_QUICKCHANGE, "RoleSkill_技能快捷键变更", RoleSkill.OnUpdateBtn)
	RoleSkill.empty()
	RoleSkill.show_page()
end

function RoleSkill.OnUpdateShul()
	local skillid = as3.tolua(LuaParam[1])
	local shul = as3.tolua(LuaParam[2])
	local name = ""
	if CLGetSkillTemplatePropByID(skillid,SKILL_PROP_NAME) then
			name = as3.tolua(LuaRet)									
	end
	for i = 1 , RoleSkill.num do
		local _GUIHandle = GUIWndFindWindow(RoleSkill.WndHandle, "ItemCell"..i..",SkillNameEdit"..i)
		if name == EditGetTextM(_GUIHandle) then
			if CLGetSkillTemplatePropByID(skillid,SKILL_PROP_PROFICIENCY) then
				shulian = tonumber(as3.tolua(LuaRet))
				local _ShulianImage = GUIWndFindWindow(RoleSkill.WndHandle, "ItemCell"..i..",SkillProficiencyImg"..i)
				if _ShulianImage ~= 0 then
					local value = 0
					if shulian > 0 then
						value = shul/shulian
					end
					if value > 0 then
						GUIWndSetVisible(_ShulianImage,true)
						GUIImageSetDrawRect(_ShulianImage,0,value,0,1)
					else
						GUIWndSetVisible(_ShulianImage,false)
					end
				end
						
				local _GUIHandle = GUIWndFindWindow(RoleSkill.WndHandle, "ItemCell"..i..",SkillProficiencyEdit"..i)
				EditSetText(_GUIHandle,nil,shul .. " / "..shulian)
				break
			end	
		end
	end
end

function RoleSkill.OnUpdateLevel()
	RoleSkill.empty()
	RoleSkill.show_page()
	CLOnShowSkillPage(RoleSkill.page)
end

function RoleSkill.OnSkillOpen()
	CLOnShowSkillPage(RoleSkill.page)
end
function RoleSkill.up_page(_handle)
	if RoleSkill.page == 1 then
		return
	end
	RoleSkill.empty()
	RoleSkill.page = RoleSkill.page - 1
	RoleSkill.show_page()
	CLOnShowSkillPage(RoleSkill.page)
end

function RoleSkill.down_page(_handle)
	local page_max = math.ceil((#RoleSkill.skill_list) / RoleSkill.num)
	if RoleSkill.page == page_max then
		return
	end
	RoleSkill.empty()
	RoleSkill.page = RoleSkill.page + 1
	RoleSkill.show_page()
	CLOnShowSkillPage(RoleSkill.page)
end

function RoleSkill.SkillBarLeftBtnUp(_handle)
	UI:Lua_OpenWindow(0, "RoleSkillChoose.lua")
	local index = GUIWndGetParam(_handle)
	index = (RoleSkill.page - 1 ) * RoleSkill.num + index
	if index <= #(RoleSkill.skill_list) then
		RoleSkillChoose.SetSkillId(RoleSkill.skill_list[index][1])
	end
end

function RoleSkill.show_page()
	if CLGetPlayerSelfSkillArray() then
		RoleSkill.skill_list = getTable(as3.tolua(LuaRet))
	end
	if CLGetQuickBarList() then
		RoleSkill.quickbar_list = getTable(as3.tolua(LuaRet))
	end
	local index = (RoleSkill.page - 1 ) * RoleSkill.num + 1
	local i = 1
	local skill={}
	local _GUIHandle = 0
	for a = 1  , #(RoleSkill.skill_list) do 
		if a >= index then
			local _Handle = GUIWndFindWindow(RoleSkill.WndHandle, "ItemCell"..i)
			if _Handle ~= 0 then
				GUIWndSetVisible(_Handle,true)
			end
			skill=getTable(RoleSkill.skill_list[a])
--[[		local _SkillBackHandle = GUIWndFindWindow(RoleSkill.WndHandle, "SkillBackImg"..i)
			GUIWndSetVisible(_SkillBackHandle,true)
			local _SkillItemHandle = GUIWndFindWindow(RoleSkill.WndHandle, "SkillItem"..i)
			GUIWndSetVisible(_SkillItemHandle,true)
			local _SkillBtn = GUIWndFindWindow(RoleSkill.WndHandle, "SkillBtn"..i)
			GUIWndSetVisible(_SkillBtn,true)
			local _ShulianBackImage = GUIWndFindWindow(RoleSkill.WndHandle, "SkillProficiencyBackImg"..i)
			GUIWndSetVisible(_ShulianBackImage,true)
			]]
			RoleSkill.CheckButton(skill[1],i)
			if CLGetSkillTemplatePropByID(skill[1],SKILL_PROP_NAME) then
				local name = as3.tolua(LuaRet)			
				_GUIHandle = GUIWndFindWindow(RoleSkill.WndHandle, "ItemCell"..i..",SkillNameEdit"..i)
				EditSetText(_GUIHandle,nil,name)
			end
			local level = 0
			if CLGetSkillTemplatePropByID(skill[1],SKILL_PROP_LEVEL) then
				level = tonumber(as3.tolua(LuaRet)) - 1	
				_GUIHandle = GUIWndFindWindow(RoleSkill.WndHandle, "ItemCell"..i..",SkillLevelEdit"..i)
				EditSetText(_GUIHandle,nil,"等级："..level)
			end
			local shulian = 0
			if CLGetSkillTemplatePropByID(skill[1],SKILL_PROP_PROFICIENCY) then
				shulian = tonumber(as3.tolua(LuaRet))	
				local shul = tonumber(skill[2])
				local _ShulianImage = GUIWndFindWindow(RoleSkill.WndHandle, "ItemCell"..i..",SkillProficiencyImg"..i)
				if level < 3 or shulian ~= shul then --等级超过3不显示熟练度进度条
					if _ShulianImage ~= 0 then
						local value = 0
						if shulian > 0 then
							value = shul/shulian
						end
						if value > 0 then
							GUIWndSetVisible(_ShulianImage,true)
							GUIImageSetDrawRect(_ShulianImage,0,value,0,1)
						else
							GUIWndSetVisible(_ShulianImage,false)
						end
					end
				else
					if _ShulianImage ~= 0 then
						GUIWndSetVisible(_ShulianImage,true)
						GUIImageSetDrawRect(_ShulianImage,0,1,0,1)
					end
					_GUIHandle = GUIWndFindWindow(RoleSkill.WndHandle, "ItemCell"..i..",SkillLevelEdit"..i)
					EditSetText(_GUIHandle,nil,"等级：满级")
				end			
				_GUIHandle = GUIWndFindWindow(RoleSkill.WndHandle, "ItemCell"..i..",SkillProficiencyEdit"..i)
				EditSetText(_GUIHandle,nil,shul .. " / "..shulian)
			end
			if i == RoleSkill.num then
				break
			end
			i = i + 1			
		end		
	end	
end	

RoleSkill.quicbarImg = {1800900054,1800900058,1800900062,1800900066,1800900070,1800900074,1800900078,1800900082,1800900086,1800900050}

function RoleSkill.CheckButton(skillid,index)
	local quickbar={}
	for a = 1  , #(RoleSkill.quickbar_list) do 
		quickbar = getTable(RoleSkill.quickbar_list[a])
		if quickbar[2] == 2 and quickbar[3] == skillid then
			local _GUIHandle = GUIWndFindWindow(RoleSkill.WndHandle, "ItemCell"..index..",SkillBtn"..index)
			if _GUIHandle ~= 0 then
				GUIWndSetImageID(_GUIHandle, RoleSkill.quicbarImg[quickbar[1]+1])
				return 
			end		
		else
			local _GUIHandle = GUIWndFindWindow(RoleSkill.WndHandle, "ItemCell"..index..",SkillBtn"..index)
			if _GUIHandle ~= 0 then
				GUIWndSetImageID(_GUIHandle, 1800900046)
			end
		end
	end
end

function RoleSkill.OnUpdateBtn()
	local changeType = as3.tolua(LuaParam[1])
	local quicktype = as3.tolua(LuaParam[2])
	local id = as3.tolua(LuaParam[3])
	local slot = as3.tolua(LuaParam[4])
	local quickbar={}
	if changeType==1 then
		quickbar={slot,quicktype,id}
		RoleSkill.quickbar_list[#RoleSkill.quickbar_list+1]=quickbar
	else
		for a = 1  , #(RoleSkill.quickbar_list) do
			quickbar = getTable(RoleSkill.quickbar_list[a]) 
			if quickbar[2] == quicktype and quickbar[3] == id then
				table.remove(RoleSkill.quickbar_list,a)
				break
			end
		end
	end
	
	if quicktype == 2 then
		local skill={}
		local i = 1
		local index = (RoleSkill.page - 1 ) * RoleSkill.num + 1
		for b = 1  , #(RoleSkill.skill_list) do 
			if b >= index then
				skill=getTable(RoleSkill.skill_list[b])
				if skill[1] == id then
					local _GUIHandle = GUIWndFindWindow(RoleSkill.WndHandle, "ItemCell"..i..",SkillBtn"..i)
					if _GUIHandle ~= 0 then
						if changeType==1 then
							GUIWndSetImageID(_GUIHandle, RoleSkill.quicbarImg[quickbar[1]+1])
						else
							GUIWndSetImageID(_GUIHandle, 1800900046)
						end
					end
				end
				if i == RoleSkill.num then
					break
				end
				i = i + 1
			end
		end
	end
end

function RoleSkill.empty()
	for i = 1 , RoleSkill.num do 
--[[	local _BtnHandle = GUIWndFindWindow(RoleSkill.WndHandle, "SkillBtn"..i)
		if _BtnHandle ~= 0 then
			GUIWndSetImageID(_BtnHandle, 1800900046)
		end
		local _SkillBackHandle = GUIWndFindWindow(RoleSkill.WndHandle, "SkillBackImg"..i)
		GUIWndSetVisible(_SkillBackHandle,false)
		local _SkillItemHandle = GUIWndFindWindow(RoleSkill.WndHandle, "SkillItem"..i)
		GUIWndSetVisible(_SkillItemHandle,false)
		local _SkillBtn = GUIWndFindWindow(RoleSkill.WndHandle, "SkillBtn"..i)
		GUIWndSetVisible(_SkillBtn,false)
		local _ShulianBackImage = GUIWndFindWindow(RoleSkill.WndHandle, "SkillProficiencyBackImg"..i)
		GUIWndSetVisible(_ShulianBackImage,false)
		local _NameHandle = GUIWndFindWindow(RoleSkill.WndHandle, "SkillNameEdit"..i)
		EditSetText(_NameHandle,nil,"")
		local _LevelHandle = GUIWndFindWindow(RoleSkill.WndHandle, "SkillLevelEdit"..i)
		EditSetText(_LevelHandle,nil,"")
		local _ShulianImage = GUIWndFindWindow(RoleSkill.WndHandle, "SkillProficiencyImg"..i)
		GUIWndSetVisible(_ShulianImage,false)
		local _GUIHandle = GUIWndFindWindow(RoleSkill.WndHandle, "SkillProficiencyEdit"..i)
		EditSetText(_GUIHandle,nil, "")]]
		local _Handle = GUIWndFindWindow(RoleSkill.WndHandle, "ItemCell"..i)
		if _Handle ~= 0 then
			GUIWndSetVisible(_Handle,false)
		end
	end
end
function RoleSkill.wndClose()
	RoleSkill.Open = false
end
RoleSkill.main()