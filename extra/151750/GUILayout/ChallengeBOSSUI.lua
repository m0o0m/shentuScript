Tzboss ={}
local ui = "<form> <dialog OnInit='Tzboss.UIInit' id='Tzboss' image='1803300002'  magic='1'  center='true'  x='44' y='57' w='714' h='503' esc_close='true' drag='true' revmsg='true'>"
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
	.."	<itemctrl id='itembutton1' use_back='false' x='209' y='364' w='50' h='50'  enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembutton2' use_back='false' x='269' y='364' w='50' h='50'  enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembutton3' use_back='false' x='329' y='364' w='50' h='50'  enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembutton4' use_back='false' x='389' y='364' w='50' h='50'  enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembutton5' use_back='false' x='449' y='364' w='50' h='50'  enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembutton6' use_back='false' x='509' y='364' w='50' h='50'  enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembutton7' use_back='false' x='569' y='364' w='50' h='50'  enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembutton8' use_back='false' x='629' y='364' w='50' h='50'  enable='true' revmsg='true'/>"
	.."	<image id='imgshuaxin' image='1803300043' x='178' y='409' w='515' h='39' check_point='0' revmsg='true'/>"
	.."	<edit id='textshuaxin' x='395' y='412' w='127' h='26' revmsg='true' text_color='#CA9765' text='已刷新BOSS地图' font='system'/>"
	.."	<button id='closebutton' image='1800000043' x='680' y='4' w='26' h='26' OnLButtonUp='Tzboss.Close' revmsg='true' text_color='#C2B6A0'/>"
	.."	<richedit id='cs1' x='215' y='450' w='215' h='25' revmsg='true' OnLButtonUp='Tzboss.cs' text_color='#00CC33' text='#SELECT# #SELECTEND#' font='system'/>"
	.."	<richedit id='cs2' x='345' y='450' w='215' h='25' revmsg='true' OnLButtonUp='Tzboss.cs' text_color='#00CC33' text='#SELECT# #SELECTEND#' font='system'/>"
	.."	<richedit id='cs3' x='475' y='450' w='215' h='25' revmsg='true' OnLButtonUp='Tzboss.cs' text_color='#00CC33' text='#SELECT# #SELECTEND#' font='system'/>"
	.."	<edit id='bossname' x='203' y='83' w='100' h='30'   text_color='#C6A56E' text='' font='system'/>"
	.."	<edit id='bosslevel' x='203' y='108' w='100' h='23'   text_color='#C6A56E' text='' font='system'/>"
	.."	<edit id='TestWndChild_39' x='412' y='322' w='111' h='22' revmsg='true' text_color='#CAC45B' text='极 品 掉 落' font='system'/>"
	.."<image id='bossimage1' image=''  x='171' y='25' w='159' h='245' revmsg='false' type='animate'/>"
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
	.." </dialog>"
	.."</form>"

function Tzboss.main()
	if GetWindow(nil,"Tzboss") ~= 0 then  
		Tzboss.Close()
	else  
		Tzboss.timelistt = deserialize(FormParam[1])   
		Tzboss.bosslist = deserialize(FormParam[2]) 
		Tzboss.timelist = deserialize(FormParam[3])  
		Tzboss.imgboss = deserialize(FormParam[4])
		Tzboss.personboss = deserialize(FormParam[5])
		GenFormByString(ui)    
	end
end

