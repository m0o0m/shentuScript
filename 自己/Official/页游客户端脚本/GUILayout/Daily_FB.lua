Daily_FB ={}
local ui = "<form> <dialog OnInit='Daily_FB.UIInit' id='Daily_FB_Dlg' image='1806100012' x='223' y='159' w='384' h='505' drag='true' center = 'true' esc_close='true' revmsg='true'>"
	.."	<image id='TitleImg' image='1805500001' x='131' y='12' w='126' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='closeBtn' image='1805900080' x='326' y='5' w='34' h='38' OnLButtonUp='Daily_FB.CloseWnd' revmsg='true'/>"
	.."	<image id='TestWndChild_1' image='1800600004' x='24' y='100' w='327' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_2' image='1800600004' x='23' y='144' w='327' h='2' check_point='0' revmsg='true'/>"
	.."	<edit id='text1' x='68' y='112' w='135' h='22' revmsg='true' text_color='#B8A021' text='  ���� �顿      62��' font='system'/>"
	.."	<richedit id='textBtn1' x='240' y='117' w='74' h='20' text='#SELECT#��Ĺ���#SELECTEND#' text_color='#00CC33' OnLButtonDown='Daily_FB.SelectMap' revmsg='true' param='1' font='system'/>"
	.."	<image id='TestWndChild_7' image='1800600004' x='23' y='188' w='327' h='2' check_point='0' revmsg='true'/>"
	.."	<edit id='text2' x='68' y='156' w='135' h='22' revmsg='true' text_color='#B8A021' text='  ���� ��      63��' font='system'/>"
	.."	<richedit id='textBtn2' x='240' y='161' w='74' h='20' text='#SELECT#��ħʥ��#SELECTEND#'  text_color='#00CC33' OnLButtonDown='Daily_FB.SelectMap' revmsg='true' param='2' font='system'/>"
	.."	<image id='TestWndChild_10' image='1800600004' x='24' y='232' w='327' h='2' check_point='0' revmsg='true'/>"
	.."	<edit id='text3' x='69' y='200' w='135' h='22' revmsg='true' text_color='#B8A021' text='  ���� �ơ�      64��' font='system'/>"
	.."	<richedit id='textBtn3' x='241' y='205' w='74' h='20' text='#SELECT#�ڰ���̳#SELECTEND#'  text_color='#00CC33' OnLButtonDown='Daily_FB.SelectMap' revmsg='true' param='3' font='system'/>"
	.."	<image id='TestWndChild_13' image='1800600004' x='23' y='275' w='327' h='2' check_point='0' revmsg='true'/>"
	.."	<edit id='text4' x='68' y='243' w='135' h='22' revmsg='true' text_color='#B8A021' text='  ���� �顿      65��' font='system'/>"
	.."	<richedit id='textBtn4' x='240' y='248' w='74' h='20' text='#SELECT#�Ϲ�а��#SELECTEND#'  text_color='#00CC33' OnLButtonDown='Daily_FB.SelectMap' revmsg='true' param='4' font='system'/>"
	.."	<image id='image5' image='1800600004' x='23' y='318' w='327' h='2' check_point='0' revmsg='true'/>"
	.."	<edit id='text5' x='68' y='286' w='135' h='22' revmsg='true' text_color='#B8A021' text='  ���� �顿      66��' font='system'/>"
	.."	<richedit id='textBtn5' x='240' y='291' w='74' h='20' text='#SELECT#ħ��Ͽ��#SELECTEND#' text_color='#00CC33' OnLButtonDown='Daily_FB.SelectMap' revmsg='true' param='5' font='system'/>"
	.."	<image id='image6' image='1800600004' x='23' y='361' w='327' h='2' check_point='0' revmsg='true'/>"
	.."	<edit id='text6' x='68' y='329' w='135' h='22' revmsg='true' text_color='#B8A021' text='  ���� ʯ��      67��' font='system'/>"
	.."	<richedit id='textBtn6' x='240' y='334' w='74' h='20' text='#SELECT#��Ѫ�ؾ�#SELECTEND#' text_color='#00CC33' OnLButtonDown='Daily_FB.SelectMap' revmsg='true' param='6' font='system'/>"

	.." </dialog>"
	.."</form>"


function Daily_FB.main()
	local handle = GetWindow(nil,"Daily_FB_Dlg")
	if handle ~= 0 then
		GUIWndClose(handle)
	end
	GenFormByString(ui)
