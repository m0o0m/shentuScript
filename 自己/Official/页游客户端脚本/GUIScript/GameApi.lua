CLSetLuaArg = function(temp)
	CL:SetLuaArg(temp)
end
CLSetAsRet = function(temp)
	CL:SetAsRet(temp)
end
CLSetTemporaryParam = function(temp)
	CL:SetTemporaryParam(temp)
end
CLSetTemporary = function(handle)
	CL:SetTemporary(handle)
end
CLSetTipRet = function(temp)
	CL:SetTipRet(temp)
end
CLSetTipParam = function(temp)
	CL:SetTipParam(temp)
end
CLSetItemGUIDataPropByType = function(_ItemGUIDataHandle,_PropType)
	local ret = CL:SetItemGUIDataPropByType(_ItemGUIDataHandle,_PropType)
	return as3.tolua(ret)
end
CLLog = function(_LogStr)
	CL:Log(_LogStr)
end
CLShowTypeMsg = function(_MsgType, _MsgStr)
	CL:ShowTypeMsg(_MsgType, _MsgStr)
end
CLLoadLuaFile = function(_FileName)
	local ret = CL:LoadLuaFile(_FileName)
	return as3.tolua(ret)
end
CLLoadLuaFileForce = function(_FileName)
	local ret = CL:LoadLuaFileForce(_FileName)
	return as3.tolua(ret)
end
CLLoadAllLuaFiles = function()
	local ret = CL:LoadAllLuaFiles()
	return as3.tolua(ret)
end
CLReloadAllLuaFiles = function()
	local ret = CL:ReloadAllLuaFiles()
	return as3.tolua(ret)
end
CLReloadAllDBFiles = function()
	local ret = CL:ReloadAllDBFiles()
	return as3.tolua(ret)
end
CLGetCurWorkPath = function()
	local ret = CL:GetCurWorkPath()
	return tostring(as3.tolua(ret))
end
CLSetTalkInfo = function(_TalkInfo, _Width, _Height)
	CL:SetTalkInfo(_TalkInfo, _Width, _Height)
end
CLSetSystemColor = function(_Flag, _ColorStr)
	CL:SetSystemColor(_Flag, _ColorStr)
end
CLHexToInt = function(_HexStr)
	local ret = CL:HexToInt(_HexStr)
	return tonumber(as3.tolua(ret))
end
CLOpenUrlUseIE = function(_URL)
	CL:OpenUrlUseIE(_URL)
end
CLOpenUrlUseIEByType = function(_Type)
	CL:OpenUrlUseIEByType(_Type)
end
CLOpenUrlUseWebWnd = function(_Name, _Url, _Param)
	CL:OpenUrlUseWebWnd(_Name, _Url, _Param)
end
CLRunJSInWebBox = function(_WebWndName,_JsCode)
	local ret = CL:RunJSInWebBox(_WebWndName,_JsCode)
	return as3.tolua(ret)
end
CLGetFontStrWidth = function(fontName, text)
	local ret = CL:GetFontStrWidth(fontName, text)
	return as3.tolua(ret)
end
CLGetFontStrHeight = function(fontName)
	local ret = CL:GetFontStrHeight(fontName)
	return as3.tolua(ret)
end
CLCutString = function(_FontName, _Text, _Width)
	local ret = CL:CutString(_FontName, _Text, _Width)
	return as3.tolua(ret)
end
CLMakeARGB = function( A,  R,  G,  B)
	local ret = CL:MakeARGB( A,  R,  G,  B)
	return as3.tolua(ret)
end
CLGetColor = function(_ColorStr)
	local ret = CL:GetColor(_ColorStr)
	return as3.tolua(ret)
end
CLAdd = function(_Left, _Right)
	local ret = CL:Add(_Left, _Right)
	return tostring(as3.tolua(ret))
end
CLSub = function(_Left, _Right)
	local ret = CL:Sub(_Left, _Right)
	return tostring(as3.tolua(ret))
end
CLMul = function(_Left, _Right)
	local ret = CL:Mul(_Left, _Right)
	return tostring(as3.tolua(ret))
end
CLDiv = function(_Left, _Right)
	local ret = CL:Div(_Left, _Right)
	return tostring(as3.tolua(ret))
end
CLPlus = function(_Left, _Right)
	local ret = CL:Plus(_Left, _Right)
	return tostring(as3.tolua(ret))
end
CLMinus = function(_Left, _Right)
	local ret = CL:Minus(_Left, _Right)
	return tostring(as3.tolua(ret))
end
CLMultiply = function(_Left, _Right)
	local ret = CL:Multiply(_Left, _Right)
	return tostring(as3.tolua(ret))
end
CLDivided = function(_Left, _Right)
	local ret = CL:Divided(_Left, _Right)
	return tostring(as3.tolua(ret))
end
CLLess = function(_Left, _Right)
	local ret = CL:Less(_Left, _Right)
	return as3.tolua(ret)
end
CLAddDelayTask = function(_LuaString, elapse, rep)
	local ret = CL:AddDelayTask(_LuaString, elapse, rep)
	return as3.tolua(ret)
end
CLDelDelayTask = function(_ID)
	CL:DelDelayTask(_ID)
end
CLTaskSetElapse = function(_ID, _Elapse)
	local ret = CL:TaskSetElapse(_ID, _Elapse)
	return as3.tolua(ret)
end
CLTaskSetCount = function(_ID, _Count)
	local ret = CL:TaskSetCount(_ID, _Count)
	return as3.tolua(ret)
end
CLTaskSetScript = function(_ID, _Script)
	local ret = CL:TaskSetScript(_ID, _Script)
	return as3.tolua(ret)
end
CLTaskSetParam = function(id, key, value)
	local ret = CL:TaskSetParam(id, key, value)
	return as3.tolua(ret)
end
CLTaskDelParam = function(id, key)
	CL:TaskDelParam(id, key)
end
CLTaskGetCurrentTaskID = function()
	local ret = CL:TaskGetCurrentTaskID()
	return as3.tolua(ret)
