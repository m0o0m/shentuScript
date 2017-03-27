SocialDlg = {}
function SocialDlg.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImg",1850000311,0,0)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,219, 437)
    end 

    _GUIHandle = GUI:ButtonCreate(_Parent,"OpBtn1",1850000307,54,36)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OpBtn2",1850000307,54,99)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OpBtn3",1850000307,54,163)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OpBtn4",1850000307,54,226)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OpBtn5",1850000307,54,291)
    if _GUIHandle ~= 0 then
    end

    --_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000385,178,5)
    --if _GUIHandle ~= 0 then
    --    GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "SocialDlg.Close")
    --end
    

    SocialDlg.UIInit(_Parent)
end

--UI Logic Code Start
if not SocialDlg.localString then SocialDlg.localString = {} end
local l = SocialDlg.localString
l.addFriendBtn = "添加好友"
l.addFriendEditTip = "输入玩家名字添加好友"
l.titleBar = {"我的好友", "最近", "我的仇人"}
l.look = "查看装备"
l.party = "组队"
l.whisper = "私聊"
l.copyName = "复制名称"
l.delFriend = "删除好友"
l.addFriend = "添加好友"
l.addEnemy = "屏蔽此人"
l.delEnemy = "删除仇人"

function SocialDlg.UIInit(_Handle)
end

function SocialDlg.Close(_Handle)
    if _Handle ~= 0 then 
        local _ParentHandle = GUI:WndGetParentM(_Handle)
        if _ParentHandle ~= 0 then
            GUI:WndClose(_ParentHandle)
        end
    end
end


SocialDlg.main()




