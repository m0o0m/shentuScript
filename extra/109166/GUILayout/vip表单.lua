--
-- Author: miyezng
-- Date: 2016-08-29 14:59:19
--
lualib:SetFormAllowFunc({"GetLevel"})

function GetLevel(player)
    local level = lualib:GetVipLevel(player)
    lualib:ShowFormWithContent(player, "½Å±¾±íµ¥", "VipWnd.level="..level..";VipWnd.getLevel()")
    return ""
end