end
CLTaskGetElapse = function(id)
	local ret = CL:TaskGetElapse(id)
	return as3.tolua(ret)
end
CLTaskGetCount = function(id)
	local ret = CL:TaskGetCount(id)
	return tonumber(as3.tolua(ret))
end
CLTaskGetCurrentTimes = function(id)
	local ret = CL:TaskGetCurrentTimes(id)
	return tonumber(as3.tolua(ret))
end
CLTaskGetParam = function(id, key)
	local ret = CL:TaskGetParam(id, key)
	return tostring(as3.tolua(ret))
end
CLHotKeyRegister = function( _HotKeyStr, _Name,  _LuaFuncName)
	CL:HotKeyRegister( _HotKeyStr, _Name,  _LuaFuncName)
end
CLHotKeyDelete = function( _HotKeyStr)
	CL:HotKeyDelete( _HotKeyStr)
end
CLHotKeyDeleteAll = function()
	CL:HotKeyDeleteAll()
end
CLGetScreenWidth = function()
	local ret = CL:GetScreenWidth()
	return tonumber(as3.tolua(ret))
end
CLGetScreenHeight = function()
	local ret = CL:GetScreenHeight()
	return tonumber(as3.tolua(ret))
end
CLSetDownLoadMessageInfo = function(_PosX, _PosY, _ColorString)
	local ret = CL:SetDownLoadMessageInfo(_PosX, _PosY, _ColorString)
	return as3.tolua(ret)
end
CLLogicLookInfo = function(playerName)
	local ret = CL:LogicLookInfo(playerName)
	return as3.tolua(ret)
end
CLLogicSendPrivateTalk = function(playerName)
	local ret = CL:LogicSendPrivateTalk(playerName)
	return as3.tolua(ret)
end
CLLogicAddFriend = function(playerName)
	local ret = CL:LogicAddFriend(playerName)
	return as3.tolua(ret)
end
CLLogicTeamInvite = function(playerName)
	CL:LogicTeamInvite(playerName)
end
CLLogicAddToBlackList = function(playerName)
	local ret = CL:LogicAddToBlackList(playerName)
	return as3.tolua(ret)
end
CLLogicDelFriend = function(playerName)
	local ret = CL:LogicDelFriend(playerName)
	return as3.tolua(ret)
end
CLGetChannelChatRecord = function(_ChannelType)
	local ret = CL:GetChannelChatRecord(_ChannelType)
	return tonumber(as3.tolua(ret))
end
CLPackageActivePage = function(page)
	CL:PackageActivePage(page)
end
CLPackageFindItemPosById = function(_ItemId)
	local ret = CL:PackageFindItemPosById(_ItemId)
	return as3.tolua(ret)
end
CLPackageGetGUIDByPos = function(_ItemPos)
	local ret = CL:PackageGetGUIDByPos(_ItemPos)
	return tostring(as3.tolua(ret))
end
CLWareHouseAdvActivePage = function(page)
	CL:WareHouseAdvActivePage(page)
end
CLSetSelctDrawColor = function(_R, _G, _B, _A)
	CL:SetSelctDrawColor(_R, _G, _B, _A)
end
CLInStallRegion = function(_CurMapKeyName, _GridX, _GridY)
	local ret = CL:InStallRegion(_CurMapKeyName, _GridX, _GridY)
	return as3.tolua(ret)
end
CLSetDrawDLImage = function(_DrawDLImage)
	CL:SetDrawDLImage(_DrawDLImage)
end
CLSkillBarGetItemIdByPos = function(_Pos)
	local ret = CL:SkillBarGetItemIdByPos(_Pos)
	return tonumber(as3.tolua(ret))
end
CLTaskQueryAccepted = function(taskID)
	local ret = CL:TaskQueryAccepted(taskID)
	return as3.tolua(ret)
end
CLTaskQueryReady = function(taskID)
	local ret = CL:TaskQueryReady(taskID)
	return as3.tolua(ret)
end
CLGetPlayerStatus = function()
	local ret = CL:GetPlayerStatus()
	return as3.tolua(ret)
end
CLQuiteGame = function()
	CL:QuiteGame()
end
CLShowBulkBuyWnd = function(_ItemKeyName, _PriceType, _UnitPrice, _InvokeFuncName)
	CL:ShowBulkBuyWnd(_ItemKeyName, _PriceType, _UnitPrice, _InvokeFuncName)
end
CLMoveItemToHeroPackage = function(itemGUIDStr)
	local ret = CL:MoveItemToHeroPackage(itemGUIDStr)
	return as3.tolua(ret)
end
CLGetBrokenEquiment = function()
	local ret = CL:GetBrokenEquiment()
	return tonumber(as3.tolua(ret))
end
CLGetEquimentItemDataList = function()
	local ret = CL:GetEquimentItemDataList()
	return as3.tolua(ret)
end
CLGetPlayerTargetEquipData = function()
	local ret = CL:GetPlayerTargetEquipData()
	return as3.tolua(ret)
end
CLGetHeroEquimentItemDataList = function()
	local ret = CL:GetHeroEquimentItemDataList()
	return as3.tolua(ret)
end
CLGetEquimentItemDataPart = function(_PartType)
	local ret = CL:GetEquimentItemDataPart(_PartType)
	return tonumber(as3.tolua(ret))
end
CLGetPlayerSelfEquipGUID = function(_PartType)
	local ret = CL:GetPlayerSelfEquipGUID(_PartType)
	return tostring(as3.tolua(ret))
end
CLPlayerMoveItem = function(_ItemGUID, _Site)
	CL:PlayerMoveItem(_ItemGUID, _Site)
end
CLPlayerGetPakageFreeSiteIdx = function()
	local ret = CL:PlayerGetPakageFreeSiteIdx()
	return tonumber(as3.tolua(ret))
end
CLShowFashion = function(_Show)
	CL:ShowFashion(_Show)
end
CLGetShowFashion = function()
	local ret = CL:GetShowFashion()
	return as3.tolua(ret)
end
CLHeroShowFashion = function(_Show)
	CL:HeroShowFashion(_Show)
