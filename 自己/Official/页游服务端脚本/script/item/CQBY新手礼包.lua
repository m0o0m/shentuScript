
local Item_TblList = {
						{ "�߼�BOSS�ٻ���"	, 1 } ,
						{ "����Կ��"		, 1 } ,
						{ "����������"	, 1 } ,
						{ "ת��������"	, 1 } ,
						{ "��ש��"			, 1 } ,
}

function main( sPlayerID , sItemID )
	if lualib:GetBagFree( sPlayerID ) < 5 then
		return "�����ո���������5���������������������ȡ"
	end
	if not lualib:DelItem( sPlayerID , lualib:KeyName( sItemID ) , 1 , 2 , sItemID , sPlayerID ) then
		return "ʹ�����ʧ��"
	end
	for i=1,#Item_TblList do
		lualib:AddItem( sPlayerID , Item_TblList[i][1] , Item_TblList[i][2] , true , "CQBY_NewHandGiftBag" , sPlayerID )
	end
end