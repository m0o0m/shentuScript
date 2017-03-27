Recycle = {}
 --default_parent='Package' OnClose='Recycle.OnClose'
local ui = "<form> <dialog OnInit='Recycle.UIInit' id='Recycle' image='1806100012' x='278' y='195' w='384' h='505' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='TitleImg' image='1805500012' x='131' y='11' w='126' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='TestWndChild_0' image='1806100013' x='41' y='136' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_1' image='1806100013' x='43' y='399' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<richedit id='miaoshu' x='53' y='72' w='280' h='42' text='    可以回收未镶嵌、未强化以及未蕴魂的装备，获得海量经验、护符印记和绑定金币，点击链接回收相应装备' text_color='#7B6B58' revmsg='true' enable='false' font='system'/>"
	.."	<button id='closeBtn' image='1805900080' x='328' y='3' w='34' h='38' OnLButtonClick='Recycle.Close' revmsg='true'/>"
--[[	.."	<edit id='richedit1' x='73' y='164' w='50' h='20' canedit='false' revmsg='true'  text_color='#E4C19F' text='战士' font='system'/>"
	.."	<edit id='richedit2' x='178' y='164' w='50' h='20' canedit='false' revmsg='true' param='2' text_color='#E4C19F' text='法师' font='system'/>"
	.."	<edit id='richedit3' x='283' y='164' w='50' h='20' canedit='false' revmsg='true'  text_color='#E4C19F' text='道士' font='system'/>"
	--]]
	.."	<image id='img1' image='1800600027' x='67' y='164' w='299' h='2' check_point='0' param='1' revmsg='false'/>"
	.."	<image id='img2' image='1800600028' x='172' y='164' w='299' h='2' check_point='0' param='2' revmsg='false'/>"
	.."	<image id='img3' image='1800600029' x='277' y='164' w='299' h='2' check_point='0' param='3' revmsg='false'/>"
	
	.."	<richedit id='richedit11' x='53' y='209' w='100' h='20' text='70级以下（0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit' revmsg='true' param='1' font='system'/>"
	.."	<richedit id='richedit12' x='158' y='209' w='100' h='20' text='70级以下（0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit' revmsg='true' param='2' font='system'/>"
	.."	<richedit id='richedit13' x='263' y='209' w='100' h='20' text='70级以下（0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit' revmsg='true' param='3' font='system'/>"
	.."	<richedit id='richedit21' x='53' y='244' w='100' h='20' text='70级装备（0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit' revmsg='true' param='1' font='system'/>"
	.."	<richedit id='richedit22' x='158' y='244' w='100' h='20' text='70级装备（0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit' revmsg='true' param='2' font='system'/>"
	.."	<richedit id='richedit23' x='263' y='244' w='100' h='20' text='70级装备（0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit' revmsg='true' param='3' font='system'/>"
	.."	<richedit id='richedit31' x='53' y='279' w='100' h='20' text='80级装备（0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit' revmsg='true' param='1' font='system'/>"
	.."	<richedit id='richedit32' x='158' y='279' w='100' h='20' text='80级装备（0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit' revmsg='true' param='2' font='system'/>"
	.."	<richedit id='richedit33' x='263' y='279' w='100' h='20' text='80级装备（0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit' revmsg='true' param='3' font='system'/>"
	.."	<richedit id='richedit41' x='53' y='314' w='100' h='20' text='转1装备 （0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit' revmsg='true' param='1' font='system'/>"
	.."	<richedit id='richedit42' x='158' y='314' w='100' h='20' text='转1装备 （0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit' revmsg='true' param='2' font='system'/>"
	.."	<richedit id='richedit43' x='263' y='314' w='100' h='20' text='转1装备 （0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit' revmsg='true' param='3' font='system'/>"
	.."	<richedit id='richedit51' x='53' y='349' w='100' h='20' text='转2装备 （0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit' revmsg='true' param='1' font='system'/>"
	.."	<richedit id='richedit52' x='158' y='349' w='100' h='20' text='转2装备 （0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit' revmsg='true' param='2' font='system'/>"
	.."	<richedit id='richedit53' x='263' y='349' w='100' h='20' text='转2装备 （0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit' revmsg='true' param='3' font='system'/>"
	.."	<richedit id='richedit19' x='137' y='413' w='179' h='20' text='回收全部装备（0）' text_color='#808080' OnLButtonUp='Recycle.ClickEdit1' revmsg='true' param='1' font='system'/>"
	.."	<richedit id='richedit24' x='136' y='448' w='224' h='20' text='回收全部可得经验：0' revmsg='true' text_color='#FF9900' param='1' font='system'/>"
	.."	<button id='visible11' image='1804600019' x='271' y='397' w='188' h='50' text='  点击回收装备' visible='false' text_color='#F6E272' revmsg='false'/>"
	.."	<button id='visible01' image='1804600019' x='378' y='-3' w='188' h='50' text=' 关闭' visible='false' text_color='#F6E272' revmsg='false'/>"
	.." </dialog>"
	.."</form>"

