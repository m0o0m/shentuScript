Tzboss ={}  -- magic='1'  center='true' 
local ui = "<form> <dialog OnInit='Tzboss.UIInit' id='Tzboss' image='1803300002' x='500' y='200' w='714' h='503' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='TestWndChild_1' image='1803300001' x='16' y='72' w='680' h='446' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_2' image='1801500148' x='302' y='5' enable='false' w='123' h='23' check_point='0' revmsg='true'/>"
	.."	<button id='boss1' image='1800000368' x='27' y='48' w='72' h='32' OnLButtonUp='Tzboss.hide' revmsg='true' text='可击杀' text_color='#6E5C50'/>"
	.."	<button id='boss2' image='1800000368' x='107' y='48' w='72' h='32' OnLButtonUp='Tzboss.hide' revmsg='true' text='野外BOSS' text_color='#6E5C50'/>"
	.."	<button id='boss3' image='1800000368' x='187' y='48' w='72' h='32' OnLButtonUp='Tzboss.hide' revmsg='true' text='个人BOSS' text_color='#6E5C50'/>"
	.."	<button id='boss4' image='1800000368' x='267' y='48' w='72' h='32' OnLButtonUp='Tzboss.hide' revmsg='true' text='BOSS积分' text_color='#6E5C50'/>"
	.."	<button id='boss5' image='1803300024'  x='24' y='85' w='156' h='38' OnLButtonUp='Tzboss.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."	<button id='boss6' image='1803300024' x='24' y='129' w='156' h='38' OnLButtonUp='Tzboss.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."	<button id='boss7' image='1803300024'  x='24' y='173' w='156' h='38' OnLButtonUp='Tzboss.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."	<button id='boss8' image='1803300024'  x='24' y='217' w='156' h='38' OnLButtonUp='Tzboss.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."	<button id='boss9' image='1803300024'  x='24' y='261' w='156' h='38' OnLButtonUp='Tzboss.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."	<button id='boss10' image='1803300024'  x='24' y='305' w='156' h='38' OnLButtonUp='Tzboss.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."	<button id='boss11' image='1803300024' x='24' y='349' w='156' h='38' OnLButtonUp='Tzboss.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."	<button id='boss12' image='1803300024'  x='24' y='395' w='156' h='38' OnLButtonUp='Tzboss.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."	<button id='pagedown' image='1800000094' x='47' y='447' w='20' h='19' OnLButtonUp='Tzboss.pagedown' revmsg='true' text_color='#C2B6A0' enable='false'/>"
	.."	<button id='pageup' image='1800000098' x='132' y='447' w='20' h='19' OnLButtonUp='Tzboss.pageup' revmsg='true' text_color='#C2B6A0'  enable='false' />"
	.."	<image id='pageimg' image='1800000279' x='70' y='439' w='58' h='34' check_point='0' revmsg='true'/>"
	.."	<richedit id='page' x='87' y='451' w='28' h='21' revmsg='true' text_color='#C2B6A0' text='1/2' font='system'/>"
	.."	<itemctrl id='itembutton1' use_back='1800000147' x='209' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembutton2' use_back='1800000147' x='269' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembutton3' use_back='1800000147' x='329' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembutton4' use_back='1800000147' x='389' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembutton5' use_back='1800000147' x='449' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembutton6' use_back='1800000147' x='509' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembutton7' use_back='1800000147' x='569' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembutton8' use_back='1800000147' x='629' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."	<image id='imgshuaxin' image='1803300043' x='178' y='409' w='515' h='39' check_point='0' revmsg='true'/>"
	.."	<edit id='textshuaxin' x='395' y='412' w='127' h='26' revmsg='true' text_color='#CA9765' text='已刷新BOSS地图' font='system'/>"
	.."	<button id='closebutton' image='1800000043' x='680' y='4' w='26' h='26' OnLButtonUp='Tzboss.Close' revmsg='true' text_color='#C2B6A0'/>"
	.."	<richedit id='cs1' x='215' y='450' w='215' h='25' revmsg='true' OnLButtonUp='Tzboss.cs' text_color='#00CC33' text='#SELECT# #SELECTEND#' font='system'/>"
	.."	<richedit id='cs2' x='345' y='450' w='215' h='25' revmsg='true' OnLButtonUp='Tzboss.cs' text_color='#00CC33' text='#SELECT# #SELECTEND#' font='system'/>"
	.."	<richedit id='cs3' x='475' y='450' w='215' h='25' revmsg='true' OnLButtonUp='Tzboss.cs' text_color='#00CC33' text='#SELECT# #SELECTEND#' font='system'/>"
	.."	<edit id='bossname' x='203' y='83' w='100' h='30'   text_color='#C6A56E' text='' font='system'/>"
	.."	<edit id='bosslevel' x='203' y='108' w='100' h='23'   text_color='#C6A56E' text='' font='system'/>"
	.."	<edit id='TestWndChild_39' x='412' y='322' w='111' h='22' revmsg='true' text_color='#CAC45B' text='极 品 掉 落' font='system'/>"
	.."<image id='bossimage1' image=''  x='428' y='280' w='159' h='245' revmsg='true'/>"
	.."	<edit id='time' x='573' y='288' w='150' h='21' revmsg='true' text_color='#E80200' text='刷新时间：15分钟' font='system'/>"
	.."	<button id='btnqianwang' image='1800000150' x='497' y='437' w='84' h='32' revmsg='true' OnLButtonUp='Tzboss.cs_1' text='前   往' text_color='#C2B6A0'/>"
	.."	<image id='imgtiaozhan' image='1803300017' x='595' y='423' w='85' h='61' check_point='0' revmsg='true'/>"
	.."	<edit id='leveltiaonzhan' x='230' y='443' w='85' h='18' revmsg='true' text_color='#D8B696' text='最低挑战等级：' font='system'/>"
	.."	<edit id='juanzhou0' x='230' y='462' w='200' h='18' revmsg='true' text_color='#D8B696' text='需要副本秘钥：' font='system'/>"
	.."	<edit id='juanzhou' x='315' y='462' w='200' h='18' revmsg='true' text_color='#111111' text='' font='system'/>"
	.."	<edit id='minlevel' x='315' y='443' w='85' h='18' revmsg='true' text_color='#111111' text='' font='system'/>"
	.."	<edit id='cishu1' x='130' y='93' w='50' h='21'  text_color='#C2B6A0' text='（0/1）' font='system'/>"
	.."	<edit id='cishu2' x='130' y='137' w='50' h='21' text_color='#C2B6A0' text='（0/1）' font='system'/>"
	.."	<edit id='cishu3' x='130' y='181' w='50' h='21' text_color='#C2B6A0' text='（0/1）' font='system'/>"
	.."	<edit id='cishu4' x='130' y='225' w='50' h='21' text_color='#C2B6A0' text='（0/1）' font='system'/>"
	.."	<edit id='cishu5' x='130' y='269' w='50' h='21' text_color='#C2B6A0' text='（0/1）' font='system'/>"
	.."	<edit id='cishu6' x='130' y='313' w='50' h='21' text_color='#C2B6A0' text='（0/1）' font='system'/>"
	.."	<richedit id='buy' x='380' y='464' w='52' h='18' revmsg='true' text_color='#00FF00' text='#SELECT#购买秘钥#SELECTEND#' OnLButtonUp='Tzboss.buy' visible='false' font='system'/>"
	
	.."	<button id='tips1' image='1804600018' x='145' y='-33' w='161' h='76' revmsg='false' visible='false' text='选择个人BOSS' text_color='#DBC300'/>"	
	.."	<button id='tips2' image='1804600017' x='459' y='479' w='161' h='76' revmsg='false' visible='false' text='进入BOSS副本' text_color='#DBC300'/>"	
	.."	<image id='img3' image='1804600026' x='317' y='42' w='20' h='20' check_point='0' revmsg='false' enable='false' visible='false'/>"
	
	.. "<image id='item_magic1' x='229' y='384' w='57' h='57' image='3020110000' revmsg='true' enable='false'/>"
	.. "<image id='item_magic2' x='289' y='384' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
	.. "<image id='item_magic3' x='349' y='384' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
	.. "<image id='item_magic4' x='409' y='384' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
	.. "<image id='item_magic5' x='469' y='384' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
	.. "<image id='item_magic6' x='529' y='384' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
	.. "<image id='item_magic7' x='589' y='384' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
	.. "<image id='item_magic8' x='649' y='384' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
	.." </dialog>"
	.."</form>"

