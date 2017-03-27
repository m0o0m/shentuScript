function LtsReloadEnd()
	LuaParam = {}
	LuaParam[1] = "交易平台表单"
	LuaParam[2] = "元宝" --金币 元宝 物品
	UIDriver_JiaoyipingtaiWnd_OnShowForm()
end

--脚本表单
function UIDriver_Jiaoben_OnShowForm()
	if LuaParam[1] ~= "脚本表单" then return end
	local str = LuaParam[2]
	local func = loadstring(str)
	func()
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"脚本表单",UIDriver_Jiaoben_OnShowForm)

--form内容表单
function UIDriver_Forminfo_OnShowForm()
	if LuaParam[1] ~= "form内容表单" then return end
	local str = LuaParam[2]
	UI:Lua_GenFormByString(str)
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"form内容表单",UIDriver_Forminfo_OnShowForm)

--form文件表单
function UIDriver_Formfile_OnShowForm()
	if LuaParam[1] ~= "form文件表单" then return end
	local str = LuaParam[2]
	UI:Lua_GenForm(str)
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"form文件表单",UIDriver_Formfile_OnShowForm)

--个人竞技场信息表单--
function UIDriver_LtsSelfInfo_OnShowForm()
	if LuaParam[1] ~= "个人竞技场信息表单" then return end
	local Wnd = GetWindow(nil, "个人竞技场信息")
	if Wnd ~= 0 then return end
	CreateWnd(nil, nil, "个人竞技场信息")
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"个人竞技场信息表单",UIDriver_LtsSelfInfo_OnShowForm)

--个人竞技场表单--
function UIDriver_LtsSelfWnd_OnShowForm()
	if LuaParam[1] ~= "个人竞技场表单" then return end
	local Wnd = GetWindow(nil, "个人竞技场")
	if Wnd == 0 then
		CreateWnd(nil, nil, "个人竞技场")
	else
		Lts_swnd_data_init()
		Lts_swnd_wnd_init()
		Lts_swnd_do_init(Wnd)
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"个人竞技场表单",UIDriver_LtsSelfWnd_OnShowForm)

--附魔石提交表单--
function UIDriver_FmsxsWnd_OnShowForm()
	if LuaParam[1] ~= "附魔石吸收表单" then return end
	if GetWindow(nil, "附魔石吸收") == 0 then
		CreateWnd(nil, nil, "附魔石吸收")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"附魔石吸收表单",UIDriver_FmsxsWnd_OnShowForm)

--装备附魔提交表单--
function UIDriver_ZbfumoWnd_OnShowForm()
	if LuaParam[1] ~= "装备附魔表单" then return end
	if GetWindow(nil, "装备附魔") == 0 then
		CreateWnd(nil, nil, "装备附魔")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"装备附魔表单",UIDriver_ZbfumoWnd_OnShowForm)

--荣耀装备兑换表单--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "荣耀装备兑换表单" then return end
	if GetWindow(nil, "荣耀装备兑换") == 0 then
		CreateWnd(nil, nil, "荣耀装备兑换")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"荣耀装备兑换表单",UIDriver_RyzbduihuanWnd_OnShowForm)

--荣耀装备所需物品表单--
function UIDriver_RyzbwupinWnd_OnShowForm()
	if LuaParam[1] ~= "荣耀装备兑换内容表单" then return end
	local func = loadstring(LuaParam[2])
	func()
	if GetWindow(nil, "荣耀装备兑换") ~= 0 then
		LuaUI["荣耀装备兑换"].Update()
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"荣耀装备所需物品表单",UIDriver_RyzbwupinWnd_OnShowForm)


--荣耀装备2转表单--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "荣耀装备2转表单" then return end
	if GetWindow(nil, "荣耀装备2转") == 0 then
		CreateWnd(nil, nil, "荣耀装备2转")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"荣耀装备2转表单",UIDriver_RyzbduihuanWnd_OnShowForm)

--荣耀装备2转所需物品表单--
function UIDriver_RyzbwupinWnd_OnShowForm()
	if LuaParam[1] ~= "荣耀装备2转内容表单" then return end
	local func = loadstring(LuaParam[2])
	func()
	if GetWindow(nil, "荣耀装备2转") ~= 0 then
		LuaUI["荣耀装备2转"].Update()
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"荣耀装备2转所需物品表单",UIDriver_RyzbwupinWnd_OnShowForm)

--荣耀装备3转表单--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "荣耀装备3转表单" then return end
	if GetWindow(nil, "荣耀装备3转") == 0 then
		CreateWnd(nil, nil, "荣耀装备3转")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"荣耀装备3转表单",UIDriver_RyzbduihuanWnd_OnShowForm)

--荣耀装备3转所需物品表单--
function UIDriver_RyzbwupinWnd_OnShowForm()
	if LuaParam[1] ~= "荣耀装备3转内容表单" then return end
	local func = loadstring(LuaParam[2])
	func()
	if GetWindow(nil, "荣耀装备3转") ~= 0 then
		LuaUI["荣耀装备3转"].Update()
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"荣耀装备3转所需物品表单",UIDriver_RyzbwupinWnd_OnShowForm)

