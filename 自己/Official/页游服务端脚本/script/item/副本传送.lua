

function main( sPlayerID , sItemID )
	lualib:SysMsg_SendBroadcastMsg("仆从们，快治疗我！".."<@assacac *01*[传]>", "系统")
	lualib:DisableTimer( sPlayerID , 24 )
end

function assacac( sPlayerID , iTimerID )
	lualib:Player_MapMoveXY( sPlayerID , "巫山城" , 100 , 200 , 5 )
end