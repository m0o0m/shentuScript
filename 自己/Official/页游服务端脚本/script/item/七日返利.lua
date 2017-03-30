 

function main(player, item)
	lualib:ShowFormWithContent(player,"form文件表单","SevenWnd")
    return true                               
end


function on_timer_check(item)
    local self = lualib:Item_GetRole(item)
    if self == "" then return end
		
	local all =  lualib:GetAllDays(0)
	local first_day = lualib:GetInt(item,"first_day")
	--lualib:SysPromptMsg(self,"all-first_day="..all.."-"..first_day)
	lualib:SetInt(self,"first_day",first_day)
	local past = all-first_day
    if past > 6 then 
		lualib:Item_Destroy(self, item, "七日返利时间到", "")
	end
end

function on_create(item)  
    local all = lualib:GetAllDays(0)
	lualib:SetInt(item,"first_day",all)
end