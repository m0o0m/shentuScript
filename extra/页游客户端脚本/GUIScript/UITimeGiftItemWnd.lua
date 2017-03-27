TimeGiftItemWnd =
{
	FormName = "",
	Notify1 = "",
	Notify2 = "",
	Notify_Submit = "",
	ItemName = {},
	Num = {},
	BindType = {},
	Clear = function()
		TimeGiftItemWnd.FormName = ""
		TimeGiftItemWnd.ItemName = {}
		TimeGiftItemWnd.Num = {}
		TimeGiftItemWnd.BindType = {}
	end
}

function ShowTimeGiftItemWnd()
	if as3.tolua(UI:Lua_GetWindow("TimeGiftItemWnd")) then
		UI:Lua_WndCloseM()
	end
	TimeGiftItemWnd.Notify_Submit = TimeGiftItemWnd.Notify1
	CreateWindow("TimeGiftItemWnd",true,true)
	SaveWnd()
	if as3.tolua(UI:Lua_FindChildM("Close")) then
		UI:Lua_WndRegistScript(RDWndBaseCL_mouse_lbUp,"GeneralCloseBtnClick")
		RestoreWnd()
	end
	if as3.tolua(UI:Lua_FindChildM("GetGiftBtn")) then
		UI:Lua_WndRegistScript(RDWndBaseCL_mouse_lbUp,"GeneralCloseBtnClick")
		RestoreWnd()
	end
	local _ItemCount = #TimeGiftItemWnd.ItemName
	for i=0,8 do
		if as3.tolua(UI:Lua_FindChildM("Item"..i)) then
			UI:Lua_RDItemCtrlSetItemDataAutoManager(true)
			if i < _ItemCount then
				RDItemCtrlSetGUIDataByKeyName(GetCurWindow(), TimeGiftItemWnd.ItemName[i+1],TimeGiftItemWnd.Num[i+1],TimeGiftItemWnd.BindType[i+1]~=0)
			else
				RDItemCtrlClearGUIData(GetCurWindow(), nil)
			end
			RestoreWnd()
		end
	end
	if as3.tolua(UI:Lua_FindChildM("InfoRichEdit")) then
		UI:Lua_RichEditSetEnable(false)
		if TimeGiftItemWnd.FormName == "充值礼包表单" then
			if TimeGiftItemWnd.Notify1 == nil then
				TimeGiftItemWnd.Notify1 = "0"
			end
			if TimeGiftItemWnd.Notify2 == nil then
				TimeGiftItemWnd.Notify2 = "0"
			end
			local _Msg = "只要充值 #COLORCOLOR_YELLOW#"..TimeGiftItemWnd.Notify1.."#COLOREND# 元，便能领取到以下奖品喔~\n"
			_Msg = _Msg.."当前您已充值：#COLORCOLOR_YELLOW#"..TimeGiftItemWnd.Notify2.."#COLOREND# 元 #COLORCOLOR_YELLOW##SELECT#我要充值#SELECTEND##COLOREND#"
			UI:Lua_RichEditAppendString(_Msg)
		else
			UI:Lua_RichEditAppendString("请点击下面的按钮领取礼物！")
		end
		UI:Lua_WndRegistScript(RDWndBaseCL_mouse_lbUp, "TimeGiftItemWnd_LbuttonUp")
		RestoreWnd()
	end
	SetWindowPosAt(0.5,0.3)
	UI:Lua_WndRegistScript(RDWndBaseCL_wnd_close,"TimeGiftItemWndNotifyIt")
end

function TimeGiftItemWnd_LbuttonUp(_Handle,Param,X,Y)
	if not CHECK_BUTTON_UP(X,Y) then return end
	if not as3.tolua(UI:Lua_RichEditGetSelectClickString()) then return end
	if as3.tolua(LuaRet) == "我要充值" then
		UI:Lua_OpenUrlUseIEByType(OPENURL_TYPE_ADDYUANBAO)
	end
end

function TimeGiftItemWndNotifyIt(_Handle,Param,X,Y)
	if TimeGiftItemWnd.Notify_Submit == nil then
		TimeGiftItemWnd.Notify_Submit = ""
	end
	UI:Lua_SubmitForm(TimeGiftItemWnd.FormName,"main",TimeGiftItemWnd.Notify_Submit)
end

function TimeGiftItemWnd_OnShowForm()
	if as3.tolua(LuaParam[1]) == "在线礼包表单" or as3.tolua(LuaParam[1]) == "充值礼包表单" or as3.tolua(LuaParam[1]) == "首充礼包表单" then
		TimeGiftItemWnd.Clear()
		TimeGiftItemWnd.FormName = as3.tolua(LuaParam[1])
		local _FormData = strsplit(as3.tolua(LuaParam[2]),"#")
		TimeGiftItemWnd.Notify1 = _FormData[2]
		TimeGiftItemWnd.Notify2 = _FormData[3]
		--物品1[10]1,物品2[2]0,
		local _Data = strsplit(_FormData[1],",")
		for v,k in pairs(_Data) do
			local KeyName,Temp = strsplittwo(k,"[")
			local Num,BindType = strsplittwo(Temp,"]")
			Temp = #TimeGiftItemWnd.ItemName
			TimeGiftItemWnd.ItemName[Temp+1] = KeyName
			TimeGiftItemWnd.Num[Temp+1] = tonumber(Num)
			TimeGiftItemWnd.BindType[Temp+1] = tonumber(BindType)
		end
		ShowTimeGiftItemWnd()
	end
end

--注册事件
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"TimeGiftItemWnd",TimeGiftItemWnd_OnShowForm)

