RoleSkillSetItem = {}
function RoleSkillSetItem.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _Parent = GUI:WndCreateWnd(_Parent,"RoleSkillSetItem",0,0,0)
    if _Parent ~= 0 then
    end

    --技能背景图片
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillItemBg",1850500033,0,0)
    if _GUIHandle ~= 0 then
    end

    --技能图标
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillItemImg",0,7,7)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"SkillItemEdit",36,92,2,20)
    if _GUIHandle ~= 0 then
         GUI:EditSetTextM(_GUIHandle,"")
         GUI:EditSetFontCenter(_GUIHandle)
    end
    
    RoleSkillSetItem.UIInit(_Parent)
end

--UI Logic Code Start
function RoleSkillSetItem.UIInit(_Handle)
    RoleSkillSetItem.WndHandle = _Handle
end

RoleSkillSetItem.main()




