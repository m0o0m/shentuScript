RoleSkillSet = {}
function RoleSkillSet.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    --左边的九宫格背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,40,80)
    if _GUIHandle ~= 0 then
       GUI:WndSetSizeM(_GUIHandle,440, 436)
       GUI:WndSetEnableM(_GUIHandle, false)
   end

    --右背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,500,80)
    if _GUIHandle ~= 0 then
       GUI:WndSetSizeM(_GUIHandle,600, 436)
       GUI:WndSetEnableM(_GUIHandle, false)
   end

   _GUIHandle = GUI:ButtonCreate(_Parent,"ClearSetBtn",1850000307,952,440)
   if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"清除设置")
    GUI:WndSetParam(_GUIHandle,0)
    GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.ClearSkillBtnUp")
    end

    --9个技能按钮
    _GUIHandle = GUI:ImageCreate(_Parent,"AttackBtn",1850000131,744,219)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn1",1850500033,661,123)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,1)
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.SetSkillImageBtnUp")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn2",1850500033,620,213)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,2)
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.SetSkillImageBtnUp")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn3",1850500033,634,304)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,3)
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.SetSkillImageBtnUp")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn4",1850500033,708,361)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,4)
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.SetSkillImageBtnUp")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn5",1850500033,805,355)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,5)
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.SetSkillImageBtnUp")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn6",1850500033,882,299)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,6)
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.SetSkillImageBtnUp")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn7",1850500033,895,208)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,7)
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.SetSkillImageBtnUp")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn8",1850500033,849,120)
    GUI:WndSetParam(_GUIHandle,8)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.SetSkillImageBtnUp")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn9",1850500033,754,92)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,9)
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.SetSkillImageBtnUp")
    end

    --技能图标
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg1",0,668,130)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,1)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg2",0,627,219)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,2)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg3",0,641,311)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,3)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg4",0,715,368)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,4)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg5",0,812,362)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,5)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg6",0,889,306)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,6)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg7",0,902,215)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,7)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg8",0,856,126)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,8)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg9",0,761,99)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle,9)
    end
    

    --数字背景图
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg1",1850000031,757,92)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg2",1850000031,661,124)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg3",1850000031,619,215)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg4",1850000031,636,302)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg5",1850000031,710,362)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg6",1850000031,806,356)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg7",1850000031,885,298)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg8",1850000031,899,209)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg9",1850000031,852,119)
    if _GUIHandle ~= 0 then
    end


    --数字
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg1",1850000115,763,95)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg2",1850000107,668,128)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg3",1850000108,625,219)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg4",1850000109,643,305)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg5",1850000110,716,366)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg6",1850000111,812,360)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg7",1850000112,891,303)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg8",1850000113,905,213)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg9",1850000114,858,124)
    if _GUIHandle ~= 0 then
    end 

    --清除按钮
    _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn1",1850500008,709,117)
    if _GUIHandle ~= 0 then
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle,1)
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.ClearSingleSkillBtnUp")    
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn2",1850500008,668,210)
    if _GUIHandle ~= 0 then
      GUI:WndSetVisible(_GUIHandle, false)
      GUI:WndSetParam(_GUIHandle,2)
      GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.ClearSingleSkillBtnUp")    
  end

  _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn3",1850500008,681,297)
  if _GUIHandle ~= 0 then
      GUI:WndSetVisible(_GUIHandle, false)
      GUI:WndSetParam(_GUIHandle,3)
      GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.ClearSingleSkillBtnUp")    
  end

  _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn4",1850500008,756,356)
  if _GUIHandle ~= 0 then
      GUI:WndSetVisible(_GUIHandle, false)
      GUI:WndSetParam(_GUIHandle,4)
      GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.ClearSingleSkillBtnUp")    
  end

  _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn5",1850500008,851,349)
  if _GUIHandle ~= 0 then
      GUI:WndSetVisible(_GUIHandle, false)
      GUI:WndSetParam(_GUIHandle,5)
      GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.ClearSingleSkillBtnUp")    
  end

  _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn6",1850500008,930,294)
  if _GUIHandle ~= 0 then
      GUI:WndSetVisible(_GUIHandle, false)
      GUI:WndSetParam(_GUIHandle,6)
      GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.ClearSingleSkillBtnUp")    
  end

  _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn7",1850500008,943,201)
  if _GUIHandle ~= 0 then
      GUI:WndSetVisible(_GUIHandle, false)
      GUI:WndSetParam(_GUIHandle,7)
      GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.ClearSingleSkillBtnUp")    
  end

  _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn8",1850500008,895,112)
  if _GUIHandle ~= 0 then
      GUI:WndSetVisible(_GUIHandle, false)
      GUI:WndSetParam(_GUIHandle,8)
      GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.ClearSingleSkillBtnUp")    
  end

  _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn9",1850500008,802,87)
  if _GUIHandle ~= 0 then
      GUI:WndSetVisible(_GUIHandle, false)
      GUI:WndSetParam(_GUIHandle,9)
      GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.ClearSingleSkillBtnUp")    
  end

  RoleSkillSet.UIInit(_Parent)
