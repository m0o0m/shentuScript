TempleGuider ={}
local ui = "<form> <dialog OnInit='TempleGuider.UIInit' id='TempleGuider' image='1806100012' x='298' y='81' w='384' h='505' drag='true' revmsg='true'>"
	.."	<image id='title' image='1805500020' x='130' y='12' w='126' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<edit id='title3' x='178' y='144' w='68' h='35' revmsg='true' text_color='#00FF00' text='说 明' font='system'/>"
	.."	<edit id='caption' x='42' y='79' w='276' h='50' revmsg='true' text_color='#C2B6A0' text='    锁魔宫刷新BOSS，数量多，刷新时间快，容易击杀，' font='system'/>"
	.."	<edit id='caption' x='42' y='99' w='299' h='50' revmsg='true' text_color='#C2B6A0' text='掉落70级以下全系列装备和大量副本卷轴，前期必抢' font='system'/>"
	.."	<edit id='text2' x='57' y='240' w='276' h='31' revmsg='true' text_color='#D2CAA3' text='2.BOSS数量：10个' font='system'/>"
	.."	<edit id='text3' x='57' y='275' w='276' h='31' revmsg='true' text_color='#D2CAA3' text='3.刷新时间：30-60分钟' font='system'/>"
	.."	<edit id='text4' x='57' y='310' w='276' h='31' revmsg='true' text_color='#D2CAA3' text='4.掉落材料：海量副本卷' font='system'/>"
	.."	<richedit id='enterMap' x='132' y='406' w='120' h='26' text='#SELECT#→『进入锁魔宫』←#SELECTEND#' OnLButtonUp='TempleGuider.EnterMap' text_color='#00FF00' revmsg='true' font='system'/>"
	.."	<edit id='costYb' x='115' y='432' w='181' h='21' revmsg='true' text_color='#D2CAA3' text='消耗500绑定元宝或100元宝' font='system'/>"
	.."	<edit id='costNum' x='139' y='434' w='43' h='16' revmsg='true' text_color='#00FF00' text='500' font='system'/>"
	.."	<edit id='text1' x='57' y='205' w='149' h='31' revmsg='true' text_color='#D2CAA3' text='1.进入条件：每次进入消耗' font='system'/>"
	.."	<edit id='text1_1' x='205' y='207' w='88' h='27' revmsg='true' text_color='#00FF00' text='500绑定元宝' font='system'/>"
	.."	<edit id='text5' x='57' y='345' w='276' h='31' revmsg='true' text_color='#D2CAA3' text='5.掉落装备：    以下全系列装备（可回收海量经验）' font='system'/>"
	.."	<edit id='text5_5' x='125' y='351' w='27' h='20' revmsg='true' text_color='#00FF00' text='70级' font='system'/>"
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
	luaMsgBox.new("购买元宝", "绑元不足是否花费100元宝购买", {"是", "否"}, {"TempleGuider.getBY", 0}, _handle)
end

function TempleGuider.YBMsg()
	luaMsgBox.new("元宝", "    很抱歉，您的元宝不足", {"前往充值", "取消"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
	--luaMsgBox.new("购买元宝", "绑元不足是否花费100元宝购买", {"是", "否"}, {"TempleGuider.getBY", 0}, _handle)
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