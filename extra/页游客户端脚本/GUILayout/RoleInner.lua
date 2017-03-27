RoleInner = {}

function RoleInner.main()
	local ui = "<form default_parent='RoleGUI'><dialog id='RoleInner' image='0' x='0' y='0' w='637' h='504' revmsg='true' OnInit='RoleInner.UIInit' OnClose='RoleInner.wndClose'>"
	.."<image id='BackImg' image='1800900004' x='15' y='40' w='607' h='308' revmsg='true'/>"
	.."<edit id='InnerInfoNameEdit' image='0' x='268' y='375' w='100' h='16' canedit='false' revmsg='true' enable='false' text_color=#FFD964 text='内功说明' font='system' align='center'/>"
	.."<edit id='InnerInfoEdit1' image='0' x='240' y='400' w='240' h='16' canedit='false' revmsg='true' enable='false' text_color=#6F5E4C text='内功可抵消受到的部分伤害' font='system'/>"
	.."<edit id='InnerInfoEdit2' image='0' x='240' y='425' w='240' h='16' canedit='false' revmsg='true' enable='false' text_color=#6F5E4C text='减伤越高，内功可抵消的伤害越多' font='system'/>"
	.."<edit id='InnerInfoEdit3' image='0' x='240' y='450' w='240' h='16' canedit='false' revmsg='true' enable='false' text_color=#6F5E4C text='内功经验可通过杀怪获得' font='system'/>"
	.."<image id='InnerInfoImg1' image='1800900039' x='220' y='402' w='12' h='13' revmsg='true'/>"
	.."<image id='InnerInfoImg2' image='1800900039' x='220' y='427' w='12' h='13' revmsg='true'/>"
	.."<image id='InnerInfoImg3' image='1800900039' x='220' y='452' w='12' h='13' revmsg='true'/>"
	.."<button id='InnerBtn' image='1800900035' x='455' y='250' w='132' h='57' revmsg='true'/>"
	.."<edit id='TitleEdit' image='0' x='465' y='52' w='110' h='18' canedit='false' revmsg='true' enable='false' text_color=#FFD964 text='内功总属性' font='system' align='center'/>"
	.."<image id='LevelNameImg' image='1801500096' x='160' y='265' w='61' h='32' revmsg='true'/>"
	.."<image id='LevelImg1' image='1801500108' x='228' y='267' w='20' h='26' revmsg='true'/>"
	.."<image id='LevelImg2' image='1801500108' x='248' y='267' w='20' h='26' revmsg='true'/>"
	.."<image id='LevelImg3' image='1801500108' x='268' y='267' w='20' h='26' revmsg='true'/>"
	.."<image id='ExpBackImg' image='1800000364' x='63' y='288' w='321' h='47' revmsg='true'/>"
	.."<image id='ExpImg' image='1800000365' x='91' y='298' w='257' h='26' revmsg='true'/>"
	.."<edit id='ExpEdit' image='0' x='119' y='302' w='200' h='16' canedit='false' revmsg='true' enable='false' font='system' align='center'/>"
	.."<edit id='InnerEdit1' image='0' x='465' y='140' w='110' h='18' canedit='false' revmsg='true' enable='false' text_color=#FFD964 text='内功值：' font='system' align='center'/>"
	.."<edit id='InnerEdit2' image='0' x='465' y='185' w='110' h='18' canedit='false' revmsg='true' enable='false' text_color=#FFD964 text='减伤：' font='system' align='center'/>"
	.."</dialog></form>"
	GenFormByString(ui)
end


--UI Logic Code Start
RoleInner.WndHandle = 0
RoleInner.Open = false

function RoleInner.UIInit(_Handle)
	RoleInner.WndHandle = _Handle
	RoleInner.Open = true
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleSkill")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	local _GUIHandle = GetWindow(nil,"RoleSkillChoose")
	if  _GUIHandle ~= 0   then
		GUIWndClose(_GUIHandle)
	end
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleRein")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	local _GUIHandle = GetWindow(nil,"RoleReinPoint")
	if  _GUIHandle ~= 0   then
		GUIWndClose(_GUIHandle)
	end
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleEquipment")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	local _GUIHandle = GUIWndFindChildM(RoleGUI.WndHandle,"TitleImg")
	if _GUIHandle ~= 0 then
		GUIWndSetImageID(_GUIHandle, 1801500080)
	end
	
	for i = 1, 4 do
		_GUIHandle=GUIWndFindChildM(RoleGUI.WndHandle, "StateBtn_"..i)
		GUIButtonSetIsActivePageBtn(_GUIHandle, false)
	end		
	_GUIHandle = GUIWndFindWindow(RoleGUI.WndHandle, "StateBtn_4")--按钮
	GUIButtonSetIsActivePageBtn(_GUIHandle, true)
	WndMoveToParentTop(_GUIHandle)
end

function RoleInner.wndClose()
	RoleInner.Open = false
end

RoleInner.main()