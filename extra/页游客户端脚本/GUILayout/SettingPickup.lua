SettingPickup = {}
function SettingPickup.main()
    local ui = "<form default_parent='GameSettingDlg'> <dialog OnInit='SettingPickup.UIInit' id='SettingPickup' image='' x='19' y='68' w='579' h='296' revmsg='true'>"
	.."	<edit id='TestWndChild_0' x='144' y='3' w='273' h='34' align='center' revmsg='true' text_color='#D3BB37' text='挂机拾取设置' font='SIMLI18'/>"
	.."	<check id='check1' image='1800000176' OnCheckChange='SettingPickup.Change' param='1' x='105' y='53' w='109' h='19' auto_change='false' revmsg='true' text='自动拾取药品' text_color='#CFB360'/>"
	.."	<check id='check2' image='1800000176' OnCheckChange='SettingPickup.Change' param='2' x='351' y='53' w='109' h='19' auto_change='false' revmsg='true' text='自动拾取金币' text_color='#CFB360'/>"
	.."	<check id='check3' image='1800000176' OnCheckChange='SettingPickup.Change' param='3' x='105' y='89' w='109' h='19' auto_change='false' revmsg='true' text='自动拾取材料' text_color='#CFB360'/>"
	.."	<check id='check4' image='1800000176' OnCheckChange='SettingPickup.Change' param='4' x='351' y='89' w='127' h='19' auto_change='false' revmsg='true' text='自动拾取其它道具' text_color='#CFB360'/>"
	.."	<check id='check5' image='1800000176' OnCheckChange='SettingPickup.Change' param='5' x='105' y='128' w='75' h='19' auto_change='false' revmsg='true' text='自动拾取' text_color='#CFB360'/>"
	.."	<check id='check6' image='1800000176'  OnCheckChange ='SettingPickup.Change' param='6' x='105' y='165' w='122' h='21' auto_change='false' revmsg='true' text='自动拾取红色装备' text_color='#CFB360'/>"
	.."	<image id='TestWndChild_7' image='1800000279' x='178' y='120' w='58' h='34' revmsg='true'/>"
	.."	<edit id='num' x='197' y='130' w='32' h='15' revmsg='true' font='system' canedit='true' type='number' OnEditStrChange='SettingPickup.inputNum'/>"
	.."	<edit id='TestWndChild_10' x='236' y='128' w='97' h='19' revmsg='true' text_color='#CFB360' text='级以上的装备' font='system'/>"
	.." </dialog>"
	.."</form>"
	
	GenFormByString(ui)
end

	SettingPickup.WndHandle = 0
function SettingPickup.UIInit(_GUIHandle)

	SettingPickup.WndHandle = _GUIHandle	
	UI:Lua_SubmitForm("拾取表单", "getTab", "")

end	

function SettingPickup.Update(tab)
	local hand = GetWindow(SettingPickup.WndHandle,"check1")
	if hand ~= 0 then 
		SettingPickup.TorF(hand,tab["PickMedicines"])
	end
	hand = GetWindow(SettingPickup.WndHandle,"check2")
	if hand ~= 0 then 
		SettingPickup.TorF(hand,tab["PickGlod"])
	end
	hand = GetWindow(SettingPickup.WndHandle,"check3")
	if hand ~= 0 then 
		SettingPickup.TorF(hand,tab["PickMaterial"])
	end
	hand = GetWindow(SettingPickup.WndHandle,"check4")
	if hand ~= 0 then 
		SettingPickup.TorF(hand,tab["PickItem"])
	end
	hand = GetWindow(SettingPickup.WndHandle,"check5")
	if hand ~= 0 then 
		SettingPickup.TorF(hand,tab["PickEquipped"])
	end
	hand = GetWindow(SettingPickup.WndHandle,"check6")
	if hand ~= 0 then 
		SettingPickup.TorF(hand,tab["PickRedEquipped"])
	end
	hand = GetWindow(SettingPickup.WndHandle,"num")
	if hand ~= 0 then 
		GUIEditSetTextM(hand,tab["level"] )
	end
end

function SettingPickup.Change(_Handle)
	local param = WndGetParam(_Handle)
	UI:Lua_SubmitForm("拾取表单", "SetTab", param)
end

function SettingPickup.TorF(hand,num)
	if num == 1 then 
		GUICheckBoxSetCheck(hand, true)
	elseif num == 0 then 
		GUICheckBoxSetCheck(hand, false)
	end 
end

function SettingPickup.inputNum(_Handle)
	if _Handle ~= 0 then 
		local level = GUIEditGetTextM(_Handle)
		UI:Lua_SubmitForm("拾取表单", "SetTxt", level)
	end
end
SettingPickup.main()