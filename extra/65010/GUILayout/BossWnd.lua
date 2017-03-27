BossWnd ={}
local ui = "<form> <dialog OnInit='BossWnd.UIInit' id='BossWnd' image='1806500000' x='500' y='200' w='714' h='503' center='true' esc_close='true' drag='true' revmsg='true'>"
	.."<image id='TestWndChild_1' image='1807900001' x='35' y='56' w='652' h='427' check_point='0' revmsg='true'/>"
	.."<image id='TestWndChild_2' image='1807900000' x='303' y='5' enable='false' w='116' h='33' check_point='0' revmsg='true'/>"
	.."<button id='boss1'  image='1806500017' x='41' y='62' w='77' h='30' OnLButtonUp='BossWnd.hide' revmsg='true' text='可击杀' text_color='#6E5C50'/>"
	.."<button id='boss2'  image='1806500017' x='121' y='62' w='77' h='30' OnLButtonUp='BossWnd.hide' revmsg='true' text='野外BOSS' text_color='#6E5C50'/>"
	.."<button id='boss3'  image='1806500017' x='201' y='62' w='77' h='30' OnLButtonUp='BossWnd.hide' revmsg='true' text='个人BOSS' text_color='#6E5C50'/>"
	.."<button id='boss4'  image='1806500017' x='281' y='62' w='77' h='30' OnLButtonUp='BossWnd.hide' revmsg='true' text='BOSS积分' text_color='#6E5C50'/>"
	.."<button id='boss5' font='SIMLI18' image='1807900003'  x='50' y='97' w='136' h='41' OnLButtonUp='BossWnd.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."<button id='boss6' font='SIMLI18' image='1807900003' x='50' y='141' w='136' h='41' OnLButtonUp='BossWnd.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."<button id='boss7' font='SIMLI18' image='1807900003'  x='50' y='185' w='136' h='41' OnLButtonUp='BossWnd.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."<button id='boss8' font='SIMLI18' image='1807900003'  x='50' y='229' w='136' h='41' OnLButtonUp='BossWnd.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."<button id='boss9' font='SIMLI18' image='1807900003'  x='50' y='273' w='136' h='41' OnLButtonUp='BossWnd.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."<button id='boss10' font='SIMLI18' image='1807900003'  x='50' y='317' w='136' h='41' OnLButtonUp='BossWnd.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."<button id='boss11' font='SIMLI18' image='1807900003' x='50' y='361' w='136' h='41' OnLButtonUp='BossWnd.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."<button id='boss12' font='SIMLI18' image='1807900003'  x='50' y='405' w='136' h='41' OnLButtonUp='BossWnd.boss' revmsg='true' text='白色恶猪' text_color='#E4B750'/>"
	.."<button id='pagedown' image='1806700029' x='47' y='453' w='22' h='22' OnLButtonUp='BossWnd.pagedown' revmsg='true' text_color='#C2B6A0' enable='false'/>"
	.."<button id='pageup' image='1806700033' x='155' y='455' w='22' h='22' OnLButtonUp='BossWnd.pageup' revmsg='true' text_color='#C2B6A0'  enable='false' />"
	.."<image id='pageimg' image='1806700027' x='73' y='456' w='75' h='18' check_point='0' revmsg='true'/>"
	.."<richedit id='page' x='98' y='458' w='28' h='21' revmsg='true' text_color='#C2B6A0' text='1/2' font='system'/>"
	.."<image id='ItemBkImg1' image='1800000147' x='210' y='359' w='40' h='40' check_point='0' revmsg='true'/>"
	.."<image id='ItemBkImg2' image='1800000147' x='270' y='359' w='40' h='40' check_point='0' revmsg='true'/>"
	.."<image id='ItemBkImg3' image='1800000147' x='330' y='359' w='40' h='40' check_point='0' revmsg='true'/>"
	.."<image id='ItemBkImg4' image='1800000147' x='390' y='359' w='40' h='40' check_point='0' revmsg='true'/>"
	.."<image id='ItemBkImg5' image='1800000147' x='450' y='359' w='40' h='40' check_point='0' revmsg='true'/>"
	.."<image id='ItemBkImg6' image='1800000147' x='510' y='359' w='40' h='40' check_point='0' revmsg='true'/>"
	.."<image id='ItemBkImg7' image='1800000147' x='570' y='359' w='40' h='40' check_point='0' revmsg='true'/>"
	.."<image id='ItemBkImg8' image='1800000147' x='630' y='359' w='40' h='40' check_point='0' revmsg='true'/>"
	.."<itemctrl id='itembutton1' use_back='0' x='214' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."<itemctrl id='itembutton2' use_back='0' x='274' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."<itemctrl id='itembutton3' use_back='0' x='334' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."<itemctrl id='itembutton4' use_back='0' x='394' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."<itemctrl id='itembutton5' use_back='0' x='454' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."<itemctrl id='itembutton6' use_back='0' x='514' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."<itemctrl id='itembutton7' use_back='0' x='574' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."<itemctrl id='itembutton8' use_back='0' x='634' y='364' w='40' h='40'  enable='true' revmsg='true'/>"
	.."<image id='imgshuaxin' image='1803300043' x='202' y='406' w='485' h='39' check_point='0' revmsg='true' fitsize='true'/>"
	.."<edit id='textshuaxin' x='400' y='408' w='127' h='26' revmsg='true' text_color='#CA9765' text='已刷新BOSS地图' font='system'/>"
	.."<button id='closebutton' image='1805900080' x='666' y='3' w='34' h='38' OnLButtonUp='BossWnd.Close' revmsg='true' text_color='#C2B6A0'/>"
	.."<richedit id='cs1' x='215' y='450' w='215' h='25' revmsg='true' OnLButtonUp='BossWnd.cs' text_color='#00CC33' text='#SELECT# #SELECTEND#' font='system'/>"
	.."<richedit id='cs2' x='345' y='450' w='215' h='25' revmsg='true' OnLButtonUp='BossWnd.cs' text_color='#00CC33' text='#SELECT# #SELECTEND#' font='system'/>"
	.."<richedit id='cs3' x='475' y='450' w='215' h='25' revmsg='true' OnLButtonUp='BossWnd.cs' text_color='#00CC33' text='#SELECT# #SELECTEND#' font='system'/>"
	.."<edit id='bossname' x='212' y='103' w='100' h='30'   text_color='#C6A56E' text='' font='SIMLI18'/>"
	.."<edit id='bosslevel' x='212' y='128' w='100' h='23'   text_color='#C6A56E' text='' font='system'/>"
	.."<image id='bossimage1' image='0' x='441' y='287' w='159' h='245' revmsg='false'/>"
	.."<edit id='time' x='553' y='302' w='150' h='21' revmsg='true' text_color='#E80200' text='刷新时间：15分钟' font='system'/>"
	.."<button id='btnqianwang' image='1800000150' x='497' y='437' w='84' h='32' revmsg='true' OnLButtonUp='BossWnd.cs_1' text='前   往' text_color='#C2B6A0'/>"
	.."<image id='imgtiaozhan' image='1803300017' x='595' y='423' w='85' h='61' check_point='0' revmsg='true'/>"
	.."<edit id='leveltiaonzhan' x='230' y='443' w='85' h='18' revmsg='true' text_color='#D8B696' text='最低挑战等级：' font='system'/>"
	.."<edit id='juanzhou0' x='230' y='462' w='200' h='18' revmsg='true' text_color='#D8B696' text='需要副本秘钥：' font='system'/>"
	.."<edit id='juanzhou' x='315' y='462' w='200' h='18' revmsg='true' text_color='#111111' text='' font='system'/>"
	.."<edit id='minlevel' x='315' y='443' w='85' h='18' revmsg='true' text_color='#111111' text='' font='system'/>"
	.."<edit id='cishu1' x='144' y='106' w='50' h='21'  text_color='#C2B6A0' text='（0/1）' font='system'/>"
	.."<edit id='cishu2' x='144' y='150' w='50' h='21' text_color='#C2B6A0' text='（0/1）' font='system'/>"
	.."<edit id='cishu3' x='144' y='194' w='50' h='21' text_color='#C2B6A0' text='（0/1）' font='system'/>"
	.."<edit id='cishu4' x='144' y='238' w='50' h='21' text_color='#C2B6A0' text='（0/1）' font='system'/>"
	.."<edit id='cishu5' x='144' y='282' w='50' h='21' text_color='#C2B6A0' text='（0/1）' font='system'/>"
	.."<edit id='cishu6' x='144' y='326' w='50' h='21' text_color='#C2B6A0' text='（0/1）' font='system'/>"
	.."<richedit id='buy' x='380' y='464' w='52' h='18' revmsg='true' text_color='#00FF00' text='#SELECT#购买秘钥#SELECTEND#' OnLButtonUp='BossWnd.buy' visible='false' font='system'/>"
	..""
	.."<button id='tips1' image='1804600018' x='161' y='-24' w='161' h='78' revmsg='false' visible='false' text='选择个人BOSS' text_color='#DBC300'/>	"
	.."<button id='tips2' image='1804600017' x='459' y='479' w='161' h='76' revmsg='false' visible='false' text='进入BOSS副本' text_color='#DBC300'/>	"
	.."<image id='img3' image='1804600026' x='340' y='54' w='20' h='20' check_point='0' revmsg='false' enable='false' visible='false'/>"
	..""
	.."<image id='item_magic1' x='174' y='324' w='57' h='57' image='3020110000' revmsg='true' enable='false'/>"
	.."<image id='item_magic2' x='234' y='324' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
	.."<image id='item_magic3' x='294' y='324' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
	.."<image id='item_magic4' x='354' y='324' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
	.."<image id='item_magic5' x='414' y='324' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
	.."<image id='item_magic6' x='474' y='324' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
	.."<image id='item_magic7' x='534' y='324' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
	.."<image id='item_magic8' x='594' y='324' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>"
	.."<image id='TestWndChild_3' image='1807900002' x='412' y='335' w='52' h='18' revmsg='true'/>"
	.." </dialog>"
	.."</form>"

