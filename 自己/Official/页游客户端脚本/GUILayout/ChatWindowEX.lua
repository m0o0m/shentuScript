ChatWindowEX = {}

ChatWindowEX_localString = {}
local l = ChatWindowEX_localString
l.hideWnd = "隐藏聊天窗口"
l.expresion = "表情"
l.send = "发送"



function ChatWindowEX.main()
	local _Parent = LuaGlobal["AttachPartent"]
	
	local _GUIHandle = 0
	_GUIHandle = GUIImageCreate(_Parent,"BackIamge", 0, 0 ,0)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle, 325, 178)
		GUIImageSetAroundImage(_GUIHandle, 1800000030, 1800000031, 1800000032, 1800000033, 1800000034, 1800000035, 1800000036, 1800000037, 1800000038)
	end
	
	--_GUIHandle = GUIWndCreateWnd(_Parent, "ChatContentRE", 0, 5, 5)		
	--if _GUIHandle ~= 0 then
	--	GUIChatWndSetSize(_GUIHandle, 315, 142)
	--end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"ChatContentRE",5,5,315,142)--程序控制内容	ScrollBarSetLenght
	
	for i = 1, #ChatWindowEX.showChannel_ do
		_GUIHandle = GUIButtonCreate(_Parent,"ChangeShowChannelBtn"..i, 1800000106, 27+45*(i-1), 153)
		if _GUIHandle ~= 0 then
			GUIWndSetSizeM(_GUIHandle, 43, 21)
			GUIWndSetTextOffset(_GUIHandle, 0, 1)
			GUIButtonSetStateTextColor(_GUIHandle, 0, CLMakeARGB(255, 194, 182, 160))
			GUIButtonSetStateTextColor(_GUIHandle, 2, CLMakeARGB(255, 255, 255, 255))
			GUIWndSetTextM(_GUIHandle, ChatWindowEX.showChannel_[i][1])
			GUIWndSetParam(_GUIHandle, ChatWindowEX.showChannel_[i][2])
			GUIButtonSetIsActivePageBtn(_GUIHandle, false)
			GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "ChatWindowEX.ChangeShowChannelBtn_LC")
		end
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"ChatEditBack", 1800500076, -16, 177)
	
	_GUIHandle = GUIScrollBarVCreate(_Parent,"ChatScroll",1800000014,1800000022,1800000001,1800000005, -16, 1, 177)	--程序控制
	
	_GUIHandle = GUIImageCreate(_Parent,"channelWnd", 0, 10, 64)	--channel background scope
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle, 42, 137)
	end

	_GUIHandle = GUIButtonCreate(_Parent,"HideWnd",1800000154, -16,177)	--隐藏窗口
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.hideWnd)
		GUIWndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick,"ChatWindowEX.hideWndBtn_LC")
	end
	_GUIHandle = GUIButtonCreate(_Parent, "SelectChatChannel", 1800000039, 11, 177) --频道btn
	if _GUIHandle ~= 0 then
		ChatWindowEX._chatChannelBtn = _GUIHandle
		GUIWndSetSizeM(_GUIHandle, 41, 25)
		GUIWndSetTextOffset(_GUIHandle, 1, 0)
		GUIWndSetTextColorM(_GUIHandle, CLMakeARGB(255, 194, 182, 160))
		GUIWndSetTextM(_GUIHandle, ChatWindowEX.Channel_[1][1])
		GUIWndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "ChatWindowEX.chatChannelBtn_LC")
	end

	if ChatWindowEX.UseChatFace then
		_GUIHandle = GUIButtonCreate(_Parent,"ChatExpresionBtn",1800500077,256,177)	--表情
		if _GUIHandle ~= 0 then
			GUIWndSetHint(_GUIHandle, l.expresion)
			GUIWndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick,"ChatWindowEX.chatExpresionBtn_LC")
		end
		CL:SetEnableUseChatFace(true)		
		GUI:RichEditRegisterControlString(_GUIHandle, "FACE")
	else
		CL:SetEnableUseChatFace(false) 
		GUI:RichEditUnRegisterControlString(_RichEditHandle, "FACE")
	end
	
	_GUIHandle = GUIButtonCreate(_Parent, "SendBtn",1800000039,283,177)	--发送btn  
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle, 41, 25)
		GUIWndSetTextOffset(_GUIHandle, 1, 0)
		GUIWndSetTextColorM(_GUIHandle, webColor.normalText)
		GUIWndSetTextM(_GUIHandle, l.send)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "ChatWindowEX.sendBtn_LC")
	end
	
	_GUIHandle = GUIButtonCreate(_Parent, "WndScaleBtn",1800000010,300,3)	--缩放btn
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "ChatWindowEX.scaleBtn_LC")
	end
	
	_GUIHandle = GUIEditCreate(_Parent,"ChatInputEdit", 57, 176, 190, 27)	
	
	ChatWindowEX.UIInit(_Parent)
