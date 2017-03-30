--11-16
--HZH
--天山雪莲

tbl_tsxl = {
			--	{ "keyname" , bufftime } ,
			["天山雪莲小"]	= 3600  ,
			["天山雪莲中"]	= 10800 ,
			["天山雪莲大"]	= 43200 ,
			["天山雪莲巨"]	= 86400 ,
			["天山雪莲小绑"] = 3600  ,
			["天山雪莲中绑"] = 10800 ,
			["天山雪莲大绑"] = 43200 ,
			["天山雪莲巨绑"] = 86400 ,
}


function main( sPlayerID , sItemID )

	sItemKey = lualib:KeyName( sItemID )

	if lualib:HasBuff( sPlayerID , "天山雪莲恢复" ) then

		local msg = "\n\n"
		local msg = msg.."    您已服用过天山雪莲并得到加成效果,继续服用\n\n将会覆盖掉之前天山雪莲的状态。您确认要继续使用\n\n当前物品吗？\n\n"
		local msg = msg.."    <@sayes#sPlayerID *01*‖『确认使用』‖>".."        ".."<@sayno *01*‖『暂不使用』‖>\n\n"
		lualib:NPCTalkDetail( sPlayerID , msg , 620 , 220 )
		return true
	else
		if lualib:DelItem( sPlayerID , sItemKey , 1 , 2 , "天山雪莲" , "天山雪莲" ) == false then
			return "使用物品失败"
		else
			lualib:AddBuff( sPlayerID , "天山雪莲恢复" , tbl_tsxl[sItemKey] )
			--lualib:SysMsg_SendPromptMsg( sPlayerID , "道具"..sItemKey.."使用成功！" )
			return true
		end
	end

	return true

end

function sayes( sPlayerID )
	--lualib:SysMsg_SendBroadcastMsg( sItemKey , "sPlayerID=="..sPlayerID )
	if lualib:DelItem( sPlayerID , sItemKey , 1 , 2 , "天山雪莲" , "天山雪莲" ) == false then
		return "使用物品失败"
	else
		lualib:AddBuff( sPlayerID , "天山雪莲恢复" , tbl_tsxl[sItemKey] )
	end
end

function sayno()
	return ""
end

--print( tbl_tsxl["天山雪莲巨绑"] )