end
CLHeroGetShowFashion = function()
	local ret = CL:HeroGetShowFashion()
	return as3.tolua(ret)
end
CLDoSubmitForm = function(_ScriptName, _FunctionName, _SubmitString)
	local ret = CL:DoSubmitForm(_ScriptName, _FunctionName, _SubmitString)
	return as3.tolua(ret)
end
CLPlaySound = function(_SoundName, _SoundType)
	local ret = CL:PlaySound(_SoundName, _SoundType)
	return tonumber(as3.tolua(ret))
end
CLPlay3DSound = function(_SoundName, _LisernerPosX, _LisernerPosY, _Loop)
	CL:Play3DSound(_SoundName, _LisernerPosX, _LisernerPosY, _Loop)
end
CLPlaySoundEx = function(_FileName, _Url, _Elapse)
	CL:PlaySoundEx(_FileName, _Url, _Elapse)
end
CLStopSoundPlay = function(_SoundID)
	CL:StopSoundPlay(_SoundID)
end
CLSetGameEventFlag = function( _DataIdx,  _Data)
	CL:SetGameEventFlag( _DataIdx,  _Data)
end
CLGetGameEventFlag = function( _DataIdx)
	local ret = CL:GetGameEventFlag( _DataIdx)
	return tonumber(as3.tolua(ret))
end
CLGetPlayerSelfPropBase = function(_PropertyType)
	local ret = CL:GetPlayerSelfPropBase(_PropertyType)
	return as3.tolua(ret)
end
CLGetPlayerSelfProperty32 = function(_PropertyType)
	local ret = CL:GetPlayerSelfProperty32(_PropertyType)
	return as3.tolua(ret)
end
CLGetPlayerSelfProperty64 = function(_PropertyType)
	local ret = CL:GetPlayerSelfProperty64(_PropertyType)
	return as3.tolua(ret)
end
CLGetPlayerPropBase = function(_RoleGUID, _PropertyType)
	local ret = CL:GetPlayerPropBase(_RoleGUID, _PropertyType)
	return as3.tolua(ret)
end
CLGetPlayerProperty32 = function(_RoleGUID, _PropertyType)
	local ret = CL:GetPlayerProperty32(_RoleGUID, _PropertyType)
	return as3.tolua(ret)
end
CLGetPlayerProperty64 = function(_RoleGUID, _PropertyType)
	local ret = CL:GetPlayerProperty64(_RoleGUID, _PropertyType)
	return as3.tolua(ret)
end
CLGetCurHeroGUID = function()
	local ret = CL:GetCurHeroGUID()
	return tostring(as3.tolua(ret))
end
CLGetViewEquipTarPlayerGUID = function()
	local ret = CL:GetViewEquipTarPlayerGUID()
	return tostring(as3.tolua(ret))
end
CLGetTeamPropByPlayerGUID = function(_RoleGUID, _PropertyType)
	local ret = CL:GetTeamPropByPlayerGUID(_RoleGUID, _PropertyType)
	return as3.tolua(ret)
end
CLGetPackageItemGUIDataList = function()
	local ret = CL:GetPackageItemGUIDataList()
	return as3.tolua(ret)
end
CLGetPackageItemGUIDList = function()
	local ret = CL:GetPackageItemGUIDList()
	return as3.tolua(ret)
end
CLGetPlayerSelfSkillList = function()
	local ret = CL:GetPlayerSelfSkillList()
	return as3.tolua(ret)
end
CLRoleSetDrawAvatar = function(_RoleGUID, _Flag)
	CL:RoleSetDrawAvatar(_RoleGUID, _Flag)
end
CLSetHeroColor = function(_ColorStr)
	CL:SetHeroColor(_ColorStr)
end
CLSetHeroColorRGB = function(_R, _G, _B)
	CL:SetHeroColorRGB(_R, _G, _B)
end
CLGetMouseGUIItemData = function()
	local ret = CL:GetMouseGUIItemData()
	return tonumber(as3.tolua(ret))
end
CLSetMouseGUIItemData = function(_ItemGUIDataHandle)
	CL:SetMouseGUIItemData(_ItemGUIDataHandle)
end
CLPutMouseGUIItemData = function(_ItemGUIDataHandle)
	CL:PutMouseGUIItemData(_ItemGUIDataHandle)
end
CLClearMouseGUIItemData = function()
	CL:ClearMouseGUIItemData()
end
CLGetItemGUIDataPropByType = function(_ItemGUIDataHandle, _PropType)
	local ret = CL:GetItemGUIDataPropByType(_ItemGUIDataHandle, _PropType)
	return as3.tolua(ret)
end
CLGetItemEntityHandleByGUID = function(_ItemGUID)
	local ret = CL:GetItemEntityHandleByGUID(_ItemGUID)
	return tonumber(as3.tolua(ret))
end
CLGetItemEntityPropByGUID = function(_ItemGUID, _PropType)
	local ret = CL:GetItemEntityPropByGUID(_ItemGUID, _PropType)
	return as3.tolua(ret)
end
CLGetItemEntityPropByHandle = function(_ItemEntityHandle, _PropType)
	local ret = CL:GetItemEntityPropByHandle(_ItemEntityHandle, _PropType)
	return as3.tolua(ret)
end
CLGetItemEntityCustomVarInt = function(_ItemEntityHandle, _ItemCustomKey)
	local ret = CL:GetItemEntityCustomVarInt(_ItemEntityHandle, _ItemCustomKey)
	return tonumber(as3.tolua(ret))
end
CLGetItemEntityCustomVarStr = function(_ItemEntityHandle, _ItemCustomKey)
	local ret = CL:GetItemEntityCustomVarStr(_ItemEntityHandle, _ItemCustomKey)
	return tostring(as3.tolua(ret))
end
CLGetItemTemplateHandleByGUID = function(_ItemGUID)
	local ret = CL:GetItemTemplateHandleByGUID(_ItemGUID)
	return tonumber(as3.tolua(ret))
