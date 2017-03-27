ChatWindowEX = {}
function ChatWindowEX.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _GUIHandle = GUI:ImageCreate(_Parent,"BackIamge",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 16)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end

    _GUIHandle = GUI:RichEditCreate(_Parent,"ChatContentRE",10,16,305,126)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetOffSet(_GUIHandle, 8)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"AutoPlayRecordBtn",1800510061,7,153)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1003, "ChatWindowEX.OnAutoPlayRecordBtn")
        GUI:WndSetHint(_GUIHandle,"自动播放开关")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,28, 26)
        GUI:WndSetTextColorM(_GUIHandle, CL:MakeARGB(255, 194, 182, 160))
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ChangeShowChannelBtn1",1800000106,37,153)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1003, "ChatWindowEX.OnShowChannelText")
        GUI:WndSetTextM(_GUIHandle,"综合")
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,43, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4278190080)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ChangeShowChannelBtn2",1800000106,82,153)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1003, "ChatWindowEX.OnShowChannelText")
        GUI:WndSetTextM(_GUIHandle,"当前")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,43, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4278190080)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ChangeShowChannelBtn3",1800000106,127,153)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1003, "ChatWindowEX.OnShowChannelText")
        GUI:WndSetTextM(_GUIHandle,"组队")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,43, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4278190080)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ChangeShowChannelBtn4",1800000106,172,153)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1003, "ChatWindowEX.OnShowChannelText")
        GUI:WndSetTextM(_GUIHandle,"行会")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,43, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4278190080)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ChangeShowChannelBtn5",1800000106,217,153)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1003, "ChatWindowEX.OnShowChannelText")
        GUI:WndSetTextM(_GUIHandle,"世界")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,43, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4278190080)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ChangeShowChannelBtn6",1800000106,262,153)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1003, "ChatWindowEX.OnShowChannelText")
        GUI:WndSetTextM(_GUIHandle,"私聊")
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,43, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4278190080)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ChatEditBack",1800500076,-16,177)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,339, 26)
    end

    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"ChatScroll",1800000014,1800000022,1800000001,1800000005,-16,1,177)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,177, 15)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"HideWnd",1800000154,-16,177)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1003, "ChatWindowEX.OnHideWndBtnUp")
        GUI:WndSetHint(_GUIHandle,"隐藏聊天窗口")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,28, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4278190080)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"SelectChatChannel",1800000040,11,177)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1003, "ChatWindowEX.OnChatChannelBtn")
        GUI:WndSetTextM(_GUIHandle,"当前")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4278190080)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ChatExpresionBtn",1800500077,227,177)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1003, "ChatWindowEX.OnExpressBtnUp")
        GUI:WndSetHint(_GUIHandle,"表情")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,28, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4278190080)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"RecordBtn",1800510065,255,177)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "ChatWindowEX.OnRecordBtnDown")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ChatWindowEX.OnRecordBtnUp")
        GUI:WndSetHint(_GUIHandle,"语音(CTRL+~)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,28, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4278190080)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"SendBtn",1800000039,283,177)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1003, "ChatWindowEX.OnSendBtnUp")
        GUI:WndSetTextM(_GUIHandle,"发送")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 2701116086)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"WndScaleBtn",1800000010,300,3)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1003, "ChatWindowEX.OnScaleBtnUp")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4278190080)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"ChatInputEdit",57, 179, 190, 27)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    ChatWindowEX.UIInit(_Parent)
end

