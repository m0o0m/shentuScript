HeroList = {}

HeroList.select = 0
HeroList.count = 5
HeroList.default = ""

function HeroList.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _Parent = GUI:WndCreateWnd(_Parent,"HeroList",0, 190, 90)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,501, 399)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1930600014, 0, 0)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetSizeM(_GUIHandle,501, 399)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"close",1906300005, 480,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 34)
    end

    local panel_Parent = GUI:WndCreateWnd(_Parent,"panel",0, 20, 70)
    if panel_Parent ~= 0 then
        GUI:WndSetSizeM(panel_Parent,1, 1)
    end

    -- _GUIHandle = GUI:ScrollBarVCreate(_Parent,"panel-ScrollBar",1900100104,1900100108,1900100100,1900100120,-4,0,20)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndSetParam(_GUIHandle, 0)
    --     GUI:WndSetSizeM(_GUIHandle,20, 18)
    --     --GUI:ScrollBarSetSetp(_GUIHandle,2)
    -- end

    local item_y = 0
    for i = 1, HeroList.count do
        local _Item = GUI:WndCreateWnd(panel_Parent,"item" .. i, 0, 0, item_y)
        if _Item ~= 0 then
            GUI:WndSetSizeM(_Item,16, 16)
            GUI:WndSetParam(_Item,1)
        end

        _GUIHandle = GUI:ImageCreate(_Item,"back" .. i, 1930600013,0,0)
        if _GUIHandle ~= 0 then
            GUI:WndSetParam(_GUIHandle, 0)
            GUI:WndSetSizeM(_GUIHandle,186, 58)
            GUI:ImageSetParam(_GUIHandle, 0)
        end
        item_y = item_y + 65

         _GUIHandle = GUI:ImageCreate(_Item,"head",1989900000,5,5)
        if _GUIHandle ~= 0 then
            GUI:WndSetSizeM(_GUIHandle,50, 50)
            GUI:ImageSetFitSize(_GUIHandle, true)
        end

        _GUIHandle = GUI:ImageCreate(_Item,"status",1906400003,155,10)
        if _GUIHandle ~= 0 then
            GUI:WndSetParam(_GUIHandle, 0)
            GUI:WndSetSizeM(_GUIHandle,34, 34)
            GUI:ImageSetParam(_GUIHandle, 0)
        end

        _GUIHandle = GUI:EditCreate(_Item,"name",60,5,100,30)
        if _GUIHandle ~= 0 then
            GUI:WndSetParam(_GUIHandle, 0)
            GUI:WndSetTextM(_GUIHandle, "name")
            GUI:WndSetTextColorM(_GUIHandle, 4293574798)
        end

        _GUIHandle = GUI:EditCreate(_Item,"level",60,30,60,30)
        if _GUIHandle ~= 0 then
            GUI:WndSetParam(_GUIHandle, 0)
            GUI:WndSetTextM(_GUIHandle, "level")
            GUI:WndSetTextColorM(_GUIHandle, 4288316273)
        end

        _GUIHandle = GUI:EditCreate(_Item,"job",120,30,60,30)
        if _GUIHandle ~= 0 then
            GUI:WndSetParam(_GUIHandle, 0)
            GUI:WndSetTextM(_GUIHandle, "job")
            GUI:WndSetTextColorM(_GUIHandle, 4288316273)
        end
    end

    -- _Item = GUI:WndCreateWnd(_Parent,"fore",0,0,0)
    -- if _Item ~= 0 then
    --     GUI:WndSetVisible(_Item, false)
    --     GUI:WndSetSizeM(_Item,16, 16)
    -- end

    -- _GUIHandle = GUI:ImageCreate(_Item,"back",1930600003,0,0)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndSetParam(_GUIHandle, 0)
    --     GUI:WndSetSizeM(_GUIHandle,186, 58)
    --     GUI:ImageSetParam(_GUIHandle, 0)
    -- end


    _GUIHandle = GUI:EditCreate(_Parent,"player",350,42,200,30)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextM(_GUIHandle, "player")
        GUI:WndSetTextColorM(_GUIHandle, 4293706124)
        GUI:EditSetFontCenter(_GUIHandle)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"avatar",1990401070,220,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 34)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"weapon",1990401016,200,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 34)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Ok",1930600005,258,335)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1003, "HeroList.Ok")
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,205, 43)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    HeroList.UIInit(_Parent)
end

