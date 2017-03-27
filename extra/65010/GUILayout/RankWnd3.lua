--[[RankWnd = {}
function RankWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"RankWnd",0,0,0)
    if _Parent ~= 0 then
    end

    --大背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
    if _GUIHandle ~= 0 then
       GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,32,64)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,378, 454)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,426,64)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,678, 454)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage3",0,440,112)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,650, 350)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"wing_Lefttitle",1850100038,415,20)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"title_edit",568,34,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"排 名")
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"wing_Righttitle",1850100039,625,20)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 70, 8)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"pgBtn1",1850600012, 52, 80)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"总排行")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"pgBtn2",1850600012, 52, 145)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"战神榜")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"pgBtn3",1850600012, 52, 210)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"法神榜")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"pgBtn4",1850600012, 52, 275)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"道尊榜")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Rank",504,78,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"排名")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Name",632,78,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"姓名")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Level",782,78,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"等级")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Job",864,78,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"职业")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Gender",960,78,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "性别")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"rankImage1",1851600000,516,140)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"rankImage2",1851600001,516,186)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"rankImage3",1851600002,516,232)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"PrevBtn",1850600088,492,524)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"NextBtn",1850600092,600,524)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"PageEdit",564,548,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"RoleIndexEdit",866,476,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end

    RankWnd.UIInit(_Parent)
end

--UI Logic Code Start
function RankWnd.UIInit(_Handle)
    
    RankWnd.WndHandle = _Handle
    local BgImg = GUI:WndFindWindow(RankWnd.WndHandle, "BgImage")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
    end

    BgImg = GUI:WndFindWindow(_Handle, "BgImage1")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
    end 

    BgImg = GUI:WndFindWindow(_Handle, "BgImage2")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
    end 

    BgImg = GUI:WndFindWindow(_Handle, "BgImage3")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029, 1850600026, 1850600032, 1850600028, 1850600030)
    end 

    local _GUIHandle = 0
    for i = 1, 4 do
        _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, "pgBtn"..i)
        if _GUIHandle ~= 0 then
            GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
        end
    end

    _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, "pgBtn1")
    if _GUIHandle ~= 0 then
        GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
    end

end
RankWnd.main()
--]]



RankWnd = {}
function RankWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	GUI:WndSetPosM(_Parent, 0, 0)
	local _GUIHandle = 0
	
	--[[local uih = GUI:WndCreateWnd(_Parent,"rankWnd",0,32,45)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,891, 502)
		GUI:WndSetMoveWithLBM(_GUIHandle)
		GUI:WndSetIsESCClose(_GUIHandle,true)
	end--]]
	
	_GUIHandle = GUI:ImageCreate(_Parent,"mainBackground",0,0,0)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
		GUI:WndSetSizeM(_GUIHandle,940, 542)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closebtn",1850000385,890,6)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,39, 39)
		GUI:WndRegistScript(_GUIHandle,1002, "RankWnd.CloseWnd")
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"btnBackground",0,32,55)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056, 1850600053, 1850600059, 1850600055, 1850600057)
		GUI:WndSetSizeM(_GUIHandle,372, 413)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"mainChart",1850600012,45,80)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,337, 71)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.pageBtnLc")
		GUI:WndSetTextM(_GUIHandle,"总排行")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"knightBtn",1850600012,45,175)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,337, 71)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.pageBtnLc")
		GUI:WndSetTextM(_GUIHandle,"战神榜")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"magicBtn",1850600012,45,270)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,337, 71)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.pageBtnLc")
		GUI:WndSetTextM(_GUIHandle,"法神榜")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"taoistBtn",1850600012,45,365)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,337, 71)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.pageBtnLc")
		GUI:WndSetTextM(_GUIHandle,"道尊榜")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"titleImgLeft",1850100038,334,7)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,97, 32)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"titleImgRight",1850100039,509,8)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,97, 32)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"contentBackground",0,428,53)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850400015, 1850400017, 1850400021, 1850400023, 1850400019,1850400016, 1850400022, 1850400018, 1850400020)
		GUI:WndSetSizeM(_GUIHandle,472, 413)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"title",438,8,60,33)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"排行榜")
		GUI:WndSetEnableM(_GUIHandle, false)
		
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"chart",454,72,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"排名")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"name",558,72,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"姓名")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"level",668,72,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"等级")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"job",744,72,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"职业")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"gender",815,72,60,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"性别")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"myRankText",760,473,200,29)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"我的排名：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"myRankNum",849,473,65,29)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未上榜")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	
	RankWnd.UIInit(_Parent)
