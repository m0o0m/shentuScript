--[[Campaign = {}
function Campaign.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"Campaign",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    --大背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
    if _GUIHandle ~= 0 then
       GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,32,64)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,678, 454)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,726,64)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,378, 454)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage3",0,46,112)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,648, 390)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"wing_Lefttitle",1850100038,415,20)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"title_edit",568,34,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"活 动")
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"wing_Righttitle",1850100039,625,20)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 70, 8)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"RightTitleImg",1850500021,726,66)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"TitleEdit3",930,88,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"RightTitleImg1",1850100031,732,109)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"TitleEdit_1",760,115,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"活动奖励:")
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"RightTitleImg2",1850100031,732,316)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"TitleEdit_2",760,322,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"活动说明:")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"DataNameEdit1",104,84,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"活动时间")
    end
     
    _GUIHandle = GUI:EditCreate(_Parent,"DataNameEdit2",277,84,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"活动名称")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"DataNameEdit3",440,84,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"参加等级")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"DataNameEdit4",583,84,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"操作")
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"AwardRichEdit",756,158,326,144)
    if _GUIHandle ~= 0 then
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"DescRichEdit",756,364,330,138)
    if _GUIHandle ~= 0 then
        GUI:RichEditAppendString(_GUIHandle, "")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn1",1807100007,138,118)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 1)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn2",1807100007,138,168)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 2)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn3",1807100007,138,218)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 3)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn4",1807100007,138,268)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 4)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn5",1807100007,138,318)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 5)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn6",1807100007,138,368)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 6)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn7",1807100007,138,418)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 7)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn8",1807100007,138,468)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 8)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"TimeEdit1",144,138,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit1",317,138,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelEdit1",480,138,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"OperateEdit1",606,138,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"TimeEdit2",144,186,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit2",317,186,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle) 
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelEdit2",480,186,0,0)
    if _GUIHandle ~= 0 then  
        GUI:EditSetFontCenter(_GUIHandle)  
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"OperateEdit2",606,186,0,0)
    if _GUIHandle ~= 0 then 
        GUI:EditSetFontCenter(_GUIHandle)  
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"TimeEdit3",144,236,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)  
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit3",317,236,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle) 
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelEdit3",480,236,0,0)
    if _GUIHandle ~= 0 then 
        GUI:EditSetFontCenter(_GUIHandle) 
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"OperateEdit3",606,236,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"TimeEdit4",144,286,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit4",317,286,0,0)
    if _GUIHandle ~= 0 then 
        GUI:EditSetFontCenter(_GUIHandle) 
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelEdit4",480,286,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle) 
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"OperateEdit4",606,286,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"TimeEdit5",144,336,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end 
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit5",317,336,0,0)
    if _GUIHandle ~= 0 then 
        GUI:EditSetFontCenter(_GUIHandle)   
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelEdit5",480,336,0,0)
    if _GUIHandle ~= 0 then    
        GUI:EditSetFontCenter(_GUIHandle)      
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"OperateEdit5",606,336,0,0)
    if _GUIHandle ~= 0 then 
        GUI:EditSetFontCenter(_GUIHandle) 
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"TimeEdit6",144,384,0,0)
    if _GUIHandle ~= 0 then 
        GUI:EditSetFontCenter(_GUIHandle) 
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit6",317,384,0,0)
    if _GUIHandle ~= 0 then  
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelEdit6",480,384,0,0)
    if _GUIHandle ~= 0 then  
        GUI:EditSetFontCenter(_GUIHandle)   
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"OperateEdit6",606,384,0,0)
    if _GUIHandle ~= 0 then 
        GUI:EditSetFontCenter(_GUIHandle)   
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"TimeEdit7",144,434,0,0)
    if _GUIHandle ~= 0 then 
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit7",317,434,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)   
    end

    _GUIHandle = GUI:EditCreate(_Parent,"LevelEdit7",480,434,0,0)
    if _GUIHandle ~= 0 then 
        GUI:EditSetFontCenter(_GUIHandle) 
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"OperateEdit7",606,434,0,0)
    if _GUIHandle ~= 0 then  
        GUI:EditSetFontCenter(_GUIHandle)    
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"TimeEdit8",144,484,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit8",317,484,0,0)
    if _GUIHandle ~= 0 then  
        GUI:EditSetFontCenter(_GUIHandle)  
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelEdit8",480,484,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"OperateEdit8",606,484,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn1",1851700000,564,114)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 1)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn2",1851700000,564,164)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 2)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn3",1851700000,564,214)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 3)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn4",1851700000,564,264)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 4)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn5",1851700000,564,314)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 5)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn6",1851700000,564,364)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 6)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn7",1851700000,564,414)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 7)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn8",1851700000,564,464)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 8)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"nextBtn",1850600092,600,524)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.nextPage")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"preBtn",1850600088,492,524)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.prePage")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"PageEdit",564,548,0,0)
    if _GUIHandle ~= 0 then 
        GUI:EditSetFontCenter(_GUIHandle) 
    end

    
    
    Campaign.UIInit(_Parent)