end
CLGetItemTemplateHandleByID = function(id)
	local ret = CL:GetItemTemplateHandleByID(id)
	return tonumber(as3.tolua(ret))
end
CLGetItemTemplateHandleByKeyName = function(keyName)
	local ret = CL:GetItemTemplateHandleByKeyName(keyName)
	return tonumber(as3.tolua(ret))
end
CLGetItemTemplatePropByID = function(id, _PropType)
	local ret = CL:GetItemTemplatePropByID(id, _PropType)
	return as3.tolua(ret)
end
CLGetItemTemplatePropByHandle = function(_ItemTemplateHandle, _PropType)
	local ret = CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, _PropType)
	return as3.tolua(ret)
end
CLGetMallItemHandleByName = function(_ItemName)
	local ret = CL:GetMallItemHandleByName(_ItemName)
	return tonumber(as3.tolua(ret))
end
CLGetSuitPropByID = function(_ID, _PropType)
	local ret = CL:GetSuitPropByID(_ID, _PropType)
	return as3.tolua(ret)
end
CLGetSuitItemListByID = function(_ID)
	local ret = CL:GetSuitItemListByID(_ID)
	return as3.tolua(ret)
end
CLGetSkillTemplateHandleByID = function(skillid)
	local ret = CL:GetSkillTemplateHandleByID(skillid)
	return tonumber(as3.tolua(ret))
end
CLGetSkillTemplatePropByID = function(skillid,propType)
	local ret = CL:GetSkillTemplatePropByID(skillid,propType)
	return as3.tolua(ret)
end
CLGetSkillPropByHandle = function(_SkillHandle,propType)
	local ret = CL:GetSkillPropByHandle(_SkillHandle,propType)
	return as3.tolua(ret)
end
CLGetBuffProp = function(_BuffID, _PropType)
	local ret = CL:GetBuffProp(_BuffID, _PropType)
	return as3.tolua(ret)
end
CLGetAttrProp = function(attrID, propType)
	local ret = CL:GetAttrProp(attrID, propType)
	return as3.tolua(ret)
end
CLGetMapNameByKeyName = function(_MapKeyName)
	local ret = CL:GetMapNameByKeyName(_MapKeyName)
	return tostring(as3.tolua(ret))
end
CLGetCurMapKeyName = function()
	local ret = CL:GetCurMapKeyName()
	return tostring(as3.tolua(ret))
end
CLIsTextureExists = function(_ID)
	local ret = CL:IsTextureExists(_ID)
	return as3.tolua(ret)
end
CLGetTextureHeight = function(_ID)
	local ret = CL:GetTextureHeight(_ID)
	return tonumber(as3.tolua(ret))
end
CLGetTextureWidth = function(_ID)
	local ret = CL:GetTextureWidth(_ID)
	return tonumber(as3.tolua(ret))
end
CLBeginFlower = function(_ImageID, _Param)
	local ret = CL:BeginFlower(_ImageID, _Param)
	return as3.tolua(ret)
end
CLAddMagicToPoint = function(magicId, blockX, blockY, aniSpeed, life)
	local ret = CL:AddMagicToPoint(magicId, blockX, blockY, aniSpeed, life)
	return tonumber(as3.tolua(ret))
end
CLAddMagicToRole = function(magicId, roleGUID, aniSpeed, life)
	local ret = CL:AddMagicToRole(magicId, roleGUID, aniSpeed, life)
	return tonumber(as3.tolua(ret))
end
CLDelMagicFromPoint = function(magicId, blockX, blockY)
	CL:DelMagicFromPoint(magicId, blockX, blockY)
end
CLDelMagicFromRole = function(magicId, roleGUID)
	CL:DelMagicFromRole(magicId, roleGUID)
end
CLDelMagicByObjID = function(_MagicObjID)
	CL:DelMagicByObjID(_MagicObjID)
end
CLGetMagicTemplateHandleByID = function(id)
	local ret = CL:GetMagicTemplateHandleByID(id)
	return tonumber(as3.tolua(ret))
end
CLGetMagicTemplateHandleByName = function(_Name)
	local ret = CL:GetMagicTemplateHandleByName(_Name)
	return tonumber(as3.tolua(ret))
end
CLGetMagicTemplatePropByID = function(_ID, _PropType)
	local ret = CL:GetMagicTemplatePropByID(_ID, _PropType)
	return as3.tolua(ret)
end
CLGetMagicTemplatePropByHandle = function(_MagicTemplateHandle, _PropType)
	local ret = CL:GetMagicTemplatePropByHandle(_MagicTemplateHandle, _PropType)
	return as3.tolua(ret)
end
CLGetMagicEntityHandleByObjID = function(_MagicObjID)
	local ret = CL:GetMagicEntityHandleByObjID(_MagicObjID)
	return tonumber(as3.tolua(ret))
end
CLGetMagicEntityPropByObjID = function(_MagicObjID, _PropType)
	local ret = CL:GetMagicEntityPropByObjID(_MagicObjID, _PropType)
	return as3.tolua(ret)
end
CLGetMagicEntityPropByHandle = function(_MagicEntityHandle, _PropType)
	local ret = CL:GetMagicEntityPropByHandle(_MagicEntityHandle, _PropType)
	return as3.tolua(ret)
end
CLGetDelayMagicPropByObjID = function(_DelayMagicObjID, _PropType)
	local ret = CL:GetDelayMagicPropByObjID(_DelayMagicObjID, _PropType)
	return as3.tolua(ret)
end
CLCopyTextToClipBoard = function(_TextString)
	CL:CopyTextToClipBoard(_TextString)
end
CLGetTextToClipBoard = function()
	local ret = CL:GetTextToClipBoard()
	return tostring(as3.tolua(ret))
end
CLSetPlayerCustomData = function(_KeyName, _Data)
	CL:SetPlayerCustomData(_KeyName, _Data)
end
CLGetPlayerCustomData = function(_KeyName)
	local ret = CL:GetPlayerCustomData(_KeyName)
	return as3.tolua(ret)
end
CLSavePlayerCustomData = function()
	CL:SavePlayerCustomData()
