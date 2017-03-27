FamilyMember_FamilyListWnd = {}

local color = {}
color.text1 = GUI:MakeARGB(255,243,185,117)
color.text2 = GUI:MakeARGB(255,198,192,163)
color.number = GUI:MakeARGB(255,55,181,111)
function FamilyMember_FamilyListWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()
	local defaultOffsetX = (_DeviceSizeX - 1069)/2
	local defaultOffsetY = 65
	--大背景
	_Parent = GUI:WndCreateWnd(_Parent,"FamilyMember_FamilyListWnd",0,0,0)
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
		GUI:EditSetTextM(_GUIHandle,"行会列表")
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
		FamilyMember_FamilyListWnd.ClipWndHandle = _GUIHandle
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
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMember_FamilyListWnd.Close")
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


	FamilyMember_FamilyListWnd.UIInit(_Parent)
end

--UI Logic Code Start
FamilyMember_FamilyListWnd.nowItemIndex = 0
FamilyMember_FamilyListWnd.nowHandle = 0

function FamilyMember_FamilyListWnd.UIInit(_Handle)
	--if 0 ~= GameMainBar.WndHandle then
		--GUI:WndSetVisible(GameMainBar.WndHandle, false)
	--end
	FamilyMember_FamilyListWnd._wnd = _Handle
	CL:GetFamilyList(0, 50, "FamilyMember_FamilyListWnd_获取行会列表","FamilyMember_FamilyListWnd.getFamilyList")
end

function FamilyMember_FamilyListWnd.getFamilyList()
	--msg("FamilyMember_FamilyListWnd.getFamilyList")
	--FamilyMember_FamilyListWnd.ListTotalNum = LuaParam[1]		--所有行会数量
	--FamilyMember_FamilyListWnd.ListFirstIndex = LuaParam[2]	--当前起始序号
	--FamilyMember_FamilyListWnd.ListNum = LuaParam[3]			--本页数量
	FamilyMember_FamilyListWnd.FamilyList = {}
	FamilyMember_FamilyListWnd.FamilyList = LuaParam[4]	--列表数据
	local tbl = {}
	for i = 1, #FamilyMember_FamilyListWnd.FamilyList do
		FamilyMember_FamilyListWnd.FamilyList[i] = FamilyMember_FamilyListWnd.FamilyList[i]
		if UI:Lua_GUID2Str(FamilyMember_FamilyListWnd.FamilyList[i][5]) then
			tbl[i] = LuaRet
		end
	end
	--行会经验、行会等级 行会宣言 从服务端获取
	UI:Lua_SubmitForm("行会", "sendGuildListData", serialize(tbl).."#".."FamilyMember_FamilyListWnd")
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

function FamilyMember_FamilyListWnd.getData(data)
	--msg("FamilyMember_FamilyListWnd.getData")
	for i = 1,#FamilyMember_FamilyListWnd.FamilyList do
		if UI:Lua_GUID2Str(FamilyMember_FamilyListWnd.FamilyList[i][5]) then
			local cGuid = LuaRet
			FamilyMember_FamilyListWnd.FamilyList[i][6] = data[cGuid][1] --行会等级
			FamilyMember_FamilyListWnd.FamilyList[i][7] = data[cGuid][2] --行会宣言
			FamilyMember_FamilyListWnd.FamilyList[i][8] = data[cGuid][3] --行会经验
			FamilyMember_FamilyListWnd.FamilyList[i][9] = data[cGuid][4] --行会创建时间
		end
		
	end
	table.sort(FamilyMember_FamilyListWnd.FamilyList, compare) --排序
	FamilyMember_FamilyListWnd.fillPageWnd()--填充界面
end

