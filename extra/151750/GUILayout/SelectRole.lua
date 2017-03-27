SelectRole = {}
local color = {}
color.text1 = GUI:MakeARGB(255,243,185,117)
color.text2 = GUI:MakeARGB(255,198,192,163)
color.number = GUI:MakeARGB(255,55,181,111)
color.red = GUI:MakeARGB(255,209,18,7)

function SelectRole.CreateRole(_Handle)
    CL:ShowCreateRoleWnd()
end

function SelectRole.SelectRoleImage(_Handle)
    local index = GUI:WndGetParam(_Handle) + 1
    dbg("index = "..tostring(index))
    SelectRole.GroupVisible(SelectRole.CtrlGroup[1], false)
    SelectRole.GroupVisible(SelectRole.CtrlGroup[2], false)
    SelectRole.GroupVisible(SelectRole.CtrlGroup[3], false)

    SelectRole.GroupVisible(SelectRole.CtrlGroup[index], true)

    
    -- dbg("SelectRole.LevelNameTb[index][1] = "..tostring(SelectRole.LevelNameTb[index][1]))
    -- dbg("SelectRole.LevelNameTb[index][2] = "..tostring(SelectRole.LevelNameTb[index][2]))
    -- _GUIHandle = GUI:WndFindWindow(SelectRole.WndHandle, "MobilePlayerName")
    -- if _GUIHandle ~= 0 then
    --     if SelectRole.LevelNameTb[index] ~= nil then
    --         GUI:WndSetVisible(_GUIHandle, true)
    --         GUI:EditSetTextM(_GUIHandle, SelectRole.LevelNameTb[index][1])
    --     end
    -- end

    -- local _GUIHandle = GUI:WndFindWindow(SelectRole.WndHandle, "MobilePlayerLevel")
    -- if _GUIHandle ~= 0 then
    --     if SelectRole.LevelNameTb[index] ~= nil then
    --         GUI:WndSetVisible(_GUIHandle, true)
    --         GUI:EditSetTextM(_GUIHandle, tostring(SelectRole.LevelNameTb[index][2]))
    --     end
    -- end

    

    for i = 1, 3 do
        local _ID = "RoleImageMobile"..tostring(i-1)
        local _GUIHandle = GUI:WndFindWindow(SelectRole.WndHandle, _ID)
        dbg("_ID  = "..tostring(_ID))
        if _GUIHandle then
            local imageID = GUI:WndGetImageID(_GUIHandle)
            dbg("imageID  = "..tostring(imageID))
            if 1852500037 == imageID then
                GUI:WndSetImageID(_GUIHandle, 1852500038)
            elseif 1852500039 == imageID then
                GUI:WndSetImageID(_GUIHandle, 1852500040)
            elseif 1852500033 == imageID then
                GUI:WndSetImageID(_GUIHandle, 1852500034)
            elseif 1852500035 == imageID then
                GUI:WndSetImageID(_GUIHandle, 1852500036)
            elseif 1852500041 == imageID then
                GUI:WndSetImageID(_GUIHandle, 1852500042)
            elseif 1852500043 == imageID then
                GUI:WndSetImageID(_GUIHandle, 1852500044)
            end
        end
    end
    local imageID = GUI:WndGetImageID(_Handle)
    if imageID ~= 0 then
        
        if 1852500038 == imageID then
            GUI:WndSetImageID(_Handle, 1852500037)
        elseif 1852500040 == imageID then
            GUI:WndSetImageID(_Handle, 1852500039)
        elseif 1852500034 == imageID then
            GUI:WndSetImageID(_Handle, 1852500033)
        elseif 1852500036 == imageID then
            GUI:WndSetImageID(_Handle, 1852500035)
        elseif 1852500042 == imageID then
            GUI:WndSetImageID(_Handle, 1852500041)
        elseif 1852500044 == imageID then
            GUI:WndSetImageID(_Handle, 1852500043)
        end
    end


end

