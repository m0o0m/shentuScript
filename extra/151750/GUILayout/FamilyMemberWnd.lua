FamilyMemberWnd = {}
FamilyMemberWnd.member_ = {}
FamilyMemberWnd.notice = ""
FamilyMemberWnd.nowIndex = 0
FamilyMemberWnd.nowHandle = 0
FamilyMemberWnd.nowChecked = 0
local color = {}
color.text1 = GUI:MakeARGB(255,243,185,117)
color.text2 = GUI:MakeARGB(255,198,192,163)
color.number = GUI:MakeARGB(255,55,181,111)
color.text_dark = GUI:MakeARGB(255,64,64,64)



function FamilyMemberWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()
	local defaultOffsetX = (_DeviceSizeX - 1069)/2
	local defaultOffsetY = 65
	_Parent = GUI:WndCreateWnd(_Parent, "FamilyMemberWnd", 0, defaultOffsetX, defaultOffsetY)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,1069, 65)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"bg1",1832800009,1,1)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006,1850400008,1850400012,1850400014,1850400010,1850400007,1850400013,1850400009,1850400011)
		GUI:WndSetSizeM(_GUIHandle,680, 536)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.hideMenu")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"bg2",1852100068,692,62)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,376, 476)
		GUI:ImageSetFitSize(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.hideMenu")
	end

	--[[_GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1850000423,_DeviceSizeX - 70, 8)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.Close")
		GUI:WndSetSizeM(_GUIHandle,52, 52)
	end--]]

	_GUIHandle = GUI:ImageCreate(_Parent,"contentBack",1832800009,710,97)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.hideMenu")
		GUI:WndSetSizeM(_GUIHandle,339, 299)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600034,1850600036,1850600040,1850600042,1850600038,1850600035,1850600041,1850600037,1850600039)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"content",729,118,300,200)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.hideMenu")
		GUI:EditSetTextColor(_GUIHandle, color.text2)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetMultiLineEdit(_GUIHandle, true)
		GUI:EditSetTextM(_GUIHandle,"")
	end

	_GUIHandle = GUI:WndCreateWnd(_Parent,"MemberListWnd",0,17,62)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.hideMenu")
		GUI:WndSetSizeM(_GUIHandle, 649, 458)
		GUI:WndSetVisible(_GUIHandle, true)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600034,1850600036,1850600040,1850600042,1850600038,1850600035,1850600041,1850600037,1850600039)
		FamilyMemberWnd.hMemberListWnd = _GUIHandle

		_GUIHandle = GUI:WndCreateWnd(FamilyMemberWnd.hMemberListWnd,"MemberList",0,1,2)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.hideMenu")
			GUI:WndSetSizeM(_GUIHandle, 647, 454)
			GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
			FamilyMemberWnd.hMemberList = _GUIHandle
		end

		_GUIHandle = GUI:EditCreate(FamilyMemberWnd.hMemberListWnd,"StaticEdit1",31,-31,100,30)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle,"职位")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextColor(_GUIHandle, color.text1)
		end

		_GUIHandle = GUI:EditCreate(FamilyMemberWnd.hMemberListWnd,"StaticEdit2",150,-31,100,30)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle,"名字")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextColor(_GUIHandle, color.text1)
		end

		_GUIHandle = GUI:EditCreate(FamilyMemberWnd.hMemberListWnd,"StaticEdit3",260,-31,100,30)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle,"等级")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextColor(_GUIHandle, color.text1)
		end

		_GUIHandle = GUI:EditCreate(FamilyMemberWnd.hMemberListWnd,"StaticEdit4",340,-31,100,30)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle,"职业")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextColor(_GUIHandle, color.text1)
		end

		_GUIHandle = GUI:EditCreate(FamilyMemberWnd.hMemberListWnd,"StaticEdit5",425,-31,100,30)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle,"战斗力")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextColor(_GUIHandle, color.text1)
		end

		_GUIHandle = GUI:EditCreate(FamilyMemberWnd.hMemberListWnd,"StaticEdit6",538,-31,100,30)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle,"个人贡献")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextColor(_GUIHandle, color.text1)
		end

		_GUIHandle = GUI:ButtonCreate(FamilyMemberWnd.hMemberListWnd,"showNoticeBtn",1851900001,745,-43)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle,"行会公告")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
			GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.showNotice")
		end

		_GUIHandle = GUI:ButtonCreate(FamilyMemberWnd.hMemberListWnd,"showSloganBtn",1851900001,880,-43)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle,"行会宣言")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.showSlogan")
		end

		_GUIHandle = GUI:ButtonCreate(FamilyMemberWnd.hMemberListWnd,"showGuildListBtn",1851500004,711,378)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle,"行会列表")
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.showGuildListWnd")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
		end

		_GUIHandle = GUI:ButtonCreate(FamilyMemberWnd.hMemberListWnd,"leaveGuildBtn",1851500004,879,378)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle,"退出行会")
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.leaveGuildDlg")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
		end

		_GUIHandle = GUI:ButtonCreate(FamilyMemberWnd.hMemberListWnd,"dissolveGuildBtn",1851500004,879,378)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle,"解散行会")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.dissolveGuildDlg")
		end

		_GUIHandle = GUI:ButtonCreate(FamilyMemberWnd.hMemberListWnd,"editBtn",1850000307,913,277)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle,"编辑")
			GUI:WndSetVisible(_GUIHandle, false)
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.editBtn_lbUp")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
			GUI:WndSetParam(_GUIHandle, 1)
		end
	end

	FamilyMemberWnd.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyMemberWnd.UIInit(_Handle)
	FamilyMemberWnd.WndHandle =_Handle
	--UI:Lua_Log("FamilyMemberWnd.UIInit 开始触发")
	UI:Lua_SubmitForm("行会", "isGuildLeader", "")
	CL:GetFamilyAllMenberList(0, 30, "FamilyMemberWnd_行会成员", "FamilyMemberWnd.getMemberInfo")
	CL:FamilyInfoRequest(1,"FamilyWnd_Info_行会公告", "FamilyMemberWnd.getFamilyNotice") --默认显示行会公告