end

--UI Logic Code Start

Campaign.WndHandle = 0
Campaign.NowPage = 1
Campaign.TolPage = 1
Campaign.DataList = {}

function Campaign.UIInit(_Handle)
    Campaign.WndHandle = _Handle
    
    local BgImg = GUI:WndFindWindow(Campaign.WndHandle, "BgImage")
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

    GUI:WndRegistScript(Campaign.WndHandle, RDWndBaseCL_wnd_close , "Campaign.wndClose")
    RegisterUIEvent(LUA_EVENT_CAMPAIGNLIST, "Campaign_list", Campaign.listBack)     --活动列表
     UI:Lua_Log("注册了listBack  LUA_EVENT_CAMPAIGNLIST ="..LUA_EVENT_CAMPAIGNLIST)
end

function Campaign.listBack()
    local Campaigntab = LuaParam[1] 
    UI:Lua_Log("开始触发Campaign.listBack   Campaigntab = "..Campaigntab)
    local itemCount = #Campaigntab
    for i = 1 , itemCount do 
        Campaign.DataList[i] = Campaigntab[i]
    end
    Campaign.NowPage = 1
    Campaign.TolPage = math.ceil(itemCount/8)
    Campaign.show()
end

function Campaign.select(_Handle)
    local index = GUI:WndGetParam(_Handle)
    for i = 1 , 8 do
        if i == index then
            ButtonSetIsActivePageBtn(_Handle,nil,true)
        else
            ButtonSetIsActivePageBtn(Campaign.WndHandle,'ItemBtn'..i,false)
            EditSetTextM(Campaign.WndHandle,'TitleEdit3', tostring(Campaign.DataList[index][2]))
        end 
    end
    CL:GetCampaignDetail(Campaign.DataList[index+(Campaign.NowPage-1)*8][1], "Campaign_Select", "Campaign.RecvDetail")
end

function Campaign.operate(_Handle)
    local index = GUI:WndGetParam(_Handle)
    local wnd = GUI:WndFindWindow(Campaign.WndHandle, "ItemBtn"..index)
    Campaign.select(wnd)
    CL:CampaignJoin(Campaign.DataList[index][1])
end

function Campaign.prePage()
    if Campaign.NowPage>1 then
        Campaign.NowPage = Campaign.NowPage - 1
        Campaign.show()
    end
end

function Campaign.nextPage()
    if Campaign.NowPage<Campaign.TolPage then
        Campaign.NowPage = Campaign.NowPage + 1
        Campaign.show()
    end
end

function Campaign.empty()
    RichEditClear(Campaign.WndHandle,"AwardRichEdit") 
    RichEditClear(Campaign.WndHandle,"DescRichEdit") 
end