function SelectRole.main()
    local _Parent = LuaGlobal["AttachPartent"]
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()
    local _GUIHandle = 0
    

    _GUIHandle = GUI:ImageCreate(_Parent,"BkImg",1852500054,(_DeviceSizeX - 1136) / 2 , (_DeviceSizeY - 640)/2)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1136, 640)
		GUI:ImageSetFitSize(_GUIHandle, true)
    end

    local offsetX = 200
    --创建背景
    --缺战士创建图
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleImageCreate0", 1852500046,(_DeviceSizeX - 359) / 2  - offsetX, (_DeviceSizeY - 378) / 2 + 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle, 359, 378)
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "SelectRole.CreateRole")
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"RoleImageCreate1", 1852500045,(_DeviceSizeX - 358) / 2, (_DeviceSizeY - 378) / 2 + 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle, 359, 378)
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "SelectRole.CreateRole")
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleImageCreate2", 1852500045,(_DeviceSizeX - 359) / 2 + offsetX, (_DeviceSizeY - 378) / 2 + 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle, 359, 378)
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "SelectRole.CreateRole")
    end

    

    --角色job图
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleImageMobile0", 0,(_DeviceSizeX - 359) / 2  - offsetX, (_DeviceSizeY - 378) / 2 + 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "SelectRole.SelectRoleImage")
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"RoleImageMobile1", 0,(_DeviceSizeX - 358) / 2, (_DeviceSizeY - 378) / 2 + 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 1)
      --  GUI:WndSetSizeM(_GUIHandle, 359, 378)
          GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "SelectRole.SelectRoleImage")
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"RoleImageMobile2", 0,(_DeviceSizeX - 359) / 2 + offsetX, (_DeviceSizeY - 378) / 2 + 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 2)
      --  GUI:WndSetSizeM(_GUIHandle, 359, 378)
         GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "SelectRole.SelectRoleImage")
    end

    
  
    

    _GUIHandle = GUI:ImageCreate(_Parent,"NameBack0", 1852500024,(_DeviceSizeX - 294) / 2 - offsetX, 96)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle, 359, 378)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"NameBack1", 1852500024,(_DeviceSizeX - 294) / 2 , 96)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle, 359, 378)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"NameBack2", 1852500024,(_DeviceSizeX - 294) / 2 + offsetX, 96)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle, 359, 378)
    end

    
    _GUIHandle = GUI:EditCreate(_Parent,"Player0Name",_DeviceSizeX / 2 - 25 - offsetX, 122,200,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"一二三四五六七1")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    

    _GUIHandle = GUI:EditCreate(_Parent,"Player1Name",_DeviceSizeX / 2 - 25, 122,200,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"一二三四五六七2")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player2Name",_DeviceSizeX / 2 - 25 + offsetX, 122,200,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"一二三四五六七3")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"StaticEditLv0",_DeviceSizeX / 2 - 120 - offsetX, 122 , 40 ,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4279070077)
        GUI:EditSetTextM(_GUIHandle,"Lv")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"StaticEditLv1",_DeviceSizeX / 2 - 120, 122 , 40 ,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4279070077)
        GUI:EditSetTextM(_GUIHandle,"Lv")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"StaticEditLv2",_DeviceSizeX / 2 - 120 + offsetX , 122 , 40 ,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4279070077)
        GUI:EditSetTextM(_GUIHandle,"Lv")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player0Level",_DeviceSizeX /2 - 90 - offsetX, 122 ,40,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4279070077)
        --GUI:EditSetTextM(_GUIHandle,"100")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Player1Level",_DeviceSizeX /2 - 90, 122 ,40,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4279070077)
        --GUI:EditSetTextM(_GUIHandle,"100")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player2Level",_DeviceSizeX /2 - 90 + offsetX, 122 ,40,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4279070077)
        --GUI:EditSetTextM(_GUIHandle,"100")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"EnterGame",1852500000, (_DeviceSizeX - 182) /2, _DeviceSizeY - 100)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    --msg(tostring(_DeviceSizeX))
	--msg(tostring(_DeviceSizeY))
    _GUIHandle = GUI:ButtonCreate(_Parent,"DeleteRole",1852500050, _DeviceSizeX - 154, _DeviceSizeY - 86)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Back",1852500029, 34, _DeviceSizeY - 86)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    

    
        SelectRole.UIInit(_Parent)
end

