TempleGuider ={}
local ui = "<form> <dialog OnInit='TempleGuider.UIInit' id='TempleGuider' image='1806100012' x='298' y='81' w='384' h='505' drag='true' revmsg='true'>"
	.."	<image id='title' image='1805500020' x='130' y='12' w='126' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<edit id='title3' x='178' y='144' w='68' h='35' revmsg='true' text_color='#00FF00' text='˵ ��' font='system'/>"
	.."	<edit id='caption' x='42' y='79' w='276' h='50' revmsg='true' text_color='#C2B6A0' text='    ��ħ��ˢ��BOSS�������࣬ˢ��ʱ��죬���׻�ɱ��' font='system'/>"
	.."	<edit id='caption' x='42' y='99' w='299' h='50' revmsg='true' text_color='#C2B6A0' text='����70������ȫϵ��װ���ʹ����������ᣬǰ�ڱ���' font='system'/>"
	.."	<edit id='text2' x='57' y='240' w='276' h='31' revmsg='true' text_color='#D2CAA3' text='2.BOSS������10��' font='system'/>"
	.."	<edit id='text3' x='57' y='275' w='276' h='31' revmsg='true' text_color='#D2CAA3' text='3.ˢ��ʱ�䣺30-60����' font='system'/>"
	.."	<edit id='text4' x='57' y='310' w='276' h='31' revmsg='true' text_color='#D2CAA3' text='4.������ϣ�����������' font='system'/>"
	.."	<richedit id='enterMap' x='132' y='406' w='120' h='26' text='#SELECT#����������ħ������#SELECTEND#' OnLButtonUp='TempleGuider.EnterMap' text_color='#00FF00' revmsg='true' font='system'/>"
	.."	<edit id='costYb' x='115' y='432' w='181' h='21' revmsg='true' text_color='#D2CAA3' text='����500��Ԫ����100Ԫ��' font='system'/>"
	.."	<edit id='costNum' x='139' y='434' w='43' h='16' revmsg='true' text_color='#00FF00' text='500' font='system'/>"
	.."	<edit id='text1' x='57' y='205' w='149' h='31' revmsg='true' text_color='#D2CAA3' text='1.����������ÿ�ν�������' font='system'/>"
	.."	<edit id='text1_1' x='205' y='207' w='88' h='27' revmsg='true' text_color='#00FF00' text='500��Ԫ��' font='system'/>"
	.."	<edit id='text5' x='57' y='345' w='276' h='31' revmsg='true' text_color='#D2CAA3' text='5.����װ����    ����ȫϵ��װ�����ɻ��պ������飩' font='system'/>"
	.."	<edit id='text5_5' x='125' y='351' w='27' h='20' revmsg='true' text_color='#00FF00' text='70��' font='system'/>"
	.."	<button id='closeBtn' image='1805900080' x='326' y='7' w='34' h='38' OnLButtonUp='TempleGuider.CloseWnd' revmsg='true'/>"
	.."	<edit id='1' x='217' y='434' w='43' h='16' revmsg='true' text_color='#00FF00' text='100' font='system'/>"
	.." </dialog>"
	.."</form>"
	

function TempleGuider.main()
	local handle = GetWindow(nil,"TempleGuider")
	if handle ~= 0 then
		GUIWndClose(handle)
	end
	GenFormByString(ui)
end

--UI Logic Code Start
function TempleGuider.UIInit(_Handle)
	TempleGuider.Handle = _Handle
end

function TempleGuider.CloseWnd()
	if TempleGuider.Handle ~= 0 then
		GUIWndClose(TempleGuider.Handle)
	end
end

function TempleGuider.Msg()
	luaMsgBox.new("����Ԫ��", "��Ԫ�����Ƿ񻨷�100Ԫ������", {"��", "��"}, {"TempleGuider.getBY", 0}, _handle)
end

function TempleGuider.YBMsg()
	luaMsgBox.new("Ԫ��", "    �ܱ�Ǹ������Ԫ������", {"ǰ����ֵ", "ȡ��"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
	--luaMsgBox.new("����Ԫ��", "��Ԫ�����Ƿ񻨷�100Ԫ������", {"��", "��"}, {"TempleGuider.getBY", 0}, _handle)
end

function TempleGuider.getBY(_handle)
	UI:Lua_SubmitForm("TempleGuider_s","BuyYb","")
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end

function TempleGuider.EnterMap()
	UI:Lua_SubmitForm("TempleGuider_s","EnterMap","")
end

TempleGuider.main()