ReinTemple ={}

local ui = "<form> <dialog OnInit='ReinTemple.UIInit' id='ReinTemple' image='1806100012' x='292' y='87' w='384' h='505' esc_close='true' drag='true' revmsg='true' center='true'>"
	.."	<image id='title' image='1805500018' x='124' y='12' w='126' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<edit id='edit1' x='81' y='74' w='276' h='25' revmsg='true' text_color='#E4C19F' text='�ֻ�ʥ��ˢ�¸���ת��BOSS,����1-7�����' font='system'/>"
	.."	<edit id='edit2' x='56' y='99' w='276' h='25' revmsg='true' text_color='#E4C19F' text='��Ҫ����1���ֻ�ʥ����ᣬ��8����������' font='system'/>"
	.."	<edit id='text2' x='74' y='431' w='276' h='20' revmsg='true' text_color='#E4C19F' text='2����ɱ�ֻ�ʥ��BOSS���Ի�ü�Ʒװ��' font='system'/>"
	.."	<edit id='text3' x='74' y='454' w='276' h='20' revmsg='true' text_color='#E4C19F' text='3���ֻ�ʥ���ͼ�ȼ�Խ�ߣ�����װ��Խ��' font='system'/>"
	.."	<edit id='text1' x='74' y='409' w='273' h='20' revmsg='true' text_color='#E4C19F' text='1����ͬת���ȼ����벻ͬ���ֻ�ʥ���ͼ' font='system'/>"
	.."	<button id='closeBtn' image='1805900080' x='341' y='2' w='26' h='26' OnLButtonUp='ReinTemple.CloseWnd' revmsg='true'/>"
	.."	<richedit id='map1' x='114' y='140' w='219' h='28' revmsg='true' font='system'/>"
	.."	<richedit id='map2' x='114' y='170' w='219' h='28' revmsg='true' font='system'/>"
	.."	<richedit id='map3' x='114' y='199' w='219' h='28' revmsg='true' font='system'/>"
	.."	<richedit id='map4' x='114' y='229' w='219' h='28' revmsg='true' font='system'/>"
	.."	<richedit id='map5' x='114' y='259' w='219' h='28' revmsg='true' font='system'/>"
	.."	<richedit id='map6' x='114' y='289' w='219' h='28' revmsg='true' font='system'/>"
	.."	<richedit id='map7' x='114' y='317' w='219' h='28' revmsg='true' font='system'/>"
	.."	<richedit id='map8' x='114' y='345' w='219' h='28' revmsg='true' font='system'/>"
	.."	<edit id='text4' x='172' y='383' w='60' h='20' revmsg='true' text_color='#00FF00' text='˵��' font='system'/>"
	.." </dialog>"
	.."</form>"

function ReinTemple.main()
	local handle = GetWindow(nil,"ReinTemple")
	if handle ~= 0 then
		GUIWndClose(handle)
		return
	end
	GenFormByString(ui)
end
ReinTemple.mapindex = 0
--UI Logic Code Start
function ReinTemple.UIInit(_Handle)
	ReinTemple.Handle = _Handle
	--CenterWnd(_Handle) 
	ReinTemple.mapindex = tonumber(deserialize(as3.tolua(FormParam[1])))
	
	--msg(''..ReinTemple.mapindex)
	local str = 
	{
		'�ֻ�ʥ��һ�㣨70�����£�',
		'�ֻ�ʥ����㣨70�����ϣ�',
		'�ֻ�ʥ�����㣨ת1-ת2��',
		'�ֻ�ʥ���Ĳ㣨ת3-ת4��',
		'�ֻ�ʥ����㣨ת5-ת6��',
		'�ֻ�ʥ�����㣨ת7-ת8��',
		'�ֻ�ʥ���߲㣨ת9-ת10��',
		'�ֻ�ʥ��˲㣨ת11-ת12��',
	}
	for i = 1, 8 do 
		local handle = GetWindow(ReinTemple.Handle, "map"..i)
		if handle ~= 0 then 
			--msg('handle ~= 0')
			if i == ReinTemple.mapindex then 
				--msg('11')
				GUI:RichEditSetDefaultTextColor(handle, MakeARGB(255, 0, 204, 51))  --����Ĭ����ɫ
				GUIRichEditAppendString(handle,"#SELECT#"..str[i].."#SELECTEND#")
				GUIWndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "ReinTemple.enter")
				
			else 
				GUIRichEditAppendString(handle,'#COLORCOLOR_GRAY#'..str[i]..'#COLORCOLOREND#')
				
			end
		end
	end
end


function ReinTemple.msgbox(num)
	ReinTemple.num = tonumber(num)
	local ybnum = ReinTemple.num*200
	luaMsgBox.new("ϵͳ", "#COLORCOLOR_GOLD#��Ƿȱ"..ReinTemple.num.."�š�ת���������Ƿ񻨷�"..ybnum.."Ԫ������ʹ��#COLORCOLOREND#", {"��", "��"}, {"ReinTemple.get", 0}, _handle)
end


function ReinTemple.get(_handle)
	UI:Lua_SubmitForm("ת��������","Buy","".. ReinTemple.num)
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end


function ReinTemple.YBMsg()
	luaMsgBox.new("Ԫ��", "    �ܱ�Ǹ������Ԫ������", {"ǰ����ֵ", "ȡ��"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
	
end


function ReinTemple.CloseWnd()
	
	GUIWndClose(ReinTemple.Handle)
	--ReinTemple = nil
end

function ReinTemple.enter()
	--msg('enter')
	UI:Lua_SubmitForm("ת��������", "reinTemple", "")
end

ReinTemple.main()