--UI Logic Code Start
SelectRole.CtrlGroup = {
	{"NameBack0", "Player0Name", "StaticEditLv0", "Player0Level"},
    {"NameBack1", "Player1Name", "StaticEditLv1", "Player1Level"},
    {"NameBack2", "Player2Name", "StaticEditLv2", "Player2Level"}
}


-- job ,gender
SelectRole.JobGender = {
    {{1852500038, 1852500037}, {1852500040, 1852500039}},
    {{1852500034,1852500033}, {1852500036, 1852500035}},
    {{1852500042,1852500041}, {1852500044,1852500043}}
}
function SelectRole.UIInit(_Handle)
	SelectRole.WndHandle = _Handle
	--是否在加载界面时自动发送请求协议，自动发送会导致两次回应而只调用一次回调函数
	LuaGlobal['SelectRole_AutoGetList'] = false 
	CL:GetSelectRoleList("SelectRole", "SelectRole.GetRoleList")

end

SelectRole.LevelNameTb = {}


function SelectRole.GetRoleList()
	local list = LuaParam[1]
	if #list == 0 then
        local _GUIHandle = GUI:WndFindWindow(SelectRole.WndHandle, "NameBack")
        if _GUIHandle ~= 0 then
            GUI:WndSetVisible(_GUIHandle, false)
        end
        _GUIHandle = GUI:WndFindWindow(SelectRole.WndHandle, "MobileStaticEditLv")
       if _GUIHandle ~= 0 then
            GUI:WndSetVisible(_GUIHandle, false)
        end
		if SelectRole_ShowCreateRoleWnd == nil then
			SelectRole_ShowCreateRoleWnd = 1
			CL:ShowCreateRoleWnd()
            return
		end
	end

    SelectRole.GroupVisible(SelectRole.CtrlGroup[1], false)
    SelectRole.GroupVisible(SelectRole.CtrlGroup[2], false)
    SelectRole.GroupVisible(SelectRole.CtrlGroup[3], false)

    for i = 1, #list do
        local _ID = "RoleImageMobile"..tostring(i-1)
        dbg("RoleImage"..tostring(_ID))
        local _GUIHandle = GUI:WndFindWindow(SelectRole.WndHandle, _ID)
        if _GUIHandle then
            local name = list[i][1]
            local level = list[i][2]
            local job = list[i][3]
            local gender = list[i][4]
            local lastSelected = list[i][5]

            SelectRole.LevelNameTb[i]= {}
            SelectRole.LevelNameTb[i][1]= tostring(name)
            SelectRole.LevelNameTb[i][2]= level
            dbg("tostring(name)  ="..tostring(SelectRole.LevelNameTb[i][1]))
            dbg("job =  "..tostring(job).." , gender = "..tostring(gender))
            dbg("lastSelected = "..tostring(lastSelected))
            if job ~= nil or job ~= 0 then
               if gender ~= nil then
                    local imageId = SelectRole.JobGender[job][gender][lastSelected + 1]
                    dbg("set image id = "..tostring(imageId))
                    GUI:WndSetImageID(_GUIHandle, imageId)    
                    if lastSelected == 1 then
                        SelectRole.GroupVisible(SelectRole.CtrlGroup[i], true)
                        dbg("lastSelected = "..tostring(lastSelected))
                        _GUIHandle =  GUI:WndFindWindow(SelectRole.WndHandle, "MobilePlayerLevel")
                        if _GUIHandle then
                            GUI:EditSetTextM(_GUIHandle, tostring(level))
                        end
                        _GUIHandle =  GUI:WndFindWindow(SelectRole.WndHandle, "MobilePlayerName")
                        if _GUIHandle then
                            GUI:EditSetTextM(_GUIHandle, tostring(name))
                        end
                    end

               end
            end         
        end

        local _ID = "RoleImageCreate"..tostring(i-1)
        dbg("RoleImageCreate"..tostring(_ID))
        _GUIHandle = GUI:WndFindWindow(SelectRole.WndHandle, _ID)
        if _GUIHandle then
            GUI:WndSetVisible(_GUIHandle, false)
        end
    end
    

end

function SelectRole.GroupVisible(group, visible)
	for i = 1, #group do
		local _GUIHandle = GUI:WndFindChildM(SelectRole.WndHandle, group[i])
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, visible)
		end
	end
end

SelectRole.main()