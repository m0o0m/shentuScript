ChatExpresion = {}
function ChatExpresion.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUI:WndCreateWnd(_Parent,"ChatExpresion",1901900114,100,-100)
	if _GUIHandle ~= 0 then
	end
	_Parent = _GUIHandle
	ChatExpresion.UIInit(_Parent)
end

--UI Logic Code Start
ChatExpresion.WndHandle = 0

function ChatExpresion.UIInit(_Parent)
	ChatExpresion.WndHandle = _Parent
	local _ExpresionCount = 36
	for _Idx = 1, _ExpresionCount do
		local _ExpresionID = "Face".._Idx
		local _LineY = CL:Div(_Idx - 1, 9)
		local _LineX = (_Idx - 1) % 9
		local _PosX = _LineX * 50 + 2
		local _PosY = _LineY * 50 + 2
		local _ImageID = CL:Add(1901900114, _Idx)

		local _GUIHandle = GUI:ImageCreate(_Parent, _ExpresionID, _ImageID, _PosX, _PosY)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, _Idx)
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "ChatExpresion.OLBtn")
		end
	end
end

ChatExpresion.main()


function ChatExpresion.OLBtn(_Handle,_Param)
	local _ChatEditHandle = GUI:WndFindWindow(0,"GameMainInterface,ChatWindow,ChatInputEdit")
	if _ChatEditHandle ~= 0 then
		local _CurEdiString = GUI:EditGetTextM(_ChatEditHandle)
		local _FaceIndex  = GUI:WndGetParam(_Handle)

		local _ResultCurEdiString = _CurEdiString.."#".._FaceIndex
		if _FaceIndex < 10 then
			_ResultCurEdiString = _CurEdiString.."#0".._FaceIndex
		end
		
		GUI:EditSetTextM(_ChatEditHandle,_ResultCurEdiString)
	end

	GUI:WndClose(ChatExpresion.WndHandle)
end