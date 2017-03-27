--
-- Author: miyezng
-- Date: 2016-08-22 16:56:38
--
CreateRole =
{
    job = 1,
    gender = 1,
    models =
    {
        {
            {
                1041400000, --男战待机
                1042000000, --女战待机
            },
            {
                1041200000, --男法待机
                1041800000, --女法待机
            },
            {
                1041000000, --男道待机
                1041600000, --女道待机
            },
            time = 50, --待机特效每帧时间(毫秒)
        },
        {
            {
                1041500000, --男战动作
                1042100000, --女战动作
            },
            {
                1041300000, --男法动作
                1041900000, --女法动作
            },
            {
                1041100000, --男道动作
                1041700000, --女道动作
            },
            time = 60, --动作特效每帧时间(毫秒)
        },
    },
}
function CreateRole.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage",1910100105,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end


    _GUIHandle = GUI:ImageCreate(_Parent,"Model",1041400000,-130,-160)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetEnableM(_GUIHandle, false)
    end


    _GUIHandle = GUI:ImageCreate(_Parent,"ModelEffect",1041500000,-130,-160)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetEnableM(_GUIHandle, false)
    end


    _GUIHandle = GUI:ImageCreate(_Parent, "RoleNameBack", 1910100004, 633, 440)
    if 0 ~= _GUIHandle then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end


    _GUIHandle = GUI:EditCreate(_Parent,"RoleName",755,450,181,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetActiveM(_GUIHandle, true)
        GUI:EditSetMaxCharNum(_GUIHandle, 14)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end



    _GUIHandle = GUI:ButtonCreate(_Parent,"Create",1910100027,711,500)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Back",1910100031,905,710)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end

    _GUIHandle = GUI:ImageCreate(_Parent, "RoleJobBack", 1910100005, 700, 150)
    if 0 ~= _GUIHandle then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleZhanshi",1910100007,700,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"战士")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
        GUI:ButtonSetShowDisable(_GUIHandle, true)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "CreateRole.onSelJob")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleFashi",1910100011,700,250)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"法师")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
        GUI:ButtonSetShowDisable(_GUIHandle, true)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "CreateRole.onSelJob")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleDaoshi",1910100015,700,300)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"道士")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
        GUI:ButtonSetShowDisable(_GUIHandle, true)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "CreateRole.onSelJob")
    end

    _GUIHandle = GUI:ImageCreate(_Parent, "RoleGenderBack", 1910100006, 730, 370)
    if 0 ~= _GUIHandle then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ButtonMale",1910100019,790,380)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,59, 52)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
        GUI:ButtonSetShowDisable(_GUIHandle, true)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "CreateRole.onSelGender")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ButtonFemale",1910100023,830,380)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,59, 52)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
        GUI:ButtonSetShowDisable(_GUIHandle, true)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "CreateRole.onSelGender")
    end

    _GUIHandle = GUI:ImageCreate(_Parent, "Description", 1910100001, 60, 142)
    if 0 ~= _GUIHandle then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end

    CreateRole.UIInit(_Parent)
end

--UI Logic Code Start
function CreateRole.UIInit(_Handle)
    CreateRole.WndHandle = _Handle
    local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, "BackImage")
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)
        UI:Lua_GetScreenSize()
        local Width = LuaRet[1]
        local Height = LuaRet[2]
        GUI:WndSetSizeM(_GUIHandle, Width, Height)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end

    CreateRole.updateModel()
end

function CreateRole.onSelGender(_Check)
    local index = GUI:WndGetParam(_Check)
    if index == CreateRole.gender then
        return
    end

    local _GUIHandle, _Button = 0, 0
    if index == 1 then
        _GUIHandle = GUI:WndFindWindow(_Check, "parent,CheckFemale")
        _Button = GUI:WndFindWindow(_Check, "parent,ButtonMale")
    elseif index == 2 then
        _GUIHandle = GUI:WndFindWindow(_Check, "parent,CheckMale")
        _Button = GUI:WndFindWindow(_Check, "parent,ButtonFemale")
    end

    if 0 ~= _GUIHandle then
        GUI:CheckBoxSetCheck(_GUIHandle, false)
    end

    GUI:CheckBoxSetCheck(_Check, true)

    if 0 ~= _Button then
        GUI:WndClick(_Button)
    end

    CreateRole.gender = index

    CreateRole.updateModel()
end

function CreateRole.updateModel()
    local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, "Model")
    if 0 ~= _GUIHandle then
        GUI:WndSetVisible(_GUIHandle, false)
    end

    _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, "ModelEffect")
    if 0 ~= _GUIHandle then
        GUI:WndSetVisible(_GUIHandle, true)
        local model = CreateRole.models[2][CreateRole.job][CreateRole.gender]
        GUI:WndSetImageID(_GUIHandle, model)
        GUI:ImageSetAnimate(_GUIHandle, CreateRole.models[2].time, 1, "CreateRole.endEffect")
    end
end

function CreateRole.endEffect()
    local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, "ModelEffect")
    if 0 ~= _GUIHandle then
        GUI:WndSetVisible(_GUIHandle, false)
    end

    _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, "Model")
    if 0 ~= _GUIHandle then
        GUI:WndSetVisible(_GUIHandle, true)
        local model = CreateRole.models[1][CreateRole.job][CreateRole.gender]
        GUI:WndSetImageID(_GUIHandle, model)
        GUI:ImageSetAnimate(_GUIHandle, CreateRole.models[1].time, 0, "")
    end
end

function CreateRole.onSelJob(_Button)
    local index = GUI:WndGetParam(_Button)
    if index == CreateRole.job then
        return
    end

    CreateRole.job = index

    CreateRole.update()
end

function CreateRole.update()
    local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, "Description")
    if 0 ~= _GUIHandle then
        GUI:WndSetImageID(_GUIHandle, tonumber("191010000"..CreateRole.job))
    end

    CreateRole.updateModel()
end

CreateRole.main()