function Tzboss.main()
	if GetWindow(nil,"Tzboss") ~= 0 then  
		Tzboss.Close()
	else  
		GenFormByString(ui)    
	end
end

Tzboss.Wnd = 0
Tzboss.page = 1
Tzboss.totalpage =1
Tzboss.yeqian = 1
Tzboss.timelist = {}
Tzboss.dingshiqi = 0 
Tzboss.killtab ={}
Tzboss.bosslist =  {}
Tzboss.personboss = {}
Tzboss.imgboss1 =  {}
Tzboss.item1 =  {}
Tzboss.tips1 = 0
Tzboss.bianlaing = 0
Tzboss.imgboss3 =  {
{0619006400,0619000400,"战将手镯","法灵手镯","散人手镯","战将头盔","法灵头盔","散人头盔","战将戒指","法灵戒指"}, 
{0619406400,0681600400,"武魂手镯","魔魂手镯","玄魂手镯","武魂戒指","魔魂戒指","玄魂戒指","武魂靴子","魔魂靴子"},
{0682206400,0682200400,"天武手镯","天魔手镯","天灵手镯","天武戒指","天魔戒指","天灵戒指","天武项链","天魔项链"},
{0601906400,0681300400,"圣武手镯","圣魔手镯","圣灵手镯","圣武靴子","圣魔靴子","圣灵靴子","神武戒指","神魔戒指"},
{0699806400,0650900400,"威武手镯","幻神手镯","无量手镯","洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天靴子","天地玄奇靴子"},
{0682806400,0682806400,"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天头盔","天魁玄灵头盔"}
}