function Recycle.main()
	if GetWindow("","Recycle") ~= 0 then
		Recycle.Close()
	else
		GenFormByString(ui)
	end
end

Recycle.count = {{{},{},{}},
				{{},{},{}},
				{{},{},{}},
				{{},{},{}},
				{{},{},{}}}
Recycle.WndHandle = 0
Recycle.param = 0 
Recycle.Property = 0 
Recycle.tab1 = {"70级以下","70级装备","80级装备","转1装备 ","转2装备 "}
Recycle.count1 = {}
Recycle.clink = 0
Recycle.first = 1 
Recycle.guid = 0
Recycle.out_tab = {}

function Recycle.UIInit(_Handle)
 
	local _ScreenWidth = CLGetScreenWidth()
	if _Handle ~= 0 then 
		UI:Lua_GetScreenSize()
		local _SW = as3.tolua(LuaRet[1])
		local _SH = as3.tolua(LuaRet[2])
		GUIWndSetPosM( _Handle, _SW/2+230, _SH/2-253)
	end
	
	local packageHandle = GetWindow("", "Package") 
	if packageHandle == 0 then
		CLOnOpenPakage()
		--reset_two_relationWnd(packageHandle, _Handle)
	end
	--RegisterUIEvent(LUA_EVENT_CLOSEPACKAGEGUI, "", "Recycle.Close") 
	RegisterUIEvent(LUA_EVENT_ONEQUIPMENT, "穿装备", "Recycle.onequipment")
	RegisterUIEvent(LUA_EVENT_OFFEQUIPMENT, "脱装备", "Recycle.offequipment")
	RegisterUIEvent(LUA_EVENT_ONDROPITEM, "扔装备", "Recycle.ondrop")
	RegisterUIEvent(LUA_EVENT_ONADDITEM, "捡装备", "Recycle.onadditem")
	Recycle.WndHandle = _Handle
--[[	local titlehandle = GUIWndFindChildM(_Handle,"title")
	if titlehandle ~= 0 then 
		GUIEditSetFontM(titlehandle,"SIMLI18")
		GUIWndSetTextColorM(titlehandle, CLMakeARGB(255, 198, 165, 110))
	end--]]
	--GUIWndAddTimer(_Handle, 8686, 1000, "UI:Lua_SubmitForm(\"物品回收员表单\", \"Distanced\", \"\")")
	UI:Lua_SubmitForm("物品回收员表单", "main2", "")
end