end
CLAddAttackAutoUseSkill = function(_SkillLinkID)
	CL:AddAttackAutoUseSkill(_SkillLinkID)
end
CLDelAttackAutoUseSkill = function(_SkillLinkID)
	CL:DelAttackAutoUseSkill(_SkillLinkID)
end
CLDoPlayerRelive = function()
	CL:DoPlayerRelive()
end
CLSetCurFont = function(_FontName)
	CL:SetCurFont(_FontName)
end
CLTextOut = function(_XPos, _YPos, _Text, _Color)
	CL:TextOut(_XPos, _YPos, _Text, _Color)
end
CLTextOutEx = function(_FontName,_XPos, _YPos, _Text, _Color)
	CL:TextOutEx(_FontName,_XPos, _YPos, _Text, _Color)
end
CLDrawImage = function(_XPos, _YPos, _ImageID)
	CL:DrawImage(_XPos, _YPos, _ImageID)
end
CLGetKillerName = function()
	local ret = CL:GetKillerName()
	return tostring(as3.tolua(ret))
end
CLGetTestServerNameList = function(_Handle)
	local ret = CL:GetTestServerNameList(_Handle)
	return tonumber(as3.tolua(ret))
end
CLDoSelectServer = function(_Handle, _ServerIdx)
	CL:DoSelectServer(_Handle, _ServerIdx)
end
CLDoServerQuite = function(_Handle, _ServerIdx)
	CL:DoServerQuite(_Handle, _ServerIdx)
end
CLDoItemArrange = function(_type)
	CL:DoItemArrange(_type)
end
CLDoItemSplit = function()
	CL:DoItemSplit()
end
CLOnOpenStall = function()
	CL:OnOpenStall()
end
CLOpenGameFormDlg = function(formDlgName, xPos, yPos)
	CL:OpenGameFormDlg(formDlgName, xPos, yPos)
end
CLOnOpenTop = function()
	CL:OnOpenTop()
end
CLOnOpenCampaign = function()
	CL:OnOpenCampaign()
end
CLOnOpenWorld = function()
	CL:OnOpenWorld()
end
CLOnOpenPakage = function()
	CL:OnOpenPakage()
end
CLOnFriendWindow = function()
	CL:OnFriendWindow()
end
CLOnSkillWindow = function()
	CL:OnSkillWindow()
end
CLOnMailWindow = function()
	CL:OnMailWindow()
end
CLOnQuestWindow = function()
	CL:OnQuestWindow()
end
CLOnSettingWindow = function()
	CL:OnSettingWindow()
end
CLOnFamilyWindow = function()
	CL:OnFamilyWindow()
end
CLOnEhanceRolePreperyWindow = function()
	CL:OnEhanceRolePreperyWindow()
end
CLOnGameMallWindow = function()
	CL:OnGameMallWindow()
end
CLOnRoleWindow = function()
	CL:OnRoleWindow()
end
CLOnFashionWindow = function()
	CL:OnFashionWindow()
end
CLSetRoleWindowTab = function(type)
	CL:SetRoleWindowTab(type)
end
CLOnAchieveWindow = function()
	CL:OnAchieveWindow()
end
CLOnTradeBtn = function(name)
	CL:OnTradeBtn(name)
end
CLOnTeamBtn = function()
	CL:OnTeamBtn()
end
CLOnSoundMute = function(_EditHandle)
	CL:OnSoundMute(_EditHandle)
end
CLGetSoundSetting = function()
	local ret = CL:GetSoundSetting()
	return as3.tolua(ret)
end
CLOnAttackMode = function()
	CL:OnAttackMode()
end
CLSetAttackMode = function(Type)
	CL:SetAttackMode(Type)
end
CLQuiteToLogin = function()
	CL:QuiteToLogin()
end
CLOnHeroListWindow = function()
	CL:OnHeroListWindow()
end
CLOnHeroPakageWindow = function()
	CL:OnHeroPakageWindow()
end
CLOnHeroPropWindow = function()
	CL:OnHeroPropWindow()
end
CLOnSummonHero = function()
	CL:OnSummonHero()
end
CLOnShowHide = function()
	CL:OnShowHide()
end
CLOnRide = function()
	CL:OnRide()
end
CLSetColorTableData = function( _Idx,  _r,  _g,  _b,  _a)
	CL:SetColorTableData( _Idx,  _r,  _g,  _b,  _a)
end
CLSetGUIFormColorData = function( _Idx,  _r,  _g,  _b,  _a)
	CL:SetGUIFormColorData( _Idx,  _r,  _g,  _b,  _a)
end
CLGetCallBackCount = function( _TextString)
	local ret = CL:GetCallBackCount( _TextString)
	return tonumber(as3.tolua(ret))
end
CLSetChatWindowIsWhite = function( _Flag)
	CL:SetChatWindowIsWhite( _Flag)
end
CLSetGUIAnimate = function(_Handle, _Flag)
	CL:SetGUIAnimate(_Handle, _Flag)
end
CLGetBasicSetting = function(id,def)
	local ret = CL:GetBasicSetting(id,def)
	return as3.tolua(ret)
end
CLChangeBasicSetting = function(id,b)
	CL:ChangeBasicSetting(id,b)
end
CLChatWindowSendMessage = function(_CurInputString,_CurrenChannel)
	CL:ChatWindowSendMessage(_CurInputString,_CurrenChannel)
end
CLChangeChatType = function(type)
	CL:ChangeChatType(type)
end
CLChangeQuestTrackType = function(type)
	CL:ChangeQuestTrackType(type)
end
CLPrivateChatForbiden = function(value)
	CL:PrivateChatForbiden(value)
end
CLTeamChatForbiden = function(value)
	CL:TeamChatForbiden(value)
end
CLSpeakChatForbiden = function(value)
	CL:SpeakChatForbiden(value)
end
CLFamilyChatForbiden = function(value)
	CL:FamilyChatForbiden(value)
end
CLNearChatForbiden = function(value)
	CL:NearChatForbiden(value)
end
CLOnOpenPrivateForbiden = function()
	CL:OnOpenPrivateForbiden()