function Campaign.show()
    Campaign.empty()
    local index = (Campaign.NowPage-1)*8
    local operateStr = ""
    local level = 0
    local bool = false
    if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
        level = LuaRet
    end 
    for i = 1 , 8 do
        bool = false
        index=index+1
        ButtonSetIsActivePageBtn(Campaign.WndHandle,'ItemBtn'..i,false)
        if index <= #Campaign.DataList then
            WndSetVisibleM(Campaign.WndHandle,'TimeEdit'..i,true)
            WndSetVisibleM(Campaign.WndHandle,'NameEdit'..i,true)
            WndSetVisibleM(Campaign.WndHandle,'LevelEdit'..i,true)
            WndSetVisibleM(Campaign.WndHandle,'ItemBtn'..i,true)
            EditSetTextM(Campaign.WndHandle,'TimeEdit'..i,string.sub(Campaign.DataList[index][3],0,5).."-"..string.sub(Campaign.DataList[index][4],0,5))
            EditSetTextM(Campaign.WndHandle,'NameEdit'..i,Campaign.DataList[index][2])
            EditSetTextM(Campaign.WndHandle,'LevelEdit'..i,Campaign.DataList[index][5].."-"..Campaign.DataList[index][6])
            if Campaign.DataList[index][9] == 2 then
                operateStr = "进行中"
                if level >= Campaign.DataList[index][5] and level <= Campaign.DataList[index][6] then
                    bool=true
                end
            elseif Campaign.DataList[index][9] == 3 then
                operateStr = "已结束"
            else
                operateStr = "未开始"
            end
            if  bool then
                WndSetVisibleM(Campaign.WndHandle,'OperateEdit'..i,false)
                WndSetVisibleM(Campaign.WndHandle,'OperateBtn'..i,true)
            else
                WndSetVisibleM(Campaign.WndHandle,'OperateEdit'..i,true)
                EditSetTextM(Campaign.WndHandle,'OperateEdit'..i,operateStr)
                WndSetVisibleM(Campaign.WndHandle,'OperateBtn'..i,false)
            end
        else
            WndSetVisibleM(Campaign.WndHandle,'TimeEdit'..i,false)
            WndSetVisibleM(Campaign.WndHandle,'NameEdit'..i,false)
            WndSetVisibleM(Campaign.WndHandle,'LevelEdit'..i,false)
            WndSetVisibleM(Campaign.WndHandle,'OperateEdit'..i,false)
            WndSetVisibleM(Campaign.WndHandle,'OperateBtn'..i,false)
            WndSetVisibleM(Campaign.WndHandle,'ItemBtn'..i,false)
        end
    end
    EditSetTextM(Campaign.WndHandle,'PageEdit',Campaign.NowPage.."/"..Campaign.TolPage)
end

function Campaign.wndClose()
    UnRegisterUIEvent(LUA_EVENT_CAMPAIGNLIST, "Campaign_list")
    Campaign = nil
end

function Campaign.Close(_Handle,_Param)
    GUI:WndClose(Campaign.WndHandle)
end

function Campaign.RecvDetail()
    local campId = LuaParam[1]
    local npc = LuaParam[2]
    local desc = LuaParam[3]
    local award = LuaParam[4]
    RichEditClear(Campaign.WndHandle,"AwardRichEdit") 
    RichEditClear(Campaign.WndHandle,"DescRichEdit") 
    RichEditAppendString(Campaign.WndHandle, "AwardRichEdit", tostring(award))
    RichEditAppendString(Campaign.WndHandle, "DescRichEdit", tostring(desc))
end

Campaign.main()





--]]


Campaign = {}
function Campaign.main()
	local _Parent = LuaGlobal["AttachPartent"]
	GUI:WndSetPosM(_Parent, 30, 50)
	local _GUIHandle = 0
	--[[_Parent = GUI:WndCreateWnd(_Parent,"Campaign",0,30,50)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,937, 490)
		GUI:WndSetMoveWithLBM(_Parent)
	end--]]
	
	_GUIHandle = GUI:ImageCreate(_Parent,"mainWndBkg",0,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600079, 1850600081, 1850600085, 1850600087, 1850600083, 1850600080, 1850600086, 1850600082, 1850600084)
		GUI:WndSetSizeM(_GUIHandle,1050, 532)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"titleImgLeft",1850100038,389,10)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,97, 32)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"titleImgRight",1850100039,563,10)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,97, 32)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"title",497,7,63,29)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"活 动")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1850000385,1008,3)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,39, 39)
		--//注册关闭窗口
		GUI:WndRegistScript(_GUIHandle,1002, "Campaign.CloseWnd")
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"contentBkg",0,31,49)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
		GUI:WndSetSizeM(_GUIHandle,630, 455)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"mainContentBkg",0,50,88)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029,1850600026, 1850600032, 1850600028, 1850600030)
		GUI:WndSetSizeM(_GUIHandle,590, 395)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"activityTime",95,50,107,39)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"活动时间")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"activityName",268,50,107,39)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"活动名称")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"joinLevel",420,50,107,39)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"参加等级")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"operation",556,50,107,39)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"操作")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
	end
	
	