end
Daily_FB.tb = {}
--UI Logic Code Start
function Daily_FB.UIInit(_Handle)
	local hh = GetWindow(nil, "Dailyone")
	if hh ~= 0 then
		GUIWndClose(hh)
	end
	local tb = deserialize(as3.tolua(FormParam[1]))
	Daily_FB.tb = tb
	Daily_FB.Handle = _Handle
	local handle = 0
	local _color1 = { ["enterAble"] = MakeARGB(255, 184, 160, 133), ["inaccessible"] = MakeARGB(255, 98, 98, 98) }
	local _color2 = { ["enterAble"] = MakeARGB(255, 0, 204, 51), ["inaccessible"] = MakeARGB(255, 130, 123, 112) }
	--[[local _text = {
					"#COLORCOLOR_GRAY##SELECT#��Ĺ���#SELECTEND##COLOREND#",
					"#COLORCOLOR_GRAY##SELECT#��ħʥ��#SELECTEND##COLOREND#",
					"#COLORCOLOR_GRAY##SELECT#�ڰ���̳#SELECTEND##COLOREND#",
					"#COLORCOLOR_GRAY##SELECT#�Ϲ�а��#SELECTEND##COLOREND#",
					"#COLORCOLOR_GRAY##SELECT#ħ��Ͽ��#SELECTEND##COLOREND#",
					}--]]
	
	local _text = {
					"#COLORCOLOR_GRAY#��Ĺ���#COLOREND#",
					"#COLORCOLOR_GRAY#��ħʥ��#COLOREND#",
					"#COLORCOLOR_GRAY#�ڰ���̳#COLOREND#",
					"#COLORCOLOR_GRAY#�Ϲ�а��#COLOREND#",
					"#COLORCOLOR_GRAY#ħ��Ͽ��#COLOREND#",
					"#COLORCOLOR_GRAY#��Ѫ�ؾ�#COLOREND#",
					}
	
	for i = 1, #tb do
		if Daily_FB.tb[7] >= 4 then
			handle = GetWindow(_Handle, "text"..i)
			if tb[i] == 3 then
				if handle ~= 0 then
					GUIEditSetTextColor(handle, _color1["inaccessible"])
				end
			else
				if handle ~= 0 then
					GUIEditSetTextColor(handle, _color1["enterAble"])
				end
			end
			handle = GetWindow(_Handle, "textBtn"..i)
			if tb[i] == 3 then
				if handle ~= 0 then
					--GUIWndSetTextColorM(handle, _color2["inaccessible"])
					--GUIWndSetEnableM(handle, false)
					GUIRichEditClear(handle)
					GUIRichEditAppendString(handle, _text[i])	
				end
			end
			if handle ~= 0 then
				GUIWndSetHint(handle, "<font color='#B8A085'>ʣ��������</font>".."<font color='#D58840'>"..(3-tb[i]).."</font>".."<font color='#B8A085'>��</font>")
			end
		else
			handle = GetWindow(_Handle, "text"..i)
			if tb[i] == 2 then
				if handle ~= 0 then
					GUIEditSetTextColor(handle, _color1["inaccessible"])
				end
			else
				if handle ~= 0 then
					GUIEditSetTextColor(handle, _color1["enterAble"])
				end
			end
			handle = GetWindow(_Handle, "textBtn"..i)
			if tb[i] == 2 then
				if handle ~= 0 then
					--GUIWndSetTextColorM(handle, _color2["inaccessible"])
					--GUIWndSetEnableM(handle, false)
					GUIRichEditClear(handle)
					GUIRichEditAppendString(handle, _text[i])	
				end
			end
			if handle ~= 0 then
				GUIWndSetHint(handle, "<font color='#B8A085'>ʣ��������</font>".."<font color='#D58840'>"..(2-tb[i]).."</font>".."<font color='#B8A085'>��</font>")
			end
		end
	end
end

function Daily_FB.SelectMap(h)
	local param = 0
	local tb = {"OptionMap1","OptionMap2","OptionMap3","OptionMap4","OptionMap5","OptionMap6"}
	param = GUIWndGetParam(h)
	if Daily_FB.tb[7] >= 4 then
		if Daily_FB.tb[tonumber(param)] == 3 then 
			return
		end
	else
		if Daily_FB.tb[tonumber(param)] == 2 then 
			return
		end
	end
	UI:Lua_SubmitForm("ÿ�ո�����", tb[param], "")
end

function Daily_FB.MsgUp(msg)   --��Ϣ��ʾ
	local handle = GetWindow(Daily_FB.Handle,"image5")
	local color = MakeARGB(255,255,0,0)
	window_msg_up(handle, msg, 52, 85, 30, color, 2)
end

function Daily_FB.CloseWnd()
	if Daily_FB.Handle ~= 0 then
		GUIWndClose(Daily_FB.Handle)
	end
end

Daily_FB.main()