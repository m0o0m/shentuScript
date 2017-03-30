function main(sNpcID , sPlayerID )
	
	lualib:RunClientScript(sPlayerID, "CommonScriptFun", "GetNpcTask", sNpcID.."#传送员表单#main")

	return ""
end
