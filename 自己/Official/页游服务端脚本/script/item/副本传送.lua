

function main( sPlayerID , sItemID )
	lualib:SysMsg_SendBroadcastMsg("�ʹ��ǣ��������ң�".."<@assacac *01*[��]>", "ϵͳ")
	lualib:DisableTimer( sPlayerID , 24 )
end

function assacac( sPlayerID , iTimerID )
	lualib:Player_MapMoveXY( sPlayerID , "��ɽ��" , 100 , 200 , 5 )
end