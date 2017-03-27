--
-- Author: miyezng
-- Date: 2016-09-22 11:59:07
-- Last Modified by:   miyezng
-- Last Modified time: 2016-10-26 15:02:47
--
SelectRole =
{
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
            time = 60, --待机特效每帧时间(毫秒)
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

function SelectRole.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _GUIHandle = GUI:ImageCreate(_Parent,"BackPic",1910100105,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Back",1910100031,905,720)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"EnterGameEx",1910100053,380,650)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "SelectRole.onEnterGame")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"RestoreRole",1910100037,905,600)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "SelectRole.onResRole")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"DeleteRoleEx",1910100041,905,635)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "SelectRole.onDelRole")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"QuiteGame",1910100045,905,670)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"CreateRole",1910100049,905,563)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end

    for i=1,3 do
        local _Wnd = GUI:WndCreateWnd(_Parent, "Role"..i, 0, 280*i-100, 150)
        if 0 ~= _Wnd then
            GUI:WndSetVisible(_Wnd, false)
            GUI:WndSetPosByDeviceSize(_Wnd, true, false)
            local _Handle = GUI:ImageCreate(_Wnd, "InfoBack", 1910100035, 0, 0)
            if 0 ~= _Handle then
                GUI:WndSetCanRevMsg(_Handle, false)
            end
            _Handle = GUI:EditCreate(_Wnd, "Name", 30, 2, 84, 16)
            if 0 ~= _Handle then
                GUI:WndSetCanRevMsg(_Handle, false)
                GUI:WndSetEnableM(_Handle, false)
                GUI:EditSetCanEdit(_Handle, false)
                GUI:WndSetFlagsM(_Handle, flg_dlgEdit_textInCenter)
            end
            _Handle = GUI:EditCreate(_Wnd, "Job", 40, 20, 24, 20)
            if 0 ~= _Handle then
                GUI:WndSetCanRevMsg(_Handle, false)
                GUI:WndSetEnableM(_Handle, false)
                GUI:EditSetCanEdit(_Handle, false)
            end
            _Handle = GUI:EditCreate(_Wnd, "Level", 80, 20, 24, 20)
            if 0 ~= _Handle then
                GUI:WndSetCanRevMsg(_Handle, false)
                GUI:WndSetEnableM(_Handle, false)
                GUI:EditSetCanEdit(_Handle, false)
            end
            _Handle = GUI:ImageCreate(_Wnd, "Model", 0, -560, -300)
            if 0 ~= _Handle then
                GUI:WndSetParam(_Handle, i)
            end
        end
    end

    SelectRole.UIInit(_Parent)
end

--UI Logic Code Start
function SelectRole.UIInit(_Handle)
    SelectRole.WndHandle = _Handle
    local _GUIHandle = GUI:WndFindChildM(SelectRole.WndHandle, "BackPic")
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)
        UI:Lua_GetScreenSize()
        local Width = LuaRet[1]
        local Height = LuaRet[2]
        GUI:WndSetSizeM(_GUIHandle, Width, Height)
    end

    SelectRole.sel = 0
    CL:GetSelectRoleList("获取角色信息", "SelectRole.updateRoleList")
end

function SelectRole.updateRoleList()
    SelectRole.list = LuaParam[1]
    for i=1,3 do
        local _Wnd = GUI:WndFindChildM(SelectRole.WndHandle, "Role"..i)
        if 0 ~= _Wnd then
            local Name, Job, Level, Gender = "", 0, "", 0
            local t = SelectRole.list[i]
            if t ~= nil then
                Name = t[1]
                Job = t[3]
                Level = tostring(t[2])
                Gender = t[4]
                if t[5] == 1 then
                    SelectRole.sel = i
                end
                GUI:WndSetVisible(_Wnd, true)
            else
                GUI:WndSetVisible(_Wnd, false)
            end
            local _Handle = GUI:WndFindChildM(_Wnd, "Name")
            if 0 ~= _Handle then
                GUI:EditSetTextM(_Handle, Name)
            end
            local strJob = Job == 0 and "" or RDJOBName[Job]
            _Handle = GUI:WndFindChildM(_Wnd, "Job")
            if 0 ~= _Handle then
                GUI:EditSetTextM(_Handle, strJob)
            end
            _Handle = GUI:WndFindChildM(_Wnd, "Level")
            if 0 ~= _Handle then
                GUI:EditSetTextM(_Handle, Level)
            end
        end
    end
    SelectRole.update()
end

function SelectRole.update()
    for i=1,3 do
        local _Wnd = GUI:WndFindChildM(SelectRole.WndHandle, "Role"..i)
        if 0 ~= _Wnd and GUI:WndGetVisible(_Wnd) then
            local _Handle = GUI:WndFindChildM(_Wnd, "Model")
            if 0 ~= _Handle then
                local t = SelectRole.list[i]
                if nil ~= t then
                    local model = SelectRole.models[1][t[3]][t[4]]
                    GUI:WndSetImageID(_Handle, model)
                    GUI:ImageSetAnimate(_Handle, SelectRole.models[1].time, 0, "")
                    if SelectRole.sel == i then
                        model = SelectRole.models[2][t[3]][t[4]]
                        GUI:WndSetImageID(_Handle, model)
                        GUI:ImageSetAnimate(_Handle, SelectRole.models[2].time, 1, "SelectRole.onEffectEnd")
                        GUI:WndClearScript(_Handle, RDWndBaseCL_mouse_lbClick)
                    else
                        GUI:WndRegistScript(_Handle, RDWndBaseCL_mouse_lbClick, "SelectRole.onSelect")
                    end
                end
            end
            _Handle = GUI:WndFindChildM(_Wnd, "InfoBack")
            if 0 ~= _Handle then
                GUI:ImageSetGray(_Handle, SelectRole.sel ~= i)
            end
            local color = SelectRole.sel == i and 4294967295 or 4284637794
            _Handle = GUI:WndFindChildM(_Wnd, "Name")
            if 0 ~= _Handle then
                GUI:EditSetTextColor(_Handle, color)
            end
            _Handle = GUI:WndFindChildM(_Wnd, "Job")
            if 0 ~= _Handle then
                GUI:EditSetTextColor(_Handle, color)
            end
            _Handle = GUI:WndFindChildM(_Wnd, "Level")
            if 0 ~= _Handle then
                GUI:EditSetTextColor(_Handle, color)
            end
        end
    end
end

function SelectRole.onEffectEnd(_Handle)
    GUI:WndRegistScript(_Handle, RDWndBaseCL_mouse_lbClick, "SelectRole.onSelect")
    local sel = GUI:WndGetParam(_Handle)
    local t = SelectRole.list[sel]
    local model = SelectRole.models[1][t[3]][t[4]]
    GUI:WndSetImageID(_Handle, model)
    GUI:ImageSetAnimate(_Handle, SelectRole.models[1].time, 0, "")
end

function SelectRole.onSelect(_Handle)
    local sel = GUI:WndGetParam(_Handle)
    if sel ~= SelectRole.sel then
        SelectRole.sel = sel
    end
    SelectRole.update()
end

function SelectRole.onEnterGame(_Handle)
    if #SelectRole.list == 0 then
        MessageBox(0, "请先创建角色再进入游戏！")
        return
    end
    if SelectRole.sel == 0 then
        MessageBox(0, "请先选择您的角色！")
        return
    end
    local t = SelectRole.list[SelectRole.sel]
    if t == nil then
        MessageBox(0, "角色信息不存在！")
        return
    end
    local _RoleName = t[1]
    if _RoleName == nil then
        MessageBox(0, "获取角色信息失败！")
        return
    end
    CL:EnterGame(_RoleName)
end

function SelectRole.onDelRole(_Handle)
    if #SelectRole.list == 0 then
        return
    end
    if SelectRole.sel == 0 then
        return
    end
    local t = SelectRole.list[SelectRole.sel]
    if t == nil then
        MessageBox(0, "角色信息不存在！")
        return
    end
    local _RoleName = t[1]
    if _RoleName == nil then
        MessageBox(0, "获取角色信息失败！")
        return
    end
    CL:DeleteRole(_RoleName, "DeleteRole_Result", "SelectRole.onDeleteRole")
end

function SelectRole.onDeleteRole()
    CL:GetSelectRoleList("获取角色信息", "SelectRole.updateRoleList")
end

function SelectRole.onResRole()
    local _Handle = GUI:WndFindChildM(SelectRole.WndHandle, "RestorePanel")
    if 0 == _Handle then
        local _ResWnd = GUI:WndCreateWnd(SelectRole.WndHandle, "RestorePanel", 0, 0, 0)
        if 0 ~= _ResWnd then
            local w = CL:GetScreenWidth()
            local h = CL:GetScreenHeight()
            GUI:WndSetSizeM(_ResWnd, w, h)
            local _BackImage = GUI:ImageCreate(_ResWnd, "BackImage", 0, 0, 0)
            if 0 ~= _BackImage then
                GUI:WndSetSizeM(_BackImage, 300, 300)
                GUI:ImageSetAroundImage(_BackImage, 1913100001, 1913100003, 1913100005, 1913100007, 1913100009, 1913100002, 1913100006, 1913100004, 1913100008)
                CenterWnd(_BackImage)
                local _Handle = GUI:ButtonCreate(_BackImage, "Close", 1910000020, 270, 0)
                if 0 ~= _Handle then
                    GUI:WndRegistScript(_Handle, RDWndBaseCL_mouse_lbClick, "SelectRole.onResRole")
                end
                _Handle = GUI:EditCreate(_BackImage, "Title", 80, 35, 200, 20)
                if 0 ~= _Handle then
                    GUI:EditSetTextColor(_Handle, 4294894158)
                    GUI:EditSetTextM(_Handle, "列表中信息只保留一周")
                    GUI:EditSetCanEdit(_Handle, false)
                    GUI:WndSetCanRevMsg(_Handle, false)
                end
                _Handle = GUI:ListBoxCreate(_BackImage, "RoleList", 50, 70, 200, 180)
                if 0 ~= _Handle then
                    local t = CL:GetRecoverRoleList() and LuaRet or {}
                    for i,v in ipairs(t) do
                        GUI:ListBoxAddString(_Handle, v[2], 4294967295)
                    end
                end
                _Handle = GUI:ButtonCreate(_BackImage, "OK", 1910000001, 50, 250)
                if 0 ~= _Handle then
                    GUI:WndSetTextColorM(_Handle, 4294967295)
                    GUI:WndSetTextM(_Handle, "恢复")
                    GUI:WndRegistScript(_Handle, RDWndBaseCL_mouse_lbClick, "SelectRole.onRecRole")
                end
                _Handle = GUI:ButtonCreate(_BackImage, "Cancel", 1910000001, 180, 250)
                if 0 ~= _Handle then
                    GUI:WndSetTextColorM(_Handle, 4294967295)
                    GUI:WndSetTextM(_Handle, "取消")
                    GUI:WndRegistScript(_Handle, RDWndBaseCL_mouse_lbClick, "SelectRole.onResRole")
                end
            end
        end
    else
        GUI:WndClose(_Handle)
    end
end

function SelectRole.onRecRole(_Handle)
    local _Parent = GUI:WndGetParentM(_Handle)
    local _Handle = GUI:WndFindChildM(_Parent, "RoleList")
    if 0 == _Handle then
        return
    end
    local sel = GUI:ListBoxGetCurSelLine(_Handle)
    if sel == -1 then
        MessageBox(0, "请选择您要恢复的角色")
        return
    end
    local name = GUI:ListBoxGetLineString(_Handle, sel)
    if name == "" then
        MessageBox(0, "您选择要恢复的角色不存在")
        return
    end
    CL:RecoverRole(name, "RecoverRole_Result", "SelectRole.onRecoverRole")
end

function SelectRole.onRecoverRole()
    SelectRole.onResRole()
    CL:GetSelectRoleList("获取角色信息", "SelectRole.updateRoleList")
end

SelectRole.main()