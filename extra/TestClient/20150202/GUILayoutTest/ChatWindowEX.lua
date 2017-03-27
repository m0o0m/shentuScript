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

function ChatWindowEX.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0

	_GUIHandle = GUI:ButtonCreate(_Parent,"BlockBtn",1930000088,20,-6)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"打开私聊屏蔽列表")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatCurrent",1930000092,20,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"屏蔽附近聊天频道")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnOpenCloseChatChannel")
		GUI:WndSetParam(_GUIHandle,ChatWindowEX.CurrentChannel)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatPrivate",1930000096,20,38)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"屏蔽私聊聊天频道")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnOpenCloseChatChannel")
		GUI:WndSetParam(_GUIHandle,ChatWindowEX.PrivateChannel)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatFamily",1930000100,20,60)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"屏蔽行会聊天频道")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnOpenCloseChatChannel")
		GUI:WndSetParam(_GUIHandle,ChatWindowEX.GUILDChannel)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatWorld",1930000104,20,82)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"屏蔽喊话聊天频道")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnOpenCloseChatChannel")
		GUI:WndSetParam(_GUIHandle,ChatWindowEX.WorldChannel)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatTeam",1930000108,20,104)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"屏蔽组队聊天频道")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnOpenCloseChatChannel")
		GUI:WndSetParam(_GUIHandle,ChatWindowEX.TeamChannel)
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

	_GUIHandle = GUI:ButtonCreate(_Parent,"CurrentChannel",1930000228,807,13)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭当前显示")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnShowChannelText")
		GUI:WndSetParam(_GUIHandle,ChatWindowEX.CurrentChannel)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"PrivateChannel",1930000232,807,35)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭私聊显示")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnShowChannelText")
		GUI:WndSetParam(_GUIHandle,ChatWindowEX.PrivateChannel)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"FamilyChannel",1930000240,807,57)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭行会聊天显示")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnShowChannelText")
		GUI:WndSetParam(_GUIHandle,ChatWindowEX.GUILDChannel)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"WorldChannle",1930000244,807,79)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭喊话聊天显示")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnShowChannelText")
		GUI:WndSetParam(_GUIHandle,ChatWindowEX.WorldChannel)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"TeamChannel",1930000236,807,101)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭组队聊天显示")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnShowChannelText")
		GUI:WndSetParam(_GUIHandle,ChatWindowEX.TeamChannel)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"AllChannel",1930000224,807,-9)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭所有频道显示")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnShowChannelText")
		GUI:WndSetParam(_GUIHandle,ChatWindowEX.AllChannel)
	end

	ChatWindowEX.UIInit(_Parent)
end

