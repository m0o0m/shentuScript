ActiveCode ={}
local ui = "<form default_parent = 'Reward_win'> <dialog  OnInit='ActiveCode.UIInit' id='ActiveCode' image='1805600006' x='186' y='58' w='622' h='484' revmsg='true'>"
	--[[.."	<image id='image1' image='1802900044' x='186' y='54' w='446' h='142' revmsg='true' enable='false'/>"
	.."	<image id='image2' image='1802900043' x='307' y='74' w='126' h='23' revmsg='true' enable='false'/>"--]]
	.."	<image id='image3' image='1805600120' x='95' y='345' w='325' h='42' revmsg='true' enable='false'/>"
	.."	<image id='image4' image='1805600119' x='265' y='289' w='212' h='44' revmsg='true' enable='false'/>"
	.."	<button id='button' image='1805600160' x='257' y='407' w='124' h='49' OnLButtonUp='ActiveCode.GetButton' revmsg='true'/>"
	.."	<edit id='edit1' x='12' y='177' w='239' h='28' revmsg='true' enable='false' text_color='#C2B6A0' text='��������������������ļ��������к�' font='system'/>"
	.."	<edit id='edit2' x='12' y='205' w='255' h='27' revmsg='true' enable='false' text_color='#C2B6A0' text='�������ȡ��������ť��������ȡ��Ӧ����' font='system'/>"
	.."	<edit id='edit3' x='102' y='360' w='520' h='24' revmsg='true' OnLButtonUp='ActiveCode.Clean' canedit='true' limit= '50' text_color='#C2B6A0'  text='�ڴ˴����뼤����' font='SIMLI18'/>"
	.." </dialog>"
	.."</form>"

function ActiveCode.main()
	GenFormByString(ui)
end

ActiveCode.WndHandle = 0
function ActiveCode.UIInit(_Handle)
	ActiveCode.WndHandle = _Handle
end


function ActiveCode.GetButton(_handle)
	local handle = GetWindow(ActiveCode.WndHandle,"edit3")
	local str = EditGetTextM(handle)
	if str == "" then
		msg("�����뼤����")
		return
	end
	UI:Lua_SubmitForm("����������", "Active_Get", ""..str)
end


function ActiveCode.Clean(handle)
	local txt = GUIEditGetTextM(handle)
	if txt == "�ڴ˴����뼤����" then 
		GUIEditSetTextM(handle, "")
	end
end

ActiveCode.main()