function main(player_guid, item_guid )
	lualib:RunClientScript(player_guid, "CommonScriptFun", "GetNpcTask", item_guid.."#传送员表单#main")
	return true
end