--ת����
--2016-3-7


local zsdTbl = {
				["ת����"]	= { 5000 , 20 } ,
				["�м�ת����"]	= { 10000 , 20 } ,
				["�߼�ת����"]	= { 50000 , 20 } ,
				["����ת����"]	= { 500000 , 10 } ,
}


function main( sPlayerID , sItemID )
	local sKeyName = lualib:KeyName( sItemID )
	local thezsdName = sKeyName.."����"
	local zsdCounts = lualib:GetDayInt( sPlayerID , thezsdName )
	if zsdCounts >= zsdTbl[sKeyName][2] then
		--lualib:( 0, lualib:KeyName2Name( sKeyName , 4 ).."һ�����ʹ��"..zsdTbl[sKeyName][2].."�Σ�����ʹ�ô�������", sPlayerID )
		--lualib:SysMsg_SendCenterMsg( 0 , lualib:KeyName2Name( sKeyName , 4 ).."һ�����ʹ��"..zsdTbl[sKeyName][2].."�Σ�����ʹ�ô�������" , sPlayerID )
		lualib:SysCenterMsg( 0 , lualib:KeyName2Name( sKeyName , 4 ).."һ�����ʹ��"..zsdTbl[sKeyName][2].."�Σ�����ʹ�ô�������" , sPlayerID )
		return true
	end
	if lualib:DelItem( sPlayerID , sKeyName , 1 , 2 , "ת����" , sPlayerID ) and lualib:SetDayInt( sPlayerID , thezsdName , zsdCounts + 1 ) then
		lualib:SetInt( sPlayerID , "ReinRepair" , lualib:GetInt( sPlayerID , "ReinRepair" ) + zsdTbl[sKeyName][1] )
		local lastcounts = zsdTbl[sKeyName][2] - lualib:GetDayInt( sPlayerID , thezsdName )
		--lualib:SysCenterMsg( 0 , "����ת������"..zsdTbl[sKeyName][1].."������໹����ʹ��"..lualib:KeyName2Name( sKeyName , 4 )..lastcounts.."��" , sPlayerID )
		--lualib:SysMsg_SendCenterMsg( 0 , "�����ת������"..zsdTbl[sKeyName][1].."��������໹����ʹ��"..lualib:KeyName2Name( sKeyName , 4 )..lastcounts.."��" , sPlayerID )
		lualib:SysCenterMsg( 0 , "�����ת������"..zsdTbl[sKeyName][1].."��������໹����ʹ��"..lualib:KeyName2Name( sKeyName , 4 )..lastcounts.."��" , sPlayerID )
		return true
	else
		return false
	end
end