local Item_TblList = {
						{ "�߼�BOSS�ٻ���"	, 1 } ,
						{ "����Կ��"		, 1 } ,
						{ "���ž���"		, 1 } ,
						{ "ת��������"	, 1 } ,
						{ "��ש��"		, 1 } ,
}

function main( sPlayerID , sItemID )
	if lualib:GetBagFree( sPlayerID ) < 5 then
		lualib:SysMsg_SendPromptMsg(sPlayerID, "�����ո���������5����������������ٴ���ȡ")
		return false
	else
		if not lualib:DelItem( sPlayerID , lualib:KeyName( sItemID ) , 1 , 2 , sItemID , sPlayerID ) then
			lualib:SysMsg_SendPromptMsg(sPlayerID, "��Ʒʹ��ʧ��")
			return false
		else
			for i=1,#Item_TblList do
				lualib:AddItem( sPlayerID , Item_TblList[i][1] , Item_TblList[i][2] , true , "CQBY_NewHandGiftBag" , sPlayerID )
			end
		end
	end
	
	
end
	return true