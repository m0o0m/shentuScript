TeamWnd = {}
function TeamWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    --大背景
   _GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,32,66)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,1074, 458)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,46,130)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,1048, 316)
    end
    
	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 70, 8)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.closeWnd")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
     
    _GUIHandle = GUI:ButtonCreate(_Parent,"MyTeam",1850600100,607,8)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.MyTeamWnd")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"NearByTeam",1850600104,755,8)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.NearByTeamWnd")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"NearByPlayer",1850600108,903,8)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.NearByPlayerWnd")
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"check_xz1",1850000272,"自动组队",80,18)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "TeamWnd.clickimage")
		GUI:WndSetTextM(_GUIHandle,"自动组队")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"check_xz2",1850000272,"手动组队",246,18)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "TeamWnd.clickimage")
		GUI:WndSetTextM(_GUIHandle,"手动组队")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:CheckBoxSetCheck(_GUIHandle, true)
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"check_xz3",1850000272,"拒绝组队",412,18)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "TeamWnd.clickimage")
		GUI:WndSetTextM(_GUIHandle,"拒绝组队")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    Player_page_Parent = GUI:WndCreateWnd(_Parent,"Player_page",0,0,0)
    if Player_page_Parent ~= 0 then
    end
    
    MyButton_Parent = GUI:WndCreateWnd(_Parent,"MyButton",0,0,0)
    if MyButton_Parent ~= 0 then
        GUI:WndSetSizeM(MyButton_Parent,16, 16)
    end
     
    _GUIHandle = GUI:ButtonCreate(MyButton_Parent,"CreateTeam",1850000307,600,450)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.CreateTeam")
        GUI:WndSetTextM(_GUIHandle,"创建队伍")
    end
    
    MyButton1_Parent = GUI:WndCreateWnd(_Parent,"MyButton1",0,0,0)
    if MyButton1_Parent ~= 0 then
        GUI:WndSetSizeM(MyButton1_Parent,16, 16)
    end
      
    _GUIHandle = GUI:ButtonCreate(MyButton1_Parent,"Addplayer",1850000307,178,450)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.Addplayer")
        GUI:WndSetTextM(_GUIHandle,"添加好友")
    end
    
    _GUIHandle = GUI:ButtonCreate(MyButton1_Parent,"ViewEquip",1850000307,328,450)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.ViewEquip")
        GUI:WndSetTextM(_GUIHandle,"查看装备")
    end
    
    _GUIHandle = GUI:ButtonCreate(MyButton1_Parent,"OutTeam",1850000307,478,450)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.OutTeam")
        GUI:WndSetTextM(_GUIHandle,"离开队伍")
    end
    
    _GUIHandle = GUI:ButtonCreate(MyButton1_Parent,"OtherTeamer",1850000307,628,450)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.OtherTeamer")
        GUI:WndSetTextM(_GUIHandle,"移交队长")
    end
    
    _GUIHandle = GUI:ButtonCreate(MyButton1_Parent,"DooutTeam",1850000307,778,450)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.DooutTeam")
        GUI:WndSetTextM(_GUIHandle,"踢出队伍")
    end
    
    _GUIHandle = GUI:ButtonCreate(MyButton1_Parent,"DismissTeam",1850000307,928,450)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.DismissTeam")
        GUI:WndSetTextM(_GUIHandle,"解散队伍")
    end
    
    --附近队伍
    NearyButton_Parent = GUI:WndCreateWnd(_Parent,"NearyButton",0,0,0)
    if NearyButton_Parent ~= 0 then
        GUI:WndSetSizeM(NearyButton_Parent,16, 16)
    end

    _GUIHandle = GUI:EditCreate(NearyButton_Parent,"RoleName",160,92,100,19)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"队长名")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:EditCreate(NearyButton_Parent,"RoleLevel",380,92,100,19)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"等级")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end 
    
    _GUIHandle = GUI:EditCreate(NearyButton_Parent,"Rolejob",600,92,100,19)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"职业")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end 
    
    _GUIHandle = GUI:EditCreate(NearyButton_Parent,"gonghui",840,92,100,19)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"行会")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:ButtonCreate(NearyButton_Parent,"ReloadTeam",1850000307,128,450)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.ReloadTeam")
        GUI:WndSetTextM(_GUIHandle,"刷新列表")
    end
    
    _GUIHandle = GUI:ButtonCreate(NearyButton_Parent,"CreateTeam1",1850000307,778,450)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.CreateTeam")
        GUI:WndSetTextM(_GUIHandle,"创建队伍")
    end
    
    _GUIHandle = GUI:ButtonCreate(NearyButton_Parent,"InTeam",1850000307,928,450)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.InTeam")
        GUI:WndSetTextM(_GUIHandle,"申请入队")
    end

    --附近玩家
    NearyPlayerList_Parent = GUI:WndCreateWnd(_Parent,"NearyPlayerList",0,0,0)
    if NearyPlayerList_Parent ~= 0 then
        GUI:WndSetSizeM(NearyPlayerList_Parent,16, 16)
    end
    
    _GUIHandle = GUI:EditCreate(NearyPlayerList_Parent,"RoleName",160,92,100,19)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"角色名")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:EditCreate(NearyPlayerList_Parent,"RoleLevel",380,92,100,19)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"等级")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end 
    
    _GUIHandle = GUI:EditCreate(NearyPlayerList_Parent,"Rolejob",600,92,100,19)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"职业")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end 
    
    _GUIHandle = GUI:EditCreate(NearyPlayerList_Parent,"gonghui",840,92,100,19)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"行会")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end

    _GUIHandle = GUI:ButtonCreate(NearyPlayerList_Parent,"ReloadList",1850000307,128,450)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.ReloadList")
        GUI:WndSetTextM(_GUIHandle,"刷新列表")
    end

    _GUIHandle = GUI:ButtonCreate(NearyPlayerList_Parent,"Addplayer",1850000307,778,450)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.Addplayer")
        GUI:WndSetTextM(_GUIHandle,"添加好友")
    end
    
    _GUIHandle = GUI:ButtonCreate(NearyPlayerList_Parent,"InviteTeam",1850000307,928,450)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.InviteTeam")
        GUI:WndSetTextM(_GUIHandle,"邀请组队")
    end

    
    TeamWnd.UIInit(_Parent)
