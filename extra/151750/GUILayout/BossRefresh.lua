BossRefresh = {}
function BossRefresh.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"BossRefresh",0,189,306)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,16, 16)
	end
	
	
	FbWndContentRE_Parent = GUI:WndCreateWnd(_Parent,"FbWndContentRE",0,-26,1)
	if FbWndContentRE_Parent ~= 0 then
		GUI:WndSetSizeM(FbWndContentRE_Parent,216, 216)
	end
	
	
	_GUIHandle = GUI:ImageCreate(FbWndContentRE_Parent,"ContentBack",1800000030,27,-4)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1800000030,1800000031,1800000032,1800000033,1800000038,1800000034,1800000035,1800000036,1800000037)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,216, 262)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:RichEditCreate(FbWndContentRE_Parent,"boss1",38,5,208,20)
	if _GUIHandle ~= 0 then
		--GUI:WndRegistScript(_GUIHandle,1002, "BossRefresh.AutoRun")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(FbWndContentRE_Parent,"boss2",38,30,208,20)
	if _GUIHandle ~= 0 then
		--GUI:WndRegistScript(_GUIHandle,1002, "BossRefresh.AutoRun")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(FbWndContentRE_Parent,"boss3",38,55,208,15)
	if _GUIHandle ~= 0 then
		--GUI:WndRegistScript(_GUIHandle,1002, "BossRefresh.AutoRun")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(FbWndContentRE_Parent,"boss4",38,80,208,20)
	if _GUIHandle ~= 0 then
		--GUI:WndRegistScript(_GUIHandle,1002, "BossRefresh.AutoRun")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(FbWndContentRE_Parent,"boss5",38,105,208,20)
	if _GUIHandle ~= 0 then
		--GUI:WndRegistScript(_GUIHandle,1002, "BossRefresh.AutoRun")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(FbWndContentRE_Parent,"boss6",38,130,208,20)
	if _GUIHandle ~= 0 then
		--GUI:WndRegistScript(_GUIHandle,1002, "BossRefresh.AutoRun")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(FbWndContentRE_Parent,"boss7",38,155,208,20)
	if _GUIHandle ~= 0 then
		--GUI:WndRegistScript(_GUIHandle,1002, "BossRefresh.AutoRun")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(FbWndContentRE_Parent,"boss8",38,180,208,15)
	if _GUIHandle ~= 0 then
		--GUI:WndRegistScript(_GUIHandle,1002, "BossRefresh.AutoRun")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(FbWndContentRE_Parent,"boss9",38,205,208,20)
	if _GUIHandle ~= 0 then
		--GUI:WndRegistScript(_GUIHandle,1002, "BossRefresh.AutoRun")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(FbWndContentRE_Parent,"boss10",38,230,208,20)
	if _GUIHandle ~= 0 then
		--GUI:WndRegistScript(_GUIHandle,1002, "BossRefresh.AutoRun")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(FbWndContentRE_Parent,"clock1",140,5,208,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292790139)
	end
	
	
	_GUIHandle = GUI:EditCreate(FbWndContentRE_Parent,"clock2",140,30,208,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292790139)
	end
	
	
	_GUIHandle = GUI:EditCreate(FbWndContentRE_Parent,"clock3",140,55,208,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292790139)
	end
	
	
	_GUIHandle = GUI:EditCreate(FbWndContentRE_Parent,"clock4",140,80,208,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292790139)
	end
	
	
	_GUIHandle = GUI:EditCreate(FbWndContentRE_Parent,"clock5",140,105,208,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292790139)
	end
	
	
	_GUIHandle = GUI:EditCreate(FbWndContentRE_Parent,"clock6",140,130,208,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292790139)
	end
	
	
	_GUIHandle = GUI:EditCreate(FbWndContentRE_Parent,"clock7",140,155,208,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292790139)
	end
	
	
	_GUIHandle = GUI:EditCreate(FbWndContentRE_Parent,"clock8",140,180,208,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292790139)
	end
	
	
	_GUIHandle = GUI:EditCreate(FbWndContentRE_Parent,"clock9",140,205,208,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292790139)
	end
	
	
	_GUIHandle = GUI:EditCreate(FbWndContentRE_Parent,"clock10",140,230,208,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292790139)
	end
	
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TitleBackg",1805000002,1,-27)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,216, 27)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"hideBtn",1800000149,1,-27)
	if _GUIHandle ~= 0 then
	
		GUI:WndRegistScript(_GUIHandle,1002, "BossRefresh.OnHideWndBtn")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,26, 26)
		GUI:ImageSetParam(_GUIHandle, 1)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"showBtn",1800000148,1,-27)
	if _GUIHandle ~= 0 then
	
		GUI:WndRegistScript(_GUIHandle,1002, "BossRefresh.OnShowWndBtn")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,26, 26)
		GUI:ImageSetParam(_GUIHandle, 1)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"text1",31,-26,91,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292257901)
		GUI:EditSetTextM(_GUIHandle,"BOSS刷新情况")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"bossPos",126,-21,79,16)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "BossRefresh.OpenMap")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	
	BossRefresh.UIInit(_Parent)
