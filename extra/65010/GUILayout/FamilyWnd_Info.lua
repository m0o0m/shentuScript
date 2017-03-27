FamilyWnd_Info = {}
function FamilyWnd_Info.main()
	local _Parent = LuaGlobal["AttachPartent"]
	_Parent = GUI:WndCreateWnd(_Parent, "FamilyWnd_Info", 1802100002, 30, 96)
	if _Parent ~= 0 then
		GUI:WndRegistScript(_Parent, RDWndBaseCL_wnd_close, "FamilyWnd_Info.wndClose")
	end
	
	local _GUIHandle = 0
	_GUIHandle = GUI:EditCreate(_Parent,"familyNoticeTitle",102,7,129,19)
	if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetTextM(_GUIHandle,"行会公告")
	end	
	
	_GUIHandle = GUI:EditCreate(_Parent,"familyNoticeRE",7,30,235,333)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetMaxCharNum(_GUIHandle,360)
		GUI:EditSetMultiLineEdit(_GUIHandle,true)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"editFamilyNoticeBtn",1800000150,162,368)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "FamilyWnd_Info.editFamilyNoticeBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"编辑公告")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,84, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"familyInfoTitle",427,7,129,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetTextM(_GUIHandle,"行会信息")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"myPostion_f",279,64,66,21)
	if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294939396)
        GUI:EditSetTextM(_GUIHandle,"我的职位:")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"myPositionEdit",337,64,66,21)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4280656732)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"quitFamilyBtn",1800000150,528,37)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "FamilyWnd_Info.quitFamilyBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"退出行会")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,84, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4294901760)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"dissolveFamilyBtn",1800000150,528,76)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "FamilyWnd_Info.dissolveFamilyBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"解散行会")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,84, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4294901760)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"familyMoney_f",280,135,66,21)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294939396)
        GUI:EditSetTextM(_GUIHandle,"行会财富:")
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"goldImg",1806600015,335,137)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"familyMoneyEdit",357,135,89,21)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
	end
	
    _GUIHandle = GUI:EditCreate(_Parent,"familyMon_f",399,135,66,21)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294939396)
        GUI:EditSetTextM(_GUIHandle,"万")
	end
	
    _GUIHandle = GUI:ImageCreate(_Parent,"backimage",1801100033,436,136)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 26)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
    
    _GUIHandle = GUI:ImageCreate(_Parent,"goldImg1",1806600015,440,140)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMoneyEdit1",457,138,40,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"0")
        GUI:EditSetBNumber(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMon1_f",499,138,66,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294939396)
        GUI:EditSetTextM(_GUIHandle,"万")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"donateGold",1800000150,528,132)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Info.donateFamilyBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"捐献金币")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,84, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvl_f",280,186,66,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294939396)
        GUI:EditSetTextM(_GUIHandle,"行会等级:")
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit",337,186,66,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4280656732)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"downgradeFamilyBtn",1800000150,528,180)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Info.DownGradeAlert")
        GUI:WndSetTextM(_GUIHandle,"降级行会")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,84, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"familyBuff_thisLvlRE",286,229,165,126)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
	end
	
    _GUIHandle = GUI:RichEditCreate(_Parent,"familyBuff_nextLvlRE",457,229,165,126)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
	end
	
    _GUIHandle = GUI:ButtonCreate(_Parent,"upgradeFamilyBtn",1800000150,420,180)
	if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Info.upgradeFamilyBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"升级行会")
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,84, 32)
		GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"tipsImg",1800000297,287,373)
	if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,27, 30)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
    _GUIHandle = GUI:EditCreate(_Parent,"tipsEdit",315,376,55,20)
	if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"会长可以使用元宝升级行会。升级行会可以获得专属行会BUFF。")
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"行会说明")
	end
	FamilyWnd_Info.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyWnd_Info.UIInit(_Handle)
	FamilyWnd_Info._wnd = _Handle
	FamilyWnd._nowPage = _Handle
	FamilyWnd_Info.ClickedBtn = 0
	
	handle = GetWindow(_Handle, "upgradeFamilyBtn")
	if handle ~= 0 then
		local str = "升级2级行会消耗500万公会财富 "
		str = str .. "升级3级行会消耗1000万公会财富"
		str = str .. "升级4级行会消耗1500万公会财富"
		str = str .. "升级5级行会消耗2000万公会财富"
		str = str .. "升级6级行会消耗2500万公会财富"
		GUI:WndSetHintWidth(handle, 180)
		GUI:WndSetHint(handle, str)
	end
	handle = GetWindow(_Handle, "downgradeFamilyBtn")
	if handle ~= 0 then
		GUI:WndSetHint(handle, "降级行会没有任何消耗！")
	end

	local commonUI_ = {
		"upgradeFamilyBtn",
		"downgradeFamilyBtn",
		"quitFamilyBtn",
		"dissolveFamilyBtn",
		"familyNoticeRE",
		"myPositionEdit",
		"familyLvlEdit",
		"familyMoneyEdit",
		"familyBuff_thisLvlRE",
		"familyBuff_nextLvlRE",
		"editFamilyNoticeBtn",
	} 
	local _GUIHandle = 0
	for i, v in pairs(commonUI_) do
		_GUIHandle = GUI:WndFindChildM(_Handle, v)
		if _GUIHandle ~= 0 then
			FamilyWnd_Info[("_"..v)] = _GUIHandle
		end 
	end

	_GUIHandle = GUI:WndFindChildM(FamilyWnd_Info._wnd, "tipsImg")
	if _GUIHandle ~= 0 then
		local txt = "行会说明：                                        "
		txt = txt.."1.行会升级后公会属性效果增强                      "
		txt = txt.."2.行会升级后容纳人数减少                          "
		txt = txt.."3.行会升级需要消耗行会财富，降级不会消耗行会财富  "
		txt = txt.."4.连续14天无行会成员在线，行会自动解散            "
		txt = txt.."5.行会解散后仓库装备以及贡献将会清空"
		GUI:WndSetHintWidth(_GUIHandle, 300)
		GUI:WndSetHint(_GUIHandle, txt)
	end
	
	CL:FamilyInfoRequest(1,"FamilyWnd_Info_行会公告", "FamilyWnd_Info.getFamilyNotice")
	
	UI:Lua_GUID2Str(FamilyWnd.guid)
	UI:Lua_SubmitForm("行会", "getFamilyInfo", LuaRet)
	FamilyWnd_Info.updataPage()
