ChatWindow = {}


ChatWindow.UseChatFace = true
ChatWindow.MaxFaceCount = 3

ChatWindow.UserChannel = 0
ChatWindow.CurrentChannel = 1
ChatWindow.TeamChannel = 2
ChatWindow.GUILDChannel = 3
ChatWindow.WorldChannel = 4
ChatWindow.SpeakerChannel = 5
ChatWindow.P2PChannel = 6
ChatWindow.PrivateChannel = 7
ChatWindow.SysChannel = 20

function ChatWindow.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0

	_GUIHandle = GUI:ButtonCreate(_Parent,"BlockBtn",1930000088,20,-6)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"打开私聊屏蔽列表")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatCurrent",1930000092,20,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"屏蔽附近聊天频道")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindow.OnOpenCloseChatChannel")
		GUI:WndSetParam(_GUIHandle,ChatWindow.CurrentChannel)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatPrivate",1930000096,20,38)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"屏蔽私聊聊天频道")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindow.OnOpenCloseChatChannel")
		GUI:WndSetParam(_GUIHandle,ChatWindow.PrivateChannel)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatFamily",1930000100,20,60)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"屏蔽行会聊天频道")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindow.OnOpenCloseChatChannel")
		GUI:WndSetParam(_GUIHandle,ChatWindow.GUILDChannel)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatWorld",1930000104,20,82)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"屏蔽喊话聊天频道")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindow.OnOpenCloseChatChannel")
		GUI:WndSetParam(_GUIHandle,ChatWindow.WorldChannel)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatTeam",1930000108,20,104)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"屏蔽组队聊天频道")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindow.OnOpenCloseChatChannel")
		GUI:WndSetParam(_GUIHandle,ChatWindow.TeamChannel)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"ChatInputEdit",85,121,641,19)
	if _GUIHandle ~= 0 then
		
	end

	_GUIHandle = GUI:ButtonCreate(_Parent, "ChatChannelBtn",1930000152,51,123)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:RichEditCreate(_Parent, "ChatContentRE",44,8,683,116)
	if _GUIHandle ~= 0 then
	end

	local _LockPosX = CL:GetScreenWidth() - 390
	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatLock",1903600001,_LockPosX,122)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"锁定")
	end

	_GUIHandle = GUI:ScrollBarVCreate(_Parent,"ChatScroll",1930000007,1930000011,1930000015,1930000006,728,6,110)
	if _GUIHandle ~= 0 then

	end

	--[[_GUIHandle = GUI:ButtonCreate(_Parent,"CurrentChannel",1930000228,807,13)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭当前显示")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"PrivateChannel",1930000232,807,35)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭私聊显示")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"FamilyChannel",1930000240,807,57)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭行会聊天显示")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"WorldChannle",1930000244,807,79)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭喊话聊天显示")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"TeamChannel",1930000236,807,101)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭组队聊天显示")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"AllChannel",1930000224,807,-9)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭所有频道显示")
	end]]

	ChatWindow.UIInit(_Parent)
end

--UI Logic Code Start
ChatWindow.WndHandle = 0
function ChatWindow.UIInit(_Handle)
	ChatWindow.WndHandle = _Handle

	local _Parent = _Handle
	if ChatWindow.UseChatFace then
		local _ExpressPosX = CL:GetScreenWidth() - 408
		_GUIHandle = GUI:ButtonCreate(_Parent,"ChatExpresionBtn",1901900110,_ExpressPosX,121)
		if _GUIHandle ~= 0 then
			GUI:WndSetHint(_GUIHandle,"表情")
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindow.OnExpressBtnUp")
		end
		CL:SetEnableUseChatFace(true)

		local _RichEditHandle = GUI:WndFindChildM(_Parent, "ChatContentRE")
		if _RichEditHandle ~=0 then
			GUI:RichEditRegisterControlString(_RichEditHandle, "FACE")
		end
	else
		CL:SetEnableUseChatFace(false)	
		local _RichEditHandle = GUI:WndFindChildM(_Parent, "ChatContentRE")
		if _RichEditHandle ~=0 then
			GUI:RichEditUnRegisterControlString(_RichEditHandle, "FACE")
		end
	end
	CL:SetMaxFaceCount(ChatWindow.MaxFaceCount)

	local _ScrollHandle = GUI:WndFindChildM(_Parent, "ChatScroll")
	if _ScrollHandle ~= 0 then
		local _PosX = CL:GetScreenWidth() - 382
		GUI:WndSetPosM(_ScrollHandle, _PosX, 6);
	end
end

function ChatWindow.OnExpressBtnUp(_Handle,_Param)
	local _WndHandle = GUI:WndFindChildM(ChatWindow.WndHandle, "ChatExpresion")
	if _WndHandle ~= 0 then
		GUI:WndClose(_WndHandle)
	else
		UI:Lua_OpenWindow(ChatWindow.WndHandle, "ChatExpresion.lua")
	end
end


function ChatWindow.OnOpenCloseChatChannel(_Handle,_Param)
	local _Channel = GUI:WndGetParam(_Handle)
	local _Open = GUI:ButtonGetShowDisable(_Handle)

	local _ShowString = "开启"
	if _Open == true then
		_ShowString = "屏蔽"
	end

	if _Channel == ChatWindow.CurrentChannel then
	elseif _Channel == ChatWindow.CurrentChannel then
		_ShowString = _ShowString.."附近聊天频道"
	elseif _Channel == ChatWindow.TeamChannel then
		_ShowString = _ShowString.."组队聊天频道"
	elseif _Channel == ChatWindow.GUILDChannel then
		_ShowString = _ShowString.."行会聊天频道"
	elseif _Channel == ChatWindow.WorldChannel then
		_ShowString = _ShowString.."喊话聊天频道"
	elseif _Channel == ChatWindow.PrivateChannel then
		_ShowString = _ShowString.."私聊聊天频道"
	end

	if _Open then 
		GUI:ButtonSetShowDisable(_Handle,false)
	else
		GUI:ButtonSetShowDisable(_Handle,true)
	end
	GUI:WndSetHint(_Handle,_ShowString)
	CL:SetChatChannelOpenClose(_Channel,_Open)
end

ChatWindow.main()