end
CLTeamChatShow = function(value)
	CL:TeamChatShow(value)
end
CLWorldChatShow = function(value)
	CL:WorldChatShow(value)
end
CLFamilyChatShow = function(value)
	CL:FamilyChatShow(value)
end
CLPrivateChatShow = function(value)
	CL:PrivateChatShow(value)
end
CLCurrentChatShow = function(value)
	CL:CurrentChatShow(value)
end
CLAllChatShow = function(value)
	CL:AllChatShow(value)
end
CLChangeChatShowType = function(type)
	CL:ChangeChatShowType(type)
end
CLSetBrightness = function(value)
	CL:SetBrightness(value)
end
CLOnTitleApply = function(id)
	CL:OnTitleApply(id)
end
CLGetTitleList = function()
	CL:GetTitleList()
end
CLGetMyTitleList = function()
	CL:GetMyTitleList()
end
CLOnShowSkillPage = function(page)
	CL:OnShowSkillPage(page)
end
CLGetPlayerSelfSkillArray = function()
	local ret = CL:GetPlayerSelfSkillArray()
	return as3.tolua(ret)
end
CLGetPlayerTemplateProperty = function(job,level,_PropertyType)
	local ret = CL:GetPlayerTemplateProperty(job,level,_PropertyType)
	return as3.tolua(ret)
end
CLGetRankList = function(type,key,fun)
	local ret = CL:GetRankList(type,key,fun)
	return as3.tolua(ret)
end
CLGetTradeMallList = function(pageId)
	local ret = CL:GetTradeMallList(pageId)
	return as3.tolua(ret)
end
CLGetMallItemInfo = function()
	local ret = CL:GetMallItemInfo()
	return as3.tolua(ret)
end
CLShowMallItemInfo = function(page)
	CL:ShowMallItemInfo(page)
end
CLBuySortMallItemByIndex = function(itemIndex, _UseBulkWnd,showMessageBox)
	CL:BuySortMallItemByIndex(itemIndex, _UseBulkWnd,showMessageBox)
end
CLBuyMallItemByIndex = function(itemIndex, count,showMessageBox)
	CL:BuyMallItemByIndex(itemIndex, count,showMessageBox)
end
CLBuyMallItemUseBulkWnd = function(itemIndex)
	CL:BuyMallItemUseBulkWnd(itemIndex)
end
CLResetSortMallSelect = function()
	CL:ResetSortMallSelect()
end
CLGetMapNpcList = function(mapName)
	CL:GetMapNpcList(mapName)
end
CLGetNearPlayerList = function(mapName)
	CL:GetNearPlayerList(mapName)
end
CLGetJumpList = function(mapName)
	CL:GetJumpList(mapName)
end
CLAutoRunByNpcName = function(name)
	CL:AutoRunByNpcName(name)
end
CLAutoRunByPos = function(mapName,posx,posy)
	CL:AutoRunByPos(mapName,posx,posy)
end
CLGetPrepareData = function(key)
	local ret = CL:GetPrepareData(key)
	return as3.tolua(ret)
end
CLAcceptP2pInvite = function(guidStr,accept)
	CL:AcceptP2pInvite(guidStr,accept)
end
CLAcceptTeamInvite = function(name,accept)
	CL:AcceptTeamInvite(name,accept)
end
CLSetP2pGold = function(val)
	CL:SetP2pGold(val)
end
CLOnCancelP2p = function()
	CL:OnCancelP2p()
end
CLOnConfirmP2p = function()
	CL:OnConfirmP2p()
end
CLOnLockP2p = function(state)
	CL:OnLockP2p(state)
end
CLGetStallBuyList = function()
	CL:GetStallBuyList()
end
CLStallSetPrice = function(itemHandle,priceType, price)
	CL:StallSetPrice(itemHandle,priceType, price)
end
CLStallCancelSetPrice = function(itemHandle)
	CL:StallCancelSetPrice(itemHandle)
end
CLStartStall = function()
	CL:StartStall()
end
CLCloseStall = function()
	CL:CloseStall()
end
CLStallItemBuyConfirm = function(playerGuid,itemHandle,count)
	CL:StallItemBuyConfirm(playerGuid,itemHandle,count)
end
CLCloseVisitStall = function()
	CL:CloseVisitStall()
end
CLGetFriendList = function(type)
	CL:GetFriendList(type)
end
CLGetGloryList = function()
	CL:GetGloryList()
end
CLGetGloryAward = function(id)
	CL:GetGloryAward(id)
end
CLOpenMail = function(mailguid)
	CL:OpenMail(mailguid)
end
CLDeleteMail = function(mailguid)
	CL:DeleteMail(mailguid)
end
CLAttachmentMail = function(mailguid,index)
	CL:AttachmentMail(mailguid,index)
end
CLWareHouseSetGold = function(type,iptNum)
	local ret = CL:WareHouseSetGold(type,iptNum)
	return as3.tolua(ret)
end
CLOnOpenWing = function()
	CL:OnOpenWing()
end
CLOnOpenForge = function()
	CL:OnOpenForge()
end
CLOnOpenFurnace = function()
	CL:OnOpenFurnace()
end
CLSaveWebGame = function(saveSureHander)
	CL:SaveWebGame(saveSureHander)
end
CLOnOpenBagExpand = function()
	CL:OnOpenBagExpand()
end
CLGetQuickBarList = function()
	local ret = CL:GetQuickBarList()
	return as3.tolua(ret)
end
CLSetQuickBar = function(type,slot,id)
	CL:SetQuickBar(type,slot,id)
end
CLCampaignJoin = function(id)
	CL:CampaignJoin(id)
end
CLSetEnableUseChatFace = function(_Use)
	CL:SetEnableUseChatFace(_Use)
end
CLGetEnableUseChatFace = function()
	local ret = CL:GetEnableUseChatFace()
	return as3.tolua(ret)
end
CLSetMaxFaceCount = function(_Count)
	CL:SetMaxFaceCount(_Count)
