ChatExpresion = {}
ChatExpresion.FaceImage = {
	1901900115,1901900116,1901900117,1901900118,1901900119,1901900120,
	1901900121,1901900122,1901900123,1901900124,1901900125,1901900126,
	1901900127,1901900128,1901900129,1901900130,1901900131,1901900132,
	1901900133,1901900134,1901900135,1901900136,1901900137,1901900138,	
	1901900139,1901900140,1901900141,1901900142,1901900143,1901900144
}
function ChatExpresion.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUIWndCreateWnd(_Parent,"ChatExpresion",1901900114,100,-100)
	if _GUIHandle ~= 0 then
	end
	_Parent = _GUIHandle
	ChatExpresion.UIInit(_Parent)
end

--UI Logic Code Start
ChatExpresion.WndHandle = 0

function ChatExpresion.UIInit(_Parent)
	ChatExpresion.WndHandle = _Parent
	for _Idx = 1, #ChatExpresion.FaceImage do
		local _ExpresionID = "Face".._Idx
		local _LineY = CLDiv(_Idx - 1, 9)
		local _LineX = (_Idx - 1) % 9
		local _PosX = _LineX * 50 + 2
		local _PosY = _LineY * 50 + 2
		local _ImageID = ChatExpresion.FaceImage[_Idx]

		local _GUIHandle = GUIImageCreate(_Parent, _ExpresionID, _ImageID, _PosX, _PosY)
		if _GUIHandle ~= 0 then
			GUIWndSetParam(_GUIHandle, _Idx)
			GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "ChatExpresion.OLBtn")
		end
	end
end

ChatExpresion.main()


function ChatExpresion.OLBtn(_Handle,_Param)
	local _ChatEditHandle = GUIWndFindWindow(0,"GameMainInterface,ChatWindow,ChatInputEdit")
	if _ChatEditHandle ~= 0 then
		local _CurEdiString = GUIEditGetTextM(_ChatEditHandle)
		local _FaceIndex  = GUIWndGetParam(_Handle)

		local _ResultCurEdiString = _CurEdiString.."#".._FaceIndex
		if _FaceIndex < 10 then
			_ResultCurEdiString = _CurEdiString.."#0".._FaceIndex
		end
		
		GUIEditSetTextM(_ChatEditHandle,_ResultCurEdiString)
	end

	GUIWndClose(ChatExpresion.WndHandle)
end