--UI Logic Code Start
ChatWindowEX.WndHandle = 0
ChatWindowEX.Width = 340
ChatWindowEX.InputWidth = 267
ChatWindowEX.ChatChannel = 1
ChatWindowEX.Channel = {
{"当前",  1},
{"组队",  2},
{"行会",  3},
{"喊话",  4},
{"喇叭",  5},
{"私聊",  6}
}
ChatWindowEX.ShowChannel = {
{"综合",  30},
{"当前",  1},
{"组队",  2},
{"行会",  3},
{"世界",  4},
{"私聊",  6}
}
ChatWindowEX.UseChatFace = true
ChatWindowEX.MaxFaceCount = 3
function ChatWindowEX.UIInit(_Handle)
    ChatWindowEX.WndHandle = _Handle
    local _ScreenWidth = CL:GetScreenWidth()
    local _ScreenHeight = CL:GetScreenHeight()
    LuaGlobal["ChatWindowInputWidth"] = ChatWindowEX.InputWidth
    local _hideWnd = GUI:WndCreateWnd(0, "ChatWindowEXHideUI", 1800500106, 0, 0) --最小化窗口
    if _hideWnd ~= 0 then 
        GUI:WndSetVisible(_hideWnd, false)
        ChatWindowEX._hideWnd = _hideWnd
        _GUIHandle = GUI:ButtonCreate(_hideWnd, "ShowWndBtn", 1800000158, 0, 77)
        if _GUIHandle ~= 0 then
            GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "ChatWindowEX.OnShowWndBtnUp")
        end
    end

    local _WndPosX = 15
    local _WndPosY = _ScreenHeight - 360
    if _ScreenWidth >= 1440 then
        _WndPosY = _ScreenHeight - 360 + 157
    end

    local _WndBackImgHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "BackIamge")
    if _WndBackImgHandle ~= 0 then
        GUI:WndSetSizeM(_WndBackImgHandle, 325, 178)
        GUI:ImageSetAroundImage(_WndBackImgHandle, 1800000030, 1800000031, 1800000032, 1800000033, 1800000038,1800000034, 1800000035, 1800000036, 1800000037 )
    end

    local _WndRichEditHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatContentRE")
    if _WndRichEditHandle ~= 0 then
        GUI:RichEditRegisterControlString(_WndRichEditHandle, "FACE")
    end

    if ChatWindowEX.WndHandle ~= 0 then
        GUI:WndSetSizeM(ChatWindowEX.WndHandle, ChatWindowEX.Width, 178)
    end

    local _WndTempHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "SelectChatChannel")
    if _WndTempHandle ~= 0 then
        GUI:WndSetTextColorM(_WndTempHandle, CL:MakeARGB(255, 194, 182, 160))
    end

    _WndTempHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "SendBtn")
    if _WndTempHandle ~= 0 then
        GUI:WndSetTextColorM(_WndTempHandle, CL:MakeARGB(255, 194, 182, 160))
    end

    for i = 1, 6 do
        _WndTempHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChangeShowChannelBtn"..i)
        if _WndTempHandle ~= 0 then
            GUI:WndSetTextColorM(_WndTempHandle, CL:MakeARGB(255, 194, 182, 160))
            GUI:WndSetParam(_WndTempHandle, ChatWindowEX.ShowChannel[i][2])
        end
    end

    if ChatWindowEX.UseChatFace then
        _GUIHandle = GUI:ButtonCreate(ChatWindowEX.WndHandle,"ChatExpresionBtn", 1800500077,227,177)
        if _GUIHandle ~= 0 then
            GUI:WndSetHint(_GUIHandle,"表情")
            GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnExpressBtnUp")
        end

        CL:SetEnableUseChatFace(true)
        local _RichEditHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatContentRE")
        if _RichEditHandle ~=0 then
            GUI:RichEditRegisterControlString(_RichEditHandle, "FACE")
        end

    else
        CL:SetEnableUseChatFace(false) 
        local _RichEditHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatContentRE")
        if _RichEditHandle ~=0 then
            GUI:RichEditUnRegisterControlString(_RichEditHandle, "FACE")
        end
    end

    CL:SetMaxFaceCount(ChatWindowEX.MaxFaceCount)
    ChatWindowEX.UpdataPageBtn(30)
    ChatWindowEX.SetAllChannelState(true)
    GUI:WndSetPosM(ChatWindowEX.WndHandle, _WndPosX, _WndPosY)
    CL:InitChannelTextColor(0, 255, 255, 255, 255) --用户定义
    CL:InitChannelTextColor(1, 255, 255, 255, 255) --当前
    CL:InitChannelTextColor(2, 165, 93, 254, 255)--组队
    CL:InitChannelTextColor(3, 189, 98, 19, 255)--行会
    CL:InitChannelTextColor(4, 0, 0, 0, 255)--世界
    CL:InitChannelTextColor(5, 255, 255, 255, 255)--小喇叭
    CL:InitChannelTextColor(20, 255, 255, 255, 255)--系统
    CL:InitChannelFillBackColor(0, 0, 0, 0, 0) --用户定义
    CL:InitChannelFillBackColor(1, 0, 0, 0, 0) --当前
    CL:InitChannelFillBackColor(2, 0, 0, 0, 0)--组队
    CL:InitChannelFillBackColor(3, 0, 0, 0, 0)--行会
    CL:InitChannelFillBackColor(4, 255, 228, 0, 255)--世界
    CL:InitChannelFillBackColor(5, 0, 0, 255, 255)--小喇叭
    CL:InitChannelFillBackColor(20, 255, 0, 0, 255)--系统