end

--UI Logic Code Start
ChatWindowEX.Width = 340

ChatWindowEX.InputWidth = 267
ChatWindowEX.chatChannel = 1
ChatWindowEX.Channel_ = {
	{"当前",	1},
	{"组队",	2},
	{"行会",	3},
	{"喊话",	4},
	{"喇叭",	5},
	{"私聊",	6}
}

ChatWindowEX.showChannel_ = {
	{"综合",	30},
	{"当前",	1},
	{"组队",	2},
	{"行会",	3},
	{"世界",	4},
	{"私聊",	6}
}
ChatWindowEX.UseChatFace = true

ChatWindowEX.MaxFaceCount = 3

function ChatWindowEX.UIInit(_Handle)
	ChatWindowEX.WndHandle = _Handle
	RegisterUIEvent(LUA_EVENT_CHATCHANNELCHANGE, "ChatWindowEX_频道改变", ChatWindowEX.chatChannelChange)
	
	local newX = CLGetScreenWidth()
	local newY = CLGetScreenHeight()
	
	local _hideWnd = GUIWndCreateWnd(0, "ChatWindowEXHideUI", 1800500106, 0, 0)	--最小化窗口
	if _hideWnd ~= 0 then 
		GUIWndSetVisible(_hideWnd, false)
		ChatWindowEX._hideWnd = _hideWnd
		_GUIHandle = GUIButtonCreate(_hideWnd, "ShowWndBtn", 1800000158, 0, 77)
		if _GUIHandle ~= 0 then
			GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "ChatWindowEX.ShowWndBtn_LC")
		end
	end
	
	GUIWndGetPosM(_Handle)
	local y = 0
	if newX < 1151 then
		y = newY - 333
		GUIWndSetPosM(ChatWindowEX._hideWnd, 0, newY - 232)
	else
		y = newY - 203
		GUIWndSetPosM(ChatWindowEX._hideWnd, 0, newY - 102)
	end
	GUIWndSetPosM(_Handle, 16, y)
	CL:SetMaxFaceCount(ChatWindowEX.MaxFaceCount)
	ChatWindowEX.UpdataPageBtn(30)

	ChatWindowEX.SetAllChannelState(true)
	--CLChangeChatType(1)	--设置默认频道
	--CLChangeChatShowType(7)	--设置显示综合
	

	
	local _menu = 0
	local handle = GetWindow(ChatWindowEX.WndHandle, "channelWnd")
	_menu = GUIWndCreateWnd(handle, "menu", 0, -9, 19)	--菜单     chatChannelMenu
	if _menu ~= 0 then
		ChatWindowEX._menu = _menu
		GUIWndSetVisible(_menu, false)
		--GUIWndSetSizeM(_menu, 42, 112)
		--GUIImageSetFitSize(_menu, true)
		_GUIHandle = GUIImageCreate(_menu, "backImg", 1800000110, 10, -20)
		if _GUIHandle ~= 0 then 
			GUIWndSetTextOffset(_GUIHandle, 0, 2)
			GUIWndSetEnableM(_GUIHandle, false)
			GUIImageSetFitSize(_GUIHandle, true)
			GUIWndSetSizeM(_GUIHandle, 42, 112)
		end 
		for i = 1, #ChatWindowEX.Channel_ do
			_GUIHandle = GUIButtonCreate(_menu, "btn"..i, 1800000281, 15, -15+(i-1)*17)
			if _GUIHandle ~= 0 then
				GUIWndSetSizeM(_GUIHandle, 32, 17)
				GUI:ButtonSetCheckPoint(_ChatChannelBtn, 1)--不要像素选取
				GUIButtonSetStateTextColor(_GUIHandle, 0, webColor.normalText)
				GUIButtonSetStateTextColor(_GUIHandle, 1, webColor.greenText)
				GUIWndSetTextM(_GUIHandle, ChatWindowEX.Channel_[i][1])
				GUIWndSetParam(_GUIHandle, ChatWindowEX.Channel_[i][2])
				GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "ChatWindowEX.menuBtn_LC")
			end
		end
	end

	
