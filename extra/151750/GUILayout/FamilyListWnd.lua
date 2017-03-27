FamilyListWnd = {}

local color = {}
color.text1 = GUI:MakeARGB(255,243,185,117)
color.text2 = GUI:MakeARGB(255,198,192,163)
color.number = GUI:MakeARGB(255,55,181,111)
function FamilyListWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()
	local defaultOffsetX = (_DeviceSizeX - 1069)/2
	local defaultOffsetY = 65
	--大背景
	_Parent = GUI:WndCreateWnd(_Parent,"FamilyListWnd",0,0,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent, _DeviceSizeX, _DeviceSizeY)
		GUI:ImageSetAroundImage(_Parent, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
	end

	local offset_X = (_DeviceSizeX - 1070)/2
	local offset_Y = 65
	--第二层背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage0", 1852100037, offset_X, offset_Y)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 1070, 432)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:ImageSetAroundImage(_GUIHandle, 1850300025, 1850300027, 1850300031, 1850300033, 1850300029, 1850300026, 1850300032, 1850300028, 1850300030)
	end
	--左边背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage1", 0, offset_X + 1 , offset_Y + 1)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,676, 430)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
	end


	_GUIHandle = GUI:ImageCreate(_Parent,"titleImg1", 1850100038, offset_X + 362, 20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle,97, 32)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"titleImg2", 1850100039, offset_X + 598, 20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle,97, 32)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"StaticEdit1",offset_X + 486, 23,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"加入行会")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage2", 1852100067, offset_X + 693, offset_Y + 1)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,376, 430)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage3", 0, offset_X + 14, offset_Y + 50)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,649, 366)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029,1850600026, 1850600032, 1850600028, 1850600030)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage4", 0, offset_X + 711, offset_Y + 72)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,339, 223)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600034,1850600036,1850600040,1850600042,1850600038,1850600035,1850600041,1850600037,1850600039)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"titleBack",1852100036,offset_X + 726, offset_Y + 15)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,305, 40)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:WndCreateWnd(_Parent,"FamilyListClipWnd", 0, offset_X - 80, 117)
	if 0 ~=_GUIHandle then
		GUI:WndSetSizeM(_GUIHandle,720, 362)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
		FamilyListWnd.ClipWndHandle = _GUIHandle
	end
	_GUIHandle = GUI:EditCreate(_Parent,"StaticEdit2",offset_X + 843, 85 ,100,30)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"行会宣言")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"content",offset_X + 730,154,300,190)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text2)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetMultiLineEdit(_GUIHandle, true)
		
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1850000423,_DeviceSizeX - 70, 8)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyListWnd.Close")
		GUI:WndSetSizeM(_GUIHandle,52, 52)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"levelEdit",292 + offset_X,80,106,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"等级")
		GUI:EditSetTextColor(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"nameEdit", 135 + offset_X,80,100,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"名称")
		GUI:EditSetTextColor(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"leaderEdit",536 + offset_X,80,80,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"会长")
		GUI:EditSetTextColor(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"numEdit", 384 + offset_X,80,84,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"人数")
		GUI:EditSetTextColor(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"cancelBtn",1851500004, offset_X + 730, 400)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,137, 47)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyListWnd.cancelJoinReq")
		GUI:WndSetTextM(_GUIHandle,"取消申请")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn",1851500004, offset_X + 730, 400)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyListWnd.sendJoinReq")
		GUI:WndSetTextM(_GUIHandle,"申请加入")
		GUI:WndSetTextColorM(_GUIHandle, color.text1)
		GUI:WndSetSizeM(_GUIHandle,137, 47)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"createFamilyBtn",1851500004, offset_X + 899, 400)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyListWnd.showCreateWnd")
		GUI:WndSetTextM(_GUIHandle,"创建行会")
		GUI:WndSetSizeM(_GUIHandle,137, 47)
		GUI:WndSetTextColorM(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:WndCreateWnd(_Parent,"banWnd", 0, -defaultOffsetX, -65)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyListWnd.showCreateWnd")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle, _DeviceSizeX, _DeviceSizeY)
		FamilyListWnd.hBanWnd = _GUIHandle
	end

	_GUIHandle = GUI:WndCreateWnd(_Parent,"createWnd", 1850600016, (1069 - 507)/2 + offset_X, 100)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle, 507, 319)
		FamilyListWnd.hCreateWnd = _GUIHandle

		_GUIHandle = GUI:EditCreate(FamilyListWnd.hCreateWnd,"titleText", 212,20,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"创建行会")
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(FamilyListWnd.hCreateWnd,"nameText",86,85,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"行会名称：")
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(FamilyListWnd.hCreateWnd,"fundText",86,146,100,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"创建消耗：")
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(FamilyListWnd.hCreateWnd,"editBack1",0,183,73)
		if _GUIHandle ~= 0 then
			GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056, 1850600053, 1850600059, 1850600055, 1850600057)
			GUI:WndSetSizeM(_GUIHandle,227, 50)
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(FamilyListWnd.hCreateWnd,"nameEdit",220,85,160,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.text2)
			GUI:EditSetMaxCharNum(_GUIHandle, 16)
		end

		_GUIHandle = GUI:ImageCreate(FamilyListWnd.hCreateWnd,"editBack2",0,183,132)
		if _GUIHandle ~= 0 then
			GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056, 1850600053, 1850600059, 1850600055, 1850600057)
			GUI:WndSetSizeM(_GUIHandle,227, 50)
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(FamilyListWnd.hCreateWnd,"ybIcon", 1851800016,197,150)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetSizeM(_GUIHandle,31, 17)
		end

		_GUIHandle = GUI:EditCreate(FamilyListWnd.hCreateWnd,"num",235,146,160,24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.number)
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextM(_GUIHandle,"1000")
		end

		_GUIHandle = GUI:ButtonCreate(FamilyListWnd.hCreateWnd,"createBtn",1850000307,323,220)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyListWnd.createRequest")
			GUI:WndSetTextM(_GUIHandle,"创建")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
		end

		_GUIHandle = GUI:ButtonCreate(FamilyListWnd.hCreateWnd,"cancelBtn",1850000307,80,220)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyListWnd.showCreateWnd")
			GUI:WndSetTextM(_GUIHandle,"取消")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
		end
	end

	FamilyListWnd.UIInit(_Parent)