end

function FamilyMemberWnd.getFamilyNotice()
	--UI:Lua_Log("FamilyMemberWnd.getFamilyNotice 开始触发")
	FamilyMemberWnd.notice = LuaParam[1]
	local _GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.WndHandle, "content")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, FamilyMemberWnd.notice)
		GUI:WndSetParam(_GUIHandle, 1)
	end
end

function FamilyMemberWnd.getMemberInfo()
	--UI:Lua_Log("FamilyMemberWnd.getMemberInfo 开始触发")
	if not FamilyMemberWnd.member_ then
		FamilyMemberWnd.member_ = {}
	end
	FamilyMemberWnd.member_ = LuaParam[4]
	local tbl = {}
	for i = 1, #FamilyMemberWnd.member_ do
		--1:GUID 2:名字 3:等级 4:职业 5:工会GUID 6:工会称号1是会长2是副会长 7: 8:入会时间 9:上次登录时间 10:是否在线
		FamilyMemberWnd.member_[i] = FamilyMemberWnd.member_[i]
		if UI:Lua_GUID2Str(FamilyMemberWnd.member_[i][1]) then
			tbl[i] = LuaRet
		end
	end
	UI:Lua_SubmitForm("行会", "sendGuildMemberData", serialize(tbl))
end


--成员列表排序规则：
--1.玩家自己的信息显示在第一行
--2.在线玩家统一排在不在线玩家上方
--3.按职位：会在>副会长>精英>会员的顺序从上往下排序
--4.同一职位的按战力高低从上往下排
--5.战力相同的按入会时间从早到晚往下排
local function compare1(a, b)
	if a[10] > b[10] then
		return true
	elseif a[10] < b[10] then
		return false
	else
		--会员是0，会长是1，副会长是2，精英是3
		local temp1,temp2 = 4,4
		if 0 ~= a[6] then
			temp1 = a[6]
		end
		if 0 ~= b[6] then
			temp2 = b[6]
		end
		if temp1 < temp2 then
			return true
		elseif temp1 > temp2 then
			return false
		else
			if a[13] > b[13] then
				return true
			elseif a[13] < b[13] then
				return false
			else
				return a[8] < b[8]
			end
		end
	end
end


