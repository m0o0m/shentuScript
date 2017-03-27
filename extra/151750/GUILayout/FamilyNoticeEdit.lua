FamilyNoticeEdit = {}
function FamilyNoticeEdit.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"FamilyNoticeEdit.",0,_DeviceSizeX /2 - 252, _DeviceSizeY /2 - 175)
    if _Parent ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1832800018,0,0)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetSizeM(_GUIHandle,500, 350)
    end

     _GUIHandle = GUI:EditCreate(_Parent,"",200,20,100,40)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"编辑公告")
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255,255,215,0))
    end
      
    _GUIHandle = GUI:EditCreate(_Parent,"NoticeText",20,78,460,190)
    if _GUIHandle ~= 0 then
        GUI:EditSetMultiLineEdit(_GUIHandle,true)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ButtonOK",1832800020,50,290)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "FamilyNoticeEdit.SetFamilyNotice")
        GUI:WndSetTextM(_GUIHandle,"确定")
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
    end 
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ButtonCancel",1832800020,340,290)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "FamilyNoticeEdit.Close")
        GUI:WndSetTextM(_GUIHandle,"取消")
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
    end
    
    FamilyNoticeEdit.UIInit(_Parent)
end

-- 
--UI Logic Code Start
function FamilyNoticeEdit.UIInit(_Handle)
    FamilyNoticeEdit.Wndhandle = _Handle
end

function FamilyNoticeEdit.SetFamilyNotice(_Handle)
   local str = ""
    local handle = GUI:WndFindWindow(FamilyNoticeEdit.Wndhandle, "NoticeText")
    if handle then
       str = GUI:EditGetTextM(handle)
    end
    if CL:FamilyNoticeConfirm(str,"FamilyNoticeEdit_行会公告", "FamilyNoticeEdit.getFamilyNotice") then 
        local text = LuaParam[1]
        if text ~= nil then
            FamilyMainWnd.setFamilyNotice(text)
        end
    end
end

function FamilyNoticeEdit.Close(_Handle)
    GUI:WndClose(FamilyNoticeEdit.Wndhandle)
end

FamilyNoticeEdit.main()
