RoleSkillChoose = {}

function RoleSkillChoose.main()
local ui = "<form> <dialog OnInit='RoleSkillChoose.UIInit' id='RoleSkillChoose' image='1800900040' x='0' y='0' center='true' w='295' h='123' revmsg='true'>"
	.."	<button id='CloseBtn' image='1805900080' x='261' y='1' w='34' h='38' OnLButtonUp='RoleSkillChoose.SkillBarClose' revmsg='true'/>"
	.."	<button id='SkillChoose1' image='1805900128' x='26' y='22' w='36' h='33' OnLButtonUp='RoleSkillChoose.SkillBarChoose' revmsg='true'/>"
	.."	<button id='SkillChoose2' image='1805900132' x='76' y='22' w='36' h='33' OnLButtonUp='RoleSkillChoose.SkillBarChoose' revmsg='true' param='1'/>"
	.."	<button id='SkillChoose3' image='1805900136' x='126' y='22' w='36' h='33' OnLButtonUp='RoleSkillChoose.SkillBarChoose' revmsg='true' param='2'/>"
	.."	<button id='SkillChoose4' image='1805900140' x='176' y='22' w='36' h='33' OnLButtonUp='RoleSkillChoose.SkillBarChoose' revmsg='true' param='3'/>"
	.."	<button id='SkillChoose5' image='1805900144' x='226' y='21' w='36' h='33' OnLButtonUp='RoleSkillChoose.SkillBarChoose' revmsg='true' param='4'/>"
	.."	<button id='SkillChoose6' image='1805900148' x='26' y='69' w='36' h='33' OnLButtonUp='RoleSkillChoose.SkillBarChoose' revmsg='true' param='5'/>"
	.."	<button id='SkillChoose7' image='1805900194' x='76' y='69' w='36' h='33' OnLButtonUp='RoleSkillChoose.SkillBarChoose' revmsg='true' param='6'/>"
	.."	<button id='SkillChoose8' image='1805900198' x='126' y='69' w='36' h='33' OnLButtonUp='RoleSkillChoose.SkillBarChoose' revmsg='true' param='7'/>"
	.."	<button id='SkillChoose9' image='1805900202' x='176' y='69' w='36' h='33' OnLButtonUp='RoleSkillChoose.SkillBarChoose' revmsg='true' param='8'/>"
	.."	<button id='SkillChoose10' image='1805900206' x='226' y='69' w='36' h='33' OnLButtonUp='RoleSkillChoose.SkillBarChoose' revmsg='true' param='9'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end

--UI Logic Code Start

RoleSkillChoose.WndHandle=0
RoleSkillChoose.SkillId=0

function RoleSkillChoose.UIInit(_Handle)
	RoleSkillChoose.WndHandle = _Handle
	GUIWndSetSizeM(_Handle, 295, 123)
end

function RoleSkillChoose.SetSkillId(skillid)
	RoleSkillChoose.SkillId=skillid
end

function RoleSkillChoose.SkillBarChoose(_Handle)
	local slot = GUIWndGetParam(_Handle)
	CLSetQuickBar(2,slot,RoleSkillChoose.SkillId)
	RoleSkillChoose.SkillBarClose(_Handle)
end

function RoleSkillChoose.SkillBarClose(_Handle)	
	GUIWndClose(RoleSkillChoose.WndHandle)
end

RoleSkillChoose.main()