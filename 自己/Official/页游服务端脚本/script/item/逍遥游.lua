--��ң��


function main(player,item)
	local str = "" 
	str =str.. "local Handle = GetWindow(nil, \"TransmitMagic\")\n"
	str =str.."if Handle ~= 0 then\n"
	str =str.."GUIWndClose(Handle)\n"
	str = str .."end\n"
	lualib:ShowFormWithContent(player,"�ű���",str) 
	lualib:SysPromptMsg(player, "sssss")
	return true
end