--荣耀装备4转表单--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "荣耀装备4转表单" then return end
	if GetWindow(nil, "荣耀装备4转") == 0 then
		CreateWnd(nil, nil, "荣耀装备4转")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"荣耀装备4转表单",UIDriver_RyzbduihuanWnd_OnShowForm)

--荣耀装备4转所需物品表单--
function UIDriver_RyzbwupinWnd_OnShowForm()
	if LuaParam[1] ~= "荣耀装备4转内容表单" then return end
	local func = loadstring(LuaParam[2])
	func()
	if GetWindow(nil, "荣耀装备4转") ~= 0 then
		LuaUI["荣耀装备4转"].Update()
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"荣耀装备4转所需物品表单",UIDriver_RyzbwupinWnd_OnShowForm)

--荣耀装备5转表单--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "荣耀装备5转表单" then return end
	if GetWindow(nil, "荣耀装备5转") == 0 then
		CreateWnd(nil, nil, "荣耀装备5转")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"荣耀装备5转表单",UIDriver_RyzbduihuanWnd_OnShowForm)

--荣耀装备5转所需物品表单--
function UIDriver_RyzbwupinWnd_OnShowForm()
	if LuaParam[1] ~= "荣耀装备5转内容表单" then return end
	local func = loadstring(LuaParam[2])
	func()
	if GetWindow(nil, "荣耀装备5转") ~= 0 then
		LuaUI["荣耀装备5转"].Update()
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"荣耀装备5转所需物品表单",UIDriver_RyzbwupinWnd_OnShowForm)



--荣耀道具兑换表单--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "荣耀道具兑换表单" then return end
	if GetWindow(nil, "荣耀道具兑换") == 0 then
		CreateWnd(nil, nil, "荣耀道具兑换")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"荣耀道具兑换表单",UIDriver_RyzbduihuanWnd_OnShowForm)

--荣耀道具所需物品表单--
function UIDriver_RyzbwupinWnd_OnShowForm()
	if LuaParam[1] ~= "荣耀道具兑换内容表单" then return end
	local func = loadstring(LuaParam[2])
	func()
	if GetWindow(nil, "荣耀道具兑换") ~= 0 then
		LuaUI["荣耀道具兑换"].Update()
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"荣耀道具所需物品表单",UIDriver_RyzbwupinWnd_OnShowForm)

--交易平台表单--
function UIDriver_JiaoyipingtaiWnd_OnShowForm()
	if LuaParam[1] ~= "交易平台表单" then return end
	local style = LuaParam[2]
	if style == "金币" or style == "元宝" or style == "物品" then
		if GetWindow(nil, "交易平台") == 0 then
			CreateWnd(nil, nil, "交易平台")
		end
		LuaUI["交易平台"].OnStyle(style)
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"交易平台表单",UIDriver_JiaoyipingtaiWnd_OnShowForm)

--武器合成表单--
function UIDriver_Wuqihecheng_OnShowForm()
	if LuaParam[1] ~= "武器合成表单" then return end
	LuaParam[3] = 1
	if GetWindow(nil, "装备合成") ~= 0 then
		WndClose(nil, "装备合成")
	end
	CreateWnd(nil, nil, "装备合成")
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"武器合成表单",UIDriver_Wuqihecheng_OnShowForm)

--衣服合成表单--
function UIDriver_Yifuhecheng_OnShowForm()
	if LuaParam[1] ~= "衣服合成表单" then return end
	LuaParam[3] = 2
	if GetWindow(nil, "装备合成") ~= 0 then
		WndClose(nil, "装备合成")
	end
	CreateWnd(nil, nil, "装备合成")
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"衣服合成表单",UIDriver_Yifuhecheng_OnShowForm)

--装备合成内容表单--
function UIDriver_Zbhechengneirong_OnShowForm()
	if LuaParam[1] ~= "装备合成内容表单" then return end
	local func = loadstring(LuaParam[2])
	func()
	LuaUI["装备合成"].Update()
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"装备合成内容表单",UIDriver_Zbhechengneirong_OnShowForm)

--道具合成表单--
function UIDriver_Daojunhecheng_OnShowForm()
	if LuaParam[1] ~= "道具合成表单" then return end
	if GetWindow(nil, "道具合成") ~= 0 then
		WndClose(nil, "道具合成")
	end
	CreateWnd(nil, nil, "道具合成")
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"道具合成表单",UIDriver_Daojunhecheng_OnShowForm)

--道具合成内容表单--
function UIDriver_Djhechengneirong_OnShowForm()
	if LuaParam[1] ~= "道具合成内容表单" then return end
	local func = loadstring(LuaParam[2])
	func()
	LuaUI["道具合成"].Update()
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"道具合成内容表单",UIDriver_Djhechengneirong_OnShowForm)

--双旦活动--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "双旦活动" then return end
	if GetWindow(nil, "双旦活动") == 0 then
		CreateWnd(nil, nil, "双旦活动")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"双旦活动",UIDriver_RyzbduihuanWnd_OnShowForm)

--转生表单--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "转生表单" then return end
	if GetWindow(nil, "转生表单") == 0 then
		CreateWnd(nil, nil, "转生表单")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"转生表单",UIDriver_RyzbduihuanWnd_OnShowForm)