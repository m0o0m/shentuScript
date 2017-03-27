ReinTemple ={}

local ui = "<form> <dialog OnInit='ReinTemple.UIInit' id='ReinTemple' image='1806100012' x='292' y='87' w='384' h='505' esc_close='true' drag='true' revmsg='true' center='true'>"
	.."	<image id='title' image='1805500018' x='124' y='12' w='126' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<edit id='edit1' x='81' y='74' w='276' h='25' revmsg='true' text_color='#E4C19F' text='轮回圣殿刷新各种转生BOSS,其中1-7层进入' font='system'/>"
	.."	<edit id='edit2' x='56' y='99' w='276' h='25' revmsg='true' text_color='#E4C19F' text='需要消耗1个轮回圣殿卷轴，而8层则需两个' font='system'/>"
	.."	<edit id='text2' x='74' y='431' w='276' h='20' revmsg='true' text_color='#E4C19F' text='2、击杀轮回圣殿BOSS可以获得极品装备' font='system'/>"
	.."	<edit id='text3' x='74' y='454' w='276' h='20' revmsg='true' text_color='#E4C19F' text='3、轮回圣殿地图等级越高，掉落装备越好' font='system'/>"
	.."	<edit id='text1' x='74' y='409' w='273' h='20' revmsg='true' text_color='#E4C19F' text='1、不同转生等级进入不同的轮回圣殿地图' font='system'/>"
	.."	<button id='closeBtn' image='1805900080' x='341' y='2' w='26' h='26' OnLButtonUp='ReinTemple.CloseWnd' revmsg='true'/>"
	.."	<richedit id='map1' x='114' y='140' w='219' h='28' revmsg='true' font='system'/>"
	.."	<richedit id='map2' x='114' y='170' w='219' h='28' revmsg='true' font='system'/>"
	.."	<richedit id='map3' x='114' y='199' w='219' h='28' revmsg='true' font='system'/>"
	.."	<richedit id='map4' x='114' y='229' w='219' h='28' revmsg='true' font='system'/>"
	.."	<richedit id='map5' x='114' y='259' w='219' h='28' revmsg='true' font='system'/>"
	.."	<richedit id='map6' x='114' y='289' w='219' h='28' revmsg='true' font='system'/>"
	.."	<richedit id='map7' x='114' y='317' w='219' h='28' revmsg='true' font='system'/>"
	.."	<richedit id='map8' x='114' y='345' w='219' h='28' revmsg='true' font='system'/>"
	.."	<edit id='text4' x='172' y='383' w='60' h='20' revmsg='true' text_color='#00FF00' text='说明' font='system'/>"
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
		'轮回圣殿一层（70级以下）',
		'轮回圣殿二层（70级以上）',
		'轮回圣殿三层（转1-转2）',
		'轮回圣殿四层（转3-转4）',
		'轮回圣殿五层（转5-转6）',
		'轮回圣殿六层（转7-转8）',
		'轮回圣殿七层（转9-转10）',
		'轮回圣殿八层（转11-转12）',
	}
	for i = 1, 8 do 
		local handle = GetWindow(ReinTemple.Handle, "map"..i)
		if handle ~= 0 then 
			--msg('handle ~= 0')
			if i == ReinTemple.mapindex then 
				--msg('11')
				GUI:RichEditSetDefaultTextColor(handle, MakeARGB(255, 0, 204, 51))  --设置默认颜色
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
	luaMsgBox.new("系统", "#COLORCOLOR_GOLD#还欠缺"..ReinTemple.num.."张【转生神殿卷】，是否花费"..ybnum.."元宝购买使用#COLORCOLOREND#", {"是", "否"}, {"ReinTemple.get", 0}, _handle)
end


function ReinTemple.get(_handle)
	UI:Lua_SubmitForm("转生神殿表单新","Buy","".. ReinTemple.num)
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end


function ReinTemple.YBMsg()
	luaMsgBox.new("元宝", "    很抱歉，您的元宝不足", {"前往充值", "取消"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
	
end


function ReinTemple.CloseWnd()
	
	GUIWndClose(ReinTemple.Handle)
	--ReinTemple = nil
end

function ReinTemple.enter()
	--msg('enter')
	UI:Lua_SubmitForm("转生神殿表单新", "reinTemple", "")
end

ReinTemple.main()