end

--UI Logic Code Start
BossRefresh.infoTb = {}
BossRefresh.infoTb = deserialize(FormParam[1])
function BossRefresh.UIInit(h)
	
	BossRefresh._wnd = h
	local sY = CL:GetScreenHeight()
	local sX = CL:GetScreenWidth()
	local tw = GUI:WndFindWindow(0, "BossRefresh")
    if tw ~= 0 then
        GUI:WndSetPosM(tw, sX-500, 195)
    end
	local handle = 0
	handle = GetWindow(h, "hideBtn")
	if handle ~= 0 then
		GUI:WndMoveToParentTop(handle)
	end

	for i = 1, 10 do
		handle = GetWindow(BossRefresh._wnd, "FbWndContentRE,boss"..i)
		if handle ~= 0 then	
			local str = "#COLORCOLOR_BGREENG##SELECT#"..BossRefresh.infoTb[i][1].."#SELECTEND##COLOREND#"
			GUI:RichEditClear(handle)
			GUI:RichEditAppendString(handle, str)
			GUI:RichEditSetEditEnable(handle, false)
		end
	end

	if GUI:WndAddTimerBrief(h, 1000, "BossRefresh.DcUpdatas") then    --设置定时器
		BossRefresh.time_id = LuaRet
	end
	GUI:WndRegistScript(h, RDWndBaseCL_wnd_close, "BossRefresh.cleartime")
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "SCREEN SIZE CHANGED BossRefresh", "BossRefresh.width") 
end

function BossRefresh.width()
	local sX = CL:GetScreenWidth()
	local tw = GUI:WndFindWindow(0, "BossRefresh")
    if tw ~= 0 then
        GUI:WndSetPosM(tw, sX-500, 195)
    end
end

function BossRefresh.cleartime()  --关闭定时器
	UI:Lua_DelDelayTask(tonumber(BossRefresh.time_id))
end

function BossRefresh.OnHideWndBtn()
	local handle = GetWindow(BossRefresh._wnd, "FbWndContentRE")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, false)
	end
	handle = GetWindow(BossRefresh._wnd, "showBtn")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, true)
	end
	handle = GetWindow(BossRefresh._wnd, "hideBtn")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, false)
	end
end


function BossRefresh.OnShowWndBtn(h)
	local handle = GetWindow(BossRefresh._wnd, "FbWndContentRE")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, true)
	end
	handle = GetWindow(BossRefresh._wnd, "showBtn")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, false)
	end
	handle = GetWindow(BossRefresh._wnd, "hideBtn")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, true)
	end
end

function BossRefresh.DcUpdata(tab)
	BossRefresh.infoTb = tab
	for i = 1, 10 do
		handle = GetWindow(BossRefresh._wnd, "FbWndContentRE,boss"..i)
		if handle ~= 0 then	
			local str = "#COLORCOLOR_BGREENG##SELECT#"..BossRefresh.infoTb[i][1].."#SELECTEND##COLOREND#"
			GUI:RichEditClear(handle)
			GUI:RichEditAppendString(handle, str)
		end
	end
end


function BossRefresh.DcUpdatas()
	local day, hour, minute, second = 0, 0, 0, 0
	local handle, _handle = 0, 0

	for i = 1, 10 do
		if BossRefresh.infoTb[i][2] < 0 then 
			BossRefresh.infoTb[i][2] = 0 
		else
			_handle = GetWindow(BossRefresh._wnd, "FbWndContentRE,clock"..i)
			day, hour, minute, second = GetDetailTime(BossRefresh.infoTb[i][2])
			BossRefresh.infoTb[i][2] = BossRefresh.infoTb[i][2]-1 
			if _handle ~= 0 then	
				if (minute == 0 and second == 0) then
					GUI:EditSetTextM(_handle, "    可击杀")
				else
					if minute < 10 then
						minute = "0"..minute
					end
					if second < 10 then
						second = "0"..second
					end
					GUI:EditSetTextM(_handle, "00:"..minute..":"..second.."后刷新")
				end
			end	
		end
	end
end

function BossRefresh.AutoRun(h)
end

function BossRefresh.OpenMap()
	CL:OnOpenWorld()
end

function BossRefresh.CloseWnd()
	if BossRefresh._wnd ~= 0 then
		GUI:WndClose(BossRefresh._wnd)
	end
end


BossRefresh.main()