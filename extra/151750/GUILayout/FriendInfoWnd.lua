FriendInfoWnd = {}
function FriendInfoWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"FriendInfoWnd",0,360,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1830800034,0,0)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetSizeM(_GUIHandle,360, 540)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1832500014,290,-24)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Name",50,28,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"名字： ")
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255, 194, 182, 160))
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Family",50,68,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"行会： ")
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255, 194, 182, 160))
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Title",50,108,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"封号： ")
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255, 194, 182, 160))
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Map",50,148,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"地图： ")
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255, 194, 182, 160))
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Job",50,188,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"职业： ")
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255, 194, 182, 160))
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Sex",50,228,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"性别： ")
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255, 194, 182, 160))
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Level",50,268,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"等级: ")
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255, 194, 182, 160))
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Relation",50,308,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"关系： ")
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255, 194, 182, 160))
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Team",50,348,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"队伍： ")
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255, 194, 182, 160))
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Num",50,388,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"人数： ")
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255, 194, 182, 160))
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Online",50,428,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"在线： ")
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255, 194, 182, 160))
    end

    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit",150,28,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"FamilyEdit",150,68,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"textEdit",150,108,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MapEdit",150,148,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Jobdit",150,188,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"GenderEdit",150,228,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"LvEdit",150,268,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MoodEdit",150,308,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"TeamEdit",150,348,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"TeamNumEdit",150,388,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"IsOnlineEdit",150,428,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ChatBtn",1831800002,200,475)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"发起私聊")
    end

    FriendInfoWnd.UIInit(_Parent)
end

--UI Logic Code Start
function FriendInfoWnd.UIInit(_Handle)
end
FriendInfoWnd.main()