end

--UI Logic Code Start


TeamWnd.handle = {"MyTeam","NearByTeam","NearByPlayer"}
TeamWnd.headimage = {
    {1801800012,1801800014,1801800016},
    {1801800013,1801800015,1801800017}
}
TeamWnd.WndHandle = 0
TeamWnd.nowPage = 1 --当前页码
TeamWnd.totalPage = 1 --总页码
TeamWnd.team = 0  --我是否有队伍
TeamWnd.teaml = 0  --我是否是队长
TeamWnd.zhuangt = 1 --当前组队状态
TeamWnd.TeamMember = {} --队伍成员guid列表
TeamWnd.page = 1
TeamWnd.name = ""  --鼠标选中玩家姓名
TeamWnd.myname = "" --当前玩家姓名
TeamWnd.NearTeam = {} --附近队伍列表
TeamWnd.StartNum = 1  
TeamWnd.ClipWndHandle = 0

function TeamWnd.UIInit(_Handle)
    TeamWnd.WndHandle = _Handle

    GUI:WndRegistScript(TeamWnd.WndHandle, RDWndBaseCL_wnd_close , "TeamWnd.wndClose")
    RegisterUIEvent(LUA_EVENT_TRANSFERLEADERTEAM,"移交队长成功","MyTeamUpdata")
    RegisterUIEvent(LUA_EVENT_ONLEAVETEAM,"离开队伍成功","TeamWnd.OnLeaveteam")   -- 自己or队伍解散
    RegisterUIEvent(LUA_EVENT_ONLEAVETEAMEX,"离开队伍成功EX","TeamWnd.OnLeaveteamEX") -- 其他队员离开or被踢
    RegisterUIEvent(LUA_EVENT_ONJOINTEAM,"有新成员加入","TeamWnd.NewPlayerJoin")
    RegisterUIEvent(LUA_EVENT_ONJOINTEAMEX,"有新成员加入EX","TeamWnd.NewPlayerJoin")


    local _ClipWndHandle = GUI:WndCreateWnd(_Handle,"TeamWndClipWnd",0,46,140)
    if _ClipWndHandle then
        GUI:WndSetFlagsM(_ClipWndHandle, flg_wndBase_useBkBuffer)
        GUI:WndSetSizeM(_ClipWndHandle,1048, 300)
        TeamWnd.ClipWndHandle = _ClipWndHandle
    end

    local BgImg = GUI:WndFindWindow(TeamWnd.WndHandle, "BgImage")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
    end

    local BgImg1 = GUI:WndFindWindow(_Handle, "BgImage1")
    if BgImg1 then
        GUI:ImageSetAroundImage(BgImg1, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
    end 

    local BgImg2 = GUI:WndFindWindow(_Handle, "BgImage2")
    if BgImg2 then
        GUI:ImageSetAroundImage(BgImg2, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029, 1850600026, 1850600032, 1850600028, 1850600030)
    end 

    local _EditHandle = GUI:WndFindChildM(TeamWnd.WndHandle, "Edit0")
    if _EditHandle ~= 0 then
        GUI:EditSetCanEdit(_EditHandle, false)
        GUI:EditSetFontM(_EditHandle,"SIMLI18")
    end
    
    local Myteam_handle = GUI:WndFindChildM(TeamWnd.WndHandle, "MyTeam")
    if Myteam_handle ~= 0 then      
        TeamWnd.MyTeamWnd(Myteam_handle)
    end
    
    local NearByTeam_handle = GUI:WndFindChildM(TeamWnd.WndHandle, "NearByTeam")
    if NearByTeam_handle ~= 0 then
    end
    
    local NearByPlayer_handle = GUI:WndFindChildM(TeamWnd.WndHandle, "NearByPlayer")
    if NearByPlayer_handle ~= 0 then
    end
    
    
    ButtonSetIsActivePageBtn(TeamWnd.WndHandle,"MyTeam",true)
    if CL:GetPlayerSelfPropBase(1) then
        TeamWnd.myname = LuaRet
    end
    --组队状态初始化
    MyTeamUpdata()
    if CL:GetRoleTeamStatus() then
        local index = LuaRet
        for i = 1 , 3 do 
            if i == tonumber(index) then
                TeamWnd.zhuangt = i
                local _handle = GetWindow(TeamWnd.WndHandle,"check_xz".. i)
                GUI:CheckBoxSetCheck(_handle,true)
            else
                local _handle = GetWindow(TeamWnd.WndHandle,"check_xz".. i)
                GUI:CheckBoxSetCheck(_handle,false)
            end 
        end 
    end 
    
    local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
    if handle ~= 0 then
        GUI:WndSetVisible(handle, false)
    end
    local handle = GetWindow(TeamWnd.WndHandle,"NearyPlayerList")
    if handle ~= 0 then
        GUI:WndSetVisible(handle, false)
    end
end


--我的队伍更新信息
function MyTeamUpdata()
    UI:Lua_Log("MyTeamUpdata开始")
    if TeamWnd.WndHandle == 0 then
        return
    end 
    if not ButtonGetIsActivePageBtn(TeamWnd.WndHandle,"MyTeam") then
        return
    end
    --先清除
    TeamEmpty()
    if CL:GetTeamMemberGUIDList() then
        TeamWnd.TeamMember = LuaRet
        TeamWnd.team = 1
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
        GUI:WndSetVisible(handle,false)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
        GUI:WndSetVisible(handle,true)
    else
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
        GUI:WndSetVisible(handle,true)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
        GUI:WndSetVisible(handle,false)
        return
    end
    
    for i = 1 , #TeamWnd.TeamMember do  
        local OffY = 60
        local name = "" 
        local gender = 0
        local job = 1 
        local level = 1
        local Job_t = {"战士","法师","道士"}
        if CL:GetTeamPropByPlayerGUIDAll(TeamWnd.TeamMember[i],0) then
            name = LuaRet
            if i == 1 and TeamWnd.myname == name then
                TeamWnd.teaml = 1
            end
        end
        if CL:GetTeamPropByPlayerGUIDAll(TeamWnd.TeamMember[i],3) then
            level = LuaRet
        end
        if CL:GetTeamPropByPlayerGUIDAll(TeamWnd.TeamMember[i],4) then
            job = LuaRet
        end
        if CL:GetTeamPropByPlayerGUIDAll(TeamWnd.TeamMember[i],5) then
            gender = LuaRet
        end
        local TeamImageList = { {1801800027, 1801800028, 1801800029}, {1801800030, 1801800031, 1801800032}}
        local image_id = TeamImageList[gender][job]

        --创建完并添加
        if TeamWnd.ClipWndHandle ~= nil then
            local Player_Parent = GUI:ButtonCreate(TeamWnd.ClipWndHandle,"Player"..i,1801800023,180,0 + (i-1)*OffY)
            if Player_Parent ~= 0 then
                GUI:WndRegistScript(Player_Parent,RDWndBaseCL_mouse_lbUp, "TeamWnd.clickWnd")
                GUI:WndSetParam(Player_Parent, i)
            end

            _GUIHandle = GUI:ImageCreate(Player_Parent,"leader"..i,0,4,0)
            if _GUIHandle ~= 0 then
                if i == 1 then
                    UI:Lua_Log("i == 1")
                    GUI:WndSetImageID(_GUIHandle,1850600112)
                end
            end
                  
            _GUIHandle = GUI:EditCreate(Player_Parent,"RoleName"..i,106,8,100,19)
            if _GUIHandle ~= 0 then
                GUI:EditSetTextM(_GUIHandle,name)
                GUI:EditSetCanEdit(_GUIHandle, false)
                GUI:EditSetFontCenter(_GUIHandle)
            end

            _GUIHandle = GUI:EditCreate(Player_Parent,"RoleJob"..i,494,8,100,19)
            if _GUIHandle ~= 0 then
                GUI:EditSetTextM(_GUIHandle,""..Job_t[job])
                GUI:EditSetCanEdit(_GUIHandle, false)
                GUI:EditSetFontCenter(_GUIHandle)
            end
                 
            _GUIHandle = GUI:EditCreate(Player_Parent,"RoleLevel"..i,294,8,100,19)
            if _GUIHandle ~= 0 then
                GUI:EditSetTextM(_GUIHandle,"Lv:"..level)
                GUI:EditSetCanEdit(_GUIHandle, false)
                GUI:EditSetFontCenter(_GUIHandle)
            end
        end

        --ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player"..i..",header",image_id)
        --EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleName",""..name)
        --EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleLevel","Lv:"..level)
        --EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleJob",""..Job_t[job])
        --local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Player"..i)
        --GUI:WndSetEnableM(handle, true)
    end
    --ImageSetImageID(TeamWnd.ClipWndHandle,"Player_page,Player1,leader",1850600112)

    if #TeamWnd.TeamMember == 1 then
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,OtherTeamer")
        GUI:WndSetEnableM(handle, false)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DooutTeam")
        GUI:WndSetEnableM(handle, false)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DismissTeam")
        GUI:WndSetEnableM(handle, true)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,ViewEquip")
        GUI:WndSetEnableM(handle, false)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,Addplayer")
        GUI:WndSetEnableM(handle, false)
    elseif TeamWnd.teaml == 0 then
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,OtherTeamer")
        GUI:WndSetEnableM(handle, false)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DooutTeam")
        GUI:WndSetEnableM(handle, false)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DismissTeam")
        GUI:WndSetEnableM(handle, false)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,ViewEquip")
        GUI:WndSetEnableM(handle, true)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,Addplayer")
        GUI:WndSetEnableM(handle, true)
    elseif TeamWnd.teaml == 1 and #TeamWnd.TeamMember > 1 then
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,OtherTeamer")
        GUI:WndSetEnableM(handle, true)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DooutTeam")
        GUI:WndSetEnableM(handle, true)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DismissTeam")
        GUI:WndSetEnableM(handle, true)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,ViewEquip")
        GUI:WndSetEnableM(handle, true)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,Addplayer")
        GUI:WndSetEnableM(handle, true)
    end
end 

function TeamEmpty(param)
    if TeamWnd.ClipWndHandle ~= nil then
        GUI:WndDlgClear(TeamWnd.ClipWndHandle)
    end
end 

--附近队伍更新信息
function NearByTeamUpdata()
    UI:Lua_Log("NearByTeamUpdata ---------NearByTeam_Updata")
    CL:GetNearbyTeamInfo("附近队伍更新","NearByTeam_Updata")  
end 

function NearByTeam_Updata()
    UI:Lua_Log("NearByTeam_Updata 开始")
     --先清除
    if TeamWnd.ClipWndHandle ~= nil then
        GUI:WndDlgClear(TeamWnd.ClipWndHandle)
    end
    local NearByTeam_tab = LuaParam[1]
    TeamWnd.NearTeam = NearByTeam_tab
    if #NearByTeam_tab == 0 then
        UI:Lua_Log("空 返回")
        return
    end 

    UI:Lua_Log("开始进入for循环")
    for i = 1 ,#TeamWnd.NearTeam  do 
        local OffY = 60
        local tab = TeamWnd.NearTeam[i]
        local name = tab[2] 
        local gender = tab[7]
        local job = tab[6] 
        local level = tab[5]
        local Job_t = {"战士","法师","道士"}

        UI:Lua_Log(" i = "..i.." name = "..name.." gender = "..gender.." job = "..job.." level = "..level)
        --local TeamImageList = { {1801800027, 1801800028, 1801800029}, {1801800030, 1801800031, 1801800032}}
        --local image_id = TeamImageList[gender][job]

        --创建完并添加
        if TeamWnd.ClipWndHandle ~= nil then
            local Player_Parent = GUI:ButtonCreate(TeamWnd.ClipWndHandle,"Player"..i,1801800023,180,0 + (i-1)*OffY)
            if Player_Parent ~= 0 then
                GUI:WndRegistScript(Player_Parent,RDWndBaseCL_mouse_lbUp, "TeamWnd.clickWnd")
                GUI:WndSetParam(Player_Parent, i)
            end

            _GUIHandle = GUI:ImageCreate(Player_Parent,"leader"..i,0,4,0)
            if _GUIHandle ~= 0 then
                    GUI:WndSetImageID(_GUIHandle,1801800022)
            end
        
            _GUIHandle = GUI:EditCreate(Player_Parent,"RoleName"..i,106,8,100,19)
            if _GUIHandle ~= 0 then
                GUI:EditSetTextM(_GUIHandle,name)
                GUI:EditSetCanEdit(_GUIHandle, false)
                GUI:EditSetFontCenter(_GUIHandle)
            end
      
            _GUIHandle = GUI:EditCreate(Player_Parent,"RoleLevel"..i,294,8,100,19)
            if _GUIHandle ~= 0 then
                GUI:EditSetTextM(_GUIHandle,"Lv:"..level)
                GUI:EditSetCanEdit(_GUIHandle, false)
                GUI:EditSetFontCenter(_GUIHandle)
            end

            _GUIHandle = GUI:EditCreate(Player_Parent,"RoleJob"..i,494,8,100,19)
            if _GUIHandle ~= 0 then
                GUI:EditSetTextM(_GUIHandle,""..Job_t[job])
                GUI:EditSetCanEdit(_GUIHandle, false)
                GUI:EditSetFontCenter(_GUIHandle)
            end
        end
    end 
end 

--附近玩家更新信息
function NearByPlayerUpdata()
    local NearByplayer_tab = {}
    local a = 0
    local map_name = CL:GetCurMapKeyName()
    CL:GetNearPlayerList(map_name)
    NearByplayer_tab = LuaRet
   
    local a = #NearByplayer_tab
    for i = 1, a do
        local OffY = 60
        local tab = NearByplayer_tab[i]
        local name = tab[1] 
        local job = tab[5] 
        local level = tab[4]
        local hh = tab[6]
        local Job_t = {"战士","法师","道士"}

        --创建完并添加
        if TeamWnd.ClipWndHandle ~= nil then
            local Player_Parent = GUI:ButtonCreate(TeamWnd.ClipWndHandle,"Player"..i,1801800023,180,0 + (i-1)*OffY)
            if Player_Parent ~= 0 then
                GUI:WndRegistScript(Player_Parent,RDWndBaseCL_mouse_lbUp, "TeamWnd.clickWnd")
                GUI:WndSetParam(Player_Parent, i)
            end
        
            _GUIHandle = GUI:EditCreate(Player_Parent,"RoleName"..i,106,8,100,19)
            if _GUIHandle ~= 0 then
                GUI:EditSetTextM(_GUIHandle,name)
                GUI:EditSetCanEdit(_GUIHandle, false)
                GUI:EditSetFontCenter(_GUIHandle)
            end
      
            _GUIHandle = GUI:EditCreate(Player_Parent,"RoleLevel"..i,294,8,100,19)
            if _GUIHandle ~= 0 then
                GUI:EditSetTextM(_GUIHandle,"Lv:"..level)
                GUI:EditSetCanEdit(_GUIHandle, false)
                GUI:EditSetFontCenter(_GUIHandle)
            end

            _GUIHandle = GUI:EditCreate(Player_Parent,"RoleJob"..i,494,8,100,19)
            if _GUIHandle ~= 0 then
                GUI:EditSetTextM(_GUIHandle,""..Job_t[job])
                GUI:EditSetCanEdit(_GUIHandle, false)
                GUI:EditSetFontCenter(_GUIHandle)
            end

            _GUIHandle = GUI:EditCreate(Player_Parent,"Rolegh"..i,664,8,100,19)
            if _GUIHandle ~= 0 then
                GUI:EditSetTextM(_GUIHandle,""..hh)
                GUI:EditSetCanEdit(_GUIHandle, false)
                GUI:EditSetFontCenter(_GUIHandle)
            end
        end
    end
end 

--我的队伍
function TeamWnd.MyTeamWnd(_handle)
    UI:Lua_Log("MyTeamWnd开始")
    if ButtonGetIsActivePageBtn(TeamWnd.WndHandle,"MyTeam") then
        UI:Lua_Log("直接return")
        return
    end 
    TeamWnd.update(_handle)
    TeamWnd.name = ""
    if TeamWnd.team == 0 then
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
        GUI:WndSetVisible(handle,true)
        local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
        GUI:WndSetVisible(handle,false)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
        GUI:WndSetVisible(handle,false)
    else
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
        GUI:WndSetVisible(handle,false)
        local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
        GUI:WndSetVisible(handle,false)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
        GUI:WndSetVisible(handle,true)
    end
    local handle = GetWindow(TeamWnd.WndHandle,"Player_page")
    GUI:WndSetVisible(handle,true)
    local handle = GetWindow(TeamWnd.WndHandle,"NearyPlayerList")
    if handle ~= 0 then 
        GUI:WndSetVisible(handle,false)
    end 

    MyTeamUpdata()
    local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Down_page")
    if handle ~= 0 then 
        GUI:WndSetVisible(handle,false)
    end
    local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Up_page")
    if handle ~= 0 then 
        GUI:WndSetVisible(handle,false)
    end
end
--附近队伍
function TeamWnd.NearByTeamWnd(_handle)
    if ButtonGetIsActivePageBtn(TeamWnd.WndHandle,"NearByTeam") then
        return
    end
    TeamWnd.update(_handle)
    TeamWnd.name = ""
    local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
    GUI:WndSetVisible(handle,false)
    local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
    GUI:WndSetVisible(handle,true)
    local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
    GUI:WndSetVisible(handle,false)
    local handle = GetWindow(TeamWnd.WndHandle,"NearyPlayerList")
    GUI:WndSetVisible(handle,false)
    local handle = GetWindow(TeamWnd.WndHandle,"Player_page")
    GUI:WndSetVisible(handle,true)
    
    if TeamWnd.team == 1 then
        TeamWnd.DisableNewTeam()
    else
        if CL:GetRoleTeamStatus() then
            if LuaRet == 3 then
                TeamWnd.DisableNewTeam()
            else
                TeamWnd.ActiveNewTeam()
            end
        end
    end
   
    TeamEmpty()
    NearByTeamUpdata()
end


function TeamWnd.ActiveNewTeam()
    local handle = GetWindow(TeamWnd.WndHandle,"NearyButton,CreateTeam1")
    GUI:WndSetEnableM(handle, true)
    local handle = GetWindow(TeamWnd.WndHandle,"NearyButton,InTeam")
    GUI:WndSetEnableM(handle, true)
end

function TeamWnd.DisableNewTeam()
    local handle = GetWindow(TeamWnd.WndHandle,"NearyButton,CreateTeam1")
    GUI:WndSetEnableM(handle, false)
    local handle = GetWindow(TeamWnd.WndHandle,"NearyButton,InTeam")
    GUI:WndSetEnableM(handle, false)
end

--附近玩家列表
function TeamWnd.NearByPlayerWnd(_handle)
    if ButtonGetIsActivePageBtn(TeamWnd.WndHandle,"NearByPlayer") then
        return
    end 
    TeamWnd.update(_handle)   --高亮点击
    TeamWnd.name = ""
    local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
    GUI:WndSetVisible(handle,false)
    local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
    GUI:WndSetVisible(handle,false)
    local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
    GUI:WndSetVisible(handle,false)
    local handle = GetWindow(TeamWnd.WndHandle,"Player_page")
    GUI:WndSetVisible(handle,false)

    local handle = GetWindow(TeamWnd.WndHandle,"NearyPlayerList")
    GUI:WndSetVisible(handle,true)
    TeamWnd.ReloadList()
end

--创建队伍
function TeamWnd.CreateTeam(_handle)
    local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
    GUI:WndSetVisible(handle,false)
    local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
    GUI:WndSetVisible(handle,false)
    local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
    GUI:WndSetVisible(handle,true)
    ButtonSetIsActivePageBtn(TeamWnd.WndHandle,"MyTeam",true)
    ButtonSetIsActivePageBtn(TeamWnd.WndHandle,"NearByTeam",false)
    CL:CreateTeam("创建队伍成功","MyTeamUpdata")
end

function TeamWnd.clickWnd(_handle)
    local index = GUI:WndGetParam(_handle)
    local _EditHanle =  GUI:WndFindWindow(_handle, "RoleName"..index)
    if _EditHanle ~= nil then
        TeamWnd.name = GUI:EditGetTextM(_EditHanle)
    end
end 

function TeamWnd.clickimage(_handle)
    local index = GUI:WndGetParam(_handle)
    --UI:Lua_SubmitForm("Team表单", "SetIndex", ""..index)
    for i = 1 , 3 do 
        if i == tonumber(index) then
            local _handle = GetWindow(TeamWnd.WndHandle,"check_xz".. i)
            GUI:CheckBoxSetCheck(_handle,true)
        else
            local _handle = GetWindow(TeamWnd.WndHandle,"check_xz".. i)
            GUI:CheckBoxSetCheck(_handle,false)
        end 
    end 
    CL:SetRoleTeamStatus(tonumber(index))
    if TeamWnd.teaml == 0 then 
        if tonumber(index) == 3 then
            TeamWnd.DisableNewTeam()
        else
            TeamWnd.ActiveNewTeam()
        end 
    end
end 
--添加好友
function TeamWnd.Addplayer()
    if TeamWnd.name == "" then 
        return 
    end
    CL:LogicAddFriend(TeamWnd.name)
end 

--查看装备
function TeamWnd.ViewEquip()
    if TeamWnd.name == "" then 
        return 
    end
    CL:LogicLookInfo(TeamWnd.name)
end
--离开队伍
function TeamWnd.OutTeam()
    if CL:LeaveTeam() then
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
        GUI:WndSetVisible(handle,true)
        local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
        GUI:WndSetVisible(handle,false)
        TeamWnd.team = 0
        TeamWnd.teaml = 0
        TeamEmpty() 
    end
end

--移交队长
function TeamWnd.OtherTeamer()
    if TeamWnd.name == "" then 
        return 
    end 
    if CL:TransferTeamLeader(TeamWnd.name) then 
        TeamWnd.teaml = 0   
    end
end

--踢出队伍
function TeamWnd.DooutTeam()
    if TeamWnd.name == "" then 
        return 
    end
    if CL:KickOutOfTeam(TeamWnd.name) then
    end
end

--解散队伍
function TeamWnd.DismissTeam()
    if TeamWnd.myname == "" then
        return 
    end 
    if CL:DismissTeam() then
        TeamWnd.team = 0
        TeamWnd.teaml = 0   
    end
end

--邀请组队
function TeamWnd.InviteTeam()
    UI:Lua_Log("InviteTeam 开始 TeamWnd.name = ")
    UI:Lua_Log(TeamWnd.name)
    if TeamWnd.name == "" then 
        return 
    end
    if not CL:GetTeamMemberGUIDList() then
        if CL:CreateTeam("创建队伍成功","MyTeamUpdata") and TeamWnd.canSendInviteReq() then 
            UI:Lua_Log("AddDelayTask")
            CL:AddDelayTask("CL:LogicTeamInviteEx(".."\""..TeamWnd.name.."\""..")",500,1) 
        end 
    elseif TeamWnd.canSendInviteReq() then
        UI:Lua_Log("LogicTeamInviteEx")
        CL:LogicTeamInviteEx(TeamWnd.name)
    end     
end

function TeamWnd.canSendInviteReq()
    if CL:GetRoleTeamStatus() then
        if LuaRet == 3 then
            MessageBox(MESSAGE_STYLE_OK, "请打开自动组队功能","","",true)
            return false
        else
            return true
        end
    else
        return false
    end 
end

function TeamWnd.OpenAutoTeam()
    CL:SetRoleTeamStatus(1)
end

--刷新队伍
function TeamWnd.ReloadTeam()
    TeamEmpty()
    NearByTeamUpdata()
end

--申请入队
function TeamWnd.InTeam()
    if TeamWnd.name == "" then 
        return 
    end 
    CL:ApplyForTeam(TeamWnd.name)
end

--刷新玩家列表
function TeamWnd.ReloadList()
    if TeamWnd.ClipWndHandle ~= nil then
        GUI:WndDlgClear(TeamWnd.ClipWndHandle)
    end
    NearByPlayerUpdata()
end 

function TeamWnd.closeWnd(_handle)
    GUI:WndClose(TeamWnd.WndHandle)
end

function TeamWnd.wndClose()
    UnRegisterUIEvent(LUA_EVENT_TRANSFERLEADERTEAM,"移交队长成功")
    UnRegisterUIEvent(LUA_EVENT_ONLEAVETEAM,"离开队伍成功")   -- 自己or队伍解散
    UnRegisterUIEvent(LUA_EVENT_ONLEAVETEAMEX,"离开队伍成功EX")   -- 其他队员离开or被踢
    UnRegisterUIEvent(LUA_EVENT_ONJOINTEAM,"有新成员加入")
    UnRegisterUIEvent(LUA_EVENT_ONJOINTEAMEX,"有新成员加入EX")
end

function TeamWnd.update(_handle)
    UI:Lua_Log("TeamWnd.update开始")
    for i = 1 , #TeamWnd.handle do 
        local handle = GetWindow(nil,"TeamWnd,"..TeamWnd.handle[i])
        if handle == _handle then
            ButtonSetIsActivePageBtn(TeamWnd.WndHandle,TeamWnd.handle[i],true)
            
        else
            ButtonSetIsActivePageBtn(TeamWnd.WndHandle,TeamWnd.handle[i],false)
        end
    end
end

function TeamWnd.NewPlayerJoin()
    CL:AddDelayTask("MyTeamUpdata()",500,1)
end

function TeamWnd.OnLeaveteam()
    TeamWnd.team = 0
    TeamWnd.teaml = 0   
    MyTeamUpdata()
end

function TeamWnd.OnLeaveteamEX()        
    MyTeamUpdata()
end

function TeamWnd.closeWnd(_handle)
	GUI:WndClose(TeamWnd.WndHandle)
end

TeamWnd.main()