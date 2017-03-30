function main(player, item)
	local mapKeyName =  lualib:KeyName(lualib:MapGuid(player))
	
	if lualib:Map_IsDgn(mapKeyName) then
		lualib:SysPromptMsg(player,"副本地图内禁止使用该道具")
		return false  
	end

	lualib:ShowFormWithContent(player,"form文件表单","RenameCard")
    return false                               
end