--[[	_GUIHandle = GUI:EditCreate(_Parent,"timeLine1",76,97,121,37)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine1",248,97,116,37)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"元宝嘉年华")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine1",430,97,58,37)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"100")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"statusLine1",526,95,101,37)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未开始")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"timeLine2",76,152,121,37)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine2",248,152,116,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"元宝嘉年华")
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine2",430,152,58,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"40")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"statusLine2",526,150,101,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未开始")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"timeLine3",76,207,121,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine3",248,207,116,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"元宝嘉年华")
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine3",430,207,58,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"40")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"statusLine3",526,205,101,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未开始")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"timeLine4",76,262,121,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine4",248,262,116,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"元宝嘉年华")
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine4",430,262,58,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"40")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"statusLine4",526,260,101,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未开始")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"timeLine5",76,317,121,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine5",248,317,116,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"元宝嘉年华")
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine5",430,317,58,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"40")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"statusLine5",526,315,101,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未开始")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"timeLine6",76,372,121,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine6",248,372,116,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"啊啊")
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine6",430,372,58,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"40")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"statusLine6",526,370,101,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未开始")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"timeLine7",76,427,121,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine7",248,427,116,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"膜拜城主")
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine7",430,427,58,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"40")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"statusLine7",526,425,101,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未开始")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn1",1851700000,535,95)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,86, 46)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn2",1851700000,535,150)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,86, 46)
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn3",1851700000,535,205)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,86, 46)
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn4",1851700000,535,260)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,86, 46)
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn5",1851700000,535,315)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndSetSizeM(_GUIHandle,86, 46)
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn6",1851700000,535,370)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndSetSizeM(_GUIHandle,86, 46)
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn7",1851700000,535,425)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 7)
		GUI:WndSetSizeM(_GUIHandle,86, 46)
		GUI:WndSetVisible(_GUIHandle, false)
	end--]]
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"detailBkg",0,682,49)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
		GUI:WndSetSizeM(_GUIHandle,333, 455)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"activityNameBkg",1850500021,650,51)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,360, 42)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"activityRewardBkg",1850100031,671,98)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,167, 40)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"activityReward",710,104,124,26)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"活动奖励：")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"activityRewardDetail",697,156,300,107)
	if _GUIHandle ~= 0 then
		GUI:RichEditAppendString(_GUIHandle,"dasd按时大大说都按时、随便打几个字意思一下。啊啊啊啊啊啊啊啊啊啊asdasdasdsa啊啊啊啊啊啊啊啊啊啊啊")
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"activityInfoBkg",1850100031,671,277)
	if _GUIHandle ~= 0 then
	
		
		GUI:WndSetSizeM(_GUIHandle,167, 40)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"activityInfo",710,282,124,26)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"活动说明：")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"activityInfoDetail",695,326,300,286)
	if _GUIHandle ~= 0 then
		GUI:RichEditAppendString(_GUIHandle,"dasd按时大大说都按时、随便打几个字意思一下。啊啊啊啊啊啊啊啊啊啊asdasdasdsa啊啊啊啊啊啊啊啊啊啊啊")
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"selectedActivityBkg",755,50,187,33)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"元宝嘉年华")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	
	Campaign.UIInit(_Parent)
end

--UI Logic Code Start
function Campaign.UIInit(_Handle)
	Campaign.handle = _Handle
	local ClipWndHandle = GUI:WndCreateWnd(_Handle,"CampaignListClipWnd",0,50,100)
	if ClipWndHandle then
		GUI:WndSetFlagsM(ClipWndHandle, flg_wndBase_useBkBuffer)
		GUI:WndSetSizeM(ClipWndHandle,590, 380)
		Campaign.ClipWndHandle = ClipWndHandle
	end
	
	Campaign.CreateRankList()
end

--//创建活动列表内容
function Campaign.CreateRankList()
	local _GUIHandle = 0
	local totalCount = 100
	local _Parent = Campaign.ClipWndHandle
	for i = 1, totalCount do
		_GUIHandle = GUI:EditCreate(_Parent,"sustainTime"..i,26,5+55*(i-1),121,37)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextColorM(_GUIHandle, 4290950816)
			GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
			GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:EditCreate(_Parent,"activityName"..i,198,5+55*(i-1),116,37)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextColorM(_GUIHandle, 4290950816)
			GUI:EditSetTextM(_GUIHandle,"元宝嘉年华"..i)
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:EditCreate(_Parent,"levelQuire"..i,380,5+55*(i-1),58,37)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
			GUI:EditSetTextM(_GUIHandle,"100")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:EditCreate(_Parent,"activityStatus"..i,476,5+55*(i-1),101,37)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextColorM(_GUIHandle, 4290950816)
			GUI:EditSetTextM(_GUIHandle,"未开始")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn"..i,1851700000,485,3+55*(i-1))
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 1)
			GUI:WndSetSizeM(_GUIHandle,86, 46)
			
			if i%2 == 0 then
				GUI:WndSetVisible(_GUIHandle, false)
			end
		end
	end
end

function Campaign.CloseWnd()
	GUI:WndClose(Campaign.handle)
end

Campaign.main()