end
CLSetChatChannelOpenClose = function(_Channel,_Open)
	CL:SetChatChannelOpenClose(_Channel,_Open)
end
CLSetShowChannelText = function(_Channel,_Open)
	CL:SetShowChannelText(_Channel,_Open)
end
CLGetShowChannelText = function(_Channel)
	local ret = CL:GetShowChannelText(_Channel)
	return as3.tolua(ret)
end
CLInitChannelTextGrowColor = function(_Channel,r,g,b,a)
	CL:InitChannelTextGrowColor(_Channel,r,g,b,a)
end
CLInitChannelFillBackColor = function(_Channel, _R, _G, _B, _A)
	CL:InitChannelFillBackColor(_Channel, _R, _G, _B, _A)
end
CLInitChannelTextColor = function(_Channel, _R, _G, _B, _A)
	CL:InitChannelTextColor(_Channel, _R, _G, _B, _A)
end
CLInitChannelTextGrow = function(_Channel, _TextGrow)
	CL:InitChannelTextGrow(_Channel, _TextGrow)
end
CLSetLuaGlobal = function(luaArg, value)
	CL:SetLuaGlobal(luaArg, value)
end
CLSetLuaVar = function(luaArg, value)
	CL:SetLuaVar(luaArg, value)
end
CLGetStallState = function()
	local ret = CL:GetStallState()
	return tonumber(as3.tolua(ret))
end
CLSetQuickBarByFree = function(type,id)
	local ret = CL:SetQuickBarByFree(type,id)
	return as3.tolua(ret)
end
CLGetQuickBarFreePos = function(type,id)
	local ret = CL:GetQuickBarFreePos(type,id)
	return tonumber(as3.tolua(ret))
end
CLGetMapOption = function()
	local ret = CL:GetMapOption()
	return tonumber(as3.tolua(ret))
end
CLDoPlayerReliveByType = function(type)
	local ret = CL:DoPlayerReliveByType(type)
	return as3.tolua(ret)
end
CLGetMonsterTemplateProperty = function(_KeyName,_PropertyType)
	local ret = CL:GetMonsterTemplateProperty(_KeyName,_PropertyType)
	return as3.tolua(ret)
end
CLGetPlayerCustomIntData = function(_RoleGUID,_DataKey)
	local ret = CL:GetPlayerCustomIntData(_RoleGUID,_DataKey)
	return tonumber(as3.tolua(ret))
end
CLGetPlayerCustomStringData = function(_RoleGUID,_DataKey)
	local ret = CL:GetPlayerCustomStringData(_RoleGUID,_DataKey)
	return tostring(as3.tolua(ret))
end
CLTipCacheClear = function()
	CL:TipCacheClear()
end
CLContinueTask = function()
	CL:ContinueTask()
end
CLSetAutoContinueQuestTime = function(waitTime)
	CL:SetAutoContinueQuestTime(waitTime)
end
CLGetMainQuestMovePos = function()
	local ret = CL:GetMainQuestMovePos()
	return as3.tolua(ret)
end
CLGenFormByStringCache = function(father,id,_Info)
	local ret = CL:GenFormByStringCache(father,id,_Info)
	return as3.tolua(ret)
end
CLGetSelfEquipList = function()
	local ret = CL:GetSelfEquipList()
	return as3.tolua(ret)
end
CLGetPackageEquipList = function()
	local ret = CL:GetPackageEquipList()
	return as3.tolua(ret)
end
CLOnOpenRewardHall = function()
	CL:OnOpenRewardHall()
end
CLOnOpenBoss = function()
	CL:OnOpenBoss()
end
CLOnOpenTreasure = function()
	CL:OnOpenTreasure()
end
CLCompareBetter = function(itemGuid)
	local ret = CL:CompareBetter(itemGuid)
	return as3.tolua(ret)
end
CLOnOpenServiceActivities = function()
	CL:OnOpenServiceActivities()
end
CLOnOpenNewBee = function()
	CL:OnOpenNewBee()
end
CLGetIsClient = function()
	local ret = CL:GetIsClient()
	return tonumber(as3.tolua(ret))
end
CLInnerLevelUp = function(type)
	CL:InnerLevelUp(type)
end
CLGetInnerProperty = function(level,job,_PropertyType)
	local ret = CL:GetInnerProperty(level,job,_PropertyType)
	return as3.tolua(ret)
end
CLLogicTeamInviteEx = function(playerName)
	CL:LogicTeamInviteEx(playerName)
end
CLGetTeamMemberGUIDList = function()
	local ret = CL:GetTeamMemberGUIDList()
	return as3.tolua(ret)
end
CLGetTeamMemberNameList = function()
	local ret = CL:GetTeamMemberNameList()
	return as3.tolua(ret)
end
CLGetNearbyTeamInfo = function(tag,callBackFunc)
	local ret = CL:GetNearbyTeamInfo(tag,callBackFunc)
	return as3.tolua(ret)
end
CLCreateTeam = function(tag,callBackFunc)
	local ret = CL:CreateTeam(tag,callBackFunc)
	return as3.tolua(ret)
end
CLApplyForTeam = function(LeaderName)
	local ret = CL:ApplyForTeam(LeaderName)
	return as3.tolua(ret)
end
CLAcceptApplyTeam = function(application,accept)
	local ret = CL:AcceptApplyTeam(application,accept)
	return as3.tolua(ret)
end
CLLeaveTeam = function()
	local ret = CL:LeaveTeam()
	return as3.tolua(ret)
end
CLTransferTeamLeader = function(Name)
	local ret = CL:TransferTeamLeader(Name)
	return as3.tolua(ret)
end
CLKickOutOfTeam = function(Name)
	local ret = CL:KickOutOfTeam(Name)
	return as3.tolua(ret)
end
CLDismissTeam = function()
	local ret = CL:DismissTeam()
	return as3.tolua(ret)
end
CLGetRoleTeamStatus = function()
	local ret = CL:GetRoleTeamStatus()
	return as3.tolua(ret)
end
CLSetRoleTeamStatus = function(status)
	local ret = CL:SetRoleTeamStatus(status)
	return as3.tolua(ret)
