Screen ={}

--[[local ui = "<form> <dialog OnInit='Screen.UIInit' id='Screen' image='0' x='2000' y='175' w='145' h='200' revmsg='true' OnMouseIn='Screen.OnMouseIn' OnMouseOut='Screen.OnMouseOut'>"
	.."	<image id='ContentBack' image='1805000007,1805000009,1805000013,1805000015,1805000008,1805000014,1805000010,1805000012,1805000011' x='0' y='-1' w='145' h='208' check_point='0' revmsg='true'/>"
	
	.."	<check id='check' image='1800000176' x='10' y='5' w='21' h='21' OnCheckChange='Screen.Clickall' param='0' checked='true' auto_change='false' revmsg='true' text='显示下列所有' text_color='#C2B6A0'/>"
	.."	<check id='ShowPlayerName' image='1800000176' x='10' y='30' w='21' h='21' OnCheckChange='Screen.ClickEdit' param='1' checked='true' auto_change='false' revmsg='true' text='显示玩家名字' text_color='#C2B6A0'/>"
	.."	<check id='ShowSysMsg' image='1800000176' x='10' y='55' w='21' h='21' OnCheckChange='Screen.ClickEdit' param='2' checked='true' auto_change='false' revmsg='true' text='显示系统消息' text_color='#C2B6A0'/>"
	.."	<check id='ShowMonster' image='1800000176' x='10' y='80' w='21' h='21' OnCheckChange='Screen.ClickEdit' param='3' checked='true' auto_change='false' revmsg='true' text='显示怪物尸体' text_color='#C2B6A0'/>"
	.."	<check id='ShowTip' image='1800000176' x='10' y='105' w='21' h='21' OnCheckChange='Screen.ClickEdit' param='4' checked='true' auto_change='false' revmsg='true' text='显示装备比较Tip' text_color='#C2B6A0'/>"
	.."	<check id='ShowHName' image='1800000176' x='10' y='130' w='21' h='21' OnCheckChange='Screen.ClickEdit' param='5' checked='true' auto_change='false' revmsg='true' text='显示行会名称' text_color='#C2B6A0'/>"
	.."	<check id='ShowCName' image='1800000176' x='10' y='155' w='21' h='21' OnCheckChange='Screen.ClickEdit' param='6' checked='true' auto_change='false' revmsg='true' text='显示玩家称号' text_color='#C2B6A0'/>"
	.."	<check id='Showfengci' image='1800000176' x='10' y='180' w='21' h='21' OnCheckChange='Screen.ClickEdit' param='7' checked='true' auto_change='false' revmsg='true' text='显示风刺剑法' text_color='#C2B6A0'/>"
	
	.." </dialog>"
	.."</form>"--]]
function Screen.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUIWndCreateWnd(_Parent,"Screen",0,2000,135)
	if _Parent ~= 0 then
		GUIWndSetSizeM(_Parent,16, 16)
		GUIWndRegistScript(_Parent, 1011, "Screen.OnMouseIn")
		GUIWndRegistScript(_Parent, 1012, "Screen.OnMouseOut")
	end
	
	
	_GUIHandle = GUIImageCreate(_Parent,"ContentBack",0,0,-1)
	if _GUIHandle ~= 0 then
	
		GUIImageSetAroundImage(_GUIHandle,1805000007,1805000009,1805000013,1805000015,1805000008,1805000014,1805000010,1805000012,1805000011)
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,145, 208)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUICheckBoxCreate(_Parent,"check",1800000176,"显示下列所有",10,5)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1200, "Screen.Clickall")
		GUIWndSetTextM(_GUIHandle,"显示下列所有")
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,98, 21)
		GUIWndSetTextColorM(_GUIHandle, 4290950816)
		GUICheckBoxSetCheck(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUICheckBoxCreate(_Parent,"ShowPlayerName",1800000176,"显示玩家名字",10,30)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1200, "Screen.ClickEdit")
		GUIWndSetTextM(_GUIHandle,"显示玩家名字")
		GUIWndSetParam(_GUIHandle, 1)
		GUIWndSetSizeM(_GUIHandle,98, 21)
		GUIWndSetTextColorM(_GUIHandle, 4290950816)
		GUICheckBoxSetCheck(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUICheckBoxCreate(_Parent,"ShowSysMsg",1800000176,"显示系统消息",10,55)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1200, "Screen.ClickEdit")
		GUIWndSetTextM(_GUIHandle,"显示系统消息")
		GUIWndSetParam(_GUIHandle, 2)
		GUIWndSetSizeM(_GUIHandle,98, 21)
		GUIWndSetTextColorM(_GUIHandle, 4290950816)
		GUICheckBoxSetCheck(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUICheckBoxCreate(_Parent,"ShowMonster",1800000176,"显示怪物尸体",10,80)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1200, "Screen.ClickEdit")
		GUIWndSetTextM(_GUIHandle,"显示怪物尸体")
		GUIWndSetParam(_GUIHandle, 3)
		GUIWndSetSizeM(_GUIHandle,98, 21)
		GUIWndSetTextColorM(_GUIHandle, 4290950816)
		GUICheckBoxSetCheck(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUICheckBoxCreate(_Parent,"ShowTip",1800000176,"显示装备比较Tip",10,105)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1200, "Screen.ClickEdit")
		GUIWndSetTextM(_GUIHandle,"显示装备比较Tip")
		GUIWndSetParam(_GUIHandle, 4)
		GUIWndSetSizeM(_GUIHandle,116, 21)
		GUIWndSetTextColorM(_GUIHandle, 4290950816)
		GUICheckBoxSetCheck(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUICheckBoxCreate(_Parent,"ShowHName",1800000176,"显示行会名称",10,130)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1200, "Screen.ClickEdit")
		GUIWndSetTextM(_GUIHandle,"显示行会名称")
		GUIWndSetParam(_GUIHandle, 5)
		GUIWndSetSizeM(_GUIHandle,98, 21)
		GUIWndSetTextColorM(_GUIHandle, 4290950816)
		GUICheckBoxSetCheck(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUICheckBoxCreate(_Parent,"ShowCName",1800000176,"显示玩家称号",10,155)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1200, "Screen.ClickEdit")
		GUIWndSetTextM(_GUIHandle,"显示玩家称号")
		GUIWndSetParam(_GUIHandle, 6)
		GUIWndSetSizeM(_GUIHandle,98, 21)
		GUIWndSetTextColorM(_GUIHandle, 4290950816)
		GUICheckBoxSetCheck(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUICheckBoxCreate(_Parent,"Showfengci",1800000176,"显示风刺剑法",10,180)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1200, "Screen.ClickEdit")
		GUIWndSetTextM(_GUIHandle,"显示风刺剑法")
		GUIWndSetParam(_GUIHandle, 7)
		GUIWndSetSizeM(_GUIHandle,98, 21)
		GUIWndSetTextColorM(_GUIHandle, 4290950816)
		GUICheckBoxSetCheck(_GUIHandle, true)
	end

	Screen.UIInit(_Parent)
