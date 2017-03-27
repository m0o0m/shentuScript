RoleSkillItem = {}
function RoleSkillItem.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImg",1850500012,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LineImg",1850500022,129,52)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"SkillName",159,19,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"SkillLv",300,19,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"SkillExp",159,64,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"SkillItemCtrl",0,31,21,72,72)
    if _GUIHandle ~= 0 then
    end
    
    RoleSkillItem.UIInit(_Parent)
end

--UI Logic Code Start
function RoleSkillItem.UIInit(_Handle)
end
RoleSkillItem.main()