end

function ChatWindowEX.OnExpressBtnUp(_Handle,_Param)
    local _WndHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatExpresion")
    if _WndHandle ~= 0 then
        GUI:WndClose(_WndHandle)
    else
        UI:Lua_OpenWindow(ChatWindowEX.WndHandle, "ChatExpresion.lua")
    end

end

function ChatWindowEX.OnSendBtnUp()
    local _WndEditHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatInputEdit")
    if _WndEditHandle ~= 0 then
        local _SendMsg = GUI:EditGetTextM(_WndEditHandle)
        local _CurrenChannel = ChatWindowEX.ChatChannel
        CL:ChatWindowSendMessage(_SendMsg, _CurrenChannel)
        GUI:EditSetTextM(_WndEditHandle, "")
    end
end

function ChatWindowEX.OnScaleBtnUp(_handle)
    local chathandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatContentRE")
    local sizeY = 0
    GUI:WndGetSizeM(chathandle)
    sizeY = LuaRet[2]   
    local difY = 0
    if sizeY < 200 then
        GUI:WndSetSizeM(chathandle, 305, 236)
        difY = 100
        GUI:WndSetImageID(_handle, 1800000006)
    else
        GUI:WndSetSizeM(chathandle, 305, 138)
        difY = -100
        GUI:WndSetImageID(_handle, 1800000010)
    end

    local scrollhandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatScroll")
    GUI:WndGetSizeM(scrollhandle)
    sizeY = LuaRet[2]
    if sizeY > 200 then
        GUI:WndSetSizeM(scrollhandle, 177, 0)
        GUI:WndGetPosM(scrollhandle)
        GUI:ScrollBarSetPos(scrollhandle,175)
        GUI:WndSetPosM(scrollhandle, LuaRet[1], LuaRet[2]-difY)
    else
        GUI:WndSetSizeM(scrollhandle, 276, 0)
        GUI:WndGetPosM(scrollhandle)
        GUI:ScrollBarSetPos(scrollhandle,272)
        GUI:WndSetPosM(scrollhandle, LuaRet[1], LuaRet[2]-difY)
    end

    local _ParentRePosUI = {
    "BackIamge",
    "ChatContentRE",
    "WndScaleBtn",
    }
    for i = 1, 3 do
        local _GUIHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, _ParentRePosUI[i])
        if _GUIHandle ~= 0 then
            if i == 1 then
                GUI:WndGetSizeM(_GUIHandle)
                GUI:WndSetSizeM(_GUIHandle, LuaRet[1], LuaRet[2]+difY)
            end
            GUI:WndGetPosM(_GUIHandle)
            GUI:WndSetPosM(_GUIHandle, LuaRet[1], LuaRet[2]-difY)
        end
    end
end