end

--UI Logic Code Start
FamilyListWnd.nowItemIndex = 0
FamilyListWnd.nowHandle = 0

function FamilyListWnd.UIInit(_Handle)
	if GUI:WndGetVisible(GameMainBar.WndHandle) then
		GUI:WndSetVisible(GameMainBar.WndHandle, false)
	end
	FamilyListWnd._wnd = _Handle
	CL:GetFamilyList(0, 50, "FamilyListWnd_获取行会列表", "FamilyListWnd.getFamilyList")
end

function FamilyListWnd.getFamilyList()
	--msg("FamilyListWnd.getFamilyList")
	--FamilyListWnd.ListTotalNum = LuaParam[1]		--所有行会数量
	--FamilyListWnd.ListFirstIndex = LuaParam[2]	--当前起始序号
	--FamilyListWnd.ListNum = LuaParam[3]			--本页数量
	FamilyListWnd.FamilyList = {}
	FamilyListWnd.FamilyList = LuaParam[4]			--列表数据
	local tbl = {}
	for i = 1, #FamilyListWnd.FamilyList do
		FamilyListWnd.FamilyList[i] = FamilyListWnd.FamilyList[i]
		if UI:Lua_GUID2Str(FamilyListWnd.FamilyList[i][5]) then
			tbl[i] = LuaRet
		end
	end
	--行会经验、行会等级 行会宣言 从服务端获取
	UI:Lua_SubmitForm("行会", "sendGuildListData", serialize(tbl).."#".."FamilyListWnd")
end

--行会排序优先级：
--1.行会等级高到低
--2.行会经验高到低
--3.行会人数多到少
--4.行会创建时间
local function compare(a, b)
	if a[6] > b[6] then
		return true
	elseif a[6] < b[6] then
		return false
	else
		if a[8] > b[8]then
			return true
		elseif a[8] < b[8] then
			return false
		else
			if a[3] > b[3] then
				return true
			elseif a[3] < b[3] then
				return false
			else
				return a[9] < b[9]
			end
		end
	end
end

function FamilyListWnd.getData(data)
	--msg("FamilyListWnd.getData")
	for i = 1,#FamilyListWnd.FamilyList do
		if UI:Lua_GUID2Str(FamilyListWnd.FamilyList[i][5]) then
			local cGuid = LuaRet
			FamilyListWnd.FamilyList[i][6] = data[cGuid][1] --行会等级
			FamilyListWnd.FamilyList[i][7] = data[cGuid][2] --行会宣言
			FamilyListWnd.FamilyList[i][8] = data[cGuid][3] --行会经验
			FamilyListWnd.FamilyList[i][9] = data[cGuid][4] --行会创建时间
		end
		
	end
	table.sort(FamilyListWnd.FamilyList, compare) --排序
	FamilyListWnd.fillPageWnd()--填充界面
end

