--��Ԫ���һ�����
--��Ԫ���һ�
--HZH
--2016-2-26
--500��Ԫ��


function main( sPlayerID , sItemID )
	
	lualib:Player_AddIngot( sPlayerID , 500 , true , "��Ԫ����ʹ��Ԫ������", sPlayerID )
	return true
	
	--[[
	local item_K = lualib:KeyName( sItemID )
	if lualib:DelItem( sPlayerID , item_K , 1 , 2 , item_K , sPlayerID ) then
		lualib:Player_AddIngot( sPlayerID , 500 , true , "��Ԫ����ʹ��Ԫ������", sPlayerID )
		--lualib:SysMsg_SendBroadcastMsg( "��ð�Ԫ��500" , "��ʾ" )
		return true
	else
		lualib:SysMsg_SendBroadcastMsg( "ʹ�õ���ʧ��" , "" )
	end
	return false--]]
end
