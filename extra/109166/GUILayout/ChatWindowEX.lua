--
-- Author: miyezng
-- Date:   2016-06-06 15:36:46
-- Last Modified by:   miyezng
-- Last Modified time: 2016-10-27 13:19:23
--
ChatWindowEX = {}


ChatWindowEX.UseChatFace = false
ChatWindowEX.MaxFaceCount = 3

ChatWindowEX.UserChannel = 0
ChatWindowEX.CurrentChannel = 1
ChatWindowEX.TeamChannel = 2
ChatWindowEX.GUILDChannel = 3
ChatWindowEX.WorldChannel = 4
ChatWindowEX.SpeakerChannel = 5
ChatWindowEX.P2PChannel = 6
ChatWindowEX.PrivateChannel = 7
ChatWindowEX.SysChannel = 20
ChatWindowEX.AllChannel = 30

ChatWindowEX.AllChannelOpen = true
ChatWindowEX.ChatChannel = 1
ChatWindowEX.Channel =
{
    {"��ǰ",  1, ""},
    {"���(!!)",  2, "!!"},
    {"�л�(!~)",  3, "!~"},
    {"����(!)",  4, "!"},
    {"����(!<)",  5, "!<"},
    {"˽��(/)",  6, "/"}
}

function ChatWindowEX.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _GUIHandle = GUI:ButtonCreate(_Parent,"BlockBtn",1910200219,88,4)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"��˽�������б�")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ChatCurrent",1910200224,88,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"���θ�������Ƶ��")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnOpenCloseChatChannel")
        GUI:WndSetParam(_GUIHandle,ChatWindowEX.CurrentChannel)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ChatPrivate",1910200228,88,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"����˽������Ƶ��")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnOpenCloseChatChannel")
        GUI:WndSetParam(_GUIHandle,ChatWindowEX.PrivateChannel)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ChatFamily",1910200232,88,58)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"�����л�����Ƶ��")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnOpenCloseChatChannel")
        GUI:WndSetParam(_GUIHandle,ChatWindowEX.GUILDChannel)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ChatWorld",1910200237,88,76)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"���κ�������Ƶ��")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnOpenCloseChatChannel")
        GUI:WndSetParam(_GUIHandle,ChatWindowEX.WorldChannel)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ChatTeam",1910200240,88,94)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"�����������Ƶ��")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnOpenCloseChatChannel")
        GUI:WndSetParam(_GUIHandle,ChatWindowEX.TeamChannel)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"ChatInputEdit",110,111,100,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, 4278190080)
        GUI:EditSetUseTextGrow(_GUIHandle, false)
    end
	

    _GUIHandle = GUI:ButtonCreate(_Parent,"SelectChatChannel",1910200244,88,112)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"ѡ��Ƶ��")
        GUI:WndRegistScript(_GUIHandle,1003, "ChatWindowEX.OnChatChannelBtn")
    end

    _GUIHandle = GUI:RichEditCreate(_Parent, "ChatContentRE",109,12,464,100)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"ChatScroll",1910200041,1910200045,1910200037,1910200049,574,12,98)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ChatSend",1910200050,564,111)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"������Ϣ")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick,"ChatWindowEX.OnSendMsg")
    end
	local _LockPosX = CL:GetScreenWidth() - 390
	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatLock",1903600001,_LockPosX,122)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"����")
	end

    ChatWindowEX.UIInit(_Parent)
end

--UI Logic Code Start
ChatWindowEX.WndHandle = 0
function ChatWindowEX.UIInit(_Handle)
    ChatWindowEX.WndHandle = _Handle
    local _ScreenHeight = CL:GetScreenHeight();
    local _ScreenWidtht = CL:GetScreenWidth();
    GUI:WndSetPosM(ChatWindowEX.WndHandle, 163+(_ScreenWidtht-1024)/2, _ScreenHeight - 139)

    CL:InitChannelTextColor(0, 255, 255, 255, 255) --�û�����
    CL:InitChannelTextColor(1, 255, 255, 255, 255) --��ǰ
    CL:InitChannelTextColor(2, 165, 93, 254, 255)--���
    CL:InitChannelTextColor(3, 189, 98, 19, 255)--�л�
    CL:InitChannelTextColor(4, 0, 0, 0, 255)--����
    CL:InitChannelTextColor(5, 255, 255, 255, 255)--С����
    CL:InitChannelTextColor(20, 255, 255, 255, 255)--ϵͳ

    CL:InitChannelTextGrowColor(0, 0, 0, 0, 0) --�û�����
    CL:InitChannelTextGrowColor(1, 0, 0, 0, 0) --��ǰ
    CL:InitChannelTextGrowColor(2, 0, 0, 0, 0)--���
    CL:InitChannelTextGrowColor(3, 0, 0, 0, 0)--�л�
    CL:InitChannelTextGrowColor(4, 0, 0, 0, 0)--����
    CL:InitChannelTextGrowColor(5, 0, 0, 0, 0)--С����
    CL:InitChannelTextGrowColor(20, 0, 0, 0, 0)--ϵͳ

    CL:InitChannelFillBackColor(0, 0, 0, 0, 0) --�û�����
    CL:InitChannelFillBackColor(1, 0, 0, 0, 0) --��ǰ
    CL:InitChannelFillBackColor(2, 0, 0, 0, 0)--���
    CL:InitChannelFillBackColor(3, 0, 0, 0, 0)--�л�
    CL:InitChannelFillBackColor(4, 255, 228, 0, 255)--����
    CL:InitChannelFillBackColor(5, 255, 0, 255, 255)--С����
    CL:InitChannelFillBackColor(20, 255, 0, 0, 255)--ϵͳ

    LuaGlobal["ChatWindowWhiteBack"] = true
    local _GameMainHandle = GUI:WndFindWindow(0,"GameMainInterface,GameMainBar")
    if 0 ~= _GameMainHandle then
        local _BackIamgeHandle = GUI:WndFindChildM(_GameMainHandle, "BackImage2")
        if 0 ~= _BackIamgeHandle then
            local _ImageID = GUI:WndGetImageID(_BackIamgeHandle)
            if _ImageID == 1910200003 then
                LuaGlobal["ChatWindowWhiteBack"] = true
            end
        end
    end

    if LuaGlobal["ChatWindowWhiteBack"] ~= nil then
        if LuaGlobal["ChatWindowWhiteBack"] == true then
            CL:InitChannelTextColor(1, 0, 0, 0, 255) --��ǰ
            CL:InitChannelTextColor(2, 100, 0, 255, 255)--���
            CL:InitChannelTextColor(3, 130, 60, 0, 255)--�л�
        end
    end

    LuaGlobal["ChatWindowInputWidth"] = 522