function FamilyListWnd.fillPageWnd()
	local index, familyGUID_ = 0, {}
	if FamilyListWnd.ClipWndHandle ~= nil then
		GUI:WndDlgClear(FamilyListWnd.ClipWndHandle)
	end
	for i = 1, #FamilyListWnd.FamilyList do
		local intervalY = 45
		local indexStr = tostring(i - 1)
		if FamilyListWnd.FamilyList[i] then
			if FamilyListWnd.ClipWndHandle ~= nil then
				local _GUIHandle = GUI:WndCreateWnd(FamilyListWnd.ClipWndHandle,"familyBtn"..i, 0, 140, 16 + intervalY * (i - 1))
				if _GUIHandle ~= 0 then
					GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyListWnd.selectListItem")
					GUI:WndSetParam(_GUIHandle, i)
					GUI:WndSetSizeM(_GUIHandle, 578, 35)
					local _Parent = _GUIHandle

					_GUIHandle = GUI:ImageCreate(_Parent, "backImg", 1852100054, 0, 0)
					if _GUIHandle ~= 0 then
						GUI:WndSetVisible(_GUIHandle, false)
						GUI:WndSetSizeM(_GUIHandle, 578, 35)
					end

					_GUIHandle = GUI:ImageCreate(_Parent, "isApplied", 1852100055, -42, 0)
					if _GUIHandle ~= 0 then
						GUI:WndSetEnableM(_GUIHandle, false)
						if 0 == FamilyListWnd.FamilyList[i][4] then
							GUI:WndSetVisible(_GUIHandle, false)
						else
							GUI:WndSetVisible(_GUIHandle, true)
						end
						GUI:WndSetSizeM(_GUIHandle, 33, 34)
					end

					_GUIHandle = GUI:EditCreate(_Parent,"nameEdit",13,6,160,24)
					if _GUIHandle ~= 0 then
						GUI:EditSetTextM(_GUIHandle, FamilyListWnd.FamilyList[i][1])
						GUI:WndSetEnableM(_GUIHandle, false)
						GUI:EditSetFontCenter(_GUIHandle)
					end

					_GUIHandle = GUI:EditCreate(_Parent,"levelEdit",200,6,100,24)
					if _GUIHandle ~= 0 then
						GUI:EditSetTextM(_GUIHandle, tostring(FamilyListWnd.FamilyList[i][6]))
						GUI:EditSetTextColor(_GUIHandle, color.text2)
						GUI:WndSetEnableM(_GUIHandle, false)
						GUI:EditSetFontCenter(_GUIHandle)
					end

					_GUIHandle = GUI:EditCreate(_Parent,"memberNumEdit"..i,300,6,80,24)
					if _GUIHandle ~= 0 then
						GUI:EditSetTextM(_GUIHandle , tostring(FamilyListWnd.FamilyList[i][3]))
						GUI:WndSetEnableM(_GUIHandle, false)
						GUI:EditSetTextColor(_GUIHandle, color.number)
						GUI:EditSetFontCenter(_GUIHandle)
					end

					_GUIHandle = GUI:EditCreate(_Parent,"leaderEdit"..i,415,6,150,24)
					if _GUIHandle ~= 0 then
						GUI:EditSetTextM(_GUIHandle, FamilyListWnd.FamilyList[i][2])
						GUI:EditSetTextColor(_GUIHandle, color.text2)
						GUI:WndSetEnableM(_GUIHandle, false)
						GUI:EditSetFontCenter(_GUIHandle)
					end
				end
			end
		end
	end
end

function FamilyListWnd.selectListItem(_Handle)
	local _GUIHandle = 0
	if 0 ~= FamilyListWnd.nowHandle then
		_GUIHandle = GUI:WndFindWindow(FamilyListWnd.nowHandle, "backImg")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end
	FamilyListWnd.nowHandle = _Handle
	FamilyListWnd.nowItemIndex = tonumber(GUI:WndGetParam(_Handle))
	_GUIHandle = GUI:WndFindWindow(_Handle, "backImg")
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, true)
	end
	_GUIHandle = GUI:WndFindWindow(FamilyListWnd._wnd, "content")
	--msg(FamilyListWnd.FamilyList[FamilyListWnd.nowItemIndex][1])
	if _GUIHandle ~= 0 then
		if "" == FamilyListWnd.FamilyList[FamilyListWnd.nowItemIndex][7] then
			GUI:EditSetTextM(_GUIHandle, "无")
		else
			GUI:EditSetTextM(_GUIHandle, FamilyListWnd.FamilyList[FamilyListWnd.nowItemIndex][7])
		end
	end
	if not FamilyListWnd.ifHasGuild then
		if 0 == FamilyListWnd.FamilyList[FamilyListWnd.nowItemIndex][4] then
			_GUIHandle = GUI:WndFindWindow(FamilyListWnd._wnd, "joinBtn")
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, true)
			end
			_GUIHandle = GUI:WndFindWindow(FamilyListWnd._wnd, "cancelBtn")
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, false)
			end
		else
			_GUIHandle = GUI:WndFindWindow(FamilyListWnd._wnd, "joinBtn")
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, false)
			end
			_GUIHandle = GUI:WndFindWindow(FamilyListWnd._wnd, "cancelBtn")
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, true)
			end
		end
	end