function FamilyMemberWnd.setData(tbl, data)
	--UI:Lua_Log("FamilyMemberWnd.setData 开始触发")
	FamilyMemberWnd.slogan = data[1]
	FamilyMemberWnd.tAtk = {}
	local index = 0
	for i = 1, #tbl do
		--服务端传来的数据加入成员表中
		FamilyMemberWnd.member_[i][11] = tbl[i][1] --剩余贡献
		FamilyMemberWnd.member_[i][12] = tbl[i][2] --历史贡献
		FamilyMemberWnd.member_[i][13] = tbl[i][3] --攻击力
		if UI:Lua_GUID2Str(FamilyMemberWnd.member_[i][1]) then
			if LuaRet == data[2] then
				index = i --找到自己信息在表中的位置
			end
		end
	end

	local _GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.hMemberListWnd, "leaveGuildBtn")
	if _GUIHandle ~= 0 then
		if 1 == FamilyMemberWnd.member_[index][6] then
			GUI:WndSetVisible(_GUIHandle, false)
		else
			GUI:WndSetVisible(_GUIHandle, true)
		end
	end
	_GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.hMemberListWnd, "dissolveGuildBtn")
	if _GUIHandle ~= 0 then
		if 1 == FamilyMemberWnd.member_[index][6] then
			GUI:WndSetVisible(_GUIHandle, true)
		else
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end

	--自己排成员列表第一个
	if FamilyMemberWnd.hMemberListWnd ~= nil then
		--msg("清空")
		GUI:WndDlgClear(FamilyMemberWnd.hMemberList)
	end
	if 0 ~= index then
		local _Parent = FamilyMemberWnd.hMemberList
		_GUIHandle = GUI:ImageCreate(_Parent, "backImg0", 1852100054, 15, 6)
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
			GUI:WndSetSizeM(_GUIHandle, 625, 38)
			GUI:ImageSetFitSize(_GUIHandle, true)
		end
		_GUIHandle = GUI:EditCreate(_Parent,"title1", 15, 10, 70, 30)
		if _GUIHandle ~= 0 then
			if 1 == FamilyMemberWnd.member_[index][6] then
				GUI:EditSetTextM(_GUIHandle, "会长")
			elseif 2 == FamilyMemberWnd.member_[index][6] then
				GUI:EditSetTextM(_GUIHandle, "副会长")
			elseif 3 == FamilyMemberWnd.member_[index][6] then
				GUI:EditSetTextM(_GUIHandle, "精英")
			elseif 0 == FamilyMemberWnd.member_[index][6] then
				GUI:EditSetTextM(_GUIHandle, "成员")
			end
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextColor(_GUIHandle, color.text2)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		_GUIHandle = GUI:EditCreate(_Parent,"name1", 94, 10, 150, 30)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, FamilyMemberWnd.member_[index][2])
			GUI:EditSetTextColor(_GUIHandle, color.text2)
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		_GUIHandle = GUI:EditCreate(_Parent,"level1", 257, 10, 40, 30)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, color.number)
			GUI:EditSetTextM(_GUIHandle, tostring(FamilyMemberWnd.member_[index][3]))
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		_GUIHandle = GUI:EditCreate(_Parent,"job1", 334, 10, 50, 30)
		if _GUIHandle ~= 0 then
			if 1 == FamilyMemberWnd.member_[index][4] then
				GUI:EditSetTextM(_GUIHandle, "战士")
			elseif 2 == FamilyMemberWnd.member_[index][4] then
				GUI:EditSetTextM(_GUIHandle, "法师")
			else
				GUI:EditSetTextM(_GUIHandle, "道士")
			end
			GUI:EditSetTextColor(_GUIHandle, color.text2)
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		_GUIHandle = GUI:EditCreate(_Parent,"atk1", 393, 10, 120, 30)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, tostring(FamilyMemberWnd.member_[index][13]))
			GUI:EditSetTextColor(_GUIHandle, color.text2)
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		_GUIHandle = GUI:EditCreate(_Parent,"contribution1", 515, 10, 130, 30)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, FamilyMemberWnd.member_[index][11].."/"..FamilyMemberWnd.member_[index][12])
			GUI:EditSetTextColor(_GUIHandle, color.number)
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		_GUIHandle = GUI:WndCreateWnd(_Parent,"item0",0,15,7)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle, 625, 38)
		end
		--自己从表中删除
		table.remove(FamilyMemberWnd.member_, index)
	end
	table.sort(FamilyMemberWnd.member_, compare1) --排序

	--创建成员列表
	for i = 1, #FamilyMemberWnd.member_ do
		local intervalY = 40
		local _Parent = FamilyMemberWnd.hMemberList
		local _GUIHandle = GUI:ImageCreate(_Parent, "backImg"..i, 1852100054, 15, 6 + i * intervalY)
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
			GUI:WndSetSizeM(_GUIHandle, 625, 38)
			GUI:ImageSetFitSize(_GUIHandle, true)
		end
		_GUIHandle = GUI:EditCreate(_Parent, "title"..(i + 1), 15, 10 + i * intervalY, 70, 30)
		if _GUIHandle ~= 0 then
			if 1 == FamilyMemberWnd.member_[i][6] then
				GUI:EditSetTextM(_GUIHandle, "会长")
			elseif 2 == FamilyMemberWnd.member_[i][6] then
				GUI:EditSetTextM(_GUIHandle, "副会长")
			elseif 3 == FamilyMemberWnd.member_[i][6] then
				GUI:EditSetTextM(_GUIHandle, "精英")
			elseif 0 == FamilyMemberWnd.member_[i][6] then
				GUI:EditSetTextM(_GUIHandle, "成员")
			end
			if 0 == FamilyMemberWnd.member_[i][10] then
				GUI:EditSetTextColor(_GUIHandle, color.text_dark)
			else
				GUI:EditSetTextColor(_GUIHandle, color.text2)
			end
			
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end

		_GUIHandle = GUI:EditCreate(_Parent,"name"..(i + 1), 94, 10 + i * intervalY, 150, 30)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, FamilyMemberWnd.member_[i][2])
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
			if 0 == FamilyMemberWnd.member_[i][10] then
				GUI:EditSetTextColor(_GUIHandle, color.text_dark)
			else
				GUI:EditSetTextColor(_GUIHandle, color.text2)
			end
		end
		_GUIHandle = GUI:EditCreate(_Parent,"level"..(i + 1), 257, 10 + i * intervalY, 40, 30)
		if _GUIHandle ~= 0 then
			
			GUI:EditSetTextM(_GUIHandle, tostring(FamilyMemberWnd.member_[i][3]))
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
			if 0 == FamilyMemberWnd.member_[i][10] then
				GUI:EditSetTextColor(_GUIHandle, color.text_dark)
			else
				GUI:EditSetTextColor(_GUIHandle, color.number)
			end
		end
		_GUIHandle = GUI:EditCreate(_Parent,"job"..(i + 1), 334, 10 + i * intervalY, 50, 30)
		if _GUIHandle ~= 0 then
			if 1 == FamilyMemberWnd.member_[i][4] then
				GUI:EditSetTextM(_GUIHandle, "战士")
			elseif 2 == FamilyMemberWnd.member_[i][4] then
				GUI:EditSetTextM(_GUIHandle, "法师")
			else
				GUI:EditSetTextM(_GUIHandle, "道士")
			end
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
			if 0 == FamilyMemberWnd.member_[i][10] then
				GUI:EditSetTextColor(_GUIHandle, color.text_dark)
			else
				GUI:EditSetTextColor(_GUIHandle, color.text2)
			end
		end
		_GUIHandle = GUI:EditCreate(_Parent,"atk"..(i + 1),393, 10 + i * intervalY, 120, 30)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, tostring(FamilyMemberWnd.member_[i][13]))
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
			if 0 == FamilyMemberWnd.member_[i][10] then
				GUI:EditSetTextColor(_GUIHandle, color.text_dark)
			else
				GUI:EditSetTextColor(_GUIHandle, color.text2)
			end
		end
		_GUIHandle = GUI:EditCreate(_Parent,"contribution"..(i + 1),515, 10 + i * intervalY, 130, 30)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, FamilyMemberWnd.member_[i][11].."/"..FamilyMemberWnd.member_[i][12])
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
			if 0 == FamilyMemberWnd.member_[i][10] then
				GUI:EditSetTextColor(_GUIHandle, color.text_dark)
			else
				GUI:EditSetTextColor(_GUIHandle, color.number)
			end
		end
		_GUIHandle = GUI:WndCreateWnd(_Parent,"item"..i, 0, 15 , 7 + i * intervalY)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.selectMember")
			GUI:WndSetSizeM(_GUIHandle, 625, 38)
			GUI:WndSetParam(_GUIHandle, i)
		end
	end