function ChatWindowEX.OnHideWndBtnUp(h)
    if GUI:WndGetPosM(ChatWindowEX.WndHandle) then
        GUI:WndSetPosM(ChatWindowEX.WndHandle, -370, tonumber(LuaRet[2]) )
        ChatWindowEX.HideTweenEnd()
    end

end

function ChatWindowEX.HideTweenEnd()
    if GUI:WndGetPosM(ChatWindowEX.WndHandle) then
        GUI:WndSetPosM(ChatWindowEX._hideWnd, 0, LuaRet[2]+101)
    end

    GUI:WndSetVisible(ChatWindowEX.WndHandle, false)
    GUI:WndSetVisible(ChatWindowEX._hideWnd, true)
    
    --[[local _hHideWnd = GUI:WndFindChildM(0, "ChatWindowEXHideUI")
    dbg("_hHideWnd".._hHideWnd)
    if GUI:WndGetPosM(ChatWindowEX.WndHandle) then
        if _hHideWnd ~= 0 then
            GUI:WndSetPosM(_hHideWnd, 0, LuaRet[2]+101)
        end
    end

    if _hHideWnd ~= 0 then
        dbg("_hHideWnd true")
        GUI:WndSetVisible(_hHideWnd, true)
    end

    GUI:WndSetVisible(ChatWindowEX.WndHandle, false)--]]
end

function ChatWindowEX.OnShowWndBtnUp(h)
    GUI:WndSetVisible(ChatWindowEX.WndHandle, true)
    GUI:WndSetVisible(ChatWindowEX._hideWnd, false)
    if GUI:WndGetPosM(ChatWindowEX.WndHandle) then
        GUI:WndSetPosM(ChatWindowEX.WndHandle, 16, LuaRet[2])
    end
end

function ChatWindowEX.OnChatChannelBtn()
    local _GUIHandle = 0
    local _ChatChannlWndHandle = 0
    _ChatChannlWndHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatChannelListWnd")
    if _ChatChannlWndHandle ~= 0 then
        GUI:WndClose(_ChatChannlWndHandle)
    else
        _ChatChannlWndHandle = GUI:WndCreateWnd(ChatWindowEX.WndHandle, "ChatChannelListWnd", 1800000110, 11, 66)
        if _ChatChannlWndHandle ~= 0 then
            for i = 1, #(ChatWindowEX.Channel) do
                local _ChatChannelBtn = GUI:ButtonCreate(_ChatChannlWndHandle, "ChatChannelButton"..i, 1800000281, 5, 5 + (i - 1) * 16)
                if _ChatChannelBtn ~= 0 then
                    GUI:WndSetSizeM(_ChatChannelBtn, 32, 17)
                    GUI:ButtonSetCheckPoint(_ChatChannelBtn, 1)--不要像素选取
                    GUI:WndSetTextColorM(_ChatChannelBtn, GUI:MakeARGB(255,255,255,255))
                    GUI:ButtonSetStateTextColor(_ChatChannelBtn, 1, GUI:MakeARGB(255,0,255,0))
                    GUI:WndSetTextM(_ChatChannelBtn, ChatWindowEX.Channel[i][1])
                    GUI:WndSetParam(_ChatChannelBtn, ChatWindowEX.Channel[i][2])
                    GUI:WndRegistScript(_ChatChannelBtn, RDWndBaseCL_mouse_lbClick, "ChatWindowEX.ChannelBtnOnClick")
                end
            end
            --GUI:WndSetPopupMenu(_ChatChannlWndHandle)
        end
    end

end

