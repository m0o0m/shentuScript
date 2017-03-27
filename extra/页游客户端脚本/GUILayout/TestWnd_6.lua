TestWnd_6 ={}
local ui = "<form> <dialog OnInit='TestWnd_6.UIInit' id='TestWnd_6' image='1801900001' x='344' y='128' w='766' h='524' revmsg='true'>"
	.."	<image id='WingEffectLeft' image='3020101800' x='616' y='74' w='0' h='0' type='animate'/>"
	.."	<image id='fireMagic'      image='3020101800' x='10'  y='30' type='animate'/>"
	.."	<image id='TestWndChild_0' image='1900403400' x='616' y='74' type='animate'/>"
	.." </dialog>"
	.."</form>"

function TestWnd_6.main()
	GenFormByString(ui)
end

--UI Logic Code Start
function TestWnd_6.UIInit(_Handle)
	local _handle = GetWindow(_Handle, "WingEffectLeft")
	if _handle then 
		--GUIImageSetDrawCenter(_handle, true)
		--GUIImageSetTransfrom(_handle, 30000, 30000,0)	
		msg('center')
	end
end
TestWnd_6.main()