function BossWnd.main()
	GenFormByString(ui)
end

--UI Logic Code Start
BossWnd.Wnd = 0
BossWnd.page = 1
BossWnd.totalpage =1
BossWnd.yeqian = 1
BossWnd.timelist = {} 
BossWnd.killtab ={}
BossWnd.bosslist =  {}
BossWnd.personboss = {}
BossWnd.imgboss1 =  {}
BossWnd.item1 =  {}
BossWnd.continue = 0 
BossWnd.WndList = {"BossWnd_buy","Points","BossWnd_dragon","BossWnd_tiger","BossWnd_bird","BossWnd_tortoise"}
--UI Logic Code Start
BossWnd.IsInit = false

function BossWnd.UIInit(_Handle)
	BossWnd.Wnd =_Handle
	UI:Lua_SubmitForm("ChallengeBOSS", "GetInit","")
end

function BossWnd.Init(timeList,bossList,personBoss,item_tab)
	BossWnd.timelist = timeList
	BossWnd.bosslist = bossList
	BossWnd.personboss = personBoss[1]
	BossWnd.yeqian = 0
	BossWnd.imgboss3 = personBoss[2]
	BossWnd.item_tab = item_tab
	local handle = 0 
	local _GUIHandle = 0
	if not BossWnd.IsInit then
		for i=1, 12 do
			handle = GUI:WndFindChildM(BossWnd.Wnd,"boss"..i)                   --四个页签和八个button的字体和内容
			if handle ~= 0 then 
				GUI:WndSetParam(handle,i)
				if i>4 then
					GUI:WndAddProperty(handle, tostring(i), tostring(BossWnd.timelist[i]))
					GUI:WndSetTextM(handle,BossWnd.bosslist[i-4][2])
					GUI:WndSetTextArrangeType(handle,-5,0,0,0)
				else 
					GUI:WndSetTextArrangeType(handle,0,3,0,0)
					GUI:ButtonSetStateTextColor(handle,0,MakeARGB(255, 101, 91, 74))
					GUI:ButtonSetStateTextColor(handle,2,MakeARGB(255, 237, 192, 161))
				end
			end
			if i<9 then  
				handle = GetWindow(BossWnd.Wnd,"item_magic"..i)
				if handle ~= 0 then	
					GUI:ImageSetDrawCenter(handle,true)		
					GUI:ImageSetAnimateEnable(handle, true, 150)
					GUI:ImageSetTransfrom(handle, 6500, 6500,0)	
				end	
			end
		end
		handle = GUI:WndFindWindow(BossWnd.Wnd,"bossimage1")
		if handle ~= 0 then 
			GUI:ImageSetDrawCenter(handle,true)
			GUI:ImageSetAnimate(handle, 150, 4, "")
		end
		BossWnd.IsInit = true
	end
	
	handle = GetWindow(nil,"Onboss")
	if handle ~= 0 then 
		GUI:WndClose(handle)
	end
	
	handle = GetWindow(BossWnd.Wnd,"img3")
	if handle ~= 0 then
		GUI:WndSetVisible(handle,false)
	end
	if BossWnd.timelist[1] == 0 then
		handle = GUI:WndFindChildM(BossWnd.Wnd,"boss3")                           --默认点击 -> “boss1”(可击杀) -> “boss5”	
	else
		handle = GUI:WndFindChildM(BossWnd.Wnd,"boss1")
	end

	if BossWnd.tips1 == 10 then
		handle = GUI:WndFindChildM(BossWnd.Wnd,"boss4")
	end
	BossWnd.hide(handle)