--UI Logic Code Start
ChatWindowEX.WndHandle = 0
function ChatWindowEX.UIInit(_Handle)
	ChatWindowEX.WndHandle = _Handle
	local _ScreenHeight = CL:GetScreenHeight();
	GUI:WndSetPosM(ChatWindowEX.WndHandle, 163, _ScreenHeight - 139)
	local _Parent = _Handle
	if ChatWindowEX.UseChatFace then
		local _ExpressPosX = CL:GetScreenWidth() - 408
		_GUIHandle = GUI:ButtonCreate(_Parent,"ChatExpresionBtn",1901900110,_ExpressPosX,121)
		if _GUIHandle ~= 0 then
			GUI:WndSetHint(_GUIHandle,"表情")
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindowEX.OnExpressBtnUp")
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
	CL:SetMaxFaceCount(ChatWindowEX.MaxFaceCount)

	local _ScrollHandle = GUI:WndFindChildM(_Parent, "ChatScroll")
	if _ScrollHandle ~= 0 then
		local _PosX = CL:GetScreenWidth() - 382
		GUI:WndSetPosM(_ScrollHandle, _PosX, 6);
	end

	local _InputZoneWidth = CL:GetScreenWidth() - 412
	LuaGlobal["ChatWindowInputWidth"] = _InputZoneWidth
	local _ChannelButtonPosY = 0

	local _XOffset = 0
	if LuaGlobal["ChatChannelXOffset"] ~= nil then 
		_XOffset = LuaGlobal["ChatChannelXOffset"]
	end

	local _WndRichEditHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatContentRE")
    if _WndRichEditHandle ~= 0 then
        GUI:WndSetSizeM(_WndRichEditHandle, _InputZoneWidth - 40, 108)
    end

	local _ChannelButtonPosX = _XOffset + _InputZoneWidth + 10
	local _ButtonHanle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "CurrentChannel")
	if _ButtonHanle ~= 0 then 
		ChatWindowEX.SetWndXPos(_ButtonHanle,_ChannelButtonPosX)
	end

	_ButtonHanle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "PrivateChannel")
	if _ButtonHanle ~= 0 then 
		ChatWindowEX.SetWndXPos(_ButtonHanle,_ChannelButtonPosX)
	end

	_ButtonHanle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "FamilyChannel")
	if _ButtonHanle ~= 0 then 
		ChatWindowEX.SetWndXPos(_ButtonHanle,_ChannelButtonPosX)
	end

	_ButtonHanle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "WorldChannle")
	if _ButtonHanle ~= 0 then 
		ChatWindowEX.SetWndXPos(_ButtonHanle,_ChannelButtonPosX)
	end

	_ButtonHanle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "TeamChannel")
	if _ButtonHanle ~= 0 then 
		ChatWindowEX.SetWndXPos(_ButtonHanle,_ChannelButtonPosX)
	end

	_ButtonHanle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "AllChannel")
	if _ButtonHanle ~= 0 then 
		ChatWindowEX.SetWndXPos(_ButtonHanle,_ChannelButtonPosX)
	end



	CL:InitChannelTextColor(0, 255, 255, 255, 255) --用户定义
	CL:InitChannelTextColor(1, 255, 255, 255, 255) --当前
	CL:InitChannelTextColor(2, 165, 93, 254, 255)--组队
	CL:InitChannelTextColor(3, 189, 98, 19, 255)--行会
	CL:InitChannelTextColor(4, 0, 0, 0, 255)--世界
	CL:InitChannelTextColor(5, 255, 255, 255, 255)--小喇叭
	CL:InitChannelTextColor(20, 255, 255, 255, 255)--系统

	CL:InitChannelTextGrowColor(0, 0, 0, 0, 0) --用户定义
	CL:InitChannelTextGrowColor(1, 0, 0, 0, 0) --当前
	CL:InitChannelTextGrowColor(2, 0, 0, 0, 0)--组队
	CL:InitChannelTextGrowColor(3, 0, 0, 0, 0)--行会
	CL:InitChannelTextGrowColor(4, 0, 0, 0, 0)--世界
	CL:InitChannelTextGrowColor(5, 0, 0, 0, 0)--小喇叭
	CL:InitChannelTextGrowColor(20, 0, 0, 0, 0)--系统

	CL:InitChannelFillBackColor(0, 0, 0, 0, 0) --用户定义
	CL:InitChannelFillBackColor(1, 0, 0, 0, 0) --当前
	CL:InitChannelFillBackColor(2, 0, 0, 0, 0)--组队
	CL:InitChannelFillBackColor(3, 0, 0, 0, 0)--行会
	CL:InitChannelFillBackColor(4, 255, 228, 0, 255)--世界
	CL:InitChannelFillBackColor(5, 255, 0, 255, 255)--小喇叭
	CL:InitChannelFillBackColor(20, 255, 0, 0, 255)--系统

	LuaGlobal["ChatWindowWhiteBack"] = false
	local _GameMainHandle = GUI:WndFindWindow(0,"GameMainInterface,GameMainBar")
	if 0 ~= _GameMainHandle then
		local _BackIamgeHandle = GUI:WndFindChildM(_GameMainHandle, "BackImage")
		if 0 ~= _BackIamgeHandle then
			local _ImageID = GUI:WndGetImageID(_BackIamgeHandle)
			if _ImageID == 1930000003 then
				LuaGlobal["ChatWindowWhiteBack"] = true
			end
		end
	end

	if LuaGlobal["ChatWindowWhiteBack"] ~= nil then
		if LuaGlobal["ChatWindowWhiteBack"] == true then
			CL:InitChannelTextColor(1, 0, 0, 0, 255) --当前
			CL:InitChannelTextColor(2, 100, 0, 255, 255)--组队
			CL:InitChannelTextColor(3, 130, 60, 0, 255)--行会
		end
	end
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

	local _ShowString = "开启"
	if _Open == true then
		_ShowString = "屏蔽"
	end

	if _Channel == ChatWindowEX.CurrentChannel then
	elseif _Channel == ChatWindowEX.CurrentChannel then
		_ShowString = _ShowString.."附近聊天频道"
	elseif _Channel == ChatWindowEX.TeamChannel then
		_ShowString = _ShowString.."组队聊天频道"
	elseif _Channel == ChatWindowEX.GUILDChannel then
		_ShowString = _ShowString.."行会聊天频道"
	elseif _Channel == ChatWindowEX.WorldChannel then
		_ShowString = _ShowString.."喊话聊天频道"
	elseif _Channel == ChatWindowEX.PrivateChannel then
		_ShowString = _ShowString.."私聊聊天频道"
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