end




RankWnd.localString = {}
local l = RankWnd.localString
l.addFriendBtn = "添加好友"
l.look = "查看装备"
l.party = "组队"
l.whisper = "私聊"
l.copyName = "复制名称"
l.addEnemy = "屏蔽此人"

--//选中的按钮句柄
RankWnd._selPgBtn = 0
--//目前排行榜信息类型  1：总 2：战 3：法 4：道
RankWnd.nowRankType = 1
--//总列表
RankWnd.list = {}
--//我的排名表
RankWnd.myRank = "未上榜"
--//选中框编号
RankWnd.selected = 0
--//玩家所在位置
RankWnd.playerPos = 0
--//菜单窗口句柄
RankWnd.menuHandle = 0
RankWnd.updateTime = 0


--UI Logic Code Start
function RankWnd.UIInit(_Handle)
	RankWnd.handle = _Handle
	--CenterWnd(_Handle)
	
	local ClipWndHandle = GUI:WndCreateWnd(_Handle,"RankListClipWnd",0,428,108)
	if ClipWndHandle then
		GUI:WndSetFlagsM(ClipWndHandle, flg_wndBase_useBkBuffer)
		GUI:WndSetSizeM(ClipWndHandle,472, 333)
		RankWnd.ClipWndHandle = ClipWndHandle
	end
	
	--GUI:WndSetIsESCClose(RankWnd.handle, true)
    --GUI:WndSetMoveWithLBM(RankWnd.handle)
	
	local _GUIHandle = GUI:WndFindChildM(_Handle, "myRankNum")
	if _GUIHandle ~= 0 then
		RankWnd._myRankEdit = _GUIHandle
	end
	
	_GUIHandle = GUI:WndFindChildM(_Handle, "mainChart")
	if _GUIHandle ~= 0 then
		--RankWnd.pageBtnLc(_GUIHandle)
	end
	
	--创建更多操作菜单
	local menuList = {l.addFriendBtn, l.look, l.party, l.whisper, l.copyName, l.addEnemy}
	--local _menu, screenWidth, screenHeight, wnd_x, wnd_y = 0, 0, 0, 0, 0
	local _menu, screenWidth, screenHeight = 0, 0, 0
	local mainWnd = GUI:WndFindChildM(_Handle, "mainBackground")
	if GUI:WndGetSizeM(mainWnd) then
		screenWidth = LuaRet[1]
		screenHeight = LuaRet[2]
	end
	--[[if GUI:WndGetPosM(_Handle) then
		wnd_x = LuaRet[1]
		wnd_y = LuaRet[2]
	end--]]
	
	_menu = GUI:WndCreateWnd(_Handle, "menu", 0, screenWidth/2 - 50, screenHeight/2 - 245)
	if _menu ~= 0 then
		GUI:WndSetFlagsM(_menu, flg_wndBase_useBkBuffer)
		GUI:WndSetSizeM(_menu,219, 437)
		GUI:WndSetVisible(_menu, false)
		RankWnd.menuHandle = _menu
	end
	_GUIHandle = GUI:ImageCreate(_menu,"BgImg",1850000311,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,219, 437)
	end
	for i = 1, #menuList do
		_GUIHandle = GUI:ButtonCreate(_menu, "btn"..i, 1850000307, 56, (i-1)*64 + 36)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle, menuList[i])
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "RankWnd.menuBtnClicked")
		end
	end
	_GUIHandle = GUI:ButtonCreate(_menu,"Close",1850000385,175,8)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RankWnd.CloseViewMenu")
	end
end