end
CLGetTeamPropByPlayerGUIDAll = function(_RoleGUID, _PropertyType)
	local ret = CL:GetTeamPropByPlayerGUIDAll(_RoleGUID, _PropertyType)
	return as3.tolua(ret)
end
CLGetProtectArr = function(id)
	local ret = CL:GetProtectArr(id)
	return as3.tolua(ret)
end
CLSetProtectIndex = function(id,index,val)
	local ret = CL:SetProtectIndex(id,index,val)
	return as3.tolua(ret)
end
CLGetItemListByType = function(type,index)
	local ret = CL:GetItemListByType(type,index)
	return as3.tolua(ret)
end
CLGetItemListByString = function(key)
	local ret = CL:GetItemListByString(key)
	return as3.tolua(ret)
end
CLSetItemPropByName = function(name,index,selected)
	local ret = CL:SetItemPropByName(name,index,selected)
	return as3.tolua(ret)
end
CLSetSettingWindowTab = function(type)
	local ret = CL:SetSettingWindowTab(type)
	return as3.tolua(ret)
end
CLSetTaskWindowTab = function(type)
	local ret = CL:SetTaskWindowTab(type)
	return as3.tolua(ret)
end
CLAcceptQuestByID = function(questID)
	local ret = CL:AcceptQuestByID(questID)
	return as3.tolua(ret)
end
CLSubmitQuestByID = function(questID)
	local ret = CL:SubmitQuestByID(questID)
	return as3.tolua(ret)
end
CLGetQuestDataByID = function(questID)
	local ret = CL:GetQuestDataByID(questID)
	return as3.tolua(ret)
end
CLGetQuestAwardByID = function(questID)
	local ret = CL:GetQuestAwardByID(questID)
	return as3.tolua(ret)
end
CLDropQuestByID = function(questID)
	local ret = CL:DropQuestByID(questID)
	return as3.tolua(ret)
end
CLGetNpcQuestStateByID = function(npcGuidStr)
	local ret = CL:GetNpcQuestStateByID(npcGuidStr)
	return as3.tolua(ret)
end
CLFamilyCreate = function()
	local ret = CL:FamilyCreate()
	return as3.tolua(ret)
end
CLGetFamilyList = function(startIndex,count,tag,callBackFunc)
	local ret = CL:GetFamilyList(startIndex,count,tag,callBackFunc)
	return as3.tolua(ret)
end
CLFamilyJoinRequest = function(guid)
	local ret = CL:FamilyJoinRequest(guid)
	return as3.tolua(ret)
end
CLFamilyInfoRequest = function(reqType,tag,callBackFunc)
	local ret = CL:FamilyInfoRequest(reqType,tag,callBackFunc)
	return as3.tolua(ret)
end
CLFamilyNoticeConfirm = function(notice,tag,callBackFunc)
	local ret = CL:FamilyNoticeConfirm(notice,tag,callBackFunc)
	return as3.tolua(ret)
end
CLFamilyAddAllyOrEnemy = function(type,name)
	local ret = CL:FamilyAddAllyOrEnemy(type,name)
	return as3.tolua(ret)
end
CLFamilyDelAllyOrEnemy = function(guidStr)
	local ret = CL:FamilyDelAllyOrEnemy(guidStr)
	return as3.tolua(ret)
end
CLFamilyGetTitleMemebers = function(titleId,index)
	local ret = CL:FamilyGetTitleMemebers(titleId,index)
	return as3.tolua(ret)
end
CLFamilyEditTitle = function(titleId,name,tag,callBackFunc)
	local ret = CL:FamilyEditTitle(titleId,name,tag,callBackFunc)
	return as3.tolua(ret)
end
CLFamilyEntitle = function(titleId,name)
	local ret = CL:FamilyEntitle(titleId,name)
	return as3.tolua(ret)
end
CLGetFamilyMemberTitle = function(name)
	local ret = CL:GetFamilyMemberTitle(name)
	return tonumber(as3.tolua(ret))
end
CLFamilyInvite = function(name)
	local ret = CL:FamilyInvite(name)
	return as3.tolua(ret)
end
CLFamilyKick = function(name)
	local ret = CL:FamilyKick(name)
	return as3.tolua(ret)
end
CLFamilyInviteDenyOrAccept = function(accept,familyGUID)
	local ret = CL:FamilyInviteDenyOrAccept(accept,familyGUID)
	return as3.tolua(ret)
end
CLFamilyQuitRequest = function(content,tag,callBackFunc)
	local ret = CL:FamilyQuitRequest(content,tag,callBackFunc)
	return as3.tolua(ret)
end
CLFamilyJoinDenyOrAccept = function(accept,name)
	local ret = CL:FamilyJoinDenyOrAccept(accept,name)
	return as3.tolua(ret)
end
CLFamilyOpenWarehouse = function()
	local ret = CL:FamilyOpenWarehouse()
	return as3.tolua(ret)
end
CLFamilyInputName = function(name)
	local ret = CL:FamilyInputName(name)
	return as3.tolua(ret)
end
CLFamilyDismiss = function(tag,callBackFunc)
	local ret = CL:FamilyDismiss(tag,callBackFunc)
	return as3.tolua(ret)
end
CLFamilyItemTradeLevel = function(level)
	local ret = CL:FamilyItemTradeLevel(level)
	return as3.tolua(ret)
end
CLFamilyCancelJoinReq = function(guidStr,tag,callBackFunc)
	local ret = CL:FamilyCancelJoinReq(guidStr,tag,callBackFunc)
	return as3.tolua(ret)
end
CLAutoFightSetMageSkilllist = function(protect,single,aoe,around)
	local ret = CL:AutoFightSetMageSkilllist(protect,single,aoe,around)
	return as3.tolua(ret)
end
CLAutoFightSetTaoSkilllist = function(single,aoe,servant1,servant2,servant3)
	local ret = CL:AutoFightSetTaoSkilllist(single,aoe,servant1,servant2,servant3)
	return as3.tolua(ret)
end