HeroList.submit =
{
    {"herolist", "showlist"}, --请求显示数据
    {"herolist", "summon"}, --英雄出战
    {"herolist", "quit"}, --英雄休息
    {"herolist", "setdefault"},--设置默认英雄
}

HeroList.headimg =
{
    [1] = {1989900000, 1989905000},
    [2] = {1989900001, 1989905001},
    [3] = {1989900003, 1989905003},
}
HeroList.avatarimg =
{
    [1] = {1990401068, 1990401069},
    [2] = {1990401080, 1990401081},
    [3] = {1990401090, 1990401091},
}
HeroList.weaponimg =
{
    [1] = 1990401016,
    [2] = 1990401026,
    [3] = 1990400008,
}

--测试
HeroList.data =
{
    {
        ["guid"]="11111",
        ["name"]="zhangsan",
        ["job"]=1,
        ["gender"]=1,
        ["level"]=45,
    },
    {
        ["guid"]="22222",
        ["name"]="无敌狂",
        ["job"]=2,
        ["gender"]=2,
        ["level"]=33,
    },
}


--UI Logic Code Start
function HeroList.UIInit(_Handle)
end

HeroList.main()
local t = HeroList

function HeroList.Ok(_Handle)
    if t.select < 1 or t.select > #t.data then
        msg("请选择一个英雄!")
        return
    end
    local heroidx = t.GetCurHeroIndex()
    local guid = t.data[t.select].guid
    local file = ""
    local func = ""
    if t.select == heroidx then --英雄休息
        file = t.submit[3][1]
        func = t.submit[3][2]
    else --英雄出战
        file = t.submit[2][1]
        func = t.submit[2][2]
    end
    --提交表单
    UI:Lua_SubmitForm(file, func, guid)
end

function HeroList.GetCurHeroIndex()
     UI:Lua_GetCurHeroGUID()
     local hero = LuaRet
     if hero == "0" then
         return 0
     end
     UI:Lua_GUID2Str(hero)
     hero = LuaRet
     for i = 1, #t.data do
         local guid = t.data[i].guid
         if guid == hero then
             return i
         end
     end
     return 0
end

function HeroList.GetDefaultIndex()
    for i = 1, #t.data do
        if t.default == t.data[i].guid then
            return i
        end
    end
    return 0
end

function HeroList.make_items(count)
    if count <= 5 or count == t.count then
        return
    end
    local this = GetWindow(nil, "HeroList")
    if 0 == this then
        return
    end
    if count < t.count then
        for i = count + 1, t.count do
            WndClose(this, "panel,item"..i)
        end
    else
        for i = t.count + 1, count do
            -- local script = "<form default_parent=HeroList,panel>"
            -- script = script.."<wnd id=item"..i.." x='0' y="..(115 * (i - 1)).." param="..i.." w='370' h='115'>"
            -- script = script..[[
            --     <image id=back x="0" y="0" image="1930600013"/>
            --     <wnd id=fore x="0" y="0" w="370" h="115" OnLButtonClick="HeroList.OnSelect" visible="0">
            --         <image id="back" x="0" y="0" image="1930600003"/>
            --         <image id="head" x="15" y="15" w="40" h="40" image="0" fitsize="1" gray="1" />
            --         <image id="status" x="310" y="25" image="0" />
            --         <edit id="name" x="120" y="25" w="100" h="30" revmsg="0" text="" text_color="#EAC08E" />
            --         <edit id="level" x="120" y="70" w="60" h="30" revmsg="0" text="" text_color="#9A8371" />
            --         <edit id="job" x="200" y="70" w="60" h="30" revmsg="0" text="" text_color="#9A8371" />
            --         <!-- <button id=def x="129" y="7" image="1906500027" OnLButtonClick="HeroList.OnClickDef" tip="设为默认英雄"/> -->
            --     </wnd>
            -- ]]
            -- script = script.."</wnd></form>"
            -- GenFormByString(script)
        end
    end
    t.count = count
end