end

--[[	function BossWnd.openWnd() 
	local handle = GetWindow(nil,"BossWnd") 
	if handle ~= 0 then  
		local handle = GUI:WndFindChildM(BossWnd.Wnd,"boss3")                          
		BossWnd.hide(handle)
		WndDelEffect(BossWnd.Wnd,"boss3") 
		handle = GetWindow(BossWnd.Wnd, "tips1")
		if hand ~= 0 then
			GUI:WndSetVisible(hand,false)
		end
	end
end--]]
function BossWnd.openWnd2()
	local _handle = GetWindow(BossWnd.Wnd, "tips2") 
	if _handle ~= 0 then 
		GUI:WndSetVisible(_handle,false)
	end 
	WndDelEffect(BossWnd.Wnd,"btnqianwang") 
	if ButtonGetIsActivePageBtn(BossWnd.Wnd,"boss5") and ButtonGetIsActivePageBtn(BossWnd.Wnd,"boss3") then 
		local handle = GetWindow(nil,"BossWnd")
		if handle ~= 0 then
			UI:Lua_SubmitForm("ChallengeBOSS", "timeqianwang2",'5')   
			BossWnd.Close() 
		end
	end 
end

function BossWnd.hide(_handle) 
	local qian = tonumber(WndGetParam(_handle))

	if qian == 4 then 
		if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then
			local level = tonumber(LuaRet)
			if level < 80 then 
				BossWnd.window_msg_up(_handle,"80级即可开启BOSS积分",-80,-150,60,MakeARGB(255,255,0,0),1.5)
				return
			end
		end
	end
	if BossWnd.yeqian == qian then 
		return
	else 
		BossWnd.yeqian = qian
	end
	local Is_true = ButtonGetIsActivePageBtn(_handle)
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
				},
				{"imgtiaozhan",
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
				"minlevel",},
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
				"time",
				"boss12",
				"boss11"
				}}
	for i=1,3 do
		for j=1,#yc[i] do 
			_handle = GUI:WndFindChildM(BossWnd.Wnd,yc[i][j])                 
			if _handle ~= 0 then                           --控件显示
				GUI:WndSetVisible( _handle, true) 
			end
		end
	end
	for i=1,3 do 
		if BossWnd.yeqian ==i then 
			for j=1,#yc[i] do
				_handle = GUI:WndFindChildM(BossWnd.Wnd,yc[i][j])  
				if _handle ~= 0 then                        --控件隐藏
					GUI:WndSetVisible( _handle, false) 
				end
			end
		end
	end
	
	handle = GUI:WndFindChildM(BossWnd.Wnd,"buy")  
	if handle ~= 0 then                        --控件隐藏
		GUI:WndSetVisible(handle, false) 
	end
	
	for i=1,4 do 
		if i == BossWnd.yeqian then                                        --上面四个按钮中高亮被点击中的按钮（页签）
			ButtonSetIsActivePageBtn(BossWnd.Wnd,"boss"..i,true)
		else
			ButtonSetIsActivePageBtn(BossWnd.Wnd,"boss"..i,false)
		end
	end
	local hand = GetWindow(BossWnd.Wnd,"img3")
	if hand ~= 0 then 
		GUI:WndMoveToParentTop(hand)
	end
	
	if BossWnd.yeqian ==  4 then
		_Handle = GUI:WndFindWindow(BossWnd.Wnd,"bossimage1")     
		if _Handle ~=0 then 
			GUI:WndSetVisible(_Handle, false) 
		end
		UI:Lua_OpenWindow(0, "Points.lua")
		--WndMoveToParentTop(BossWnd.Wnd,"boss4")
		BossWnd.window_msg_close()
		return
	else 
		_Handle = GUI:WndFindWindow(BossWnd.Wnd,"bossimage1")     
		if _Handle ~=0 then 
			GUI:WndSetVisible(_Handle, true) 
		end
		for i=2 ,#BossWnd.WndList do
			_Handle = GUI:WndFindChildM(BossWnd.Wnd, BossWnd.WndList[i])
			if _Handle ~=0 then 
				GUI:WndClose(_Handle)
			end
		end
	end

	BossWnd.page=1
	BossWnd.totalpage = math.ceil(#BossWnd.bosslist/8)
	_Handle = GUI:WndFindWindow(BossWnd.Wnd,"page")     
	GUI:RichEditClear(_Handle)
	GUI:RichEditAppendString(_Handle,BossWnd.page.."/"..BossWnd.totalpage)
	

	
	for i = 5 , 12 do  
		_Handle = GUI:WndFindWindow(BossWnd.Wnd,"boss"..i)
		if BossWnd.yeqian == 3 and i<11 then   
			GUI:WndSetTextM(_Handle, ''..BossWnd.personboss[i-4][1])    --左边八个button boss名字
			_handle = GUI:WndFindChildM(BossWnd.Wnd,"cishu"..(i-4))      
			GUI:EditSetTextM(_handle,"("..BossWnd.timelist[i].."/1)") 
		elseif BossWnd.yeqian == 2 then  
			local index = BossWnd.page*8+i-12
			GUI:WndSetTextM(_Handle, ''..BossWnd.bosslist[index][2]) 
			_handle = GUI:WndFindChildM(BossWnd.Wnd,"textshuaxin")      
			GUI:EditSetTextM(_handle,"BOSS所在地图") 
		elseif BossWnd.yeqian == 1 then  
			_handle = GUI:WndFindChildM(BossWnd.Wnd,"textshuaxin")      
			GUI:EditSetTextM(_handle,"已刷新BOSS地图") 
		end 
	end
	
	BossWnd.continue = 0
	if 1 == BossWnd.yeqian then 
		UI:Lua_SubmitForm("ChallengeBOSS", "kill","1")  
	else
		handle = GUI:WndFindChildM(BossWnd.Wnd,"boss5")--默认点击 -> “boss1”(可击杀) -> “boss5”	
		--local handle = GUI:WndFindChildM(BossWnd.Wnd,"boss5")
		BossWnd.boss(handle)
	end 
end	 

function BossWnd.boss(_handle)                      --点击BOSS
	local j = tonumber(WndGetParam(_handle)) 
	local _hand = GetWindow(BossWnd.Wnd, "tips2")         --个人boss的 ”前往“  引导
	if _hand ~= 0 then
		if 5 == j and BossWnd.timelist[1] == 0 and BossWnd.yeqian == 3 then
			GUI:WndSetVisible(_hand,true)
			GUI:ButtonSetTextFont(_hand,"SIMLI18")
			GUI:WndSetTextArrangeType(_hand,0,13,0,0)
			WndAddEffect(BossWnd.Wnd,"btnqianwang",3020100700,-13,-8,100,0)
			CL:AddDelayTask("BossWnd.openWnd2()", 10000, 1)   
			BossWnd.timelist[1] = 1
		else
			GUI:WndSetVisible(_hand,false)
		end
	end
	
	_hand = GUI:WndFindWindow(BossWnd.Wnd,"pagedown")              --翻页按钮的状态禁用
	if BossWnd.page == 1 then  
		GUI:WndSetEnableM(_hand, false)
	else
		GUI:WndSetEnableM(_hand, true)
	end 
	_hand = GUI:WndFindWindow(BossWnd.Wnd,"pageup") 
	if BossWnd.page < BossWnd.totalpage then  
		GUI:WndSetEnableM(_hand, true)
	else
		GUI:WndSetEnableM(_hand, false)
	end
	
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if  Is_true and BossWnd.continue == 1 then
		return 
	end
	
	BossWnd.continue = 1
	local index = BossWnd.page*8+j-12
	if BossWnd.yeqian == 3 then 
		ImageSetImageID(BossWnd.Wnd, "bossimage1",BossWnd.imgboss3[j-4][2]) 
	elseif BossWnd.yeqian == 2 then 
		ImageSetImageID(BossWnd.Wnd, "bossimage1",BossWnd.bosslist[index][1]) 
	elseif BossWnd.yeqian == 1 then 	
		if #BossWnd.imgboss1 ~= 0 then 
			ImageSetImageID(BossWnd.Wnd, "bossimage1",BossWnd.imgboss1[index][1])  
		end
	end
	
	_handle = GUI:WndFindChildM(BossWnd.Wnd, "bossimage1")
	if _handle ~= 0 then
		GUI:WndGetSizeM(_handle)
		GUI:WndSetPosM(_handle, 420-LuaRet[1]/2, 264-LuaRet[2]/2 )
	end
		
	for i = 5 , 12 do 
		if i == j then 
			local temp = BossWnd.page*8+i-12
			ButtonSetIsActivePageBtn(BossWnd.Wnd,"boss"..i,true)               --高亮左边被点击的按钮
			if BossWnd.yeqian == 3 and i<11 then 
				_handle = GUI:WndFindChildM(BossWnd.Wnd,"boss11")                   
				GUI:WndSetVisible(_handle,false)
				_handle = GUI:WndFindChildM(BossWnd.Wnd,"boss12")                   
				GUI:WndSetVisible(_handle,false)
				_handle = GUI:WndFindChildM(BossWnd.Wnd,"bossname") 
				GUI:EditSetTextM(_handle, BossWnd.personboss[i-4][1])                --左上角boss名字字体和等级
				_handle = GUI:WndFindChildM(BossWnd.Wnd,"bosslevel")
				GUI:EditSetTextM(_handle,BossWnd.personboss[i-4][2])
				UI:Lua_SubmitForm("ChallengeBOSS", "minnum", tostring(i))
				_handle = GUI:WndFindChildM(BossWnd.Wnd,"minlevel")
				GUI:EditSetTextM(_handle,tostring(BossWnd.personboss[i-4][3]))
				if i>8 then 
					GUI:WndSetTextColorM(_handle, MakeARGB(255, 255, 0, 0))
				else
					GUI:WndSetTextColorM(_handle, MakeARGB(255, 216, 182, 150))
				end
				if i>7 then 
					_handle = GUI:WndFindChildM(BossWnd.Wnd,"juanzhou")
					GUI:WndSetVisible( _handle, true) 
					_handle = GUI:WndFindChildM(BossWnd.Wnd,"juanzhou0")
					GUI:WndSetVisible( _handle, true) 
				else 
					_handle = GUI:WndFindChildM(BossWnd.Wnd,"juanzhou")
					GUI:WndSetVisible( _handle, false) 
					_handle = GUI:WndFindChildM(BossWnd.Wnd,"juanzhou0")
					GUI:WndSetVisible( _handle, false) 
				end
				if BossWnd.timelist[i] == 0 then                                              --显示“已挑战”  和“前往”
					_handle = GUI:WndFindChildM(BossWnd.Wnd,"imgtiaozhan")
					GUI:WndSetVisible( _handle,false)
					_handle = GUI:WndFindChildM(BossWnd.Wnd,"btnqianwang")
					GUI:WndSetVisible( _handle,true)
				elseif BossWnd.timelist[i] == 1 then 
					_handle = GUI:WndFindChildM(BossWnd.Wnd,"imgtiaozhan")
					GUI:WndSetVisible( _handle,true)
					_handle = GUI:WndFindChildM(BossWnd.Wnd,"btnqianwang")
					GUI:WndSetVisible( _handle,false)
				end 
				for k=1,8 do 
					_Handle = GUI:WndFindChildM(BossWnd.Wnd,"itembutton"..k)                 --物品框显示物品信息
					if _Handle ~=0 then 
						RDItemCtrlSetGUIDataByKeyName(_Handle,BossWnd.imgboss3[i-4][k+2], 1, false)
					end
				end
			end
			
			if BossWnd.yeqian == 2 then 
				_handle = GUI:WndFindChildM(BossWnd.Wnd,"time")   
				GUI:EditSetTextM(_handle,"刷新时间："..BossWnd.bosslist[temp][4])        --显示刷新时间
				_handle = GUI:WndFindChildM(BossWnd.Wnd,"bossname") 
				GUI:EditSetTextM(_handle, BossWnd.bosslist[temp][2])                --左上角boss名字字体和等级
				_handle = GUI:WndFindChildM(BossWnd.Wnd,"bosslevel")
				GUI:EditSetTextM(_handle,BossWnd.bosslist[temp][3])
				for i=1,3 do 
					_Handle = GUI:WndFindWindow(BossWnd.Wnd,"cs"..i)  
					GUI:WndSetVisible(_Handle,true)
					if (#BossWnd.bosslist[temp]-4) >= i then 
						GUI:RichEditClear(_Handle)
						GUI:RichEditAppendString(_Handle,BossWnd.bosslist[temp][4+i])
					else 
						GUI:WndSetVisible(_Handle,false)
					end
				end
				for i=1,8 do 
					_Handle = GUI:WndFindChildM(BossWnd.Wnd,"itembutton"..i)                 --物品框显示物品信息
					if _Handle ~=0 then 
						RDItemCtrlSetGUIDataByKeyName(_Handle,BossWnd.item_tab[temp][i], 1, false)
					end
				end
			end	
			if BossWnd.yeqian == 1 and #BossWnd.killtab >= temp then 
				local _hand = GUI:WndFindChildM(BossWnd.Wnd,"bossname") 
				GUI:EditSetTextM(_hand,BossWnd.killtab[temp][#BossWnd.killtab[temp]])                --左上角boss名字字体和等级
				for k=1,#BossWnd.bosslist do 
					if string.find(BossWnd.bosslist[k][2], BossWnd.killtab[temp][#BossWnd.killtab[temp]]) ~= nil then 
						_hand = GUI:WndFindChildM(BossWnd.Wnd,"bosslevel")
						GUI:EditSetTextM(_hand,BossWnd.bosslist[temp][3])
					end
				end 
				for s=1,3 do 
					_Handle = GUI:WndFindWindow(BossWnd.Wnd,"cs"..s)  
					if s <= #BossWnd.killtab[temp]-1  then 
						GUI:WndSetVisible(_Handle,true)
						GUI:RichEditClear(_Handle)  
						GUI:RichEditAppendString(_Handle,"#SELECT#"..BossWnd.killtab[temp][s].."（传）#SELECTEND#")
					else 
						GUI:WndSetVisible(_Handle,false)
					end
				end
				for i=1,8 do 
					_Handle = GUI:WndFindChildM(BossWnd.Wnd,"itembutton"..i)                 --物品框显示物品信息
					if _Handle ~=0 then 
						RDItemCtrlSetGUIDataByKeyName(_Handle,BossWnd.item1[temp][i], 1, false)
					end
				end
			end
		else
			ButtonSetIsActivePageBtn(BossWnd.Wnd,"boss"..i,false)
		end
		
		local handle = GUI:WndFindChildM(BossWnd.Wnd,"boss"..i) 
		if BossWnd.yeqian == 2 then                     --在各个页签中左边的八个button的信息显示
			GUI:WndSetVisible(handle,true)
		elseif BossWnd.yeqian == 3 then 
			if  i<11 then  
				GUI:WndSetVisible(handle,true)
			else 
				GUI:WndSetVisible(handle,false)
			end
		end
	end
	
end

function BossWnd.pagedown(_Handle)
	BossWnd.continue = 0
	if BossWnd.page >1 then 
		BossWnd.page = BossWnd.page-1
		BossWnd.update(_Handle)
	end
end

function BossWnd.pageup(_Handle)
	BossWnd.continue = 0
	if  BossWnd.page<BossWnd.totalpage then 
		BossWnd.page = BossWnd.page+1
		BossWnd.update(_Handle)
	end
end

function BossWnd.update(_Handle)
	_Handle = GUI:WndFindWindow(BossWnd.Wnd,"page")     
	GUI:RichEditClear(_Handle)
	GUI:RichEditAppendString(_Handle,BossWnd.page.."/"..BossWnd.totalpage)
	
	for i=5,12 do 
		local index = BossWnd.page*8+i-12
		if BossWnd.yeqian == 1 then  
			_Handle = GUI:WndFindChildM(BossWnd.Wnd,"boss"..i) 
			if index <= #BossWnd.killtab and _Handle ~= 0  then    
				GUI:WndSetVisible(_Handle,true)         
				GUI:WndSetTextM(_Handle,BossWnd.killtab[index][#BossWnd.killtab[index]])
			else
				GUI:WndSetVisible(_Handle,false)
			end
		elseif BossWnd.yeqian == 2 then  
			_Handle = GUI:WndFindChildM(BossWnd.Wnd,"boss"..i) 
			if _Handle ~= 0 then 
				GUI:WndSetTextM(_Handle, BossWnd.bosslist[index][2]) 
			end
		end
	end
	_Handle = GUI:WndFindChildM(BossWnd.Wnd,"boss5")
	BossWnd.boss(_Handle)
end

function BossWnd.cs_1()                                --button"前往"
	for i=5,10 do 
		local handle = GUI:WndFindChildM(BossWnd.Wnd,"boss"..i)                      
		if GUI:ButtonGetIsActivePageBtn(handle) and BossWnd.yeqian==3  then                                --获取高亮中的按钮    
			UI:Lua_SubmitForm("ChallengeBOSS", "timeqianwang2", ''..i)   
			break
		end
	end
end

function BossWnd.cs(_handle)
	if BossWnd.yeqian == 2 then	return end                                     
	local txt = GUI:RichEditGetAllString(_handle) 
	UI:Lua_SubmitForm("ChallengeBOSS", "cs", txt)
end

function BossWnd.minnum(index,num,reinLevel,level)  
	
	local _handle = GUI:WndFindChildM(BossWnd.Wnd,"juanzhou")
	local _buyhandle = GUI:WndFindChildM(BossWnd.Wnd,"buy")
	if _buyhandle ~= 0 then 
		GUI:WndSetVisible(_buyhandle,false)
	end
	if (index-7)> 0 and num < (index-7) then                      
		GUI:EditSetTextM(_handle,(index-7).."（拥有"..num.."）")
		GUI:WndSetTextColorM(_handle,MakeARGB(255,255,0,0))
		GUI:WndSetVisible(_buyhandle,true)
	else
		GUI:EditSetTextM(_handle,(index-7).."（拥有"..num.."）")
		GUI:WndSetTextColorM(_handle,MakeARGB(255,216,182,150))
	end
	_handle = GUI:WndFindChildM(BossWnd.Wnd,"minlevel")
	if tonumber(index) == 9 then 
		if tonumber(reinLevel) >= 1 then 
			GUI:WndSetTextColorM(_handle,MakeARGB(255,216,182,150))
		else 
			GUI:WndSetTextColorM(_handle,MakeARGB(255,255,0,0))
		end
	elseif index == 10 then 
		if tonumber(reinLevel) >= 1 then 
			GUI:WndSetTextColorM(_handle,MakeARGB(255,216,182,150))
		else 
			GUI:WndSetTextColorM(_handle,MakeARGB(255,255,0,0))
		end	
	else 
		if level < BossWnd.personboss[index-4][3] then 
			GUI:WndSetTextColorM(_handle,MakeARGB(255,255,0,0))
		else 
			GUI:WndSetTextColorM(_handle,MakeARGB(255,216,182,150))
		end
	end
end

function BossWnd.buy(handle)
	
	if not GUI:WndGetVisible(handle) then 
		return
	end
	for i=5,10 do 
		handle = GUI:WndFindChildM(BossWnd.Wnd,"boss"..i)    
		if GUI:ButtonGetIsActivePageBtn(handle) and BossWnd.yeqian==3  then                                --获取高亮中的按钮    
			if handle ~= 0 then 
				UI:Lua_SubmitForm("ChallengeBOSS", "buy",''..i )
			end
			break
		end
	end
	
end

function BossWnd.kill(tab_can)
	BossWnd.imgboss1 ={}
	BossWnd.item1 ={}
	for i=1 , #tab_can do 
		for j=1,#BossWnd.bosslist do 
			if tab_can[i][#tab_can[i]] == BossWnd.bosslist[j][2] then  
				BossWnd.imgboss1[#BossWnd.imgboss1+1]= BossWnd.bosslist[j]
				BossWnd.item1[#BossWnd.item1+1]= BossWnd.item_tab[j]
			end
		end
	end
	BossWnd.page = 1
	BossWnd.killtab = tab_can
	BossWnd.totalpage = math.ceil(#tab_can/8)
	if BossWnd.totalpage==0 then 
		BossWnd.totalpage=1
	end
	local boss0_tab ={"cs1","cs2","cs3","bossimage1"}
	if #BossWnd.imgboss1 == 0 then    --怪物全清
		for i=1,#boss0_tab do
			local _handle = GUI:WndFindChildM(BossWnd.Wnd,boss0_tab[i])  
			if _handle ~= 0  then                        --控件隐藏
				GUI:WndSetVisible( _handle, false) 
			end
		end
		for i=1,8 do
			local _handle = GUI:WndFindChildM(BossWnd.Wnd,"itembutton"..i)  
			if _handle ~= 0  then                   
				GUI:ItemCtrlClearItemData(_handle)
			end
		end
		_handle = GUI:WndFindChildM(BossWnd.Wnd,"bossname") 
		GUI:EditSetTextM(_handle,"")                --左上角boss名字字体和等级
		_handle = GUI:WndFindChildM(BossWnd.Wnd,"bosslevel")
		GUI:EditSetTextM(_handle,"")
	end
	
	BossWnd.update(BossWnd.Wnd)
	
end

function BossWnd.MsgPrompt(msg)
	local handle = GUI:WndFindWindow(BossWnd.Wnd,"btnqianwang")
	local color = MakeARGB(255,255,0,0)
	if handle ~= 0 then
		BossWnd.window_msg_up(handle, msg, -73, -19, 30, color, 2)
	end
end

function BossWnd.Close() 
	local handle = GetWindow(nil,"BossWnd") 
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

function BossWnd.numVisible(num) 
	local hand = GetWindow(BossWnd.Wnd,"img3")
	if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then
		local level = tonumber(LuaRet)
		if level < 80 then
			return
		end
	end
	if hand ~= 0 then 
		if tonumber(num) == 1 then 
			GUI:WndSetVisible(hand, true) 
			GUI:WndMoveToParentTop(hand)
		else 
			GUI:WndSetVisible(hand, false)
		end
	end 
end
function BossWnd.window_msg_up(handle,str,x,y,h,color,times)
	local fh = WndGetParentM(handle)
	GUI:WndGetPosM(handle)
	local posX = LuaRet[1]
	local posY = LuaRet[2] 
	GUI:WndGetPosM(BossWnd.Wnd)
	posX = LuaRet[1]+posX-tonumber(x)-150
	posY = LuaRet[2]+posY-tonumber(y)
	local endY = posY - tonumber(h)
	local _GUIHandle = GUI:EditCreate(0, "msgmsg", posX, posY, 230, 25)
	if _GUIHandle ~= 0 then 	
		GUI:EditSetTextColor(_GUIHandle, color)
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndMoveToParentTop(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		EditSetText(_GUIHandle,nil,str)
		CL:AddDelayTask("GUI:WndClose(".._GUIHandle..")",times*500, 1)
		GUI:WndGetPosM(_GUIHandle)
		GUI:WndSetPosM(_GUIHandle, LuaRet[1], endY)
	end	
end	 

function BossWnd.window_msg_close()
	local handle = GetWindow(nil, "msgmsg")
	if handle ~= 0 then 
		GUI:WndSetVisible(handle,false)
	end
end

BossWnd.main()




