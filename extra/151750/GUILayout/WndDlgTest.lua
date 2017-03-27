WndDlgTest = {}
function WndDlgTest.main()
    local _Parent = LuaGlobal["AttachPartent"]
    WndDlgTest.UIInit(_Parent)
end

WndDlgTest.WndHandle = 0
WndDlgTest.ClipWndHandle = 0
WndDlgTest.intervalY = 118
WndDlgTest.count = 5
WndDlgTest.diffX = -45
WndDlgTest.diffY = -88
WndDlgTest.curTotalCount = 0


--UI Logic Code Start
function WndDlgTest.UIInit(_Handle)
    WndDlgTest.WndHandle = _Handle
	local _ClipWndHandle = GUI:WndCreateWnd(_Handle,"WndDlgTestClipWnd",0,45,90)
	if _ClipWndHandle then
		WndDlgTest.ClipWndHandle = _ClipWndHandle
		GUI:WndSetFlagsM(_ClipWndHandle, flg_wndBase_useBkBuffer)
		GUI:WndSetSizeM(_ClipWndHandle,422, 250)
		GUI:WndRegistScript(_ClipWndHandle, rdwnddlg_pos_bot, "WndDlgTest.BotTrigger")
	end
	WndDlgTest.CreateUI()
end

function WndDlgTest.CreateUI()
	local _Parent = WndDlgTest.ClipWndHandle
	for i = 1, WndDlgTest.count do
		local indexStr = tostring(i - 1)
		local _GUIHandle = GUI:ButtonCreate(_Parent,"CellBackButton"..indexStr,1850500012,0,0 + WndDlgTest.intervalY * (i - 1))
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, i-1)
			GUI:WndSetTextM(_GUIHandle, tostring(i))
		end
		WndDlgTest.curTotalCount = WndDlgTest.curTotalCount + 1
	end
end

-- 滑到底部触发
function WndDlgTest.BotTrigger(_Handle)
	local _Parent = WndDlgTest.ClipWndHandle
	for i = WndDlgTest.curTotalCount + 1, WndDlgTest.curTotalCount + WndDlgTest.count do	
		local indexStr = tostring(i - 1)
		local _GUIHandle = GUI:ButtonCreate(_Parent,"CellBackButton"..indexStr,1850500012,0,0 + WndDlgTest.intervalY * (i - 1))
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, i-1)
			GUI:WndSetTextM(_GUIHandle, tostring(i))
		end
		WndDlgTest.curTotalCount = WndDlgTest.curTotalCount + 1
	end
end



WndDlgTest.main()