end

function ChatWindowEX.UpdataPageBtn(index)
    for i = 1, #(ChatWindowEX.showChannel_) do
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

function ChatWindowEX.SetAllChannelState(_OpenClose)
 CL:SetShowChannelText(1,_OpenClose)
 CL:SetShowChannelText(2,_OpenClose)
 CL:SetShowChannelText(3,_OpenClose)
 CL:SetShowChannelText(4,_OpenClose)
 CL:SetShowChannelText(6,_OpenClose)
end

function ChatWindowEX.chatExpresionBtn_LC()
	local _WndHandle = GUIWndFindChildM(ChatWindowEX.WndHandle, "ChatExpresion")
	if _WndHandle ~= 0 then
		GUIWndClose(_WndHandle)
	else
		UI:Lua_OpenWindow(ChatWindowEX.WndHandle, "ChatExpresion.lua")
	end
end

function ChatWindowEX.sendBtn_LC()
	local _GUIHandle = GUIWndFindChildM(ChatWindowEX.WndHandle, "ChatInputEdit")
	if _GUIHandle ~= 0 then 
		CLChatWindowSendMessage(GUIEditGetTextM(_GUIHandle), ChatWindowEX.chatChannel)
	end
end

function ChatWindowEX.scaleBtn_LC(_Handle)
	local _chatcontentRE = GUIWndFindChildM(ChatWindowEX.WndHandle, "ChatContentRE")

	local difY, scaleY, sizeY = 0, 0, 0
	GUIWndGetSizeM(_chatcontentRE)
	if as3.tolua(LuaRet[2]) < 200 then
		scaleY = 1.5618
		sizeY = 242
		difY = 100
		GUIWndSetImageID(_Handle, 1800000006)
	else
		scaleY = 1
		sizeY = 142
		difY = -100
		GUIWndSetImageID(_Handle, 1800000010)
	end

	local tXml_start, tXml_end = "<Tween><Frame time='0.3'", "'/></Tween>"
	local resetPosUI_ = {"ChatContentRE","WndScaleBtn"}
	for i = 1, 2 do
		local _GUIHandle = GUIWndFindChildM(ChatWindowEX.WndHandle, resetPosUI_[i])
		if _GUIHandle ~= 0 then
			GUIWndGetPosM(_GUIHandle)
			GUIWndTween(_GUIHandle, tXml_start.."y='"..(as3.tolua(LuaRet[2])-difY)..tXml_end, "")
		end
	end
	local _GUIHandle = GUIWndFindChildM(ChatWindowEX.WndHandle, "BackIamge")
	if _GUIHandle ~= 0 then
		GUIWndGetPosM(_GUIHandle)
		GUIWndTween(_GUIHandle, tXml_start.."y='"..(as3.tolua(LuaRet[2])-difY).."' scaleY='"..scaleY..tXml_end, "GUIChatWndSetSize(".._chatcontentRE..",315,"..sizeY..")")
	end
end

function ChatWindowEX.chatChannelChange()
	ChatWindowEX.chatChannel = as3.tolua(LuaParam[1])
	for i = 1, #ChatWindowEX.Channel_ do
		if ChatWindowEX.chatChannel == ChatWindowEX.Channel_[i][2] then
			GUIWndSetTextM(ChatWindowEX._chatChannelBtn, ChatWindowEX.Channel_[i][1])
			return
		end
	end