function HeroList.OnInitx(this)
    RegisterUIEvent(LUA_EVENT_ONHEROCREATE, "HeroList", "HeroList.OnResult")
    RegisterUIEvent(LUA_EVENT_ONHERODESTROY, "HeroList", "HeroList.OnResult")
    UI:Lua_SubmitForm(t.submit[1][1], t.submit[1][2], "")
end

function HeroList.OnDestroy(this)
    UnRegisterUIEvent(LUA_EVENT_ONHEROCREATE, "HeroList")
    UnRegisterUIEvent(LUA_EVENT_ONHERODESTROY, "HeroList")
end


function HeroList.OnSelect(this)
    local idx = WndGetParam(this, "parent")
    t.select = idx
    t.Update()
end

function HeroList.OnClickDef(this)
    local idx = WndGetParam(this, "parent,parent")
    local guid = ""
    if type(t.data) == "table" and idx <= #t.data then
        guid = t.data[idx].guid
    end

    if nil ~= guid and guid ~= "" then
        UI:Lua_SubmitForm(t.submit[4][1], t.submit[4][2], guid)
    else
        msg("设置默认英雄失败:无法获取参数")
    end
end

function HeroList.Update()
    if type(t.data) ~= "table" then
        return
    end
    local this = GetWindow(nil, "HeroList")
    if 0 == this then
        log(this_file.."Update调用失败，不存在宿主窗口")
        return
    end
    local panel = GetWindow(this, "panel")
    local count = #t.data
    t.make_items(count)
    for i = 1, count do
        WndSetVisible(panel, "item"..i..",fore", true)
    end
    for i = count + 1, t.count do
        WndSetVisible(panel, "item"..i..",fore", false)
    end

    local heroidx = t.GetCurHeroIndex()
    local defidx = t.GetDefaultIndex()

    for i = 1, #t.data do
        ImageSetImageID(panel, "item"..i..",fore,back", 1930600003)
    end
    --更新标签
    if t.select == 0 or t.select > t.count then
        EditSetText(this, "player", "")
        ImageSetImageID(this, "avatar", 0)
        ImageSetImageID(this, "weapon", 0)
        ButtonSetImageID(this, "Ok", 1906400008)
        WndSetEnable(this, "Ok", false)
    else
        ImageSetImageID(panel, "item"..t.select..",fore,back", 1930600004)
        local name = t.data[t.select].name
        local job = t.data[t.select].job
        local gender = t.data[t.select].gender
        EditSetText(this, "player", name)
        ImageSetImageID(this, "avatar", t.avatarimg[job][gender])
        ImageSetImageID(this, "weapon", t.weaponimg[job])
        if t.select == heroidx then
            WndSetEnable(this, "Ok", true)
            ButtonSetImageID(this, "Ok", 1930600009)
        else
            WndSetEnable(this, "Ok", heroidx == 0)
            ButtonSetImageID(this, "Ok", 1930600005)
        end
    end

    WndSetVisible(panel, "特效", false)
    --更新显示列表
    for i = 1, #t.data do
        local tbl = t.data[i]
        local fore = GetWindow(panel, "item"..i..",fore")
        --头像
        local image = t.headimg[tbl.job][tbl.gender]
        ImageSetImageID(fore, "head", image)
        ImageSetGray(fore, "head", heroidx ~= i)
        --名字
        EditSetText(fore, "name", tbl.name)
        --等级
        EditSetText(fore, "level", tbl.level.."级")
        --职业
        EditSetText(fore, "job", RDJOBName[tbl.job])
        --默认英雄
        if defidx == i then
            WndSetEnable(fore, "def", false)
        else
            WndSetEnable(fore, "def", true)
        end
        --出战状态
        local image = 1930600002
        if heroidx == i then
            image = 1930600001
            WndSetVisible(panel, "特效", true)
            local x, y = WndGetPos(panel, "item"..i)
            WndSetPos(panel, "特效", 121, y)
        end
        ImageSetImageID(fore, "status", image)
    end
end

function HeroList.OnRecvData(tbl, default)
    t.data = tbl
    t.default = ""
    if type(default) == "string" then
        t.default = default
    end
    t.select = t.GetCurHeroIndex()
    t.Update()
end

function HeroList.OnResult()
    local script = "HeroList.Update()"
    UI:Lua_AddDelayTask(script, 100, 1)
end

