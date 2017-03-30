ElseItem_xuefu ={}
local ui = "<form default_parent='ShenLuWnd'> <dialog OnInit='ElseItem_xuefu.UIInit' id='ElseItem_xuefu' image='1802200003' x='603' y='0' w='317' h='517' drag='true' revmsg='true'>"
	.."	<image id='buy_title' x='90' y='3' w='134' h='27' image='1801500090' enable='false' />"
	.."	<button id='close' image='1800000043' x='283' y='4' w='26' h='26' OnLButtonUp='ElseItem_xuefu.closeWnd' revmsg='true' text_color='#C2B6A0'/>"

	.." </dialog>"
	.."</form>"
	
--UI Logic Code Start
ElseItem_xuefu.WndHandle = 0
ElseItem_xuefu.mallList = {}
function ElseItem_xuefu.main()
	GenFormByString(ui)
end

function ElseItem_xuefu.UIInit(_Handle)
	ElseItem_xuefu.WndHandle = _Handle
	ImageSetFitSize(ElseItem_xuefu.WndHandle,nil, true)
	
end

function ElseItem_xuefu.closeWnd(_handle)		
	GUIWndClose(ElseItem_xuefu.WndHandle)
end

ElseItem_xuefu.main()