end

function ChatWindowEX.hideWndBtn_LC()
	local tXml = "<Tween><Frame time='0.3' x='-370' /></Tween>"
	GUIWndTween(ChatWindowEX.WndHandle, tXml, "ChatWindowEX.HideTweenEnd()")
end

function ChatWindowEX.HideTweenEnd()
	if GUIWndGetPosM(ChatWindowEX.WndHandle) then
		GUIWndSetPosM(ChatWindowEX._hideWnd, 0, as3.tolua(LuaRet[2])+101)
	end
	GUIWndSetVisible(ChatWindowEX.WndHandle, false)
	GUIWndSetVisible(ChatWindowEX._hideWnd, true)
end

function ChatWindowEX.ShowWndBtn_LC()
	GUIWndSetVisible(ChatWindowEX.WndHandle, true)
	GUIWndSetVisible(ChatWindowEX._hideWnd, false)
	
	local tXml = "<Tween><Frame time='0.3' x='16' /></Tween>"
	GUIWndTween(ChatWindowEX.WndHandle, tXml, "")
end

function ChatWindowEX.chatChannelBtn_LC()
	
	if GUIWndGetVisible(ChatWindowEX._menu) then
		GUIWndSetVisible(ChatWindowEX._menu, false)
	else
		GUIWndSetVisible(ChatWindowEX._menu, true)
		local handle = GetWindow(ChatWindowEX.WndHandle, "channelWnd")
		GUISetPopupMenu(ChatWindowEX._menu,handle)
	end
	
end

function ChatWindowEX.menuBtn_LC(_Handle)
	local _CurChannel = GUIWndGetParam(_Handle)
	--CLChangeChatType(_CurChannel)

	GUIWndSetTextM(ChatWindowEX._chatChannelBtn, ChatWindowEX.Channel_[_CurChannel][1])

    local _GUIEditHandle = GUIWndFindChildM(ChatWindowEX.WndHandle, "ChatInputEdit")
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
	end
	ChatWindowEX.chatChannel = _CurChannel
	if ChatWindowEX._menu  ~= 0 then
		GUIWndSetVisible(ChatWindowEX._menu, false)
	end
end

function ChatWindowEX.ChangeShowChannelBtn_LC(_Handle)
	if  _Handle == ChatWindowEX._selShowChannelBtn then return end
	
	if ChatWindowEX._selShowChannelBtn then
		GUIButtonSetIsActivePageBtn(ChatWindowEX._selShowChannelBtn, false)
	end
	GUIButtonSetIsActivePageBtn(_Handle, true)
	ChatWindowEX._selShowChannelBtn = _Handle
	
	local cParam = GUIWndGetParam(_Handle)
	if cParam ~= ChatWindowEX.showChannel_[1][2] then
		local _GUIEditHandle = GUIWndFindChildM(ChatWindowEX.WndHandle, "ChatInputEdit")
		if _GUIEditHandle ~= 0 then
			if cParam == 1 then 
				GUI:EditSetTextM(_GUIEditHandle,"")
			elseif cParam == 2 then 
				GUI:EditSetTextM(_GUIEditHandle,"!!")
			elseif cParam == 3 then
				GUI:EditSetTextM(_GUIEditHandle,"!~")
			elseif cParam == 4 then 
				GUI:EditSetTextM(_GUIEditHandle,"!")
			elseif cParam == 5 then 
				GUI:EditSetTextM(_GUIEditHandle,"!<")
			elseif cParam == 6 then 
				GUI:EditSetTextM(_GUIEditHandle,"/")
			end
		--CLChangeChatType(cParam)
		end
		GUIWndSetTextM(ChatWindowEX._chatChannelBtn, ChatWindowEX.Channel_[cParam][1])
	end

	--CLChangeChatShowType(cParam)
	CL:SetShowChannelText(cParam,true)
	
end

ChatWindowEX.main()