ChatWindowEX = {}

function ChatWindowEX.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

	local _DiffX = 510

    _GUIHandle = GUI:ImageCreate(_Parent,"BackIamge",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,480, _DeviceSizeY)
		GUI:ImageSetAroundImage(_GUIHandle, 1850000280, 1850000282, 1850000286, 1850000288, 1850000284, 1850000281, 1850000287, 1850000283, 1850000285)
        GUI:WndSetVisible(_GUIHandle, true);
    end
    
	_GUIHandle = GUI:ImageCreate(_Parent,"ChatBgImage",1850000279,_DiffX-381,21)
    if _GUIHandle ~= 0 then
    end
    
	_GUIHandle = GUI:RichEditCreate(_Parent,"ChatContentRE",_DiffX-368,35,309,462)
    if _GUIHandle ~= 0 then
        GUI:RichEditAppendString(_GUIHandle, "")
    end

	 --综合
    _GUIHandle = GUI:ButtonCreate(_Parent,"ChangeShowChannelBtn1",1850000193,_DiffX-503,29)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ChatWindowEX.OnShowChannelText")
        GUI:WndSetParam(_GUIHandle, 30)
    end
    
    --附近----当前
    _GUIHandle = GUI:ButtonCreate(_Parent,"ChangeShowChannelBtn2",1850000418,_DiffX-503,87)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ChatWindowEX.OnShowChannelText")
        GUI:WndSetParam(_GUIHandle, 1)
    end

    --组队
    _GUIHandle = GUI:ButtonCreate(_Parent,"ChangeShowChannelBtn4",1850000208,_DiffX-503,145)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ChatWindowEX.OnShowChannelText")
        GUI:WndSetParam(_GUIHandle, 2)
    end

    --行会
    _GUIHandle = GUI:ButtonCreate(_Parent,"ChangeShowChannelBtn5",1850000213,_DiffX-503,203)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ChatWindowEX.OnShowChannelText")
        GUI:WndSetParam(_GUIHandle, 3)
    end
  
    --世界
    _GUIHandle = GUI:ButtonCreate(_Parent,"ChangeShowChannelBtn3",1850000203,_DiffX-503,261)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ChatWindowEX.OnShowChannelText")
        GUI:WndSetParam(_GUIHandle, 4)
    end
    
    --私聊
    _GUIHandle = GUI:ButtonCreate(_Parent,"ChangeShowChannelBtn6",1850000218,_DiffX-503,319)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ChatWindowEX.OnShowChannelText")
        GUI:WndSetParam(_GUIHandle, 7)
    end

	
    _GUIHandle = GUI:ButtonCreate(_Parent,"HideWnd",1850000275,_DiffX-31,201)
    if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ChatWindowEX.HideChatWnd")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)	
    end

	_GUIHandle = GUI:ButtonCreate(_Parent,"SelectChatChannel",1850000408,_DiffX-496, _DeviceSizeY - 80)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ChatWindowEX.OnChatChannelBtn")
    end

	_GUIHandle = GUI:ButtonCreate(_Parent,"SendBtn",1850000240,_DiffX-142,_DeviceSizeY - 80)
    if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "ChatWindowEX.OnSendBtnUp")
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ChatEditBack",1850000274,_DiffX-389,_DeviceSizeY - 80)
    if _GUIHandle ~= 0 then
    end
        
	_GUIHandle = GUI:EditCreate(_Parent,"ChatInputEdit",_DiffX - 387 ,_DeviceSizeY - 80,176,56)
    if _GUIHandle ~= 0 then
    end
        
    _GUIHandle = GUI:ButtonCreate(_Parent,"AddSendBtn",1850000232,_DiffX-202,_DeviceSizeY - 80)
    if _GUIHandle ~= 0 then
    end

    ChatWindowEX.UIInit(_Parent)
end