function Recycle.mainUI(levellist,first)
	Recycle.count = {{{},{},{}},
			{{},{},{}},
			{{},{},{}},
			{{},{},{}},
			{{},{},{}}}
	Recycle.out_tab = {}
	Recycle.count1 = {}
	Recycle.first = tonumber(first)
	if tonumber(Recycle.first) == 0 then  
		local hand = GUIWndFindChildM(Recycle.WndHandle,"visible11")
		if hand ~= 0 then 
			GUIWndSetVisible(hand,true)
			GUIButtonSetTextFont(hand,"SIMLI18")
			Recycle.itemTweenUp11(hand)
		end   
	end
	for i=1,#levellist do 
		for j=1 , #levellist[i] do
			local Temp = CLGetItemTemplateHandleByGUID(levellist[i][j])
			if as3.tolua(CLCompareBetter(levellist[i][j])) then
				Recycle.out_tab[#Recycle.out_tab+1]=levellist[i][j]
			else
				if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_JOB) then
					if as3.tolua(LuaRet) ~= nil then
						local job = tonumber(as3.tolua(LuaRet))	
						Recycle.count1[#Recycle.count1+1]= levellist[i][j]
						if job ~= 0 then 
							Recycle.count[i][job][#Recycle.count[i][job]+1] = levellist[i][j]
						elseif CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_KEYNAME) then
							local keyname = tostring(as3.tolua(LuaRet))
							if string.find(keyname,"乌木剑") or  string.find(keyname,"粗布")  then 
								if CLGetPlayerSelfPropBase(ROLE_PROP_JOB) then 
									local joo = tonumber(as3.tolua(LuaRet))
									Recycle.count[i][joo][#Recycle.count[i][joo]+1] = levellist[i][j]
								end
							end
						end
					end
				end
			end
		end
	end
	Recycle.update_color() 
	--CLAddDelayTask("Recycle.ScriptHandle()", 1000, 20)
end

function Recycle.update_color() 
	for i = 1 , 5 do 
		for j = 1 , 3 do  
			local _GUIHandle = GUIWndFindWindow(Recycle.WndHandle,"richedit"..i..j)
			GUIWndAddProperty(_GUIHandle, j, i)
			if #Recycle.count[i][j]>0 then                                            --如果某个table不为0，则改变颜色和点击状态 
				GUIRichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
				GUIRichEditClear(_GUIHandle)
				GUIRichEditAppendString(_GUIHandle,"#SELECT#"..Recycle.tab1[i].."（"..#Recycle.count[i][j].."）".."#SELECTEND#") 
			else 
				GUIRichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 128, 128, 128))
				GUIRichEditClear(_GUIHandle)
				GUIRichEditAppendString(_GUIHandle,Recycle.tab1[i].."（0）") 
			end
		end
	end
	UI:Lua_SubmitForm("物品回收员表单", "hs_exp", serialize(Recycle.out_tab))
end
	
function Recycle.ScriptHandle() 
	UI:Lua_SubmitForm("物品回收员表单", "Scrip", Recycle.clink.."#"..serialize(Recycle.out_tab))
end

function Recycle.Clean()
	CLSetLuaGlobal("DestroyBagItem", 0)	--物品消失特效关闭
	if tonumber(Recycle.first) == 0 then 
		local hand = GUIWndFindChildM(Recycle.WndHandle,"visible11")
		if hand ~= 0 then 
			GUIWndSetVisible(hand,false)
		end 
		local hand = GUIWndFindChildM(Recycle.WndHandle,"visible01")
		if hand ~= 0 then 
			GUIWndSetVisible(hand,true)
			GUIButtonSetTextFont(hand,"SIMLI18")
			Recycle.itemTweenUp01(hand)
		end 
	end
	Recycle.clink = 1
	if Recycle.Property==0 and Recycle.param==0 then 
		local _Handle = GUIWndFindWindow(Recycle.WndHandle,"richedit19")
		GUIRichEditClear(_Handle)
		GUIRichEditSetDefaultTextColor(_Handle, MakeARGB(255, 128, 128, 128))
		GUIRichEditAppendString(_Handle,"回收全部装备（0）")
		_Handle = GUIWndFindWindow(Recycle.WndHandle,"richedit24")
		GUIRichEditClear(_Handle)
		GUIRichEditAppendString(_Handle,"回收全部可得经验：0")
		for i = 5 , 1,-1 do 
			for j = 3 , 1,-1 do  
				Recycle.count[i][j] = {}
				_Handle = GUIWndFindWindow(Recycle.WndHandle,"richedit"..i..j)
				GUIRichEditClear(_Handle)
				GUIRichEditSetDefaultTextColor(_Handle, MakeARGB(255, 128, 128, 128))
				GUIRichEditAppendString(_Handle,Recycle.tab1[i].."（0）")
			end
		end
	else 
		local _GUIHandle = GUIWndFindWindow(Recycle.WndHandle,"richedit"..Recycle.Property..Recycle.param)
		GUIRichEditClear(_GUIHandle)
		if tonumber(#Recycle.count[Recycle.Property][Recycle.param]) == 0 then 
			GUIRichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 128, 128, 128))
			GUIRichEditAppendString(_GUIHandle,Recycle.tab1[Recycle.Property].."（0）")
		else 
			GUIRichEditAppendString(_GUIHandle,"#SELECT#"..Recycle.tab1[Recycle.Property].."（"..#Recycle.count[Recycle.Property][Recycle.param].."）#SELECTEND#")
		end
		UI:Lua_SubmitForm("物品回收员表单", "hs_exp", "")
	end
	
end

function Recycle.update(score,num)
	
	local _UIHandle = GUIWndFindWindow(Recycle.WndHandle,"richedit19")
	GUIRichEditClear(_UIHandle)
	if num == 0 then 
		GUIRichEditSetDefaultTextColor(_UIHandle, MakeARGB(255, 128, 128, 128))
		GUIRichEditAppendString(_UIHandle,"回收全部装备（0）")
	else
		GUIRichEditSetDefaultTextColor(_UIHandle,MakeARGB(255, 0, 204, 51))
		GUIRichEditAppendString(_UIHandle,"#SELECT#回收全部装备".."（"..num.."）".."#SELECTEND#")
	end
	local _GUIHandle = GUIWndFindWindow(Recycle.WndHandle,"richedit24")
	GUIRichEditClear(_GUIHandle)
	GUIRichEditAppendString(_GUIHandle,"回收全部可得经验："..score)	
	
end

function Recycle.ClickEdit(_Handle)
	
	local job =tonumber(WndGetParam(_Handle))
	local level = tonumber(GUIWndGetProperty(_Handle, job))
	Recycle.param = job 
	Recycle.Property = level
	if #Recycle.count[level][job] >=1 then 
		if #Recycle.count[level][job] > 46 then 
			local tab_temp = {}
			for i=46,1,-1 do 
				tab_temp[i] = Recycle.count[level][job][i]
				table.remove(Recycle.count[level][job],i)
			end
			UI:Lua_SubmitForm("物品回收员表单", "hs", serialize(tab_temp))
		else 
			UI:Lua_SubmitForm("物品回收员表单", "hs", serialize(Recycle.count[level][job]))
			for i=#Recycle.count[level][job],1,-1 do 
				table.remove(Recycle.count[level][job],i)
			end
		end 
		CLSetLuaGlobal("DestroyBagItem", 1073300000) --物品消失特效开启
	end

end
function Recycle.ClickEdit1(_Handle)
	Recycle.param = 0 
	Recycle.Property = 0
	if #Recycle.count1 >=1 then 
		CLSetLuaGlobal("DestroyBagItem", 1073300000) --物品消失特效开启
		UI:Lua_SubmitForm("物品回收员表单", "hs_all", serialize(Recycle.out_tab))
	end
	
end

function Recycle.itemTweenUp11(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' x='260' /></Tween>", "Recycle.itemTweenDown11("..hand..")")
end 
function Recycle.itemTweenDown11(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' x='250' /></Tween>" , "Recycle.itemTweenUp11("..hand..")")
end
function Recycle.itemTweenUp01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='0.8' x='370' /></Tween>", "Recycle.itemTweenDown01("..hand..")")
end 
function Recycle.itemTweenDown01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' x='360' /></Tween>" , "Recycle.itemTweenUp01("..hand..")")
end 

function Recycle.onequipment()   --穿装备
	--[[local handle = GetWindow(nil,"Recycle")
	if handle == 0 then
		return 
	end
	local guid =  as3.tolua(LuaParam[2])  
	Recycle.addequip(guid)--]] 
	UI:Lua_SubmitForm("物品回收员表单", "main2","")
	
end

function Recycle.addequip(guid)
	for i=#Recycle.count1,1,-1 do 
		if Recycle.count1[i]==guid then  
			table.remove(Recycle.count1,i)
		end
	end 
	for i = 1 , 5 do 
		for j = 1 , 3 do   
			for s=#Recycle.count[i][j],1,-1 do 
				if Recycle.count[i][j][s]==guid then  
					table.remove(Recycle.count[i][j],s)
				end
			end
		end
	end 
	Recycle.update_color() 
end

function Recycle.offequipment()  --脱装备
	--[[local handle = GetWindow(nil,"Recycle")
	if handle == 0 then
		return 
	end
	Recycle.guid =  as3.tolua(LuaParam[1])  
	UI:Lua_SubmitForm("物品回收员表单", "Offequip",Recycle.guid )--]]
	UI:Lua_SubmitForm("物品回收员表单", "main2","")
end

function Recycle.Backooo(i) 
	local Temp = CLGetItemTemplateHandleByGUID(Recycle.guid)
	if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_JOB) then 
		local job = tonumber(as3.tolua(LuaRet))	 
		if job == 0 then 
			if CLGetPlayerSelfPropBase(ROLE_PROP_JOB) then 
				job = tonumber(as3.tolua(LuaRet))
			end  
		end
		Recycle.count[i][job][#Recycle.count[i][job]+1] = Recycle.guid 
		Recycle.count1[#Recycle.count1+1] = Recycle.guid 
		Recycle.update_color() 
	end
end

function Recycle.ondrop()  --丢弃
	--[[local handle = GetWindow(nil,"Recycle")
	if handle == 0 then
		return 
	end
	local guid =  as3.tolua(LuaParam[2])  
	Recycle.addequip(guid)--]]
	UI:Lua_SubmitForm("物品回收员表单", "main2","")
end

function Recycle.onadditem()   --拾取
--[[	local handle = GetWindow(nil,"Recycle")
	if handle == 0 then
		return 
	end
	Recycle.guid =  as3.tolua(LuaParam[2])  
	UI:Lua_SubmitForm("物品回收员表单", "Offequip", Recycle.guid)--]]
	UI:Lua_SubmitForm("物品回收员表单", "main2","")
end

function Recycle.Close()
	CLSetLuaGlobal("DestroyBagItem", 0)	--物品消失特效关闭
	local handle = GetWindow(nil,"Recycle")
	if handle ~= 0 then 
		GUIWndClose(handle)	
		GUIWndDelTimer(handle, 8686)
	end
--[[	local packageHandle = GetWindow(nil, "Package")
	if packageHandle ~= 0 then
		reset_two_relationWnd(0, packageHandle)
	end--]]
	local handle = GetWindow(nil,"Package")
	if handle~=0 then 
		GUIWndClose(handle)
	end
	UnRegisterUIEvent(LUA_EVENT_ONEQUIPMENT, "穿装备")
	UnRegisterUIEvent(LUA_EVENT_OFFEQUIPMENT, "脱装备")
	UnRegisterUIEvent(LUA_EVENT_ONDROPITEM, "扔装备")
	UnRegisterUIEvent(LUA_EVENT_ONADDITEM, "捡装备")
	
end

Recycle.main()