end

function FamilyWnd_Info.updataPage()
	if FamilyWnd.selfTitleID ~= 1 then
		GUI:WndSetVisible(FamilyWnd_Info._dissolveFamilyBtn, false)
		GUI:WndSetVisible(FamilyWnd_Info._upgradeFamilyBtn, false)
		GUI:WndSetVisible(FamilyWnd_Info._downgradeFamilyBtn, false)
		GUI:WndSetVisible(FamilyWnd_Info._editFamilyNoticeBtn, false)
	end
	
	if FamilyWnd.familyTitle_ then
		for i = 1, #FamilyWnd.familyTitle_ do
			if FamilyWnd.selfTitleID == FamilyWnd.familyTitle_[i][1] then
				GUI:EditSetTextM(FamilyWnd_Info._myPositionEdit, FamilyWnd.familyTitle_[i][2])
				break
			end
		end
	end
	
	if FamilyWnd.selfTitleID == 1 then
		GUI:WndSetEnableM(FamilyWnd_Info._editFamilyNoticeBtn, true)
		GUI:WndSetVisible(FamilyWnd_Info._quitFamilyBtn, false)
	else
		GUI:WndSetEnableM(FamilyWnd_Info._editFamilyNoticeBtn, false)
		GUI:WndSetVisible(FamilyWnd_Info._quitFamilyBtn, true)
	end

end

function FamilyWnd_Info.getFamilyNotice()
	GUI:EditSetTextM(FamilyWnd_Info._familyNoticeRE, LuaParam[1])
end

function FamilyWnd_Info.editFamilyNoticeBtn_LC(_Handle)
	if GUI:WndGetEnableM(FamilyWnd_Info._familyNoticeRE) then
		local str = GUI:EditGetTextM(FamilyWnd_Info._familyNoticeRE)
		if CL:FamilyNoticeConfirm(str,"FamilyWnd_Info_行会公告", "FamilyWnd_Info.getFamilyNotice") then
			GUI:WndSetEnableM(FamilyWnd_Info._familyNoticeRE, false)
			GUI:WndSetTextM(_Handle, "编辑公告")
			GUI:EditSetCanEdit(FamilyWnd_Info._familyNoticeRE,false)
		end
	else
		GUI:WndSetEnableM(FamilyWnd_Info._familyNoticeRE, true)
		GUI:WndSetTextM(_Handle, "确认编辑")
		GUI:EditSetCanEdit(FamilyWnd_Info._familyNoticeRE,true)
		WndSetFocusM(FamilyWnd_Info._familyNoticeRE)
	end
end

function FamilyWnd_Info.quitFamilyBtn_LC()
	luaMsgBox.new("退出行会", "您确定要退出当前行会？", {"是", "否"}, {"FamilyWnd_Info.quitCurrentFamily", 0}, _handle)
end

function FamilyWnd_Info.quitCurrentFamily(_handle)
	CL:FamilyQuitRequest("","FamilyWnd_Info_quit","FamilyWnd_Info.quitFamilyCB")
	local handle = GUI:WndGetParentM(_handle)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

function FamilyWnd_Info.quitFamilyCB()
	GUI:WndClose(FamilyWnd._wnd)
end

function FamilyWnd_Info.dismissFamilyCB()
	GUI:WndClose(FamilyWnd._wnd)
end

function FamilyWnd_Info.dissolveFamilyBtn_LC()
	luaMsgBox.new("解散行会", "您确定要解散当前行会？", {"是", "否"}, {"FamilyWnd_Info.disssolveCurrentFamily", 0}, _handle)
end

function FamilyWnd_Info.DownGradeAlert(handle)
	FamilyWnd_Info.ClickedBtn = handle
	luaMsgBox.new("降级行会", "您确定要降低当前行会等级？", {"是", "否"}, {"FamilyWnd_Info.downgradeFamilyBtn_LC", 0}, _handle)
