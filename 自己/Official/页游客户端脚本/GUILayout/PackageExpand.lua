PackageExpand = {}
function PackageExpand.main()
	local ui = "<form default_parent='Package'><dialog id='PackageExpand' image='1800800002' x='419' y='0' w='241' h='132' revmsg='true' OnInit='PackageExpand.UIInit'>"
	.."<edit id='Info' image='0' x='55' y='38' w='131' h='19' revmsg='true' text_color=#C2B6A0 text='请放入扩展道具' font='system' align='center'/>"
	.."<image id='NameImg' image='1801500118' x='68' y='3' w='108' h='25' revmsg='true' enable='false'/>"
	.."<image id='ItemImg3' image='1800000080' x='179' y='64' w='46' h='46' revmsg='true'/>"
	.."<image id='ItemImg2' image='1800000080' x='124' y='64' w='46' h='46' revmsg='true'/>"
	.."<image id='ItemImg1' image='1800000080' x='69' y='64' w='46' h='46' revmsg='true'/>"
	.."<image id='ItemImg0' image='1800000080' x='14' y='64' w='46' h='46' revmsg='true'/>"
	.."<itemctrl id='Item3' x='182' y='67' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item2' x='127' y='67' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item1' x='72' y='67' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item0' x='17' y='67' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true' enable='true'/>"
	.."<button id='Close' image='1800000043' x='205' y='3' w='32' h='32' OnLButtonUp='PackageExpand.closeWnd' revmsg='true'/>"
	.."</dialog></form>"
	GenFormByString(ui)
end

--UI Logic Code Start
function PackageExpand.UIInit(_Handle)

end

function PackageExpand.closeWnd(_handle)
	WndClose(0,"Package,PackageExpand")
end
PackageExpand.main()