end

function FamilyMemberWnd.showGuildListWnd()
	UI:Lua_OpenWindow(0, "FamilyMember_FamilyListWnd.lua")
end

function FamilyMemberWnd.editBtn_lbUp(_Handle)
	local param = tonumber(GUI:WndGetParam(_Handle))
	if 1 == param then
		--开始编辑
		GUI:WndSetTextM(_Handle, "保存")
		GUI:WndSetParam(_Handle, 2)
		local _GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.WndHandle, "content")
		if _GUIHandle ~= 0 then
			GUI:EditSetCanEdit(_GUIHandle, true)
			GUI:WndSetEnableM(_GUIHandle, true)
		end
	elseif 2 == param then
		--保存文本
		GUI:WndSetTextM(_Handle, "编辑")
		GUI:WndSetParam(_Handle, 1)
		local _GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.WndHandle, "content")
		if _GUIHandle ~= 0 then
			GUI:EditSetCanEdit(_GUIHandle, false)
			GUI:WndSetEnableM(_GUIHandle, false)
			param = tonumber(GUI:WndGetParam(_GUIHandle))
			local str = GUI:EditGetTextM(_GUIHandle)
			if 1 == param then
				if CL:FamilyNoticeConfirm(str, "FamilyWnd_Info_行会公告", "FamilyMemberWnd.getFamilyNotice") then
					--GUI:WndSetTextM(_GUIHandle, str)
				end
			else
				--FamilyMemberWnd.slogan = str
				UI:Lua_SubmitForm("行会", "setGuildSlogan", str)
			end
		end
	end
	FamilyMemberWnd.hideMenu()
