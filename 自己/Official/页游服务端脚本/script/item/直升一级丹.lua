function main( sPlayerID , sItemID  )
	if lualib:DelItem( sPlayerID , lualib:KeyName( sItemID ) , 1 , 2 , "ֱ��һ����" , "������" ) then
		local uLv = lualib:Level( sPlayerID )
		if uLv < 80 then
			lualib:DelayCall(sPlayerID, 100, "system:on_level_up", ""..uLv + 1)
			lualib:SetLevel( sPlayerID , uLv + 1 )
			return true
		else
			lualib:AddExp( sPlayerID , 10000000 , "��Ӿ���:ʹ��ֱ��һ����" , "��"..sPlayerID )
			return true
		end
	end
end