--//关闭查看信息菜单窗口
function RankWnd.CloseViewMenu(this)
	local handle = WndGetParentM(this)
	if handle ~= 0 then
		GUI:WndSetVisible(handle, false)
	end
end

--//菜单按钮点击
function RankWnd.menuBtnClicked(this)
	local text = GUI:WndGetText(this)
	local handle = GUI:WndFindChildM(RankWnd.ClipWndHandle, "playerName"..RankWnd.playerPos)
	local playerName = GUI:EditGetTextM(handle)
	if text == l.look then
        CL:LogicLookInfo(playerName)
    elseif text == l.party then 
        CL:LogicTeamInvite(playerName)
    elseif text == l.whisper then 
        CL:LogicSendPrivateTalk(playerName)
    elseif text == l.copyName then 
        CL:CopyTextToClipBoard(playerName)
    elseif text == l.addFriend then 
        CL:LogicAddFriend(playerName)
	elseif text == l.addEnemy then 
        CL:LogicAddToBlackList(playerName)
    end
	GUI:WndSetVisible(WndGetParentM(this), false)
end

--//创建排名列表
function RankWnd.CreateRankList()
	local _GUIHandle = 0
	RankWnd.myRank = "未上榜"
	local listCount = #RankWnd.list[RankWnd.nowRankType]
	
	CL:GetPlayerSelfPropBase(ROLE_PROP_ROLENAME)
	local myName = LuaRet
	local list = RankWnd.list[RankWnd.nowRankType]
	for i = 1, #list do
		if list[i][2] == myName then
			RankWnd.myRank = i
			break
		end
	end
	
	local _Parent = RankWnd.ClipWndHandle
	if _Parent ~= nil then
        GUI:WndDlgClear(_Parent)
    end
	for i = 1, listCount do

		local wnd = GUI:WndCreateWnd(_Parent,"childWnd"..i,0,40,4+(i-1)*40)
		if wnd ~= 0 then
			GUI:WndSetParam(wnd, i)
			GUI:WndSetEnableM(wnd, true)
			--GUI:WndRegistScript(wnd,RDWndBaseCL_mouse_lbClick, "RankWnd.ViewPlayerInfo")
			--GUI:WndSetVisible(wnd, false)
		end
		
		_GUIHandle = GUI:ImageCreate(wnd,"background"..i,1850300002,-18,-1)
		if _GUIHandle ~= 0 then
			GUI:ImageSetFitSize(_GUIHandle, true)
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndSetSizeM(_GUIHandle,425, 30)
			GUI:WndSetEnableM(_GUIHandle, true)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.ClickBar")
			--GUI:WndSetVisible(_GUIHandle, false)
		end
		
		_GUIHandle = GUI:ImageCreate(_Parent,"selectedBar"..i,1850600096,22,4+(i-1)*40)
		if _GUIHandle ~= 0 then
			GUI:ImageSetFitSize(_GUIHandle, true)
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndSetSizeM(_GUIHandle,425, 30)
			GUI:WndSetEnableM(_GUIHandle, true)
			--GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.ClickBar")
			GUI:WndSetVisible(_GUIHandle, false)
		end

		if i > 3 then
			--//top3 show ranking by image
			_GUIHandle = GUI:EditCreate(_Parent,"ranking"..i,31,5+(i-1)*40,30,28)
			if _GUIHandle ~= 0 then
				GUI:WndSetParam(_GUIHandle, i)
				GUI:WndSetTextColorM(_GUIHandle, 4290950816)
				GUI:EditSetTextM(_GUIHandle,""..i)
				GUI:WndSetEnableM(_GUIHandle, false)
				GUI:EditSetFontCenter(_GUIHandle)
			end
		else
			_GUIHandle = GUI:ImageCreate(_Parent,"ranking"..i,1851600000+i-1,40,7+(i-1)*41)
			if _GUIHandle ~= 0 then
				GUI:WndSetParam(_GUIHandle, 0)
				GUI:WndSetSizeM(_GUIHandle,15, 23)
				GUI:WndSetEnableM(_GUIHandle, false)
			end
			
		end
	
		_GUIHandle = GUI:EditCreate(_Parent,"playerName"..i,51,5+(i-1)*40,200,28)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndSetTextColorM(_GUIHandle, 4290950816)
			GUI:EditSetTextM(_GUIHandle,tostring(RankWnd.list[RankWnd.nowRankType][i][2]))
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:EditCreate(_Parent,"playerLevel"..i,244,5+(i-1)*40,30,28)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndSetTextColorM(_GUIHandle, 4290950816)
			GUI:EditSetTextM(_GUIHandle,tostring(RankWnd.list[RankWnd.nowRankType][i][5]))
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:EditCreate(_Parent,"playerJob"..i,306,5+(i-1)*40,60,28)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndSetTextColorM(_GUIHandle, 4290950816)
			GUI:EditSetTextM(_GUIHandle,RDJOBName[RankWnd.list[RankWnd.nowRankType][i][3]])
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:EditCreate(_Parent,"playerGender"..i,391,5+(i-1)*40,30,28)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndSetTextColorM(_GUIHandle, 4290950816)
			GUI:EditSetTextM(_GUIHandle,RDSexName[RankWnd.list[RankWnd.nowRankType][i][4]])
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
	end
	--//我的排名
	GUI:EditSetTextM(RankWnd._myRankEdit, tostring(RankWnd.myRank))
	