end

function FamilyWnd_Info.disssolveCurrentFamily(_handle)
	CL:FamilyDismiss("FamilyWnd_Info_解散行会","FamilyWnd_Info.dismissFamilyCB")
	local handle = GUI:WndGetParentM(_handle)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

function FamilyWnd_Info.upgradeFamilyBtn_LC(_handle)
	FamilyWnd_Info.ClickedBtn = handle
	UI:Lua_GUID2Str(FamilyWnd.guid)
	UI:Lua_SubmitForm("行会","upgradeFamilyLevel", LuaRet)
end

function FamilyWnd_Info.downgradeFamilyBtn_LC(_handle)
	local handle = GUI:WndGetParentM(_handle)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
	UI:Lua_GUID2Str(FamilyWnd.guid)
	UI:Lua_SubmitForm("行会","downgradeFamilyLevel", LuaRet)
end

function FamilyWnd_Info.donateFamilyBtn_LC()
	FamilyWnd_Info.ClickedBtn = handle
	local handle = GetWindow(nil,"FamilyWnd,FamilyWnd_Info,familyMoneyEdit1")
	local moneyStr = GUI:EditGetTextM(handle)
	UI:Lua_SubmitForm("行会","donateMoney",moneyStr)
end

function FamilyWnd_Info.getBuffStr(lvl)
	local reStr = ""
	local buffBaseNum = 163
	local buffInfo_ = {
		{"物理攻击", {11, 10}, {}},
		{"道术攻击", {13, 12}, {}},
		{"魔法攻击", {15, 14}, {}},
		{"", 0, 0},
	}
	local att = 0
	for i = 10, 28, 2 do
		CL:GetBuffProp(buffBaseNum + lvl, i)
		att = LuaRet
		for j ,v in pairs(buffInfo_) do
			if type(v[2]) == "table" then
				for k = 1, 2 do
					if v[2][k] == att then
						CL:GetBuffProp(buffBaseNum + lvl, i+1)
						if LuaRet then
							buffInfo_[j][3][k] = LuaRet
						end
					end
				end
			else
				if v[2] == att then
					CL:GetBuffProp(buffBaseNum + lvl, i+1)
					if LuaRet then
						buffInfo_[j][3] = LuaRet
					end
				end
			end
		end
	end
	
	for i, v in pairs(buffInfo_) do
		if v[3] ~= {} and v[3] ~= 0 and v[1] and v[3][1] and v[3][2] then
			if type(v[3]) == "table" then
				reStr = reStr.. v[1].."  "..v[3][1].." - "..v[3][2].."\n\n"
			else
				reStr = reStr..v[1].."  "..v[3].."\n\n"
			end
		end
	end
	return reStr
end

function FamilyWnd_Info.wndClose()
	local wnd = GUI:WndFindWindow(0, "FamilyWnd_Info") 
	if wnd == 0 then
--		UnRegisterUIEvent(LUA_EVENT_FAMILYNOTICE, "FamilyWnd_Info_行会公告")
		FamilyWnd_Info = nil
	end
end

function update_wealth(data)
	if not FamilyWnd_Info then return end
	
	FamilyWnd_Info.wealth = data
	local handle = GetWindow(nil,"FamilyWnd,FamilyWnd_Info,familyMoneyEdit")
	if handle ~= 0 then
		GUI:EditSetTextM(handle,tostring(FamilyWnd_Info.wealth))
	end
end	

function update_level(data)
	if not FamilyWnd_Info then return end
	
	data = tonumber(data)
	FamilyWnd_Info.level = data
	local handle = GetWindow(nil,"FamilyWnd,FamilyWnd_Info,familyLvlEdit")
	if handle ~= 0 then
		GUI:EditSetTextM(handle,tostring(FamilyWnd_Info.level))
	end

	if data > 0 then 
		GUI:RichEditClear(FamilyWnd_Info._familyBuff_thisLvlRE)
		GUI:RichEditClear(FamilyWnd_Info._familyBuff_nextLvlRE)
		GUI:RichEditAppendString(FamilyWnd_Info._familyBuff_thisLvlRE, "\n#COLORCOLOR_YELLOW#".."当前等级属性".."#COLORCOLOREND##COLORCOLOR_WHITE#\n\n"..FamilyWnd_Info.getBuffStr(data))
		GUI:RichEditAppendString(FamilyWnd_Info._familyBuff_nextLvlRE, "\n#COLORCOLOR_YELLOW#".."下一等级属性:".."#COLORCOLOREND##COLORCOLOR_WHITE#\n\n"..FamilyWnd_Info.getBuffStr(data+1))
	end
end	

function FamilyWnd_Info.AlertMessage(str)
	if FamilyWnd_Info.ClickedBtn ~= 0 then
		local color = MakeARGB(255, 255, 0, 0)
		window_msg_up(FamilyWnd_Info.ClickedBtn, str, -68, -30, 40, color, 2)
		--window_msg_up(handle , str, 58, -16, 70, color, 3)
	end
end

FamilyWnd_Info.main()