end

--[[	local hand = GetWindow(nil,"Screen")
	if hand ~= 0 then
		return
		--GUIWndClose(hand)
	end
	GenFormByString(ui)--]]


Screen.Wnd = 0
Screen.move = 0
Screen.tab = {SHOW_PLAYER_NAME,SHOW_SYS_INFO,SHOW_MONSTERCORPSE,TIP_EQUIP_COMPARE,SHOW_FAMILYNAME,SHOW_TITLE,KEEP_FENGCI}
Screen.handle = {"ShowPlayerName","ShowSysMsg","ShowMonster","ShowTip","ShowHName","ShowCName","Showfengci"}

--UI Logic Code Start

function Screen.UIInit(_Handle)
	Screen.Wnd = _Handle
	local width = CLGetScreenWidth()
	GUIWndSetPosM(_Handle, width-135, 135) 
	--Screen.move = 1
	local _handle = GetWindow(nil,"Screen,check")
	GUICheckBoxSetCheck(_handle,LittleMap.torf)
	for i = 1 , #Screen.tab do 
		local _Istrue = false
		if CLGetBasicSetting(Screen.tab[i]) then
			_Istrue = as3.tolua(LuaRet)
		end
		_handle = GetWindow(nil,"Screen,"..Screen.handle[i])
		GUICheckBoxSetCheck(_handle,_Istrue)
	end
end

function Screen.ClickEdit(_Handle)
	local index = GUIWndGetParam(_Handle)
	local _Istrue = GUICheckBoxGetCheck(_Handle)
	CLChangeBasicSetting(Screen.tab[index],_Istrue)
	
	local count = 0
	for i = 1 , #Screen.handle do 
		local _handle = GetWindow(nil,"Screen,"..Screen.handle[i])
		CheckBoxHandle = GUICheckBoxGetCheck(_handle)
		if CheckBoxHandle then 
			count = count + 1
		end
	end
	local _hand = GetWindow(nil,"Screen,check")
	if count == 7 then 
		GUICheckBoxSetCheck(_hand,true)
		LittleMap.torf = true
	else 
		GUICheckBoxSetCheck(_hand,false)
		LittleMap.torf = false
	end
end

function Screen.Clickall()
	
	LittleMap.torf = not LittleMap.torf 
	local _handle = GetWindow(nil,"Screen,check")
	GUICheckBoxSetCheck(_handle,LittleMap.torf)
	for i = 1 , #Screen.tab do
		_handle = GetWindow(nil,"Screen,"..Screen.handle[i])
		GUICheckBoxSetCheck(_handle,LittleMap.torf)
		CLChangeBasicSetting(Screen.tab[i],LittleMap.torf)
	end
	
end 

function Screen.closed()
	
	if Screen.move == 0 and LittleMap.closed == 0 then 
		local hand = GetWindow(nil,"Screen")
		if hand ~= 0 then
			GUIWndClose(hand)
		end
	end
	
end

function Screen.OnMouseIn()
	Screen.move = 1
end

function Screen.OnMouseOut()
	Screen.move = 0
	Screen.closed()
end

Screen.main()