Recycle = {}
function Recycle.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"Recycle",0,0,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent, 361, 524)
		GUI:WndSetIsESCClose(_Parent, true)
		GUI:WndSetMoveWithLBM(_Parent)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent, "BkImg", 1806100012, 0, -3 )
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TitleImg",1805500012,125,8)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,79, 25)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_0",1800600004,16,132)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,327, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_1",1800600004,17,392)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,327, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
		
    _GUIHandle = GUI:ImageCreate(_Parent,"img1",1800600027,67,164)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,299, 2)
        GUI:ImageSetParam(_GUIHandle, 1)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img2",1800600028,172,164)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,299, 2)
        GUI:ImageSetParam(_GUIHandle, 2)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img3",1800600029,277,164)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,299, 2)
        GUI:ImageSetParam(_GUIHandle, 3)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
	_GUIHandle = GUI:RichEditCreate(_Parent,"miaoshu",50,70,280,42)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, 4286278488)
		GUI:RichEditAppendString(_GUIHandle, "可以回收未镶嵌、未强化以及未蕴魂的装备，获得海量经验、护符印记和绑定金币，点击链接回收相应装备")
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1805900080,328,3)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1003, "Recycle.Close")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,26, 26)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
		
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit11",53,209,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit12",158,209,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit13",263,209,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit21",53,244,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit22",158,244,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit23",263,244,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit31",53,279,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit32",158,279,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit33",263,279,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit41",53,314,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit42",158,314,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit43",263,314,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit51",53,349,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit52",158,349,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit53",263,349,100,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit19",137,413,179,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Recycle.ClickEdit1")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit24",136,448,224,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"visible11",1804600019,271,397)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetTextM(_GUIHandle,"  点击回收装备")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,188, 50)
		GUI:WndSetTextColorM(_GUIHandle, 4294369906)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"visible01",1804600019,378,-3)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetTextM(_GUIHandle," 关闭")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,188, 50)
		GUI:WndSetTextColorM(_GUIHandle, 4294369906)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	
	Recycle.UIInit(_Parent)
end

--UI Logic Code Start
local count = {
			{{},{},{}},
			{{},{},{}},
			{{},{},{}},
			{{},{},{}},
			{{},{},{}}
}
Recycle.WndHandle = 0
Recycle.param = 0 
Recycle.Property = 0 
Recycle.tab1 = {"70级以下","70级装备","80级装备","转1装备 ","转2装备 "}
Recycle.count1 = {}
Recycle.clink = 0
Recycle.first = 1 
Recycle.guid = 0
function Recycle.UIInit(_Handle)
	local _ScreenWidth = CL:GetScreenWidth()
	if _Handle ~= 0 then 
		UI:Lua_GetScreenSize()
		local _SW = LuaRet[1]
		local _SH = LuaRet[2]
		GUI:WndSetPosM( _Handle, _SW/2+230, _SH/2-263)
	end
	
	GUI:WndRegistScript(_Handle, RDWndBaseCL_wnd_close, "Recycle.WndClose")
	RegisterUIEvent(LUA_EVENT_ONEQUIPMENT, "穿装备", "Recycle.onequipment")
	RegisterUIEvent(LUA_EVENT_OFFEQUIPMENT, "脱装备", "Recycle.offequipment")
	RegisterUIEvent(LUA_EVENT_ONDROPITEM, "扔装备", "Recycle.ondrop")
	RegisterUIEvent(LUA_EVENT_ONADDITEM, "捡装备", "Recycle.onadditem")
	Recycle.WndHandle = _Handle
	
	UI:Lua_SubmitForm("物品回收员表单", "main2", "")
end