end

function FamilyMemberWnd.showNotice(_Handle)
	local _GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.hMemberListWnd, "editBtn")
	if _GUIHandle ~= 0 and 1 == tonumber(GUI:WndGetParam(_GUIHandle)) then
		if not GUI:ButtonGetIsActivePageBtn(_Handle) then
			GUI:ButtonSetIsActivePageBtn(_Handle, true)
			_GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.WndHandle, "content")
			if _GUIHandle ~= 0 then
				GUI:EditSetTextM(_GUIHandle, tostring(FamilyMemberWnd.notice))
				GUI:WndSetParam(_GUIHandle, 1)
			end
			_GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.hMemberListWnd, "showSloganBtn")
			if _GUIHandle ~= 0 then
				GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
			end
		end
	end
	FamilyMemberWnd.hideMenu()
end

function FamilyMemberWnd.showSlogan(_Handle)
	local _GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.hMemberListWnd, "editBtn")
	if _GUIHandle ~= 0 and 1 == tonumber(GUI:WndGetParam(_GUIHandle)) then
		if not GUI:ButtonGetIsActivePageBtn(_Handle) then
			GUI:ButtonSetIsActivePageBtn(_Handle, true)
			_GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.WndHandle, "content")
			if _GUIHandle ~= 0 then
				GUI:EditSetTextM(_GUIHandle, tostring(FamilyMemberWnd.slogan))
				GUI:WndSetParam(_GUIHandle, 2)
			end
			_GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.hMemberListWnd, "showNoticeBtn")
			if _GUIHandle ~= 0 then
				GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
			end
		end
	end
	FamilyMemberWnd.hideMenu()
end

function FamilyMemberWnd.selectMember(_Handle)
	--msg("selectMember")
	local _GUIHandle = 0

	local param = tonumber(GUI:WndGetParam(_Handle))
	if 0 ~= FamilyMemberWnd.nowIndex then
		_GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.hMemberList, "backImg"..FamilyMemberWnd.nowIndex)
		if 0 ~= _GUIHandle then
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end

	FamilyMemberWnd.nowIndex = param
	local _GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.hMemberList, "backImg"..param)
	if 0 ~= _GUIHandle then
		GUI:WndSetVisible(_GUIHandle, true)
	end
	if nil ~= FamilyMemberWnd.hTitleOptionWnd then
		if GUI:WndGetVisible(FamilyMemberWnd.hTitleOptionWnd) then
			GUI:WndSetVisible(FamilyMemberWnd.hTitleOptionWnd, false)
		end
	end
	GUI:WndSetVisible(FamilyMemberWnd.hOptionWnd, true)
end

