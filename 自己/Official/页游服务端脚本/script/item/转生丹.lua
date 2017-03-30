--转生丹
--2016-3-7


local zsdTbl = {
				["转生丹"]	= { 5000 , 20 } ,
				["中级转生丹"]	= { 10000 , 20 } ,
				["高级转生丹"]	= { 50000 , 20 } ,
				["超级转生丹"]	= { 500000 , 10 } ,
}


function main( sPlayerID , sItemID )
	local sKeyName = lualib:KeyName( sItemID )
	local thezsdName = sKeyName.."次数"
	local zsdCounts = lualib:GetDayInt( sPlayerID , thezsdName )
	if zsdCounts >= zsdTbl[sKeyName][2] then
		--lualib:( 0, lualib:KeyName2Name( sKeyName , 4 ).."一天最多使用"..zsdTbl[sKeyName][2].."次，您的使用次数已满", sPlayerID )
		--lualib:SysMsg_SendCenterMsg( 0 , lualib:KeyName2Name( sKeyName , 4 ).."一天最多使用"..zsdTbl[sKeyName][2].."次，您的使用次数已满" , sPlayerID )
		lualib:SysCenterMsg( 0 , lualib:KeyName2Name( sKeyName , 4 ).."一天最多使用"..zsdTbl[sKeyName][2].."次，您的使用次数已满" , sPlayerID )
		return true
	end
	if lualib:DelItem( sPlayerID , sKeyName , 1 , 2 , "转生丹" , sPlayerID ) and lualib:SetDayInt( sPlayerID , thezsdName , zsdCounts + 1 ) then
		lualib:SetInt( sPlayerID , "ReinRepair" , lualib:GetInt( sPlayerID , "ReinRepair" ) + zsdTbl[sKeyName][1] )
		local lastcounts = zsdTbl[sKeyName][2] - lualib:GetDayInt( sPlayerID , thezsdName )
		--lualib:SysCenterMsg( 0 , "增加转生经验"..zsdTbl[sKeyName][1].."今天最多还可以使用"..lualib:KeyName2Name( sKeyName , 4 )..lastcounts.."次" , sPlayerID )
		--lualib:SysMsg_SendCenterMsg( 0 , "您获得转生经验"..zsdTbl[sKeyName][1].."，今天最多还可以使用"..lualib:KeyName2Name( sKeyName , 4 )..lastcounts.."次" , sPlayerID )
		lualib:SysCenterMsg( 0 , "您获得转生经验"..zsdTbl[sKeyName][1].."，今天最多还可以使用"..lualib:KeyName2Name( sKeyName , 4 )..lastcounts.."次" , sPlayerID )
		return true
	else
		return false
	end
end