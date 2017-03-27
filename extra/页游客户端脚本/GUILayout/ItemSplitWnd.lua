ItemSplitWnd ={}
function ItemSplitWnd.main()
	local ui = "<form default_parent='Package'> <dialog OnInit='ItemSplitWnd.UIInit' id='ItemSplitWnd' image='1800000280' x='71' y='160' w='277' h='211' revmsg='true'>"
	.."	<button id='CloseBtn' image='1800000043' x='235' y='4' w='26' h='26' revmsg='true' OnLButtonClick='luaWndClose'/>"
	.."	<image id='InputBackImg' image='1800800003' x='117' y='81' w='103' h='21' revmsg='true'/>"
	.."	<edit id='CountInput' x='119' y='85' w='99' h='14' revmsg='true' font='system' canedit='true' type='number' limit='2' />"
	.."	<edit id='InputNameEdit' x='50' y='85' w='60' h='14' revmsg='true' text_color='#C6B69C' text='拆分数量：' font='system'/>"
	.."	<button id='SureBtn' image='1800000134' x='50' y='155' w='70' h='37' revmsg='true' text='确定' text_color='#C6B69C'/>"
	.."	<button id='CancelBtn' image='1800000134' x='151' y='155' w='70' h='37' revmsg='true' text='取消' text_color='#C6B69C' OnLButtonClick='luaWndClose'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end

--UI Logic Code Start
ItemSplitWnd.wndHandle = 0
function ItemSplitWnd.UIInit(_Handle)
	ItemSplitWnd.wndHandle = _Handle
	--CountInput，SureBtn这个控件名字不要变，程序控制
end
ItemSplitWnd.main()