-----------------------ͼ����ʾ-----------------------------
function openServiceActivities_show(player)
	local state1 = lualib:GetInt(player, "specialGift_gift1")
	local state2 = lualib:GetInt(player, "specialGift_gift2")
	local state3 = lualib:GetInt(player, "specialGift_gift3")
	local state4 = lualib:GetInt(player, "specialGift_gift4")
	if state1 == 0 or state2 == 0 or state3 == 0 or state4 == 0 then
		AddSEIcon(player, 1, -3, "�����", 1800200047, "����ʱ", "openServiceActivities","","�����")
	end
end

-------------------ͼ�걻���-----------------------
function openServiceActivities(player,param)
	local tips1 = 0
	--lualib:SysPromptMsg(player,"1"..tostring(param))
	if param ~= "" and param ~= nil then
		tips1 = tonumber(param)
	end
	--lualib:ShowFormWithContent(player, "form�ļ���", "OpenServiceActivities#".. tips1)
	--lualib:ShowFormWithContent(player, "form�ļ���", "ServiceActivities#".. tips1)
	lualib:ShowFormWithContent(player, "�ű���", "CLOnOpenServiceActivities()")
    return ""
end