function main(player_guid, item_guid )
	lualib:RunClientScript(player_guid, "CommonScriptFun", "GetNpcTask", item_guid.."#����Ա��#main")
	return true
end