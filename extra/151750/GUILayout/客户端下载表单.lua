download_award = {}

function download_award.main()
	if GetWindow(nil,"下载奖励") ~= 0 then  
		download_award.Close()
	else  
		local _Parent = LuaGlobal["AttachPartent"]
		local _GUIHandle = 0
		_Parent = GUI:WndCreateWnd(_Parent,"下载奖励",1800100001,135,77)
		if _Parent ~= 0 then
			GUI:WndSetSizeM(_Parent,612, 352)
			GUI:WndSetMagicUI(_Parent,1)
		end
		
		_GUIHandle = GUI:ImageCreate(_Parent,"背景角色",1800100002,-42,-26)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:ImageCreate(_Parent,"微端下载",1800100003,192,14)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:ImageCreate(_Parent,"文字1",1800100010,180,94)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:ImageCreate(_Parent,"文字2",1800100009,200,134)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:ImageCreate(_Parent,"文字3",1800100008,170,230)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:ButtonCreate(_Parent,"按钮",1800100004,260,270)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle,1003, "download_award.anniu")
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:ButtonCreate(_Parent,"关闭",1930001002,520,43)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle,1003, "download_award.Close")
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:ButtonCreate(_Parent,"领取",1802900013,260,270)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle,1003, "download_award.GetReward")
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:ImageCreate(_Parent,"itemBackg1",1800000385,249,167)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:ItemCtrlCreate(_Parent,"奖励物品1",0,249,167,64,64)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:ImageCreate(_Parent,"itemBackg2",1800000385,314,167)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:ItemCtrlCreate(_Parent,"奖励物品2",0,314,167,64,64)
		if _GUIHandle ~= 0 then
		end
		
		_GUIHandle = GUI:ImageCreate(_Parent,"itemBackg3",1800000385,379,167)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:ItemCtrlCreate(_Parent,"奖励物品3",0,379,167,64,64)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:ImageCreate(_Parent,"itemBackg4",1800000385,444,167)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:ItemCtrlCreate(_Parent,"奖励物品4",0,444,167,64,64)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		download_award.UIInit(_Parent)
	end 
end
--[[
download_award.Close = function(handle, param, x, y)
	if WndPtInWindow(handle, nil, x, y) then WndClose(handle, "parent") end
end--]]

download_award.info_str = [[描述

怎么兑换
怎么兑换
怎么兑换
]]

download_award.show = 1
download_award.UIInit = function(this)	
	local handle = 0
	local client_award_t = deserialize(FormParam[1])

	local clientType = tonumber(deserialize(FormParam[2]))
	CenterWnd(this)
	GUI:WndSetSizeM(this, 612, 352)
	RichEditAppendString(nil, "下载奖励,说明文字", download_award.info_str)
	if clientType == 0 then
		handle = GetWindow(nil,"下载奖励,领取")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
		handle = GetWindow(nil,"下载奖励,按钮")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, false)
		end
	else
		handle = GetWindow(nil,"下载奖励,领取")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, false)
		end
		handle = GetWindow(nil,"下载奖励,按钮")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
	end
	for i = 1, #client_award_t do
		--RDItemCtrlSetProp(nil, "下载奖励,奖励物品"..i, true, true, true, true, false, false)
		local handle = GetWindow(nil, "下载奖励,奖励物品"..i)
		if handle ~= 0 then
			RDItemCtrlSetGUIDataPropByKeyName(handle,nil,client_award_t[i][1], client_award_t[i][2], false)    --物品框填充
		end
	end
end		

download_award.anniu = function(this)
	local str = WndGetProperty(this, nil, "index")
	
	--UI:Lua_SubmitForm("倒计时","get_download_award", "")
	UI:Lua_SubmitForm("客户端下载","download_web", "")
	
end


function download_award.GetReward()
	UI:Lua_SubmitForm("客户端下载","get_download_award", "")
end

function download_award.Close() 
	local handle = GetWindow(nil,"下载奖励")
	if handle ~= 0 then 
		GUI:WndClose(handle)
	end 
end



download_award.main()