function ChatWindowEX.ChannelBtnOnClick(h)
    local _GUIHandle = 0
    local _CurChannel = GUI:WndGetParam(h)
    _GUIHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "SelectChatChannel")
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle, ChatWindowEX.Channel[_CurChannel][1])
    end

    local _GUIHandle = GUI:WndGetParentM(h)
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    end

    local _GUIEditHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatInputEdit")
    if _GUIEditHandle ~= 0 then
        if _CurChannel == 1 then 
            GUI:EditSetTextM(_GUIEditHandle,"")
        elseif _CurChannel == 2 then 
            GUI:EditSetTextM(_GUIEditHandle,"!!")
        elseif _CurChannel == 3 then 
            GUI:EditSetTextM(_GUIEditHandle,"!~")
        elseif _CurChannel == 4 then 
            GUI:EditSetTextM(_GUIEditHandle,"!")
        elseif _CurChannel == 5 then 
            GUI:EditSetTextM(_GUIEditHandle,"!<")
        elseif _CurChannel == 6 then 
            GUI:EditSetTextM(_GUIEditHandle,"/")
        end
        ChatWindowEX.ChatChannel = _CurChannel
    end
end

function ChatWindowEX.OnShowChannelText(_Handle,_Param)
    local _Channel = GUI:WndGetParam(_Handle)
    ChatWindowEX.UpdataPageBtn(_Channel)
    if _Channel == 30 then
        ChatWindowEX.SetAllChannelState(true)
    else
        ChatWindowEX.SetAllChannelState(false)
        CL:SetShowChannelText(_Channel,true)
    end
end

function ChatWindowEX.SetAllChannelState(_OpenClose)
    CL:SetShowChannelText(1,_OpenClose)
    CL:SetShowChannelText(2,_OpenClose)
    CL:SetShowChannelText(3,_OpenClose)
    CL:SetShowChannelText(4,_OpenClose)
    CL:SetShowChannelText(6,_OpenClose)
end

function ChatWindowEX.UpdataPageBtn(index)
    for i = 1, #(ChatWindowEX.ShowChannel) do
        local _BtnHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChangeShowChannelBtn"..i)
        if _BtnHandle ~= 0 then
            local _Param = GUI:WndGetParam(_BtnHandle)
            if _Param == index then
                GUI:ButtonSetIsActivePageBtn(_BtnHandle, true)
                GUI:ButtonSetStateTextColor(_BtnHandle, 0, CL:MakeARGB(255, 255, 255, 255))
                GUI:ButtonSetStateTextColor(_BtnHandle, 1, CL:MakeARGB(255, 255, 255, 255))
            else
                GUI:ButtonSetIsActivePageBtn(_BtnHandle, false)
                GUI:ButtonSetStateTextColor(_BtnHandle, 0, CL:MakeARGB(255, 194, 182, 160))
                GUI:ButtonSetStateTextColor(_BtnHandle, 1, CL:MakeARGB(255, 194, 182, 160))
            end
        end
    end
end

function ChatWindowEX.ChannelChange()
    local _CurrentChannel = LuaParam[1]
    ChatWindowEX.ChatChannel = _CurrentChannel
    local _GUIHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "SelectChatChannel")
    if _GUIHandle ~= 0 then
		if _CurrentChannel == 7 then
			_CurrentChannel = 6
		end
        GUI:WndSetTextM(_GUIHandle, ChatWindowEX.Channel[_CurrentChannel][1])
    end
end

gPlayRecord = {}
gPlayRecord._IsAutoPlay = true
gPlayRecord.Queue = {}
gPlayRecord.AutoPlay = function( IsAuto )   --控制是否自动播放
    if IsAuto then
        gPlayRecord._IsAutoPlay = true
    else
        gPlayRecord.Queue = {}
        gPlayRecord._IsAutoPlay = false
    end
end
gPlayRecord.QueueProc = function ()
    if not CL:IsPlayRecording() and #gPlayRecord.Queue > 0 and gPlayRecord._IsAutoPlay then
        local filename = table.remove(gPlayRecord.Queue, 1)
        CL:PlayRecord(filename, "PlayVocalProgress")
    end
end

function ChatWindowEX.OnAutoPlayRecordBtn( ... )
    gPlayRecord.AutoPlay(not gPlayRecord._IsAutoPlay)
    local _Handle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "AutoPlayRecordBtn")
    if gPlayRecord._IsAutoPlay then
        GUI:WndSetImageID(_Handle, 1800510061)
    else
        GUI:WndSetImageID(_Handle, 1800510064)
    end
