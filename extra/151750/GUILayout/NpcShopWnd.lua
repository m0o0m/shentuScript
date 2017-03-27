NpcShopWnd = {}
local color = {}
color.text1 = GUI:MakeARGB(255,243,185,117) --棕黄
color.text2 = GUI:MakeARGB(255,198,192,163) --白色
color.number = GUI:MakeARGB(255,55,181,111) --绿色
function NpcShopWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, _DeviceSizeX, _DeviceSizeY)
		GUI:ImageSetAroundImage(_GUIHandle, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
	end
	local offset_X = (_DeviceSizeX - 1076)/2
	local offset_Y = 65
	_GUIHandle = GUI:ButtonCreate(_Parent,"pageBtn1",1852600007, offset_X + 770, 9)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "NpcShopWnd.Clicked")
		GUI:WndSetSizeM(_GUIHandle, 132, 57)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pageBtn2",1852600011, offset_X + 920, 9)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "NpcShopWnd.Clicked")
		GUI:WndSetSizeM(_GUIHandle, 132, 57)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423, _DeviceSizeX - 70, 8)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "NpcShopWnd.Close")
		GUI:WndSetSizeM(_GUIHandle, 52, 52)
	end

	--第二层背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage0", 1852100037, offset_X, offset_Y)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 1076, 536)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:ImageSetAroundImage(_GUIHandle, 1850300025, 1850300027, 1850300031, 1850300033, 1850300029, 1850300026, 1850300032, 1850300028, 1850300030)
	end
	NpcShopWnd.UIInit(_Parent)
end

--UI Logic Code Start
function NpcShopWnd.UIInit(_Handle)
	if 0 ~= GameMainBar.WndHandle then
		GUI:WndSetVisible(GameMainBar.WndHandle, false)
	end

	NpcShopWnd.WndHandle = _Handle
	--默认打开主页
	local _GUIHandle = GetWindow(_Handle, "pageBtn1")
	if 0 ~= _GUIHandle then 
		NpcShopWnd._selPageBtn = _GUIHandle
		GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
	end
	UI:Lua_OpenWindow(_Handle, "NpcShop.lua")
end

function NpcShopWnd.Clicked(_Handle)
	if _Handle == NpcShopWnd._selPageBtn then  return end
	GUI:ButtonSetIsActivePageBtn(_Handle, true)
	if NpcShopWnd._selPageBtn then 
		GUI:ButtonSetIsActivePageBtn(NpcShopWnd._selPageBtn, false)
	end
	NpcShopWnd._selPageBtn = _Handle
	local close_tab = {"NpcShop","NpcSell"}
	for i = 1, #close_tab do
		local hand = GetWindow(NpcShopWnd.WndHandle, "pageBtn"..i)
		if _Handle ~= hand then 
			local handle = GetWindow(NpcShopWnd.WndHandle, close_tab[i])
			if handle ~= 0 then
				GUI:WndClose(handle)
			end
		end
	end

	local id = GUI:WndGetIDM(_Handle)
	--UI:Lua_Log("pageBtn_LC id = "..id)
	if id == "pageBtn1" then
		UI:Lua_OpenWindow(NpcShopWnd.WndHandle, "NpcShop.lua")
	elseif id == "pageBtn2" then
		UI:Lua_OpenWindow(NpcShopWnd.WndHandle, "NpcSell.lua")
	end
end


function NpcShopWnd.Close()
	GUI:WndClose(NpcShopWnd.WndHandle)
	if not GUI:WndGetVisible(GameMainBar.WndHandle) then
		GUI:WndSetVisible(GameMainBar.WndHandle, true)
	end
end


NpcShopWnd.main()