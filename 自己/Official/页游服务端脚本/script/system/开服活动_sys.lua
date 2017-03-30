-----------------------图标显示-----------------------------
function openServiceActivities_show(player)
	local state1 = lualib:GetInt(player, "specialGift_gift1")
	local state2 = lualib:GetInt(player, "specialGift_gift2")
	local state3 = lualib:GetInt(player, "specialGift_gift3")
	local state4 = lualib:GetInt(player, "specialGift_gift4")
	if state1 == 0 or state2 == 0 or state3 == 0 or state4 == 0 then
		AddSEIcon(player, 1, -3, "开服活动", 1800200047, "倒计时", "openServiceActivities","","开服活动")
	end
end

-------------------图标被点击-----------------------
function openServiceActivities(player,param)
	local tips1 = 0
	--lualib:SysPromptMsg(player,"1"..tostring(param))
	if param ~= "" and param ~= nil then
		tips1 = tonumber(param)
	end
	--lualib:ShowFormWithContent(player, "form文件表单", "OpenServiceActivities#".. tips1)
	--lualib:ShowFormWithContent(player, "form文件表单", "ServiceActivities#".. tips1)
	lualib:ShowFormWithContent(player, "脚本表单", "CLOnOpenServiceActivities()")
    return ""
end