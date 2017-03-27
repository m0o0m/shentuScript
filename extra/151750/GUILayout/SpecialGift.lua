SpecialGift = {}

function SpecialGift.main()
  local _Parent = LuaGlobal["AttachPartent"]
  local _GUIHandle = 0
  _Parent = GUI:WndCreateWnd(_Parent,"SpecialGift",0,160,42)
  if _Parent ~= 0 then
    GUI:WndSetSizeM(_Parent,636, 493)
  end

  _GUIHandle = GUI:ImageCreate(_Parent,"BackImage",1803000001,0,144)
  if _GUIHandle ~= 0 then
  end

  _GUIHandle = GUI:ButtonCreate(_Parent,"GiftBtn1",1803000007,0,0)
  if _GUIHandle ~= 0 then
    GUI:WndSetParam(_GUIHandle, 1)
    GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "SpecialGift.selectGift")
  end

  _GUIHandle = GUI:ButtonCreate(_Parent,"GiftBtn2",1803000011,159,0)
  if _GUIHandle ~= 0 then
    GUI:WndSetParam(_GUIHandle, 2)
    GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "SpecialGift.selectGift")
  end

  _GUIHandle = GUI:ButtonCreate(_Parent,"GiftBtn3",1803000015,318,0)
  if _GUIHandle ~= 0 then
    GUI:WndSetParam(_GUIHandle, 3)
    GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "SpecialGift.selectGift")
  end

  _GUIHandle = GUI:ButtonCreate(_Parent,"GiftBtn4",1803000019,477,0)
  if _GUIHandle ~= 0 then
    GUI:WndSetParam(_GUIHandle, 4)
    GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "SpecialGift.selectGift")
  end

  _GUIHandle = GUI:ImageCreate(_Parent,"GiftImage",1803000002,240,185)
  if _GUIHandle ~= 0 then
    GUI:WndSetParam(_GUIHandle, 0)
  end

  _GUIHandle = GUI:EditCreate(_Parent,"InfoEdit",277,199,0,0)
  if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"花费          即可获得")
  end

  _GUIHandle = GUI:EditCreate(_Parent,"costEdit",302,197,0,0)
  if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"88888元宝")
  end

  _GUIHandle = GUI:EditCreate(_Parent,"GiftNameEdit",413,199,0,0)
  if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"无敌礼包") 
  end

  _GUIHandle = GUI:ButtonCreate(_Parent,"GetRewardsBtn",1803000003,366,406)
  if _GUIHandle ~= 0 then
    GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "SpecialGift.award")
  end

  _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg_1",1800000384,332,258)
  if _GUIHandle ~= 0 then
  end

  _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg_2",1800000384,402,258)
  if _GUIHandle ~= 0 then
  end

  _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg_3",1800000384,472,258)
  if _GUIHandle ~= 0 then
  end

  _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg_4",1800000384,296,329)
  if _GUIHandle ~= 0 then
  end

  _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg_5",1800000384,366,329)
  if _GUIHandle ~= 0 then
  end

  _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg_6",1800000384,436,329)
  if _GUIHandle ~= 0 then
  end

  _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg_7",1800000384,506,329)
  if _GUIHandle ~= 0 then
  end

  _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell1",0,337,263,56,56)
  if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetIconSize(_GUIHandle,56, 56)
    GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
  end

  _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell2",0,407,263,56,56)
  if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetIconSize(_GUIHandle,56, 56)
    GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
  end

  _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell3",0,477,263,56,56)
  if _GUIHandle ~= 0 then
      GUI:ItemCtrlSetIconSize(_GUIHandle,56, 56)
      GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
  end

  _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell4",0,301,334,56,56)
  if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetIconSize(_GUIHandle,56, 56)
    GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
  end

  _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell5",0,371,334,56,56)
  if _GUIHandle ~= 0 then
      GUI:ItemCtrlSetIconSize(_GUIHandle,56, 56)
      GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
  end

  _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell6",0,441,334,56,56)
  if _GUIHandle ~= 0 then
      GUI:ItemCtrlSetIconSize(_GUIHandle,56, 56)
      GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
  end

  _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell7",0,511,334,56,56)
  if _GUIHandle ~= 0 then
      GUI:ItemCtrlSetIconSize(_GUIHandle,56, 56)
      GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
  end