Tzboss.Wnd = 0
Tzboss.page = 1
Tzboss.totalpage =1
Tzboss.yeqian = 1
Tzboss.timelist = {}
Tzboss.timelistt = {}
Tzboss.dingshiqi = 0 
Tzboss.killtab ={}
Tzboss.bosslist =  {}
Tzboss.personboss = {}
Tzboss.imgboss1 =  {}
Tzboss.item1 =  {}
Tzboss.imgboss3 =  {
{0619006400,0619000400,"战将手镯","法灵手镯","散人手镯","战将头盔","法灵头盔","散人头盔","战将戒指","法灵戒指"}, 
{0619406400,0619400400,"武魂手镯","魔魂手镯","玄魂手镯","武魂戒指","魔魂戒指","玄魂戒指","武魂靴子","魔魂靴子"},
{0636406400,0636400400,"天武手镯","天魔手镯","天灵手镯","天武戒指","天魔戒指","天灵戒指","天武项链","天魔项链"},
{0601906400,0601900400,"圣武手镯","圣魔手镯","圣灵手镯","圣武靴子","圣魔靴子","圣灵靴子","神武戒指","神魔戒指"},
{0699806400,0650900400,"威武手镯","幻神手镯","无量手镯","洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天靴子","天地玄奇靴子"},
{0632606400,0632600400,"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天头盔","天魁玄灵头盔"}
}
Tzboss.imgboss3 =  {
{0619006400,0619000400,"战将手镯","法灵手镯","散人手镯","战将头盔","法灵头盔","散人头盔","战将戒指","法灵戒指"}, 
{0619406400,0619000400,"武魂手镯","魔魂手镯","玄魂手镯","武魂戒指","魔魂戒指","玄魂戒指","武魂靴子","魔魂靴子"},
{0636406400,0619000400,"天武手镯","天魔手镯","天灵手镯","天武戒指","天魔戒指","天灵戒指","天武项链","天魔项链"},
{0601906400,0619000400,"圣武手镯","圣魔手镯","圣灵手镯","圣武靴子","圣魔靴子","圣灵靴子","神武戒指","神魔戒指"},
{0699806400,0619000400,"威武手镯","幻神手镯","无量手镯","洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天靴子","天地玄奇靴子"},
{0632606400,0619000400,"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天头盔","天魁玄灵头盔"}
}
Tzboss.item_tab = {
{"坚固手套","龙之手镯","三眼手镯","蓝翡翠项链","恶魔铃铛大","凤凰明珠","黑铁头盔","魔法头盔"},--触龙神
{"圣战手镯","法神手镯","天尊手镯","圣战戒指","法神戒指","天尊戒指","圣战头盔","法神头盔"},--白色恶猪
{"战将手镯","法灵手镯","散人手镯","战将头盔","法灵头盔","散人头盔","战将戒指","法灵戒指"},--沃玛教主
{"武魂手镯","魔魂手镯","玄魂手镯","武魂戒指","魔魂戒指","玄魂戒指","武魂靴子","魔魂靴子"},--祖玛教主
{"天武手镯","天魔手镯","天灵手镯","天武戒指","天魔戒指","天灵戒指","天武项链","天魔项链"},--赤月恶魔
{"圣武手镯","圣魔手镯","圣灵手镯","圣武靴子","圣魔靴子","圣灵靴子","神武戒指","神魔戒指"},--牛魔王
{"威武手镯","幻神手镯","无量手镯","威武戒指","幻神戒指","无量戒指","威武腰带","幻神腰带"},--黄泉教主
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
	
	Tzboss.Wnd =_Handle
	GUI:WndSetSizeM(_Handle, 714 ,503)
	CenterWnd(_Handle)

	local itemlist = Tzboss.timelistt
	local _GUIHandle = GUI:WndFindChildM(_Handle,"bossname")                 --左上角boss名字字体大小和颜色
	if _GUIHandle~=0 then 
		GUI:EditSetFontM(_GUIHandle,"SIMLI18")
		GUI:WndSetTextColorM(_GUIHandle, CL:MakeARGB(255, 198, 165, 110))
	end

	for i=1, 12 do 
		handle = GUI:WndFindChildM(Tzboss.Wnd,"boss"..i)                   --四个页签和八个button的字体和内容
		if handle ~= 0 then 
			GUI:WndSetParam(handle,i)
			if i>4 then  
				GUI:WndAddProperty(handle, tostring(i),tostring( Tzboss.timelist[i]))    
				GUI:ButtonSetTextFont(handle,"SIMLI18")
				GUI:WndSetTextM(handle,Tzboss.bosslist[i-4][1])
			else 
				GUI:ButtonSetStateTextColor(handle,0,MakeARGB(255, 100, 96, 80))
				GUI:ButtonSetStateTextColor(handle,1,MakeARGB(255, 201, 184, 116)) 
				GUI:ButtonSetStateTextColor(handle,2,MakeARGB(255, 201, 184, 116))  
			end 
		end
	end
	
	for k=1,8 do 
		local hand = GUI:WndFindChildM(Tzboss.Wnd,"itembutton"..k)                 --物品框显示物品信息
		if hand ~=0 then 
			GUI:ItemCtrlSetBackImageID(hand, 1800000147) 
			--RDItemCtrlSetGUIDataByKeyName(_Handle,Tzboss.imgboss3[i-4][k+2], 1, false)
			RDItemCtrlSetGUIDataPropByKeyName(Tzboss.Wnd,"itembutton"..k,"七劫浮屠", 1, false)
		end
	end

	local hand = GUI:WndFindWindow(Tzboss.Wnd,"bossimage1")
	if hand ~= 0 then 
		--GUI:ImageSetDrawCenter(hand,true)
		--GUI:ImageSetAnimateEnable(hand, true, 150) 
	end    
	
	handle = GUI:WndFindChildM(Tzboss.Wnd,"boss1")                           --默认点击 -> “boss1”(可击杀) -> “boss5”
    Tzboss.hide(handle)
	
end

function Tzboss.hide(_handle) 
	
	Tzboss.yeqian = WndGetParam(_handle)
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
		_Handle = GUI:WndFindWindow(Tzboss.Wnd,"bossimage1")     
		if _Handle ~=0 then 
			GUI:WndSetVisible(_Handle, false) 
		end
		UI:Lua_OpenWindow(Tzboss.Wnd, "Tzboss_Points.lua")
		WndMoveToParentTop(Tzboss.Wnd,"boss4")
		return
	else 
		_Handle = GUI:WndFindWindow(Tzboss.Wnd,"bossimage1")     
		if _Handle ~=0 then 
			GUI:WndSetVisible(_Handle, true) 
		end
		local monster = {"Points","Tzboss_dragon","Tzboss_tiger","Tzboss_bird","Tzboss_tortoise"}
		for i=1 ,#monster do
			_Handle = GUI:WndFindWindow(Tzboss.Wnd,monster[i])  
			if _Handle ~=0 then 
				GUI:WndClose(_Handle) 
			end
		end
	end
	
	Tzboss.page=1
	Tzboss.totalpage = math.ceil(#Tzboss.bosslist/8)
	_Handle = GUI:WndFindWindow(Tzboss.Wnd,"page")     
	GUI:RichEditClear(_Handle)
	GUI:RichEditAppendString(_Handle,Tzboss.page.."/"..Tzboss.totalpage)
	
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
			_handle = GUI:WndFindChildM(Tzboss.Wnd,yc[i][j])                 
			if _handle ~= 0 then                           --控件显示
				GUI:WndSetVisible( _handle, true) 
			end
		end
	end
	for i=1,3 do 
		for j=1,#yc[i] do
			_handle = GUI:WndFindChildM(Tzboss.Wnd,yc[i][j])  
			if _handle ~= 0 and Tzboss.yeqian ==i then                        --控件隐藏
				GUI:WndSetVisible( _handle, false) 
			end
		end
	end
	
	for i = 5 , 12 do  
		_Handle = GUI:WndFindWindow(Tzboss.Wnd,"boss"..i)
		if Tzboss.yeqian == 3 and i<11 then   
			GUI:WndSetTextArrangeType(_Handle,-10,-5,0,0)
			GUI:WndSetTextM(_Handle, Tzboss.personboss[i-4][1])    --左边八个button boss名字
			_handle = GUI:WndFindChildM(Tzboss.Wnd,"cishu"..(i-4))      
			GUI:EditSetTextM(_handle,"（"..Tzboss.timelist[i].."/1）") 
		elseif Tzboss.yeqian == 2 then  
			GUI:WndSetTextArrangeType(_Handle,0,-5,0,0)
			local index = Tzboss.page*8+i-12
			GUI:WndSetTextM(_Handle, Tzboss.bosslist[index][1]) 
			_handle = GUI:WndFindChildM(Tzboss.Wnd,"textshuaxin")      
			GUI:EditSetTextM(_handle,"BOSS所在地图") 
		elseif Tzboss.yeqian == 1 then  
			GUI:WndSetTextArrangeType(_Handle,0,-5,0,0)
			_handle = GUI:WndFindChildM(Tzboss.Wnd,"textshuaxin")      
			GUI:EditSetTextM(_handle,"已刷新BOSS地图") 
		end 
	end
	
	if 1 == Tzboss.yeqian then 
		UI:Lua_SubmitForm("ChallengeBOSS", "kill","1")  
	else
		local handle = GUI:WndFindChildM(Tzboss.Wnd,"boss5")
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
		CL:DelDelayTask(Tzboss.dingshiqi)
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
	
	_Handle = GUI:WndFindWindow(Tzboss.Wnd,"pagedown")              --翻页按钮的状态禁用
	if Tzboss.page == 1 then  
		GUI:WndSetEnableM(_Handle, false)
	else
		GUI:WndSetEnableM(_Handle, true)
	end 
	_Handle = GUI:WndFindWindow(Tzboss.Wnd,"pageup") 
	if Tzboss.page < Tzboss.totalpage then  
		GUI:WndSetEnableM(_Handle, true)
	else
		GUI:WndSetEnableM(_Handle, false)
	end 
	
	for i = 5 , 12 do 
		if i == j then 
			local temp = Tzboss.page*8+i-12
			ButtonSetIsActivePageBtn(Tzboss.Wnd,"boss"..i,true)               --高亮左边被点击的按钮
			if Tzboss.yeqian == 3 and i<11 then 
				_handle = GUI:WndFindChildM(Tzboss.Wnd,"boss11")                   
				GUI:WndSetVisible(_handle,false)
				_handle = GUI:WndFindChildM(Tzboss.Wnd,"boss12")                   
				GUI:WndSetVisible(_handle,false)
				_handle = GUI:WndFindChildM(Tzboss.Wnd,"bossname") 
				GUI:EditSetTextM(_handle, Tzboss.personboss[i-4][1])                --左上角boss名字字体和等级
				_handle = GUI:WndFindChildM(Tzboss.Wnd,"bosslevel")
				GUI:EditSetTextM(_handle,Tzboss.personboss[i-4][2])
				UI:Lua_SubmitForm("ChallengeBOSS", "minnum", tostring(i))
				_handle = GUI:WndFindChildM(Tzboss.Wnd,"minlevel")
				GUI:EditSetTextM(_handle,tostring(Tzboss.personboss[i-4][3]))
				if i>8 then 
					GUI:WndSetTextColorM(_handle, MakeARGB(255, 255, 0, 0))
				else
					GUI:WndSetTextColorM(_handle, MakeARGB(255, 216, 182, 150))
				end
				if i>7 then 
					_handle = GUI:WndFindChildM(Tzboss.Wnd,"juanzhou")
					GUI:WndSetVisible( _handle, true) 
					_handle = GUI:WndFindChildM(Tzboss.Wnd,"juanzhou0")
					GUI:WndSetVisible( _handle, true) 
				else 
					_handle = GUI:WndFindChildM(Tzboss.Wnd,"juanzhou")
					GUI:WndSetVisible( _handle, false) 
					_handle = GUI:WndFindChildM(Tzboss.Wnd,"juanzhou0")
					GUI:WndSetVisible( _handle, false) 
				end
				if Tzboss.timelist[i] == 0 then                                              --显示“已挑战”  和“前往”
					_handle = GUI:WndFindChildM(Tzboss.Wnd,"imgtiaozhan")
					GUI:WndSetVisible( _handle,false)
					_handle = GUI:WndFindChildM(Tzboss.Wnd,"btnqianwang")
					GUI:WndSetVisible( _handle,true)
				elseif Tzboss.timelist[i] == 1 then 
					_handle = GUI:WndFindChildM(Tzboss.Wnd,"imgtiaozhan")
					GUI:WndSetVisible( _handle,true)
					_handle = GUI:WndFindChildM(Tzboss.Wnd,"btnqianwang")
					GUI:WndSetVisible( _handle,false)
				end 
				for k=1,8 do 
					_Handle = GUI:WndFindChildM(Tzboss.Wnd,"itembutton"..k)                 --物品框显示物品信息
					if _Handle ~=0 then 
						GUI:ItemCtrlSetBackImageID(_Handle, 1800000147)
						--RDItemCtrlSetGUIDataPropByKeyName(Tzboss.Wnd,"itembutton"..k,Tzboss.imgboss3[i-4][k+2], 1, false)
						RDItemCtrlSetGUIDataPropByKeyName(Tzboss.Wnd,"itembutton"..k, "七劫浮屠", 1, false) 
					end
				end
			end
			
			if Tzboss.yeqian == 2 then 
				_handle = GUI:WndFindChildM(Tzboss.Wnd,"time")   
				GUI:EditSetTextM(_handle,"刷新时间："..Tzboss.bosslist[temp][3])        --显示刷新时间
				_handle = GUI:WndFindChildM(Tzboss.Wnd,"bossname") 
				GUI:EditSetTextM(_handle, Tzboss.bosslist[temp][1])                --左上角boss名字字体和等级
				_handle = GUI:WndFindChildM(Tzboss.Wnd,"bosslevel")
				GUI:EditSetTextM(_handle,Tzboss.bosslist[temp][2])
				for i=1,3 do 
					_Handle = GUI:WndFindWindow(Tzboss.Wnd,"cs"..i)  
					GUI:WndSetVisible(_Handle,true)
					if (#Tzboss.bosslist[temp]-3) >= i then 
						GUI:RichEditClear(_Handle)
						GUI:RichEditAppendString(_Handle,Tzboss.bosslist[temp][3+i])
					else 
						GUI:WndSetVisible(_Handle,false)
					end
				end
				for i=1,8 do 
					_Handle = GUI:WndFindChildM(Tzboss.Wnd,"itembutton"..i)                 --物品框显示物品信息
					if _Handle ~=0 then  
						--RDItemCtrlSetGUIDataPropByKeyName(Tzboss.Wnd,"itembutton"..i, Tzboss.item_tab[temp][i], 1, false) 
						RDItemCtrlSetGUIDataPropByKeyName(Tzboss.Wnd,"itembutton"..i, "七劫浮屠", 1, false) 
						
					end
				end
			end	
			if Tzboss.yeqian == 1 and #Tzboss.killtab >= temp then 
				local _hand = GUI:WndFindChildM(Tzboss.Wnd,"bossname") 
				GUI:EditSetTextM(_hand,Tzboss.killtab[temp][#Tzboss.killtab[temp]])                --左上角boss名字字体和等级
				for k=1,#Tzboss.bosslist do 
					if string.find(Tzboss.bosslist[k][1], Tzboss.killtab[temp][#Tzboss.killtab[temp]]) ~= nil then 
						_hand = GUI:WndFindChildM(Tzboss.Wnd,"bosslevel")
						GUI:EditSetTextM(_hand,Tzboss.bosslist[temp][2])
					end
				end 
				for s=1,3 do 
					_Handle = GUI:WndFindWindow(Tzboss.Wnd,"cs"..s)  
					if s <= #Tzboss.killtab[temp]-1  then 
						GUI:WndSetVisible(_Handle,true)
						GUI:RichEditClear(_Handle)  
						GUI:RichEditAppendString(_Handle,"#SELECT#"..Tzboss.killtab[temp][s].."（传）#SELECTEND#")
					else 
						GUI:WndSetVisible(_Handle,false)
					end
				end
				for i=1,8 do 
					_Handle = GUI:WndFindChildM(Tzboss.Wnd,"itembutton"..i)                 --物品框显示物品信息
					if _Handle ~=0 then 
						--RDItemCtrlSetGUIDataByKeyName(_Handle,Tzboss.item1[temp][i], 1, false)
						RDItemCtrlSetGUIDataPropByKeyName(Tzboss.Wnd,"itembutton"..i,"七劫浮屠", 1, false)
					end
				end
			end
		else
			ButtonSetIsActivePageBtn(Tzboss.Wnd,"boss"..i,false)
		end
		
		local handle = GUI:WndFindChildM(Tzboss.Wnd,"boss"..i) 
		if Tzboss.yeqian == 2 then                     --在各个页签中左边的八个button的信息显示
			GUI:WndSetVisible(handle,true)
		elseif Tzboss.yeqian == 3 then 
			if  i<11 then  
				GUI:WndSetVisible(handle,true)
			else 
				GUI:WndSetVisible(handle,false)
			end
		end
	end
	
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
	_Handle = GUI:WndFindWindow(Tzboss.Wnd,"page")     
	GUI:RichEditClear(_Handle)
	GUI:RichEditAppendString(_Handle,Tzboss.page.."/"..Tzboss.totalpage)
	
	for i=5,12 do 
		local index = Tzboss.page*8+i-12
		if Tzboss.yeqian == 1 then  
			_Handle = GUI:WndFindChildM(Tzboss.Wnd,"boss"..i) 
			if index <= #Tzboss.killtab and _Handle ~= 0  then    
				GUI:WndSetVisible(_Handle,true)         
				GUI:WndSetTextM(_Handle,Tzboss.killtab[index][#Tzboss.killtab[index]])
			elseif _Handle ~= 0  then 
				GUI:WndSetVisible(_Handle,false)
			end
		elseif Tzboss.yeqian == 2 then  
			_Handle = GUI:WndFindChildM(Tzboss.Wnd,"boss"..i) 
			if _Handle ~= 0 then 
				GUI:WndSetTextM(_Handle, Tzboss.bosslist[index][1]) 
			end
		end
	end
	yeqian = 1
	_Handle = GUI:WndFindChildM(Tzboss.Wnd,"boss5")
	Tzboss.boss(_Handle)
end

function Tzboss.cs_1(_handle)                                --button"前往"
	for i=5,10 do 
		local handle = GUI:WndFindChildM(Tzboss.Wnd,"boss"..i)                      
		if GUI:ButtonGetIsActivePageBtn(handle) and Tzboss.yeqian==3  then                                --获取高亮中的按钮    
			UI:Lua_SubmitForm("ChallengeBOSS", "timeqianwang2", i)   
			break
		end
	end
end

function Tzboss.cs(_handle)    
	if Tzboss.yeqian == 2 then 
		return
	end 
    local txt = GUI:RichEditGetAllString(_handle) 
	UI:Lua_SubmitForm("ChallengeBOSS", "cs", txt)
	
end

function Tzboss.minnum(index,num,reinLevel,level)
	
	local _handle = GUI:WndFindChildM(Tzboss.Wnd,"juanzhou")
	local _buyhandle = GUI:WndFindChildM(Tzboss.Wnd,"buy")
	if _buyhandle ~= 0 then 
		GUI:WndSetVisible(_buyhandle,false)
	end
	if (index-7)> 0 and num < (index-7) then                      
		GUI:EditSetTextM(_handle,(index-7).."（拥有"..num..")")
		GUI:WndSetTextColorM(_handle,MakeARGB(255,255,0,0))
		GUI:WndSetVisible(_buyhandle,true)
	else
		GUI:EditSetTextM(_handle,(index-7).."（拥有"..num..")")
		GUI:WndSetTextColorM(_handle,MakeARGB(255,216,182,150))
	end
	_handle = GUI:WndFindChildM(Tzboss.Wnd,"minlevel")
	if tonumber(index) == 9 then 
		if tonumber(reinLevel) >= 3 then 
			GUI:WndSetTextColorM(_handle,MakeARGB(255,216,182,150))
		else 
			GUI:WndSetTextColorM(_handle,MakeARGB(255,255,0,0))
		end
	elseif index == 10 then 
		if tonumber(reinLevel) >= 5 then 
			GUI:WndSetTextColorM(_handle,MakeARGB(255,216,182,150))
		else 
			GUI:WndSetTextColorM(_handle,MakeARGB(255,255,0,0))
		end	
	else 
		if level < Tzboss.personboss[index-4][3] then 
			GUI:WndSetTextColorM(_handle,MakeARGB(255,255,0,0))
		else 
			GUI:WndSetTextColorM(_handle,MakeARGB(255,216,182,150))
		end
	end
end

function Tzboss.buy(handle)
	
	if not GUI:WndGetVisible(handle) then 
		return
	end
	for i=5,10 do 
		handle = GUI:WndFindChildM(Tzboss.Wnd,"boss"..i)    
		if GUI:ButtonGetIsActivePageBtn(handle) and Tzboss.yeqian==3  then                                --获取高亮中的按钮    
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
			local _handle = GUI:WndFindChildM(Tzboss.Wnd,boss0_tab[i])  
			if _handle ~= 0  then                        --控件隐藏
				GUI:WndSetVisible( _handle, false) 
			end
		end
		for i=1,8 do
			local _handle = GUI:WndFindChildM(Tzboss.Wnd,"itembutton"..i)  
			if _handle ~= 0  then                   
				GUI:ItemCtrlClearItemData(_handle)
			end
		end
		_handle = GUI:WndFindChildM(Tzboss.Wnd,"bossname") 
		GUI:EditSetTextM(_handle,"")                --左上角boss名字字体和等级
		_handle = GUI:WndFindChildM(Tzboss.Wnd,"bosslevel")
		GUI:EditSetTextM(_handle,"")
	end
	
	Tzboss.update(Tzboss.Wnd)
	
end

function Tzboss.Close() 
	local handle = GetWindow(nil,"Tzboss") 
	if handle ~= 0 then  
		CL:DelDelayTask(Tzboss.dingshiqi)
		GUI:WndClose(handle)
	end
end

Tzboss.main()