function FamilyMember_FamilyListWnd.fillPageWnd()
	local index, familyGUID_ = 0, {}
	if FamilyMember_FamilyListWnd.ClipWndHandle ~= nil then
		GUI:WndDlgClear(FamilyMember_FamilyListWnd.ClipWndHandle)
	end
	for i = 1, #FamilyMember_FamilyListWnd.FamilyList do
		local intervalY = 45
		local indexStr = tostring(i - 1)
		if FamilyMember_FamilyListWnd.FamilyList[i] then
			if FamilyMember_FamilyListWnd.ClipWndHandle ~= nil then
				local _GUIHandle = GUI:WndCreateWnd(FamilyMember_FamilyListWnd.ClipWndHandle,"familyBtn"..i, 0, 140, 16 + intervalY * (i - 1))
				if _GUIHandle ~= 0 then
					GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMember_FamilyListWnd.selectListItem")
					GUI:WndSetParam(_GUIHandle, i)
					GUI:WndSetSizeM(_GUIHandle, 578, 35)
					local _Parent = _GUIHandle

					_GUIHandle = GUI:ImageCreate(_Parent, "backImg", 1852100054, 0, 0)
					if _GUIHandle ~= 0 then
						GUI:WndSetVisible(_GUIHandle, false)
						GUI:WndSetSizeM(_GUIHandle, 578, 35)
					end

					_GUIHandle = GUI:EditCreate(_Parent,"nameEdit",13,6,160,24)
					if _GUIHandle ~= 0 then
						GUI:EditSetTextM(_GUIHandle, FamilyMember_FamilyListWnd.FamilyList[i][1])
						GUI:WndSetEnableM(_GUIHandle, false)
						GUI:EditSetFontCenter(_GUIHandle)
					end

					_GUIHandle = GUI:EditCreate(_Parent,"levelEdit",200,6,100,24)
					if _GUIHandle ~= 0 then
						GUI:EditSetTextM(_GUIHandle, tostring(FamilyMember_FamilyListWnd.FamilyList[i][6]))
						GUI:EditSetTextColor(_GUIHandle, color.text2)
						GUI:WndSetEnableM(_GUIHandle, false)
						GUI:EditSetFontCenter(_GUIHandle)
					end

					_GUIHandle = GUI:EditCreate(_Parent,"memberNumEdit"..i,300,6,80,24)
					if _GUIHandle ~= 0 then
						GUI:EditSetTextM(_GUIHandle , tostring(FamilyMember_FamilyListWnd.FamilyList[i][3]))
						GUI:WndSetEnableM(_GUIHandle, false)
						GUI:EditSetTextColor(_GUIHandle, color.number)
						GUI:EditSetFontCenter(_GUIHandle)
					end

					_GUIHandle = GUI:EditCreate(_Parent,"leaderEdit"..i,415,6,150,24)
					if _GUIHandle ~= 0 then
						GUI:EditSetTextM(_GUIHandle, FamilyMember_FamilyListWnd.FamilyList[i][2])
						GUI:EditSetTextColor(_GUIHandle, color.text2)
						GUI:WndSetEnableM(_GUIHandle, false)
						GUI:EditSetFontCenter(_GUIHandle)
					end
				end
			end
		end
	end
end

function FamilyMember_FamilyListWnd.selectListItem(_Handle)
	local _GUIHandle = 0
	if 0 ~= FamilyMember_FamilyListWnd.nowHandle then
		_GUIHandle = GUI:WndFindWindow(FamilyMember_FamilyListWnd.nowHandle, "backImg")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end
	FamilyMember_FamilyListWnd.nowHandle = _Handle
	FamilyMember_FamilyListWnd.nowItemIndex = tonumber(GUI:WndGetParam(_Handle))
	_GUIHandle = GUI:WndFindWindow(_Handle, "backImg")
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, true)
	end
	_GUIHandle = GUI:WndFindWindow(FamilyMember_FamilyListWnd._wnd, "content")
	if _GUIHandle ~= 0 then
		if "" == FamilyMember_FamilyListWnd.FamilyList[FamilyMember_FamilyListWnd.nowItemIndex][7] then
			GUI:EditSetTextM(_GUIHandle, "无")
		else
			GUI:EditSetTextM(_GUIHandle, FamilyMember_FamilyListWnd.FamilyList[FamilyMember_FamilyListWnd.nowItemIndex][7])
		end
	end
end

function FamilyMember_FamilyListWnd.Close(_Handle)
	GUI:WndClose(FamilyMember_FamilyListWnd._wnd)
end

FamilyMember_FamilyListWnd.main()