function FamilyMemberWnd.Option(_Handle)
	if _Handle ~= FamilyMemberWnd.nowHandle and 0 ~= FamilyMemberWnd.nowHandle then
		GUI:ButtonSetIsActivePageBtn(FamilyMemberWnd.nowHandle, false)
	end
	FamilyMemberWnd.nowHandle = _Handle
	local param = tonumber(GUI:WndGetParam(_Handle))
	if 1 == param then
		--查看装备
		CL:LogicLookInfo(FamilyMemberWnd.member_[FamilyMemberWnd.nowIndex][2])
		FamilyWnd.Close()
		if GUI:WndGetVisible(FamilyMemberWnd.hTitleOptionWnd) then
			GUI:WndSetVisible(FamilyMemberWnd.hTitleOptionWnd, false)
		end
	elseif 2 == param then
		--添加好友
		CL:LogicAddFriend(FamilyMemberWnd.member_[FamilyMemberWnd.nowIndex][2])
		GUI:WndSetVisible(FamilyMemberWnd.hOptionWnd, false)
		if GUI:WndGetVisible(FamilyMemberWnd.hTitleOptionWnd) then
			GUI:WndSetVisible(FamilyMemberWnd.hTitleOptionWnd, false)
		end
	elseif 3 == param then
		--邀请组队
		CL:LogicTeamInvite(FamilyMemberWnd.member_[FamilyMemberWnd.nowIndex][2])
		--FamilyMemberWnd.msgBox("发送组队邀请成功")
		GUI:WndSetVisible(FamilyMemberWnd.hOptionWnd, false)
		if GUI:WndGetVisible(FamilyMemberWnd.hTitleOptionWnd) then
			GUI:WndSetVisible(FamilyMemberWnd.hTitleOptionWnd, false)
		end
	elseif 4 == param then
		--发送私聊
		CL:LogicSendPrivateTalk(FamilyMemberWnd.member_[FamilyMemberWnd.nowIndex][2])
		FamilyWnd.Close()
		ChatWindowEX.OnShowWndBtnUp()
		GUI:WndSetVisible(FamilyMemberWnd.hOptionWnd, false)
		if GUI:WndGetVisible(FamilyMemberWnd.hTitleOptionWnd) then
			GUI:WndSetVisible(FamilyMemberWnd.hTitleOptionWnd, false)
		end
	elseif 5 == param then
		--踢出行会
		--if CL:GetFamilyMemberTitle(FamilyMemberWnd.member_[FamilyMemberWnd.nowIndex][2]) then
			--msg("称号："..LuaRet)
		--end
		MessageBox(1, "确定要踢出行会？", "FamilyMemberWnd.kickMember()", nil, false)
		if GUI:WndGetVisible(FamilyMemberWnd.hTitleOptionWnd) then
			GUI:WndSetVisible(FamilyMemberWnd.hTitleOptionWnd, false)
		end
	elseif 6 == param then
		--更改职位
		if GUI:WndGetVisible(FamilyMemberWnd.hTitleOptionWnd) then
			GUI:WndSetVisible(FamilyMemberWnd.hTitleOptionWnd, false)
		else
			GUI:WndSetVisible(FamilyMemberWnd.hTitleOptionWnd, true)
		end
	elseif 7 == param then
		--转交会长
		MessageBox(1, "确定要转让会长？", "FamilyMemberWnd.changeLeader()", nil, false)
		if GUI:WndGetVisible(FamilyMemberWnd.hTitleOptionWnd) then
			GUI:WndSetVisible(FamilyMemberWnd.hTitleOptionWnd, false)
		end
	end
end

function FamilyMemberWnd.kickMember()
	local index = FamilyMemberWnd.nowIndex
	if CL:FamilyKick(FamilyMemberWnd.member_[index][1]) then
		CL:GetFamilyAllMenberList(0, 30, "FamilyMemberWnd_行会成员", "FamilyMemberWnd.getMemberInfo")
		--日志
		UI:Lua_SubmitForm("行会", "kickFamilyLog", FamilyMemberWnd.member_[index][2])
		GUI:WndSetVisible(FamilyMemberWnd.hOptionWnd, false)
		--msg("WndSetVisible")
	end
end

function FamilyMemberWnd.changeLeader()
	--msg("转交会长申请")
	local index = FamilyMemberWnd.nowIndex
	if 2 == FamilyMemberWnd.member_[index][6] then
		if UI:Lua_GUID2Str(FamilyMemberWnd.member_[index][1]) then
			UI:Lua_SubmitForm("行会", "canChangeTitle", "1#"..LuaRet)
		end
	else
		FamilyMemberWnd.msgBox("该玩家不是副会长")
	end
	GUI:WndSetVisible(FamilyMemberWnd.hOptionWnd, false)
end

function FamilyMemberWnd.hideMenu()
	GUI:WndSetVisible(FamilyMemberWnd.hOptionWnd, false)
end

function FamilyMemberWnd.confirm(_Handle)
	local index = FamilyMemberWnd.nowIndex
	if 0 ~= FamilyMemberWnd.nowChecked then
		--msg("更改职位申请 nowChecked = "..FamilyMemberWnd.nowChecked)
		if 1 == FamilyMemberWnd.nowChecked then
			if 2 ~= FamilyMemberWnd.member_[index][6] then
				if UI:Lua_GUID2Str(FamilyMemberWnd.member_[index][1]) then
					UI:Lua_SubmitForm("行会", "canChangeTitle", "2#"..LuaRet)
				end
			else
				FamilyMemberWnd.msgBox("该玩家已经是副会长了")
			end
		elseif 2 == FamilyMemberWnd.nowChecked then
			if 3 ~= FamilyMemberWnd.member_[index][6] then
				if UI:Lua_GUID2Str(FamilyMemberWnd.member_[index][1]) then
					UI:Lua_SubmitForm("行会", "canChangeTitle", "3#"..LuaRet)
				end
			else
				FamilyMemberWnd.msgBox("该玩家已经是精英了")
			end
		elseif 3 == FamilyMemberWnd.nowChecked then
			if 0 ~= FamilyMemberWnd.member_[index][6] then
				if UI:Lua_GUID2Str(FamilyMemberWnd.member_[index][1]) then
					UI:Lua_SubmitForm("行会", "canChangeTitle", "0#"..LuaRet)
				end
			else
				FamilyMemberWnd.msgBox("该玩家已经是成员了")
			end
		end
	end
	--FamilyMemberWnd.Option(FamilyMemberWnd.nowHandle)