end

function UserOnReciveChatMessage( _SenderName, _MessageText, _IsPlayerSelf )
    if _IsPlayerSelf == false and gPlayRecord._IsAutoPlay then
        local exist, _, name = string.find(_MessageText, "(%w%w%w%w%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%w%w%w%w%w%w%w%w)")
        if exist ~= nil then
            exist, _, channel = string.find(_MessageText, "@(%d)")
            if exist and CL:GetShowChannelText(tonumber(channel)) then
                table.insert(gPlayRecord.Queue, name)

                --开启定时器，循环播放语音至列表结束或停止
                if ChatWindowEX.QTimer == nil then
                    ChatWindowEX.QTimer = GUI:WndAddTimerBrief(ChatWindowEX.WndHandle, 2000, "gPlayRecord.QueueProc")
                end
            end
        end
    end
    return _MessageText
end

function RecordCallback()
    if true  ~= LuaParam[1] then
        return
    end
    local key = LuaParam[2]
    local duration = LuaParam[3] / 1000  --计算时长，小数部分根据总时长处理
    local i, f = math.modf(tonumber(duration))
    if f / i > 0.2 then i = i + 1 end
    duration = i

    local _Handle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatInputEdit")
    local _SendMsg = GUI:EditGetTextM(_Handle)
    
    local Channel = 1
    local ChannelMarkString = ''
    if string.sub(_SendMsg,1,2) == '!!' then   --组队
        Channel = 2
        ChannelMarkString = "!!"
    elseif string.sub(_SendMsg,1,2) == '!~' then   --行会
        Channel = 3
        ChannelMarkString = "!~"
    elseif string.sub(_SendMsg,1,1) == '/' then
        if string.len(_SendMsg) > 2 then
            Channel = 7
            local endpos = string.find(_SendMsg, " ")
            if endpos == nil then
                ChannelMarkString = _SendMsg..' '
            else
                ChannelMarkString = string.sub(_SendMsg, 1, endpos)
            end
        else
            ChannelMarkString = nil
        end
    elseif string.sub(_SendMsg,1,1) == '!' then   --世界
        Channel = 4
        ChannelMarkString = "!"
    elseif string.sub(_SendMsg,1,1) == '!<' then   --小喇叭
        Channel = 5
        ChannelMarkString = "!<"
    end

    if ChannelMarkString ~= nil then
        local sendMsg = ChannelMarkString..'#VOICE<STR:语音消息('..duration..'s),WND:VOCAL,PARAM:"'..key..'@'..Channel..'">#'
        CL:ChatWindowSendMessage(sendMsg, Channel)
    end
end

function ChatWindowEX.OnRecordBtnDown()
    if not CL:IsRecording() then
        CL:StartRecord("RecordCallback")
    end
end

function ChatWindowEX.OnRecordBtnUp()
    if CL:IsRecording() then
        CL:StopRecord()
    end
end

function PlayVocalProgress()
--[[    msg("PlayVocalProgress")
    msg(tostring(LuaParam[1]))
    msg(tostring(LuaParam[2]))]]
end

function PlayVocalFile( filename )
    local exist, _, name = string.find(filename, "(%w%w%w%w%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%w%w%w%w%w%w%w%w)")
    if exist ~= nil then
        CL:PlayRecord(name, "PlayVocalProgress")
    end
end

function OnEventUILink()
    if LuaParam[1] == "VOCAL" then
        PlayVocalFile(LuaParam[2])
    end
end
RegisterUIEvent(LUA_EVENT_UILINK, "UILink_VOCAL_点击事件", OnEventUILink)
RegisterUIEvent(LUA_EVENT_CHATCHANNELCHANGE, EVENT_DEFAULT_TAG, ChatWindowEX.ChannelChange)
ChatWindowEX.main()