end

function FamilyListWnd.cancelJoinReq()
	local index = FamilyListWnd.nowItemIndex
	if CL:FamilyCancelJoinReq(FamilyListWnd.FamilyList[index][5], "FamilyListWnd_取消申请", "") then
		FamilyListWnd.FamilyList[index][4] = 0
		local _GUIHandle = GUI:WndFindWindow(FamilyListWnd._wnd, "joinBtn")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, true)
		end
		_GUIHandle = GUI:WndFindWindow(FamilyListWnd._wnd, "cancelBtn")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
		end
		_GUIHandle = GUI:WndFindChildM(FamilyListWnd.ClipWndHandle, "familyBtn"..index)
		if _GUIHandle ~= 0 then
			_GUIHandle = GUI:WndFindChildM(_GUIHandle, "isApplied")
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, false)
			end
		end
	end
end


function FamilyListWnd.joinSucceeded()
	--自动加入成功 显示公会主界面
	FamilyListWnd.Close()
	--UI:Lua_OpenWindow(0, "FamilyWnd.lua")
	CL:OnFamilyWindow()
end

function FamilyListWnd.sendJoinReq(_Handle)
	if CL:AddDelayTask("FamilyListWnd.enableBtn()", 2000, 1) then
		GUI:WndSetEnableM(_Handle, false)
	end
	if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then
		if 70 > LuaRet then
			FamilyListWnd.msgBox("等级不足")
		else
			--服务端先判断有没有自动加入
			if 0 ~= FamilyListWnd.nowItemIndex then
				--UI:Lua_Log("申请行会请求")
				local index = FamilyListWnd.nowItemIndex
				local GUID = ""
				if UI:Lua_GUID2Str(FamilyListWnd.FamilyList[index][5]) then
					GUID = LuaRet
				end
				UI:Lua_SubmitForm("行会", "ifAutoJoinGuild", GUID.."#"..index)
			end
		end
	end
end

function FamilyListWnd.enableBtn()
	local _GUIHandle = GUI:WndFindWindow(FamilyListWnd._wnd, "joinBtn")
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, true)
	end
end

function FamilyListWnd.showCreateWnd()
	if not GUI:WndGetVisible(FamilyListWnd.hCreateWnd) then
		GUI:WndSetCanRevMsg(FamilyListWnd.ClipWndHandle, false)
		GUI:WndSetVisible(FamilyListWnd.hCreateWnd, true)
	else
		GUI:WndSetCanRevMsg(FamilyListWnd.ClipWndHandle, true)
		GUI:WndSetVisible(FamilyListWnd.hCreateWnd, false)
	end
end

function FamilyListWnd.createRequest()
	local _GUIHandle = GUI:WndFindWindow(FamilyListWnd.hCreateWnd, "nameEdit")
	if _GUIHandle ~= 0 then
		local str = GUI:EditGetTextM(_GUIHandle)
		if "" ~= str then
			UI:Lua_SubmitForm("行会", "GetFamilyName", str)
		end
	end
end

function FamilyListWnd.joinRequest(guildGuid, index)
	--申请入会
	local sGuildGuid = guildGuid --服务端行会GUID
	if UI:Lua_Str2GUID(guildGuid) then
		guildGuid = LuaRet
		if CL:FamilyJoinRequest(guildGuid) then
			--显示已申请图标
			local _GUIHandle = GUI:WndFindChildM(FamilyListWnd.ClipWndHandle, "familyBtn"..index)
			if _GUIHandle ~= 0 then
				_GUIHandle = GUI:WndFindChildM(_GUIHandle, "isApplied")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle, true)
				end
			end
			_GUIHandle = GUI:WndFindWindow(FamilyListWnd._wnd, "joinBtn")
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, false)
			end
			_GUIHandle = GUI:WndFindWindow(FamilyListWnd._wnd, "cancelBtn")
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, true)
			end
			UI:Lua_SubmitForm("行会", "recordAtk", serialize(sGuildGuid))
		end
	end
end

function FamilyListWnd.msgBox(str)
	MessageBox(0, str, nil, nil, false)
end

function FamilyListWnd.Close()
	if not GUI:WndGetVisible(GameMainBar.WndHandle) then
		GUI:WndSetVisible(GameMainBar.WndHandle, true)
	end
	CL:OnFamilyWindow()
end

function FamilyListWnd.delayOpenFamilyWnd()
	CL:AddDelayTask("CL:OnFamilyWindow()", 400, 1)
	CL:AddDelayTask("FamilyListWnd.delayOpenFamilyWnd2()", 500, 1)
end

function FamilyListWnd.delayOpenFamilyWnd2()
	if nil ~= FamilyWnd then
		if not GUI:WndGetVisible(FamilyWnd._wnd) then
			CL:OnFamilyWindow()
		end
	end
end


FamilyListWnd.main()