end

function FamilyMemberWnd.checkBoxClicked(_Handle)
	local param = tonumber(GUI:WndGetParam(_Handle))
	FamilyMemberWnd.nowChecked = param
	for i = 1, 3 do
		if param ~= i then
			local _GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.hTitleOptionWnd, "checkBox"..i)
			if _GUIHandle ~= 0 then
				GUI:CheckBoxSetCheck(_GUIHandle, false)
			end
		end
	end
end

function FamilyMemberWnd.setTitle(titleID, guid)
	if UI:Lua_Str2GUID(guid) then
		guid = LuaRet
	end
	titleID = tonumber(titleID)
	if CL:FamilyEntitle(titleID, guid) then
		if 1 == titleID then
			--msg("转交完会长")
			if FamilyMemberWnd.hOptionWnd ~= nil then
				--msg("清空")
				GUI:WndDlgClear(FamilyMemberWnd.hOptionWnd)
			end
			FamilyMemberWnd.setOptionWndType("2")--改变窗口控件为非会长的
			FamilyMemberWnd.msgBox("转交会长成功")
		else
			FamilyMemberWnd.msgBox("更改职位成功")
			GUI:WndSetVisible(FamilyMemberWnd.hOptionWnd, false)
		end
		--刷新列表
		CL:GetFamilyAllMenberList(0, 30, "FamilyMemberWnd_行会成员", "FamilyMemberWnd.getMemberInfo")
	end
end

function FamilyMemberWnd.cancel()
	GUI:ButtonSetIsActivePageBtn(FamilyMemberWnd.nowHandle, false)
	GUI:WndSetVisible(FamilyMemberWnd.hConfirmWnd, false)
end

function FamilyMemberWnd.setOptionWndType(flag)
	--msg("setOptionWndType")
	flag = tonumber(flag)
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()
	--设置选项窗口样式 flag = 0 会长，flag = 1 非会长
	_GUIHandle = GUI:WndCreateWnd(FamilyMemberWnd.WndHandle, "OptionWnd", 0, 637, 50)
	if _GUIHandle then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle, 158, 239)
		GUI:ImageSetAroundImage(_GUIHandle,1850600070,1850600072,1850600076,1850600078,1850600074,1850600071,1850600077,1850600073,1850600075)
		FamilyMemberWnd.hOptionWnd = _GUIHandle

		_GUIHandle = GUI:ButtonCreate(FamilyMemberWnd.hOptionWnd,"lookBtn", 1850000307, 25, 20)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle,"查看资料")
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.Option")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
			GUI:WndSetParam(_GUIHandle, 1)
		end

		_GUIHandle = GUI:ButtonCreate(FamilyMemberWnd.hOptionWnd,"addFriendBtn", 1850000307, 25, 70)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle,"添加好友")
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.Option")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
			GUI:WndSetParam(_GUIHandle, 2)
		end

		_GUIHandle = GUI:ButtonCreate(FamilyMemberWnd.hOptionWnd,"teamBtn", 1850000307, 25, 120)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle,"邀请组队")
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.Option")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
			GUI:WndSetParam(_GUIHandle, 3)
		end
		_GUIHandle = GUI:ButtonCreate(FamilyMemberWnd.hOptionWnd,"whisperBtn", 1850000307, 25, 170)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle,"发送消息")
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.Option")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
			GUI:WndSetParam(_GUIHandle, 4)
		end
	end
	if 0 == flag then
		--msg("是会长添加控件")
		_GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.hMemberListWnd, "leaveGuildBtn")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
		end
		_GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.hMemberListWnd, "dissolveGuildBtn")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, true)
		end
		_GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.hMemberListWnd, "editBtn")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, true)
		end
		GUI:WndSetSizeM(FamilyMemberWnd.hOptionWnd, 158, 389)
		_GUIHandle = GUI:ButtonCreate(FamilyMemberWnd.hOptionWnd,"kickBtn",1850000307, 25, 220)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle,"踢出行会")
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.Option")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
			GUI:WndSetParam(_GUIHandle, 5)
		end
		_GUIHandle = GUI:ButtonCreate(FamilyMemberWnd.hOptionWnd,"changeTitleBtn",1850000307, 25, 270)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle,"更改职位")
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.Option")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
			GUI:WndSetParam(_GUIHandle, 6)
		end
		_GUIHandle = GUI:ButtonCreate(FamilyMemberWnd.hOptionWnd,"changeLeaderBtn",1850000307, 25, 320)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle,"转交会长")
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.Option")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
			GUI:WndSetParam(_GUIHandle, 7)
		end

		_GUIHandle = GUI:WndCreateWnd(FamilyMemberWnd.hOptionWnd,"titleOptionWnd",0,-184,100)
		if _GUIHandle then
			GUI:WndSetVisible(_GUIHandle, false)
			GUI:WndSetSizeM(_GUIHandle, 158, 253)

			GUI:ImageSetAroundImage(_GUIHandle,1850600070,1850600072,1850600076,1850600078,1850600074,1850600071,1850600077,1850600073,1850600075)
			FamilyMemberWnd.hTitleOptionWnd = _GUIHandle
			
			_GUIHandle = GUI:ImageCreate(FamilyMemberWnd.hTitleOptionWnd,"Background",1852100036,18,18)
			if _GUIHandle ~= 0 then
				GUI:WndSetSizeM(_GUIHandle, 122, 161)
				GUI:WndSetEnableM(_GUIHandle, false)
				GUI:ImageSetAroundImage(_GUIHandle, 1851400064,1851400066,1851400070,1851400072,1851400068,1851400065,1851400071,1851400067,1851400069)
			end

			_GUIHandle = GUI:ButtonCreate(FamilyMemberWnd.hTitleOptionWnd,"confirmBtn",1850000307, 25, 192)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextM(_GUIHandle,"确 定")
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.confirm")
				GUI:WndSetTextColorM(_GUIHandle, color.text1)
				GUI:WndSetParam(_GUIHandle, 3)
			end

			_GUIHandle = GUI:CheckBoxCreate(FamilyMemberWnd.hTitleOptionWnd,"checkBox1",1850000272,"副会长", 25, 27)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextColorM(_GUIHandle, color.text1)
				GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.checkBoxClicked")
				GUI:WndSetParam(_GUIHandle, 1)
			end

			_GUIHandle = GUI:CheckBoxCreate(FamilyMemberWnd.hTitleOptionWnd,"checkBox2",1850000272,"精英", 25, 77)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextColorM(_GUIHandle, color.text1)
				GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.checkBoxClicked")
				GUI:WndSetParam(_GUIHandle, 2)
			end

			_GUIHandle = GUI:CheckBoxCreate(FamilyMemberWnd.hTitleOptionWnd,"checkBox3",1850000272,"成员", 25, 127)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextColorM(_GUIHandle, color.text1)
				GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.checkBoxClicked")
				GUI:WndSetParam(_GUIHandle, 3)
			end
		end
	elseif 1 == flag then
		_GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.hMemberListWnd, "editBtn")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, true)
		end
	elseif 2 == flag then
		_GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.hMemberListWnd, "leaveGuildBtn")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, true)
		end
		_GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.hMemberListWnd, "dissolveGuildBtn")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end