function ChatWindowEX.OnShowChannelText(_Handle,_Param)
	local _Channel = GUI:WndGetParam(_Handle)
	local _ChannelShow = true
	if _Channel == ChatWindowEX.AllChannel then
		_ChannelShow = ChatWindowEX.AllChannelOpen
		ChatWindowEX.AllChannelOpen = not ChatWindowEX.AllChannelOpen
	else
		_ChannelShow = CL:GetShowChannelText(_Channel)
	end


	if _ChannelShow == true then
		_ShowString = "打开"
	else
		_ShowString = "关闭"
	end

	if _Channel == ChatWindowEX.CurrentChannel then
		_ShowString = _ShowString.."当前聊天显示"
	elseif _Channel == ChatWindowEX.TeamChannel then
		_ShowString = _ShowString.."组队聊天显示"
	elseif _Channel == ChatWindowEX.GUILDChannel then
		_ShowString = _ShowString.."行会聊天显示"
	elseif _Channel == ChatWindowEX.WorldChannel then
		_ShowString = _ShowString.."喊话显示"
	elseif _Channel == ChatWindowEX.PrivateChannel then
		_ShowString = _ShowString.."私聊显示"
	elseif _Channel == ChatWindowEX.AllChannel then
		_ShowString = _ShowString.."所有频道显示"
	else

	end

	if _Channel == ChatWindowEX.AllChannel then
		local _PosImageID = 0
		local _ShowText = true
		if _ChannelShow then
			_PosImageID = 1930000248
			_ShowText = false
		else
			_PosImageID = 0
			_ShowText = true
		end

		CL:SetShowChannelText(ChatWindowEX.CurrentChannel,_ShowText)
		CL:SetShowChannelText(ChatWindowEX.TeamChannel,_ShowText)
		CL:SetShowChannelText(ChatWindowEX.GUILDChannel,_ShowText)
		CL:SetShowChannelText(ChatWindowEX.WorldChannel,_ShowText)
		CL:SetShowChannelText(ChatWindowEX.PrivateChannel,_ShowText)

		local _ButtonHanle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "CurrentChannel")
		if _ButtonHanle ~= 0 then 
			GUI:ButtonSetDrawPostTexture(_ButtonHanle,_PosImageID)	
		end

		_ButtonHanle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "PrivateChannel")
		if _ButtonHanle ~= 0 then 
			GUI:ButtonSetDrawPostTexture(_ButtonHanle,_PosImageID)
		end

		_ButtonHanle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "FamilyChannel")
		if _ButtonHanle ~= 0 then 
			GUI:ButtonSetDrawPostTexture(_ButtonHanle,_PosImageID)
		end

		_ButtonHanle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "WorldChannle")
		if _ButtonHanle ~= 0 then 
			GUI:ButtonSetDrawPostTexture(_ButtonHanle,_PosImageID)
		end

		_ButtonHanle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "TeamChannel")
		if _ButtonHanle ~= 0 then 
			GUI:ButtonSetDrawPostTexture(_ButtonHanle,_PosImageID)
		end
	else
		if _ChannelShow then 
			GUI:ButtonSetDrawPostTexture(_Handle,1930000248)
			CL:SetShowChannelText(_Channel,false)
		else
			GUI:ButtonSetDrawPostTexture(_Handle,0)
			CL:SetShowChannelText(_Channel,true)
		end
	end
	GUI:WndSetHint(_Handle,_ShowString)
end

function ChatWindowEX.SetWndXPos(_Handle,_XPos)
	if 0 ~= _Handle then
		if GUI:WndGetPosM(_Handle) then
			local _YPos = LuaRet[2]
			GUI:WndSetPosM(_Handle, _XPos, _YPos)
		end
	end
end

ChatWindowEX.main()
