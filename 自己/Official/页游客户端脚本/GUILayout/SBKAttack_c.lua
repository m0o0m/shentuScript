SBKAttack_c ={}
local ui = "<form> <dialog OnInit='SBKAttack_c.UIInit' id='TestWndChild_0' image='1800600003' center='true' x='190' y='84' w='361' h='524' esc_close='true' drag='true' revmsg='true'>"
	.."	<button id='close' image='1800000043' x='333' y='1' w='26' h='26' OnLButtonUp='SBKAttack_c.closed' revmsg='true' text_color='#C2B6A0'/>"
	.."	<edit id='TestWndChild_2' x='156' y='4' w='64' h='21' revmsg='true' text_color='#C2B6A0' text='攻城战' font='system'/>"
	.."	<edit id='TestWndChild_3' x='62' y='69' w='63' h='24' revmsg='true' text_color='#C2B6A0' text='攻城时间：' font='system'/>"
	.."	<edit id='TestWndChild_4' x='117' y='69' w='114' h='24' revmsg='true' text_color='#00CC33' text=' 20：00-21：00' font='system'/>"
	.."	<edit id='TestWndChild_5' x='62' y='93' w='251' h='24' revmsg='true' text_color='#C2B6A0' text='生命不息，战斗不止！热血传奇，霸业称雄！' font='system'/>"
	.."	<edit id='TestWndChild_6' x='37' y='153' w='69' h='24' revmsg='true' text_color='#C2B6A0' text='攻城说明：' font='system'/>"
	.."	<edit id='TestWndChild_7' x='36' y='187' w='287' h='28' revmsg='true' text_color='#C2B6A0' text='1.开服第天或合服第7天，自动开启首次攻城战' font='system'/>"
	.."	<edit id='TestWndChild_10' x='35' y='216' w='287' h='27' revmsg='true' text_color='#C2B6A0' text='2.任一公会会长、副会长申请攻城战后，所有公会均' font='system'/>"
	.."	<edit id='TestWndChild_12' x='35' y='244' w='287' h='27' revmsg='true' text_color='#C2B6A0' text='可参加攻城活动' font='system'/>"
	.."	<edit id='TestWndChild_13' x='35' y='272' w='287' h='27' revmsg='true' text_color='#C2B6A0' text='3.申请攻城战需要消耗一个攻城令牌，申请成功后，' font='system'/>"
	.."	<edit id='TestWndChild_14' x='179' y='277' w='60' h='17' revmsg='true' text_color='#00CC33' text='攻城令牌' font='system'/>"
	.."	<edit id='TestWndChild_15' x='35' y='299' w='287' h='27' revmsg='true' text_color='#C2B6A0' text='次日开启攻城战' font='system'/>"
	.."	<edit id='TestWndChild_16' x='35' y='304' w='35' h='17' revmsg='true' text_color='#00CC33' text='次日' font='system'/>"
	.."	<edit id='TestWndChild_17' x='35' y='326' w='287' h='27' revmsg='true' text_color='#C2B6A0' text='4.摧毁城主雕像后进入皇宫，21：00活动结束时占领' font='system'/>"
	.."	<edit id='TestWndChild_18' x='35' y='353' w='287' h='27' revmsg='true' text_color='#C2B6A0' text='皇宫的公会取的攻城胜利' font='system'/>"
	.."	<button id='appliction' image='1800000150' x='138' y='417' w='84' h='32' revmsg='true' text_color='#C2B6A0' OnLButtonUp='SBKAttack_c.application'/>"
	.." </dialog>"
	.."</form>"

function SBKAttack_c.main()
	GenFormByString(ui)
end

SBKAttack_c.Handle = 0
SBKAttack_c.State = 0

function SBKAttack_c.UIInit(_Handle)
	msg("SBKAttack_c.UIInit")
	SBKAttack_c.Handle = _Handle
	
	GUIWndSetSizeM(_Handle,361,524)
	
	local state = tonumber(as3.tolua(FormParam[1]))
	SBKAttack_c.State = state
	
	local editHandle = GetWindow(SBKAttack_c.Handle, "appliction")
	if editHandle ~= 0 then
		if state == 0 then
			GUIWndSetTextM(editHandle, "申请攻城")
		elseif state == 1 then
			GUIWndSetTextM(editHandle, "进入攻城战")
		end
	end
end

function SBKAttack_c.updateUI(param)
	local state = tonumber(param)
	SBKAttack_c.State = state
	
	local editHandle = GetWindow(SBKAttack_c.Handle, "appliction")
	if editHandle ~= 0 then
		if state == 0 then
			GUIWndSetTextM(editHandle, "申请攻城")
		elseif state == 1 then
			GUIWndSetTextM(editHandle, "进入攻城战")
		end
	end
end

function SBKAttack_c.application(_Handle)
	if SBKAttack_c.State == 0 then
		UI:Lua_SubmitForm("SBKAttack_s", "sbkAttackApply", "")
		msg("申请攻城")
	elseif SBKAttack_c.State == 1 then
		UI:Lua_SubmitForm("SBKAttack_s", "sbkAttackEnter", "")
		msg("进入攻城战")
	end
end 

function SBKAttack_c.closed(_Handle)
	if SBKAttack_c.Handle ~= 0 then 
		GUIWndClose(SBKAttack_c.Handle)
	end
end
SBKAttack_c.main()