function Recycle.mainUI(levellist,first)
	Recycle.count1 = {}
	count = {
			{{},{},{}},
			{{},{},{}},
			{{},{},{}},
			{{},{},{}},
			{{},{},{}}
	}
	Recycle.first = tonumber(first)
	if tonumber(Recycle.first) == 0 then  
		local hand = GUI:WndFindChildM(Recycle.WndHandle,"visible11")
		if hand ~= 0 then 
			GUI:WndSetVisible(hand,true)
			GUI:ButtonSetTextFont(hand,"SIMLI18")
		end   
	end
	for i=1,#levellist do 
		for j=1 , #levellist[i] do
			UI:Lua_Str2GUID(levellist[i][j])
			local guid = LuaRet
			local Temp = CL:GetItemTemplateHandleByGUID(guid)
			if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_JOB) then
				if LuaRet ~= nil then
					local job = tonumber(LuaRet)	
					if job ~= 0 then
						Recycle.count1 [#Recycle.count1+1]= levellist[i][j]
						count[i][job][#count[i][job]+1] = levellist[i][j]
					elseif CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_KEYNAME) then
						local keyname = tostring(LuaRet)
						if string.find(keyname,"乌木剑") or  string.find(keyname,"粗布")  then 
							if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then 
								local joo = tonumber(LuaRet)
								dbg("c:335")
								Recycle.count1 [#Recycle.count1+1]= levellist[i][j]
								count[i][joo][#count[i][joo]+1] = levellist[i][j]
							end 
						end
					end
					
				end
			end
		end
	end 
	Recycle.update_color() 
	--CL:AddDelayTask("Recycle.ScriptHandle()", 1000, 20)
end

function Recycle.update_color() 
	for i = 1 , 5 do 
		for j = 1 , 3 do  
			local _GUIHandle = GUI:WndFindWindow(Recycle.WndHandle,"richedit"..i..j)
			GUI:WndAddProperty(_GUIHandle, tostring(j), tostring(i))
			if #count[i][j]>0 then                                            --如果某个table不为0，则改变颜色和点击状态 
				GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
				GUI:RichEditClear(_GUIHandle)
				GUI:RichEditAppendString(_GUIHandle,"#SELECT#"..Recycle.tab1[i].."（"..#count[i][j].."）".."#SELECTEND#") 
			else 
				GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 128, 128, 128))
				GUI:RichEditClear(_GUIHandle)
				GUI:RichEditAppendString(_GUIHandle,Recycle.tab1[i].."（0）") 
			end
		end
	end
	UI:Lua_SubmitForm("物品回收员表单", "hs_exp", serialize(Recycle.count1))
end
	
function Recycle.ScriptHandle() 
	UI:Lua_SubmitForm("物品回收员表单", "Scrip", tostring(Recycle.clink))
end

function Recycle.Clean()
	if tonumber(Recycle.first) == 0 then 
		local hand = GUI:WndFindChildM(Recycle.WndHandle,"visible11")
		if hand ~= 0 then 
			GUI:WndSetVisible(hand,false)
		end 
		local hand = GUI:WndFindChildM(Recycle.WndHandle,"visible01")
		if hand ~= 0 then 
			GUI:WndSetVisible(hand,true)
			GUI:ButtonSetTextFont(hand,"SIMLI18")
		end 
	end
	Recycle.clink = 1
	if Recycle.Property==0 and Recycle.param==0 then 
		local _Handle = GUI:WndFindWindow(Recycle.WndHandle,"richedit19")
		GUI:RichEditClear(_Handle)
		GUI:RichEditSetDefaultTextColor(_Handle, MakeARGB(255, 128, 128, 128))
		GUI:RichEditAppendString(_Handle,"回收全部装备（0）")
		_Handle = GUI:WndFindWindow(Recycle.WndHandle,"richedit24")
		GUI:RichEditClear(_Handle)
		GUI:RichEditAppendString(_Handle,"回收全部可得经验：0")
		for i = 5 , 1,-1 do 
			for j = 3 , 1,-1 do  
				count[i][j] = {}
				_Handle = GUI:WndFindWindow(Recycle.WndHandle,"richedit"..i..j)
				GUI:RichEditClear(_Handle)
				GUI:RichEditSetDefaultTextColor(_Handle, MakeARGB(255, 128, 128, 128))
				GUI:RichEditAppendString(_Handle,Recycle.tab1[i].."（0）")
			end
		end
	else 
		local _GUIHandle = GUI:WndFindWindow(Recycle.WndHandle,"richedit"..Recycle.Property..Recycle.param)
		GUI:RichEditClear(_GUIHandle)
		if tonumber(#count[Recycle.Property][Recycle.param]) == 0 then 
			GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 128, 128, 128))
			GUI:RichEditAppendString(_GUIHandle,Recycle.tab1[Recycle.Property].."（0）")
		else 
			GUI:RichEditAppendString(_GUIHandle,"#SELECT#"..Recycle.tab1[Recycle.Property].."（"..#count[Recycle.Property][Recycle.param].."）#SELECTEND#")
		end
		UI:Lua_SubmitForm("物品回收员表单", "hs_exp", serialize(Recycle.count1))
	end
	
end

function Recycle.update(score,num)
	
	local _UIHandle = GUI:WndFindWindow(Recycle.WndHandle,"richedit19")
	GUI:RichEditClear(_UIHandle)
	if num == 0 then 
		GUI:RichEditSetDefaultTextColor(_UIHandle, MakeARGB(255, 128, 128, 128))
		GUI:RichEditAppendString(_UIHandle,"回收全部装备（0）")
	else
		GUI:RichEditSetDefaultTextColor(_UIHandle,MakeARGB(255, 0, 204, 51))
		GUI:RichEditAppendString(_UIHandle,"#SELECT#回收全部装备".."（"..num.."）".."#SELECTEND#")
	end
	local _GUIHandle = GUI:WndFindWindow(Recycle.WndHandle,"richedit24")
	GUI:RichEditClear(_GUIHandle)
	GUI:RichEditAppendString(_GUIHandle,"回收全部可得经验："..score)	
	
end

function Recycle.ClickEdit(_Handle)

	local job = tonumber(WndGetParam(_Handle))
	local level = tonumber(GUI:WndGetProperty(_Handle, tostring(job)))
	Recycle.param = job 
	Recycle.Property = level
	if #count[level][job] >=1 then 
		if #count[level][job] > 46 then 
			local tab_temp = {}
			for i=46,1,-1 do 
				tab_temp[i] = count[level][job][i]
				table.remove(count[level][job],i)
			end
			UI:Lua_SubmitForm("物品回收员表单", "hs", serialize(tab_temp))
		else 
			UI:Lua_SubmitForm("物品回收员表单", "hs", serialize(count[level][job]))
			for i=#count[level][job],1,-1 do 
				table.remove(count[level][job],i)
			end
		end 
		
	end

end
function Recycle.ClickEdit1(_Handle)
	
	Recycle.param = 0 
	Recycle.Property = 0
	if #Recycle.count1 >=1 then 
		UI:Lua_SubmitForm("物品回收员表单", "hs_all", serialize(Recycle.count1))
	end
	
end

function Recycle.onequipment()   --穿装备
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
			for s=#count[i][j],1,-1 do 
				if count[i][j][s]==guid then  
					table.remove(count[i][j],s)
				end
			end
		end
	end 
	Recycle.update_color() 
end

function Recycle.offequipment()  --脱装备
	UI:Lua_SubmitForm("物品回收员表单", "main2","")
end

function Recycle.Backooo(i) 
msg('errpr')
	local Temp = CL:GetItemTemplateHandleByGUID(Recycle.guid)
	if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_JOB) then 
		local job = tonumber(LuaRet)	 
		if job == 0 then 
			if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then 
				job = tonumber(LuaRet)
			end  
		end
		count[i][job][#count[i][job]+1] = Recycle.guid 
		Recycle.count1[#Recycle.count1+1] = Recycle.guid 
		Recycle.update_color() 
	end
end

function Recycle.ondrop()  --丢弃
	UI:Lua_SubmitForm("物品回收员表单", "main2","")
end

function Recycle.onadditem()   --拾取
	UI:Lua_SubmitForm("物品回收员表单", "main2","")
end

function Recycle.Close()
	local handle = GetWindow(nil,"Recycle")
	if handle ~= 0 then 
		GUI:WndClose(handle)	
		GUI:WndDelTimer(handle, 8686)
	end
	local handle = GetWindow(nil,"Package")
	if handle~=0 then 
		GUI:WndClose(handle)
	end
end

function Recycle.WndClose()
	UnRegisterUIEvent(LUA_EVENT_ONEQUIPMENT, "穿装备")
	UnRegisterUIEvent(LUA_EVENT_OFFEQUIPMENT, "脱装备")
	UnRegisterUIEvent(LUA_EVENT_ONDROPITEM, "扔装备")
	UnRegisterUIEvent(LUA_EVENT_ONADDITEM, "捡装备")
end

Recycle.main()