end

function FamilyMemberWnd.leaveGuildDlg()
	MessageBox(1, "确定要退出当前行会？", "FamilyMemberWnd.leaveGuild()", nil, false)
end

function FamilyMemberWnd.leaveGuild()
	UI:Lua_SubmitForm("行会", "leaveFamilyLog", "") --提交服务端记录离开行会日志
	CL:FamilyQuitRequest("","FamilyWnd_Info_quit","FamilyMemberWnd.closeFamilyWnd")
end

function FamilyMemberWnd.dissolveGuildDlg()
	MessageBox(1, "确定要解散当前行会？", "FamilyMemberWnd.dissolveGuild()", nil, false)
end

function FamilyMemberWnd.dissolveGuild()
	CL:FamilyDismiss("FamilyWnd_Info_解散行会","FamilyMemberWnd.closeFamilyWnd")
end

function FamilyMemberWnd.setSlogan(str)
	if str ~= nil then
		FamilyMemberWnd.slogan = str
	else
		FamilyMemberWnd.msgBox("请不要输入敏感词")
	end
	local _GUIHandle = GUI:WndFindWindow(FamilyMemberWnd.WndHandle, "content")
	if _GUIHandle ~= 0 then
		--msg("11111")
		GUI:EditSetTextM(_GUIHandle, FamilyMemberWnd.slogan)
	end
end

function FamilyMemberWnd.msgBox(str)
	MessageBox(0, str, nil, nil, false)
	GUI:WndSetVisible(FamilyMemberWnd.hOptionWnd, false)
end

function FamilyMemberWnd.closeFamilyWnd()
	GUI:WndClose(FamilyWnd._wnd)
	if not GUI:WndGetVisible(GameMainBar.WndHandle) then
		GUI:WndSetVisible(GameMainBar.WndHandle, true)
	end
end


FamilyMemberWnd.main()