SpecialGift.UIInit(_Parent)

end

--UI Logic Code Start
SpecialGift.WndHandle = 0
SpecialGift.SelectIndex = 0
function SpecialGift.UIInit(_Handle)
  SpecialGift.WndHandle=_Handle

--元宝编辑框和礼包名称编辑框不能被选择
  local _EditHandle = GUI:WndFindChildM(SpecialGift.WndHandle, "costEdit")
  if _EditHandle ~= nil then
    GUI:EditSetFontCenter(_GUIHandle) --居中
  end

  _EditHandle = GUI:WndFindChildM(SpecialGift.WndHandle, "InfoEdit")
  if _EditHandle ~= nil then
  end

  _EditHandle = GUI:WndFindChildM(SpecialGift.WndHandle, "GiftNameEdit")
  if _EditHandle ~= nil then
  end

  local _BackImg = GUI:WndFindChildM(SpecialGift.WndHandle, "BackImage")
  if _BackImg ~= nil then
  end
  UI:Lua_SubmitForm("开服活动","get_gift_info", "1")
end

SpecialGift.info = {}

function SpecialGift.showInfo(_Ret)
  SpecialGift.info=_Ret
  local _GUIHandle = GUI:WndFindChildM(SpecialGift.WndHandle, "GiftBtn1")
  if _GUIHandle ~= 0 then
    SpecialGift.selectGift(_GUIHandle)
  end
end

function SpecialGift.selectGift(_Handle)
    local param = GUI:WndGetParam(_Handle)
    SpecialGift.SelectIndex = param
    local _GUIHandle = 0

    for i = 1, 4 do
      _GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "GiftBtn"..i)
      if i == param then
        GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
      else
        GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
      end
    end
    
    _GUIHandle = GUI:WndFindChildM(SpecialGift.WndHandle, "costEdit")
    if _GUIHandle ~= nil then
      GUI:EditSetTextM(_GUIHandle, SpecialGift.info[2][param].."元宝")
    end

    _GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "GiftNameEdit")
     if _GUIHandle ~= nil then
      GUI:EditSetTextM(_GUIHandle, SpecialGift.info[1][param])
    end

    _GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
     if _GUIHandle ~= nil then
      if SpecialGift.info[3][param] ~= 1 then
        GUI:WndSetEnableM(_GUIHandle, true)
      else
        GUI:WndSetEnableM(_GUIHandle, false)
      end
    end

    local award={}
    for i = 1, #SpecialGift.info[4][param] do
      award=SpecialGift.info[4][param][i]
      _GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "ItemCell"..i)
      if _GUIHandle ~= nil then
        GUI:ItemCtrlClearItemData(_GUIHandle)
        RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle, nil,  award[1], award[2], award[3])
        RDItemCtrlSetGUIDataEnable(_GUIHandle, nil, true)
        UI:Lua_Log("award[1] = "..award[1].." award[2]"..award[2].." award[3]"..award[3])
      --RDItemCtrlSetProp(_GUIHandle, nil, true, true, true, true, true, true)
      end
    end
end

function SpecialGift.award(_Handle)
  local _GUIHandle = GUI:WndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
  GUI:WndSetEnableM(_GUIHandle, false)
  UI:Lua_SubmitForm("开服活动","get_gift_award", ""..SpecialGift.SelectIndex)
end

function SpecialGift.awardBack(_State,_Index)
  local _GUIHandle = 0
  if _State == 1 then
    SpecialGift.info[3][_Index] = 1
    if _Index == SpecialGift.SelectIndex then
      _GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
      GUI:WndSetEnableM(_GUIHandle, false)
    end
  else
    if _Index == SpecialGift.SelectIndex then
      _GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
      GUI:WndSetEnableM(_GUIHandle, true)
    end
  end
end

SpecialGift.main()