end

function ChatWindowEX.OnExpressBtnUp(_Handle,_Param)
    local _WndHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatExpresion")
    if _WndHandle ~= 0 then
        GUI:WndClose(_WndHandle)
    else
        UI:Lua_OpenWindow(ChatWindowEX.WndHandle, "ChatExpresion.lua")
    end
end


function ChatWindowEX.OnOpenCloseChatChannel(_Handle,_Param)
    local _Channel = GUI:WndGetParam(_Handle)
    local _Open = GUI:ButtonGetShowDisable(_Handle)

    local _ShowString = "����"
    if _Open == true then
        _ShowString = "����"
    end

    if _Channel == ChatWindowEX.CurrentChannel then
    elseif _Channel == ChatWindowEX.CurrentChannel then
        _ShowString = _ShowString.."��������Ƶ��"
    elseif _Channel == ChatWindowEX.TeamChannel then
        _ShowString = _ShowString.."�������Ƶ��"
    elseif _Channel == ChatWindowEX.GUILDChannel then
        _ShowString = _ShowString.."�л�����Ƶ��"
    elseif _Channel == ChatWindowEX.WorldChannel then
        _ShowString = _ShowString.."��������Ƶ��"
    elseif _Channel == ChatWindowEX.PrivateChannel then
        _ShowString = _ShowString.."˽������Ƶ��"
    else

    end

    if _Open then
        GUI:ButtonSetShowDisable(_Handle,false)
    else
        GUI:ButtonSetShowDisable(_Handle,true)
    end
    GUI:WndSetHint(_Handle,_ShowString)
    CL:SetChatChannelOpenClose(_Channel,_Open)
end

function ChatWindowEX.OnSendMsg(this)
    local _WndEditHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatInputEdit")
    if _WndEditHandle ~= 0 then
        local _SendMsg = GUI:EditGetTextM(_WndEditHandle)
        CL:ChatWindowSendMessage(_SendMsg, ChatWindowEX.ChatChannel)
        GUI:EditSetTextM(_WndEditHandle, "")
    end
end

function ChatWindowEX.OnChatChannelBtn()
    local _GUIHandle = 0
    local _ChatChannlWndHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatChannelListWnd")
    if _ChatChannlWndHandle ~= 0 then
        GUI:WndClose(_ChatChannlWndHandle)
    else
        _ChatChannlWndHandle = GUI:WndCreateWnd(ChatWindowEX.WndHandle, "ChatChannelListWnd", 1800000110, 85, 10)
        if _ChatChannlWndHandle ~= 0 then
            for i = 1, #ChatWindowEX.Channel do
                local _ChatChannelBtn = GUI:ButtonCreate(_ChatChannlWndHandle, "ChatChannelButton"..i, 1800000281, 5, 5 + (i - 1) * 16)
                if _ChatChannelBtn ~= 0 then
                    GUI:WndSetSizeM(_ChatChannelBtn, 60, 17)
                    GUI:ButtonSetCheckPoint(_ChatChannelBtn, 1)--��Ҫ����ѡȡ
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
    local _GUIHandle = GUI:WndGetParentM(h)
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    end
    local _GUIEditHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatInputEdit")
    if _GUIEditHandle ~= 0 then
        GUI:EditSetTextM(_GUIEditHandle, ChatWindowEX.Channel[_CurChannel][3])
        GUI:WndSetActiveM(_GUIEditHandle, true);
        ChatWindowEX.ChatChannel = _CurChannel
    end
end

function ChatWindowEX.ChannelChange()
    local _CurrentChannel = LuaParam[1]
    ChatWindowEX.ChatChannel = _CurrentChannel
end

RegisterUIEvent(LUA_EVENT_CHATCHANNELCHANGE, EVENT_DEFAULT_TAG, ChatWindowEX.ChannelChange)
CL:SetCursorColor(4278190080)
ChatWindowEX.main()