end


function RankWnd.pageBtnLc(this)
	if RankWnd._selPgBtn == this then return end
	GUI:ButtonSetIsActivePageBtn(this, true)
	if RankWnd._selPgBtn then
		GUI:ButtonSetIsActivePageBtn(RankWnd._selPgBtn, false)
	end
	RankWnd._selPgBtn = this
	
	local param = GUI:WndGetParam(this)
	RankWnd.nowRankType = param
	if RankWnd.updateTime ~= 0 and RankWnd.list[param] then		--服务器没有数据 & 本地有数据
		RankWnd.CreateRankList()
	else	--请求 
		if not CL:GetRankList(param-1, "RankWnd_获取排行列表", "RankWnd.GetRankList") then
			GUI:WndClose(RankWnd.handle)
		end
	end
end

function RankWnd.GetRankList()

	local rType = LuaParam[1] + 1
	RankWnd.updateTime = LuaParam[3]
	if RankWnd.updateTime > 0 then
		GUI:WndAddTimerBrief(RankWnd.handle, RankWnd.updateTime*1000, "RankWnd.getListTime")
	end
	
	if RankWnd.nowRankType ~= rType then return end
	RankWnd.list[RankWnd.nowRankType] = LuaParam[4]
	for i = 1, #RankWnd.list[RankWnd.nowRankType] do
		RankWnd.list[RankWnd.nowRankType][i] = RankWnd.list[RankWnd.nowRankType][i]
	end
	
	RankWnd.CreateRankList()
end

function RankWnd.ViewPlayerInfo(this)
	RankWnd.playerPos = GUI:WndGetParam(this)
	if RankWnd.playerPos ~= 0 then
		local handle = GUI:WndFindChildM(RankWnd.handle, "menu")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
	end
end

function RankWnd.ClickBar(this)
	local index = GUI:WndGetParam(this)
	if index ~= 0 then
		_GUIHandle = GUI:WndFindChildM(RankWnd.ClipWndHandle, "selectedBar"..index)
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, true)
		end
		if RankWnd.selected ~= 0 and RankWnd.selected ~= index then
			_GUIHandle = GUI:WndFindChildM(RankWnd.ClipWndHandle, "selectedBar"..RankWnd.selected)
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, false)
			end
		end
		RankWnd.selected = index
	end
	RankWnd.ViewPlayerInfo(this)
	
end

function RankWnd.getListTime()
	GUI:WndDelAllTimer(RankWnd.handle)
	RankWnd.updateTime = 0
end

function RankWnd.CloseWnd()
	msg("RankWnd.CloseWnd;RankWnd.handle="..RankWnd.handle)
	if RankWnd.handle then 
		if RankWnd.handle ~= 0 then 
			GUI:WndClose(RankWnd.handle)
		end
	end
	
end

RankWnd.main()