--UI Logic Code Start
ChatWindowEX.WndHandle = 0
ChatWindowEX.ChatChannel = 1
ChatWindowEX.Channel = {
{1850000408,  1},         --当前
{1850000256,  2},         --组队
{1850000260,  3},         --行会
{1850000412,  4},         --喊话 ？？？ 世界？
{1850000264,  5},         --喇叭
{1850000252,  6}          --私聊
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
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    ChatWindowEX.WndHandle = _Handle
	local _hideWnd = GUI:WndCreateWnd(0, "ChatWindowEXHideUI", 0,0,0) --最小化窗口
    if _hideWnd ~= 0 then 
        GUI:WndSetVisible(_hideWnd, true)
        ChatWindowEX._hideWnd = _hideWnd
        _GUIHandle = GUI:ButtonCreate(_hideWnd, "ShowWndBtn", 1850000015, 0, _DeviceSizeY - 80)
        if _GUIHandle ~= 0 then
            GUI:WndSetSizeM(_GUIHandle, 80, 80)
            GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "ChatWindowEX.OnShowWndBtnUp")
        end
    end		
	
	ChatWindowEX.HideChatWnd()	
	
	local _WndRichEditHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatContentRE")
    if _WndRichEditHandle ~= 0 then
        GUI:RichEditRegisterControlString(_WndRichEditHandle, "FACE")
    end

	
	
	CL:SetMaxFaceCount(ChatWindowEX.MaxFaceCount)
    ChatWindowEX.UpdataPageBtn(30)
    ChatWindowEX.SetAllChannelState(true)
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
		CL:Log("1"..tostring(_SendMsg))
		CL:Log("2"..tostring(_CurrenChannel))
        CL:ChatWindowSendMessage(_SendMsg, _CurrenChannel)
        GUI:EditSetTextM(_WndEditHandle, "")
    end
end


function ChatWindowEX.OnChatChannelBtn()
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()
    local _GUIHandle = 0
    local _ChatChannlWndHandle = 0
    _ChatChannlWndHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatChannelListWnd")
    if _ChatChannlWndHandle ~= 0 then
        GUI:WndClose(_ChatChannlWndHandle)
    else
        _ChatChannlWndHandle = GUI:WndCreateWnd(ChatWindowEX.WndHandle, "ChatChannelListWnd", 0, 10, _DeviceSizeY - 420)
        if _ChatChannlWndHandle ~= 0 then
            for i = 1, #(ChatWindowEX.Channel) do
                local _ChatChannelBtn = GUI:ButtonCreate(_ChatChannlWndHandle, "ChannelBtn"..i, ChatWindowEX.Channel[i][1], 5, 5 + (i - 1) * 56)
                if _ChatChannelBtn ~= 0 then
                    GUI:WndSetParam(_ChatChannelBtn, ChatWindowEX.Channel[i][2])
                    GUI:WndRegistScript(_ChatChannelBtn, RDWndBaseCL_mouse_lbClick, "ChatWindowEX.ChannelBtnOnClick")
                end
            end
        end
    end
end

function ChatWindowEX.ChannelBtnOnClick(h)
    local _GUIHandle = 0
    local _CurChannel = GUI:WndGetParam(h)
    _GUIHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "SelectChatChannel")
	
    if _GUIHandle ~= 0 then
        GUI:WndSetImageID(_GUIHandle,ChatWindowEX.Channel[_CurChannel][1])
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
            else
                GUI:ButtonSetIsActivePageBtn(_BtnHandle, false)
            end
        end
    end
end

function ChatWindowEX.OnShowWndBtnUp()
	local _GUIHandle = ChatWindowEX.WndHandle 
	local visible = GUI:WndGetVisible(_GUIHandle)
	if not visible then
		GUI:WndSetVisible(_GUIHandle, true)
	end
	
	GUI:WndSetVisible(ChatWindowEX._hideWnd, false)
end

function ChatWindowEX.HideChatWnd()
	local _GUIHandle = ChatWindowEX.WndHandle 
	local visible = GUI:WndGetVisible(_GUIHandle)
	if visible then
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
	GUI:WndSetVisible(ChatWindowEX._hideWnd, true)
end

function ChatWindowEX.ChannelChange()
    local _CurrentChannel = LuaParam[1]
    ChatWindowEX.ChatChannel = _CurrentChannel
    local _GUIHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "SelectChatChannel")
    if _GUIHandle ~= 0 then
		if _CurrentChannel == 7 then
			_CurrentChannel = 6
		end
        --GUI:WndSetTextM(_GUIHandle, ChatWindowEX.Channel[_CurrentChannel][1])
		GUI:WndSetImageID(_GUIHandle,ChatWindowEX.Channel[_CurrentChannel][1])
    end
end

RegisterUIEvent(LUA_EVENT_CHATCHANNELCHANGE, EVENT_DEFAULT_TAG, ChatWindowEX.ChannelChange)

ChatWindowEX.main()




