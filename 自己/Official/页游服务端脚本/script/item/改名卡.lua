function main(player, item)
	local mapKeyName =  lualib:KeyName(lualib:MapGuid(player))
	
	if lualib:Map_IsDgn(mapKeyName) then
		lualib:SysPromptMsg(player,"������ͼ�ڽ�ֹʹ�øõ���")
		return false  
	end

	lualib:ShowFormWithContent(player,"form�ļ���","RenameCard")
    return false                               
end