end

--UI Logic Code Start
RoleSkillSet.WndHandle = 0
RoleSkillSet.ClipWndHandle = 0
RoleSkillSet.CleanStatus = false
RoleSkillSet.skill_list = {}
RoleSkillSet.curActiveSkillSite = 0
RoleSkillSet.curSelLearnedSite = 0
function RoleSkillSet.UIInit(_Handle)
    RoleSkillSet.WndHandle = _Handle

    local BgImg1 = GUI:WndFindWindow(RoleSkillSet.WndHandle, "BgImage1")
    if BgImg1 then
        GUI:ImageSetAroundImage(BgImg1, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
    end 

    local BgImg2 = GUI:WndFindWindow(RoleSkillSet.WndHandle, "BgImage2")
    if BgImg2 then
        GUI:ImageSetAroundImage(BgImg2, 1850400015, 1850400017, 1850400021, 1850400023, 1850400019, 1850400016, 1850400022, 1850400018, 1850400020)
    end 

    RoleSkillSet.ClipWndHandle = GUI:WndCreateWnd(RoleSkillSet.WndHandle, "RoleSkillSetClipWnd", 0, 55, 100)
    if RoleSkillSet.ClipWndHandle then
        GUI:WndSetSizeM(RoleSkillSet.ClipWndHandle, 400, 400)
        GUI:WndSetFlagsM(RoleSkillSet.ClipWndHandle, flg_wndBase_useBkBuffer)
    end
    RoleSkillSet.CreateUI()
    RoleSkillSet.UpdateSkillBarData()
end

-- 更新右边快捷技能栏
function RoleSkillSet.UpdateSkillBarData()
    for i = 0 , 9 do
        local skillID = CL:SkillBarGetItemIdByPos(i)
        if skillID ~= 0 then
            dbg("skillID ------------------------ = "..tostring(skillID))
            local indexStr = tostring(i+1)
            local _Parent = RoleSkillSet.WndHandle
            local _ImageHandle = GUI:WndFindWindow(_Parent, "SkillImg"..indexStr)
            if _ImageHandle then
                if CL:GetSkillTemplatePropByID(skillID, SKILL_PROP_ICON) then
                    local iconID = LuaRet
                    iconID = ConvertSkillIconIdimageId(iconID)
                    GUI:WndSetImageID(_ImageHandle, iconID)
                    GUI:WndSetEnableM(_ImageHandle, false)
                end
                
            end
        end
    end
end

-- 左边已学习的技能
function RoleSkillSet.CreateUI()
    local skillcount = 0
    if CL:GetPlayerSelfSkillList() then
        local i = 1
        --k SkillID
        for k, v in pairs(LuaRet) do
            -- dbg("k = "..tostring(k))
            -- dbg("i = "..tostring(i))
            RoleSkillSet.skill_list[i] = k
            -- dbg("skillID = "..tostring(RoleSkillSet.skill_list[i]))
            i = i + 1
            skillcount = skillcount + 1
        end
    end
    dbg("leng = "..skillcount)

    local intevalY = 126
    local intevalX = 140
    local offsetX = 20
    local offsetY = 0
    local _Parent = RoleSkillSet.ClipWndHandle
    for i = 0, skillcount - 1 do
        local indexStr = tostring(i+1)
        local xIndex = i % 3
        local yIndex = math.floor(i / 3)
        --技能背景图片
        
        local skillID = RoleSkillSet.skill_list[i + 1]
        local _GUIHandle = GUI:ImageCreate(_Parent,"SkillItemBg"..indexStr,1850500033, offsetX + intevalX *xIndex , offsetY + intevalY * yIndex)
        if _GUIHandle ~= 0 then
        end

        
        if CL:GetSkillTemplatePropByID(skillID, SKILL_PROP_ICON) then
            local iconID = LuaRet
            --技能图标
            _GUIHandle = GUI:ImageCreate(_Parent,"SkillItemImg"..indexStr,0,offsetX + intevalX * xIndex + 7, offsetY + intevalY * yIndex + 7)
            if _GUIHandle ~= 0 then
                GUI:ImageSetCheckPoint(_GUIHandle, 0)
                GUI:WndSetParam(_GUIHandle, skillID)
                GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkillSet.SetSkillItemBtnUp")
                iconID = ConvertSkillIconIdimageId(iconID)
                GUI:WndSetImageID(_GUIHandle, iconID)
            end
        end

        if CL:GetSkillTemplatePropByID(skillID, SKILL_PROP_NAME) then
            local Name = LuaRet            
            _GUIHandle = GUI:EditCreate(_Parent,"SkillItemEdit"..indexStr,offsetX + intevalX * xIndex - 10, offsetY + intevalY * yIndex +92,100,20)
            if _GUIHandle ~= 0 then
                GUI:WndSetEnableM(_GUIHandle, false)
                GUI:EditSetFontCenter(_GUIHandle)
                GUI:EditSetTextM(_GUIHandle, Name)
            end 
        end
    end
end

--清除设置
function RoleSkillSet.ClearSkillBtnUp(_Handle)
    for i = 1, 9 do
        local indexStr = tostring(i)
        local _GUIHandle = GUI:WndFindWindow(RoleSkillSet.WndHandle, "SkillDestBtn"..indexStr )
        if _GUIHandle then
            GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
        end
    end
    
    if _Handle then
        if not RoleSkillSet.CleanStatus then
            GUI:WndSetTextM(_Handle, "清除完毕")
        else
            GUI:WndSetTextM(_Handle, "清除设置")
        end
        RoleSkillSet.CleanStatus = not RoleSkillSet.CleanStatus
    end

    local _Parent = RoleSkillSet.WndHandle

    for i = 1, 9 do
        local indexStr = tostring(i)
        local _GUIHandle = GUI:WndFindWindow(_Parent, "ClearBtn"..indexStr)
        local _ImageHandle = GUI:WndFindWindow(_Parent, "SkillImg"..indexStr)
        local id = GUI:ImageGetImageID(_ImageHandle)
        if id ~= 0 then
            if _GUIHandle then

                GUI:WndSetVisible(_GUIHandle, RoleSkillSet.CleanStatus)    
            end
        end
    end
end

-- 清除快捷栏技能
function RoleSkillSet.ClearSingleSkillBtnUp(_Handle)
    dbg("param = "..tostring(_Handle))
    local _Param = GUI:WndGetParam(_Handle)
    local indexStr = tostring(_Param)
    local _Parent = RoleSkillSet.WndHandle
    local _GUIHandle = GUI:WndFindWindow(_Parent, "ClearBtn"..indexStr)
    local _ImageHandle = GUI:WndFindWindow(_Parent, "SkillImg"..indexStr)
    if _GUIHandle then
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetImageID(_ImageHandle, 0)
    end
end

--激活快捷栏
function RoleSkillSet.SetSkillImageBtnUp(_Handle)
    if RoleSkillSet.CleanStatus then return end
    local _Param = GUI:WndGetParam(_Handle)
    dbg("param = "..tostring(_Param))

    for i = 1, 9 do
        local indexStr = tostring(i)
        local _GUIHandle = GUI:WndFindWindow(RoleSkillSet.WndHandle, "SkillDestBtn"..indexStr )
        if _GUIHandle then
            GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
        end
    end

    if _Handle then
        GUI:ButtonSetIsActivePageBtn(_Handle, true)    
        RoleSkillSet.curActiveSkillSite = _Param
    end

end

--设置快捷技能
function RoleSkillSet.SetSkillItemBtnUp(_Handle)
    if RoleSkillSet.CleanStatus then return end
    local skillID = GUI:WndGetParam(_Handle)
    dbg("SkillID = "..tostring(skillID))
    local site = RoleSkillSet.curActiveSkillSite
    dbg("cur site =  "..tostring(site))
    if site ~= 0 then
        local imageID = 0
        if skillID ~= 0 then
            dbg("skillID //////// = "..tostring(skillID))
            if CL:GetSkillTemplatePropByID(skillID, SKILL_PROP_ICON) then
                local imageID = LuaRet
                imageID = ConvertSkillIconIdimageId(imageID)
                dbg("imageID //////= "..tostring(imageID))
                local _GUIHandle = GUI:WndFindWindow(RoleSkillSet.WndHandle, "SkillImg"..tostring(site))
                if _GUIHandle then
                    dbg("imageID = "..tostring(imageID))
                    GUI:WndSetImageID(_GUIHandle, tonumber(imageID))
                    local _GUIHandle = GUI:WndFindWindow(RoleSkillSet.WndHandle, "SkillDestBtn"..site )
                    if _GUIHandle then
                        GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
                    end
                    RoleSkillSet.curActiveSkillSite = 0
                end
            end
        end
    end
end

RoleSkillSet.main()
























