Tzboss.item_tab = {
{"坚固手套","龙之手镯","三眼手镯","蓝翡翠项链","恶魔铃铛大","凤凰明珠","黑铁头盔","魔法头盔"},--触龙神
{"圣战手镯","法神手镯","天尊手镯","圣战戒指","法神戒指","天尊戒指","圣战头盔","法神头盔"},--白色恶猪
{"战将手镯","法灵手镯","散人手镯","战将头盔","法灵头盔","散人头盔","战将戒指","法灵戒指"},--沃玛教主
{"武魂手镯","魔魂手镯","玄魂手镯","武魂戒指","魔魂戒指","玄魂戒指","武魂靴子","魔魂靴子"},--祖玛教主
{"天武手镯","天魔手镯","天灵手镯","天武戒指","天魔戒指","天灵戒指","天武项链","天魔项链"},--赤月恶魔
{"圣武手镯","圣魔手镯","圣灵手镯","圣武靴子","圣魔靴子","圣灵靴子","神武戒指","神魔戒指"},--牛魔王
{"威武手镯","幻神手镯","无量手镯","威武戒指","幻神戒指","无量戒指","威武腰带","幻神腰带"},--黄泉教主
{"圣武手镯","圣魔手镯","圣灵手镯","圣武靴子","圣魔靴子","圣灵靴子","神武戒指","神魔戒指"},--豹子
{"威武手镯","幻神手镯","无量手镯","威武戒指","幻神戒指","无量戒指","威武靴子","幻神靴子"},--尸霸
{"威武手镯","幻神手镯","无量手镯","威武腰带","幻神腰带","无量腰带","威武靴子","幻神靴子"},--虹魔教主
{"威武手镯","幻神手镯","无量手镯","洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天靴子","天地玄奇靴子"},--魔龙教主
{"洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天戒指","天地玄奇戒指","玄天妙法戒指","洪武行天项链","天地玄奇项链"},--火尾黑狐王
{"洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天戒指","天地玄奇戒指","玄天妙法戒指","洪武行天头盔","天地玄奇头盔"},--金爪赤狐王
{"洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天戒指","天地玄奇戒指","玄天妙法戒指","洪武行天靴子","天地玄奇靴子"},--玉面素狐王
{"洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天靴子","天地玄奇靴子","玄天妙法靴子","洪武行天戒指","天地玄奇戒指"},--雪域魔王
{"雄武震天手镯","天异玄奥手镯","混天广法手镯","雄武震天头盔","天异玄奥头盔","混天广法头盔","雄武震天项链","天异玄奥项链"},--雷炎蛛王
{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天头盔","天魁玄灵头盔"},--火龙
{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天靴子","天魁玄灵靴子"},--阿修罗神
{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天项链","天魁玄灵项链"},--蛇妖王
{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天靴子","天魁玄灵靴子"},--寒荒海兽
{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天腰带","天魁玄灵腰带"},--深海巨魔
{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天项链","天魁玄灵项链"},--巫妖王
{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天靴子","天魁玄灵靴子"},--炼狱魔王
{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天项链","天魁玄灵项链"},--灭世魔君
{"神威亢天手镯","天暴玄宗手镯","昊天玄尊手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天项链","天魁玄灵项链"}--铁血魔王
}
--UI Logic Code Start
function Tzboss.UIInit(_Handle)
	
	Tzboss.bianlaing = 0
	Tzboss.Wnd =_Handle
	GUIWndSetSizeM(_Handle, 714 ,503)
	CenterWnd(_Handle)
	--UI:Lua_OpenWindow(Tzboss.Wnd, "Onhook.lua")
	
	local itemlist = deserialize(as3.tolua(FormParam[1]))   
	Tzboss.bosslist = deserialize(as3.tolua(FormParam[2])) 
	Tzboss.timelist = deserialize(as3.tolua(FormParam[3]))  
	Tzboss.imgboss = deserialize(as3.tolua(FormParam[4]))
	Tzboss.personboss = deserialize(as3.tolua(FormParam[5]))
	Tzboss.tips1 = tonumber(as3.tolua(FormParam[6]))
	--Tzboss.tips2 = tonumber(as3.tolua(FormParam[7]))
	local _GUIHandle = GUIWndFindChildM(_Handle,"bossname")                 --左上角boss名字字体大小和颜色
	if _GUIHandle~=0 then 
		GUIEditSetFontM(_GUIHandle,"SIMLI18")
		GUIWndSetTextColorM(_GUIHandle, CLMakeARGB(255, 198, 165, 110))
	end

	for i=1, 12 do 
		handle = GUIWndFindChildM(Tzboss.Wnd,"boss"..i)                   --四个页签和八个button的字体和内容
		if handle ~= 0 then 
			GUIWndSetParam(handle,i)
			if i>4 then 
				GUIWndAddProperty(handle, i, Tzboss.timelist[i])    
				GUIButtonSetTextFont(handle,"SIMLI18")
				GUIWndSetTextM(handle,Tzboss.bosslist[i-4][1])
			else 
				GUIWndSetTextArrangeType(handle,0,3,0,0)
				GUIButtonSetStateTextColor(handle,0,MakeARGB(255, 101, 91, 74))
				GUIButtonSetStateTextColor(handle,2,MakeARGB(255, 237, 192, 161))
			end
		end
		if i<9 then  
			handle = GetWindow(_Handle,"item_magic"..i)
			if handle ~= 0 then	
				GUIImageSetDrawCenter(handle,true)		
				GUIImageSetAnimateEnable(handle, true, 150)
				GUIImageSetTransfrom(handle, 6500, 6500,0)	
			end	
		end
	end
	
	local hand = GUIWndFindWindow(Tzboss.Wnd,"bossimage1")
	if hand ~= 0 then 
		GUIImageSetDrawCenter(hand,true)
		GUIImageSetAnimateEnable(hand, true, 150)
	end   
	
	hand = GetWindow(nil,"Onboss")
	if hand ~= 0 then 
		GUIWndClose(hand)
	end
	if Tzboss.tips1 ~= 0 then
		handle = GUIWndFindChildM(Tzboss.Wnd,"boss3")                           --默认点击 -> “boss1”(可击杀) -> “boss5”	
	else
		handle = GUIWndFindChildM(Tzboss.Wnd,"boss1")
	end	
	Tzboss.hide(handle)
--[[	if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
		local level = tonumber(as3.tolua(LuaRet))
		if level>=60 then 
			if tips1 == 0 then  
				hand = GetWindow(_Handle, "tips1")
				if hand ~= 0 then
					GUIWndSetSizeM(hand, 161, 76)
					GUIWndSetVisible(hand,true)
					GUIButtonSetTextFont(hand,"SIMLI18")
					GUIWndSetTextArrangeType(hand,0,-13,0,0)
					Tzboss.itemTweenUp01(hand) 
				end	
				CLAddDelayTask("Tzboss.openWnd()", 10000, 1) 
				--WndAddEffect(Tzboss.Wnd,"boss3",3020100500,-4,-4,100,0)
				WndAddEffect(Tzboss.Wnd,"boss3",3000101000, -13, -13, 100, 0) 
			end
		end
	end--]]
	
end

function Tzboss.openWnd() 
	--[[local map_k = CLGetCurMapKeyName()
	if Tzboss.bianlaing == 1 then 
		return
	end
	Tzboss.bianlaing = 1
	if map_k == "天荒教主副本" then
		return
	end--]]
	local handle = GetWindow(nil,"Tzboss") 
	if handle ~= 0 then  
		local handle = GUIWndFindChildM(Tzboss.Wnd,"boss3")                          
		Tzboss.hide(handle)
		WndDelEffect(Tzboss.Wnd,"boss3") 
		handle = GetWindow(Tzboss.Wnd, "tips1")
		if hand ~= 0 then
			GUIWndSetVisible(hand,false)
		end
	end
end
function Tzboss.openWnd2()
	local handle = GetWindow(nil,"Tzboss") 
	if handle ~= 0 then
		UI:Lua_SubmitForm("ChallengeBOSS", "timeqianwang2",5)   
		Tzboss.Close() 
	end
end

function Tzboss.itemTweenUp01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='0.8' y='-43' /></Tween>", "Tzboss.itemTweenDown01("..hand..")")
end 
function Tzboss.itemTweenDown01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' y='-33' /></Tween>" , "Tzboss.itemTweenUp01("..hand..")")
end 
function Tzboss.itemTweenUp02(hand) 
	GUIWndTween(hand, "<Tween><Frame time='0.8' y='490' /></Tween>", "Tzboss.itemTweenDown02("..hand..")")
end 
function Tzboss.itemTweenDown02(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' y='480' /></Tween>" , "Tzboss.itemTweenUp02("..hand..")")
end 

function Tzboss.hide(_handle) 
	Tzboss.bianlaing = 1
	Tzboss.yeqian = WndGetParam(_handle)
	--[[if Tzboss.yeqian == 3 then 
		local hand = GetWindow(Tzboss.Wnd, "tips1")
		if hand ~= 0 then
			WndDelEffect(Tzboss.Wnd,"boss3") 
			GUIWndSetVisible(hand,false)
		end	
		if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
			local level = tonumber(as3.tolua(LuaRet))
			if level>=62 then 
				if Tzboss.tips2 == 0 then 
					local hand = GetWindow(Tzboss.Wnd, "tips2")
					if handle ~= 0 then
						GUIWndSetSizeM(hand, 161, 76)
						GUIWndSetVisible(hand,true)
						GUIButtonSetTextFont(hand,"SIMLI18")
						GUIWndSetTextArrangeType(hand,0,13,0,0)
						Tzboss.itemTweenUp02(hand) 
						WndAddEffect(Tzboss.Wnd,"btnqianwang",3020100700,-13,-8,100,0)
					end
					CLAddDelayTask("Tzboss.openWnd2()", 10000, 1)   
				end
			end
		end
	end--]]
	yeqian = WndGetParam(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if  Is_true then
		return 
		
	end
	yeqian = 1
	for i=1,4 do 
		if i == Tzboss.yeqian then                                        --上面四个按钮中高亮被点击中的按钮（页签）
			ButtonSetIsActivePageBtn(Tzboss.Wnd,"boss"..i,true)
		else
			ButtonSetIsActivePageBtn(Tzboss.Wnd,"boss"..i,false)
		end
	end
	if Tzboss.yeqian ==  4 then
		_Handle = GUIWndFindWindow(Tzboss.Wnd,"bossimage1")     
		if _Handle ~=0 then 
			GUIWndSetVisible(_Handle, false) 
		end
		UI:Lua_OpenWindow(Tzboss.Wnd, "Tzboss_Points.lua")
		WndMoveToParentTop(Tzboss.Wnd,"boss4")
		local hand = GetWindow(Tzboss.Wnd,"img3")
		if hand ~= 0 then 
			GUIWndMoveToParentTop(hand)
		end
		return
	else 
		_Handle = GUIWndFindWindow(Tzboss.Wnd,"bossimage1")     
		if _Handle ~=0 then 
			GUIWndSetVisible(_Handle, true) 
		end
		local monster = {"Points","Tzboss_dragon","Tzboss_tiger","Tzboss_bird","Tzboss_tortoise"}
		for i=1 ,#monster do
			_Handle = GUIWndFindWindow(Tzboss.Wnd,monster[i])  
			if _Handle ~=0 then 
				GUIWndClose(_Handle) 
			end
		end
	end
	
	Tzboss.page=1
	Tzboss.totalpage = math.ceil(#Tzboss.bosslist/8)
	_Handle = GUIWndFindWindow(Tzboss.Wnd,"page")     
	GUIRichEditClear(_Handle)
	GUIRichEditAppendString(_Handle,Tzboss.page.."/"..Tzboss.totalpage)
	
	local yc = {{
				"cishu1",
				"cishu2",
				"cishu3",
				"cishu4",
				"cishu5",
				"cishu6",
				"btnqianwang",
				"imgtiaozhan",
				"juanzhou",
				"juanzhou0",
				"leveltiaonzhan",
				"time",
				"minlevel",
				"buy"
				},
				{
				"imgtiaozhan",
				"juanzhou",
				"juanzhou0",
				"btnqianwang",
				"leveltiaonzhan",
				"cishu1",
				"cishu2",
				"cishu3",
				"cishu4",
				"cishu5",
				"cishu6",
				"minlevel",
				"buy"},
				{
				"imgshuaxin",
				"textshuaxin",
				"imgtiaozhan",
				"juanzhou",
				"juanzhou0",
				"pageup",
				"pagedown",
				"pageimg",
				"page",
				"cs1",
				"cs2",
				"cs3",
				"time"
				}}
	for i=1,3 do
		for j=1,#yc[i] do 
			_handle = GUIWndFindChildM(Tzboss.Wnd,yc[i][j])                 
			if _handle ~= 0 then                           --控件显示
				GUIWndSetVisible( _handle, true) 
			end
		end
	end
	for i=1,3 do 
		for j=1,#yc[i] do
			_handle = GUIWndFindChildM(Tzboss.Wnd,yc[i][j])  
			if _handle ~= 0 and Tzboss.yeqian ==i then                        --控件隐藏
				GUIWndSetVisible( _handle, false) 
			end
		end
	end
	
	for i = 5 , 12 do  
		_Handle = GUIWndFindWindow(Tzboss.Wnd,"boss"..i)
		if Tzboss.yeqian == 3 and i<11 then   
			GUIWndSetTextM(_Handle, Tzboss.personboss[i-4][1])    --左边八个button boss名字
			_handle = GUIWndFindChildM(Tzboss.Wnd,"cishu"..(i-4))      
			GUIEditSetTextM(_handle,"（"..Tzboss.timelist[i].."/1）") 
		elseif Tzboss.yeqian == 2 then  
			local index = Tzboss.page*8+i-12
			GUIWndSetTextM(_Handle, Tzboss.bosslist[index][1]) 
			_handle = GUIWndFindChildM(Tzboss.Wnd,"textshuaxin")      
			GUIEditSetTextM(_handle,"BOSS所在地图") 
		elseif Tzboss.yeqian == 1 then  
			_handle = GUIWndFindChildM(Tzboss.Wnd,"textshuaxin")      
			GUIEditSetTextM(_handle,"已刷新BOSS地图") 
		end 
	end
	
	if 1 == Tzboss.yeqian then 
		UI:Lua_SubmitForm("ChallengeBOSS", "kill","1")  
	else
		local handle = 0
		if Tzboss.tips1 ~= 0 then
			local a = Tzboss.tips1 + 4
			handle = GUIWndFindChildM(Tzboss.Wnd,"boss"..a)                           
			Tzboss.tips1 = 0
		else
			handle = GUIWndFindChildM(Tzboss.Wnd,"boss5")--默认点击 -> “boss1”(可击杀) -> “boss5”	
		end	
		Tzboss.boss(handle)
	end
end	

function Tzboss.boss(_handle)                      --点击BOSS
	
	
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if yeqian == 0 then 
		if  Is_true then
			return 
		end
	end
	yeqian = 0
	if Tzboss.dingshiqi ~= 0  then 
		CLDelDelayTask(Tzboss.dingshiqi)
	end
	local j = WndGetParam(_handle)  

	local picture = 0
	local index = Tzboss.page*8+j-12
	if Tzboss.yeqian == 3 then 
		ImageSetImageID(Tzboss.Wnd, "bossimage1",Tzboss.imgboss3[j-4][2]) 
	elseif Tzboss.yeqian == 2 then 
		ImageSetImageID(Tzboss.Wnd, "bossimage1",Tzboss.imgboss[index][2]) 
	elseif Tzboss.yeqian == 1 then 	
		if #Tzboss.imgboss1 ~= 0 then 
			ImageSetImageID(Tzboss.Wnd, "bossimage1",Tzboss.imgboss1[index][2])  
		end
	end
	
	_Handle = GUIWndFindWindow(Tzboss.Wnd,"pagedown")              --翻页按钮的状态禁用
	if Tzboss.page == 1 then  
		GUIWndSetEnableM(_Handle, false)
	else
		GUIWndSetEnableM(_Handle, true)
	end 
	_Handle = GUIWndFindWindow(Tzboss.Wnd,"pageup") 
	if Tzboss.page < Tzboss.totalpage then  
		GUIWndSetEnableM(_Handle, true)
	else
		GUIWndSetEnableM(_Handle, false)
	end
	
	for i = 5 , 12 do 
		if i == j then 
			local temp = Tzboss.page*8+i-12
			ButtonSetIsActivePageBtn(Tzboss.Wnd,"boss"..i,true)               --高亮左边被点击的按钮
			if Tzboss.yeqian == 3 and i<11 then 
				_handle = GUIWndFindChildM(Tzboss.Wnd,"boss11")                   
				GUIWndSetVisible(_handle,false)
				_handle = GUIWndFindChildM(Tzboss.Wnd,"boss12")                   
				GUIWndSetVisible(_handle,false)
				_handle = GUIWndFindChildM(Tzboss.Wnd,"bossname") 
				GUIEditSetTextM(_handle, Tzboss.personboss[i-4][1])                --左上角boss名字字体和等级
				_handle = GUIWndFindChildM(Tzboss.Wnd,"bosslevel")
				GUIEditSetTextM(_handle,Tzboss.personboss[i-4][2])
				UI:Lua_SubmitForm("ChallengeBOSS", "minnum", i)
				_handle = GUIWndFindChildM(Tzboss.Wnd,"minlevel")
				GUIEditSetTextM(_handle,Tzboss.personboss[i-4][3])
				if i>8 then 
					GUIWndSetTextColorM(_handle, MakeARGB(255, 255, 0, 0))
				else
					GUIWndSetTextColorM(_handle, MakeARGB(255, 216, 182, 150))
				end
				if i>7 then 
					_handle = GUIWndFindChildM(Tzboss.Wnd,"juanzhou")
					GUIWndSetVisible( _handle, true) 
					_handle = GUIWndFindChildM(Tzboss.Wnd,"juanzhou0")
					GUIWndSetVisible( _handle, true) 
				else 
					_handle = GUIWndFindChildM(Tzboss.Wnd,"juanzhou")
					GUIWndSetVisible( _handle, false) 
					_handle = GUIWndFindChildM(Tzboss.Wnd,"juanzhou0")
					GUIWndSetVisible( _handle, false) 
				end
				if Tzboss.timelist[i] == 0 then                                              --显示“已挑战”  和“前往”
					_handle = GUIWndFindChildM(Tzboss.Wnd,"imgtiaozhan")
					GUIWndSetVisible( _handle,false)
					_handle = GUIWndFindChildM(Tzboss.Wnd,"btnqianwang")
					GUIWndSetVisible( _handle,true)
				elseif Tzboss.timelist[i] == 1 then 
					_handle = GUIWndFindChildM(Tzboss.Wnd,"imgtiaozhan")
					GUIWndSetVisible( _handle,true)
					_handle = GUIWndFindChildM(Tzboss.Wnd,"btnqianwang")
					GUIWndSetVisible( _handle,false)
				end 
				for k=1,8 do 
					_Handle = GUIWndFindChildM(Tzboss.Wnd,"itembutton"..k)                 --物品框显示物品信息
					if _Handle ~=0 then 
						RDItemCtrlSetGUIDataByKeyName(_Handle,Tzboss.imgboss3[i-4][k+2], 1, false)
					end
				end
			end
			
			if Tzboss.yeqian == 2 then 
				_handle = GUIWndFindChildM(Tzboss.Wnd,"time")   
				GUIEditSetTextM(_handle,"刷新时间："..Tzboss.bosslist[temp][3])        --显示刷新时间
				_handle = GUIWndFindChildM(Tzboss.Wnd,"bossname") 
				GUIEditSetTextM(_handle, Tzboss.bosslist[temp][1])                --左上角boss名字字体和等级
				_handle = GUIWndFindChildM(Tzboss.Wnd,"bosslevel")
				GUIEditSetTextM(_handle,Tzboss.bosslist[temp][2])
				for i=1,3 do 
					_Handle = GUIWndFindWindow(Tzboss.Wnd,"cs"..i)  
					GUIWndSetVisible(_Handle,true)
					if (#Tzboss.bosslist[temp]-3) >= i then 
						GUIRichEditClear(_Handle)
						GUIRichEditAppendString(_Handle,Tzboss.bosslist[temp][3+i])
					else 
						GUIWndSetVisible(_Handle,false)
					end
				end
				for i=1,8 do 
					_Handle = GUIWndFindChildM(Tzboss.Wnd,"itembutton"..i)                 --物品框显示物品信息
					if _Handle ~=0 then 
						RDItemCtrlSetGUIDataByKeyName(_Handle,Tzboss.item_tab[temp][i], 1, false)
					end
				end
			end	
			if Tzboss.yeqian == 1 and #Tzboss.killtab >= temp then 
				local _hand = GUIWndFindChildM(Tzboss.Wnd,"bossname") 
				GUIEditSetTextM(_hand,Tzboss.killtab[temp][#Tzboss.killtab[temp]])                --左上角boss名字字体和等级
				for k=1,#Tzboss.bosslist do 
					if string.find(Tzboss.bosslist[k][1], Tzboss.killtab[temp][#Tzboss.killtab[temp]]) ~= nil then 
						_hand = GUIWndFindChildM(Tzboss.Wnd,"bosslevel")
						GUIEditSetTextM(_hand,Tzboss.bosslist[temp][2])
					end
				end 
				for s=1,3 do 
					_Handle = GUIWndFindWindow(Tzboss.Wnd,"cs"..s)  
					if s <= #Tzboss.killtab[temp]-1  then 
						GUIWndSetVisible(_Handle,true)
						GUIRichEditClear(_Handle)  
						GUIRichEditAppendString(_Handle,"#SELECT#"..Tzboss.killtab[temp][s].."（传）#SELECTEND#")
					else 
						GUIWndSetVisible(_Handle,false)
					end
				end
				for i=1,8 do 
					_Handle = GUIWndFindChildM(Tzboss.Wnd,"itembutton"..i)                 --物品框显示物品信息
					if _Handle ~=0 then 
						RDItemCtrlSetGUIDataByKeyName(_Handle,Tzboss.item1[temp][i], 1, false)
					end
				end
			end
		else
			ButtonSetIsActivePageBtn(Tzboss.Wnd,"boss"..i,false)
		end
		
		local handle = GUIWndFindChildM(Tzboss.Wnd,"boss"..i) 
		if Tzboss.yeqian == 2 then                     --在各个页签中左边的八个button的信息显示
			GUIWndSetVisible(handle,true)
		elseif Tzboss.yeqian == 3 then 
			if  i<11 then  
				GUIWndSetVisible(handle,true)
			else 
				GUIWndSetVisible(handle,false)
			end
		end
	end
	--[[for i=1,8 do 
		WndAddEffect(Tzboss.Wnd,"itembutton"..i,3020110000,-6,-6,100,0)
	end--]]
	
end

function Tzboss.pagedown(_Handle)
	if Tzboss.page >1 then 
		Tzboss.page = Tzboss.page-1
		Tzboss.update(_Handle)
	end
end

function Tzboss.pageup(_Handle)
	if  Tzboss.page<Tzboss.totalpage then 
		Tzboss.page = Tzboss.page+1
		Tzboss.update(_Handle)
	end
end

function Tzboss.update(_Handle)
	_Handle = GUIWndFindWindow(Tzboss.Wnd,"page")     
	GUIRichEditClear(_Handle)
	GUIRichEditAppendString(_Handle,Tzboss.page.."/"..Tzboss.totalpage)
	
	for i=5,12 do 
		local index = Tzboss.page*8+i-12
		if Tzboss.yeqian == 1 then  
			_Handle = GUIWndFindChildM(Tzboss.Wnd,"boss"..i) 
			if index <= #Tzboss.killtab and _Handle ~= 0  then    
				GUIWndSetVisible(_Handle,true)         
				GUIWndSetTextM(_Handle,Tzboss.killtab[index][#Tzboss.killtab[index]])
			elseif _Handle ~= 0  then 
				GUIWndSetVisible(_Handle,false)
			end
		elseif Tzboss.yeqian == 2 then  
			_Handle = GUIWndFindChildM(Tzboss.Wnd,"boss"..i) 
			if _Handle ~= 0 then 
				GUIWndSetTextM(_Handle, Tzboss.bosslist[index][1]) 
			end
		end
	end
	yeqian = 1
	_Handle = GUIWndFindChildM(Tzboss.Wnd,"boss5")
	Tzboss.boss(_Handle)
end

function Tzboss.cs_1()                                --button"前往"
	for i=5,10 do 
		local handle = GUIWndFindChildM(Tzboss.Wnd,"boss"..i)                      
		if GUIButtonGetIsActivePageBtn(handle) and Tzboss.yeqian==3  then                                --获取高亮中的按钮    
			UI:Lua_SubmitForm("ChallengeBOSS", "timeqianwang2", i)   
			break
		end
	end
end

function Tzboss.cs(_handle) 
	
	if Tzboss.yeqian == 2 then 
		return
	end                                     
    local txt = GUIRichEditGetAllString(_handle) 
	UI:Lua_SubmitForm("ChallengeBOSS", "cs", txt)
	
end

function Tzboss.minnum(index,num,reinLevel,level)  
	
	local _handle = GUIWndFindChildM(Tzboss.Wnd,"juanzhou")
	local _buyhandle = GUIWndFindChildM(Tzboss.Wnd,"buy")
	if _buyhandle ~= 0 then 
		GUIWndSetVisible(_buyhandle,false)
	end
	if (index-7)> 0 and num < (index-7) then                      
		GUIEditSetTextM(_handle,(index-7).."（拥有"..num..")")
		GUIWndSetTextColorM(_handle,MakeARGB(255,255,0,0))
		GUIWndSetVisible(_buyhandle,true)
	else
		GUIEditSetTextM(_handle,(index-7).."（拥有"..num..")")
		GUIWndSetTextColorM(_handle,MakeARGB(255,216,182,150))
	end
	_handle = GUIWndFindChildM(Tzboss.Wnd,"minlevel")
	if tonumber(index) == 9 then 
		if tonumber(reinLevel) >= 3 then 
			GUIWndSetTextColorM(_handle,MakeARGB(255,216,182,150))
		else 
			GUIWndSetTextColorM(_handle,MakeARGB(255,255,0,0))
		end
	elseif index == 10 then 
		if tonumber(reinLevel) >= 5 then 
			GUIWndSetTextColorM(_handle,MakeARGB(255,216,182,150))
		else 
			GUIWndSetTextColorM(_handle,MakeARGB(255,255,0,0))
		end	
	else 
		if level < Tzboss.personboss[index-4][3] then 
			GUIWndSetTextColorM(_handle,MakeARGB(255,255,0,0))
		else 
			GUIWndSetTextColorM(_handle,MakeARGB(255,216,182,150))
		end
	end
end

function Tzboss.buy(handle)
	
	if not GUIWndGetVisible(handle) then 
		return
	end
	for i=5,10 do 
		handle = GUIWndFindChildM(Tzboss.Wnd,"boss"..i)    
		if GUIButtonGetIsActivePageBtn(handle) and Tzboss.yeqian==3  then                                --获取高亮中的按钮    
			if handle ~= 0 then 
				UI:Lua_SubmitForm("ChallengeBOSS", "buy",i )
			end
			break
		end
	end
	
end

function Tzboss.kill(tab_can)
	
	for i=1 , #tab_can do 
		for j=1,#Tzboss.imgboss do 
			if tab_can[i][#tab_can[i]] == Tzboss.imgboss[j][3] then  
				Tzboss.imgboss1[#Tzboss.imgboss1+1]= Tzboss.imgboss[j]
				Tzboss.item1[#Tzboss.item1+1]= Tzboss.item_tab[j]
			end
		end
	end
	Tzboss.killtab = tab_can
	Tzboss.totalpage = math.ceil(#tab_can/8)
	if Tzboss.totalpage==0 then 
		Tzboss.totalpage=1
	end
	local boss0_tab ={"cs1","cs2","cs3","bossimage1"}
	if #Tzboss.imgboss1 == 0 then 
		for i=1,#boss0_tab do
			local _handle = GUIWndFindChildM(Tzboss.Wnd,boss0_tab[i])  
			if _handle ~= 0  then                        --控件隐藏
				GUIWndSetVisible( _handle, false) 
			end
		end
		for i=1,8 do
			local _handle = GUIWndFindChildM(Tzboss.Wnd,"itembutton"..i)  
			if _handle ~= 0  then                   
				GUIItemCtrlClearItemData(_handle)
			end
		end
		_handle = GUIWndFindChildM(Tzboss.Wnd,"bossname") 
		GUIEditSetTextM(_handle,"")                --左上角boss名字字体和等级
		_handle = GUIWndFindChildM(Tzboss.Wnd,"bosslevel")
		GUIEditSetTextM(_handle,"")
	end
	
	Tzboss.update(Tzboss.Wnd)
	
end

function Tzboss.MsgPrompt(msg)
	local handle = GUIWndFindWindow(Tzboss.Wnd,"btnqianwang")
	local color = MakeARGB(255,255,0,0)
	if handle ~= 0 then
		window_msg_up(handle, msg, -73, -19, 30, color, 2)
	end
end

function Tzboss.Close() 
	local handle = GetWindow(nil,"Tzboss") 
	if handle ~= 0 then  
		CLDelDelayTask(Tzboss.dingshiqi)
		GUIWndClose(handle)
	end
end

function Tzboss.numVisible(num) 
	local hand = GetWindow(Tzboss.Wnd,"img3")
	if hand ~= 0 then 
		if tonumber(num) == 1 then 
			GUIWndSetVisible(hand, true) 
			GUIWndMoveToParentTop(hand)
		else 
			GUIWndSetVisible(hand, false)
		end
	end 
end

Tzboss.main()