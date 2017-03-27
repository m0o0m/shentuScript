local wnd = GUI:WndFindWindow(0, "OpenServiceActivities")
if wnd ~= 0 then
 return
end

OpenServiceActivities = {}

function OpenServiceActivities.main()
  UI:Lua_Log("开始执行OpenServiceActivities11111111111")
  local _Parent = LuaGlobal["AttachPartent"]
  local _GUIHandle = 0

 _Parent = GUI:WndCreateWnd(_Parent,"OpenServiceActivities",1803000023,266,27)
 if _Parent ~= 0 then
  GUI:WndSetSizeM(_Parent,815, 553)
 end

  _GUIHandle = GUI:ButtonCreate(_Parent,"GiftBtn1",1800000380,26,52)
  if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"特惠礼包")
    GUI:WndSetParam(_GUIHandle, 1)
    GUI:WndSetSizeM(_GUIHandle,114, 43)
    GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
  end

 --[[_GUIHandle = GUI:RichEditCreate(_Parent,"GiftRich1",26,52,114,43)
  if _GUIHandle ~= 0 then
    GUI:WndSetParam(_GUIHandle, 0)
    GUI:RichEditSetEditEnable(_GUIHandle, false)
    GUI:RichEditAppendString(_GUIHandle, "特惠礼包")
  end--]]

  _GUIHandle = GUI:ImageCreate(_Parent,"TitleImg",1801500125,346,3)
  if _GUIHandle ~= 0 then
    GUI:WndSetParam(_GUIHandle, 0)
    GUI:WndSetSizeM(_GUIHandle,123, 25)
    GUI:ImageSetParam(_GUIHandle, 0)
    GUI:ImageSetCheckPoint(_GUIHandle, 0)
  end

  _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1800000043,782,4)
  if _GUIHandle ~= 0 then
    GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OpenServiceActivities.OnClose")
    GUI:WndSetParam(_GUIHandle, 0)
    GUI:WndSetSizeM(_GUIHandle,26, 26)
    GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
  end
 OpenServiceActivities.UIInit(_Parent)
end

--UI Logic Code Start

OpenServiceActivities.WndHandle = 0
OpenServiceActivities.SelectIndex = 0

function OpenServiceActivities.UIInit(_Handle)
  OpenServiceActivities.WndHandle = _Handle

  GUI:WndSetIsESCClose(OpenServiceActivities.WndHandle, true) --按esc退出
  GUI:WndSetMagicUI(OpenServiceActivities.WndHandle, 1) --设定关闭动画方式
  GUI:WndSetCanRevMsg(OpenServiceActivities.WndHandle, true)
  GUI:WndSetMoveWithLBM(OpenServiceActivities.WndHandle) --左键拖动

  local _GUIHandle = GUI:WndFindChildM(_Handle, "TitleImg")
  if _GUIHandle ~= nil then
    GUI:WndSetCanRevMsg(_GUIHandle, false)
  end

  local _GUIHandle = GUI:WndFindChildM(_Handle, "GiftBtn1")
  if _GUIHandle ~= 0 then
    dbg('rich')
    GUI:ButtonSetTextFont(_GUIHandle, "SIMLI18")
    OpenServiceActivities.SelectActive(_GUIHandle)
  end

 --设置窗口位置

  local _DeviceWidth = CL:GetScreenWidth()
  local _DeviceHeight = CL:GetScreenHeight()
  GUI:WndSetSizeM(OpenServiceActivities.WndHandle, 770, 480)
  GUI:WndSetPosM(OpenServiceActivities.WndHandle, _DeviceWidth / 2 - 450, _DeviceHeight / 2 - 290)
end

function OpenServiceActivities.SelectActive(_Handle)
  local _GUIHandle = 0
  for i = 1, 1 do
    _GUIHandle=GUI:WndFindChildM(OpenServiceActivities.WndHandle, "GiftBtn"..i)
    GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
  end

  local param = GUI:WndGetParam(_Handle)
  if param == 1  then
    if OpenServiceActivities.SelectIndex ~= param then
      UI:Lua_OpenWindow(OpenServiceActivities.WndHandle,"SpecialGift.lua")
    end
      GUI:ButtonSetIsActivePageBtn(_Handle, true)
  end
    OpenServiceActivities.SelectIndex = param
end

OpenServiceActivities.main()


function OpenServiceActivities.OnClose(_Handle,_Param)
  GUI:WndClose(OpenServiceActivities.WndHandle)
end