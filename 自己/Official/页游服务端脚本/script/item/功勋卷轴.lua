
local gxtbl = {
          { "�߼���ѫ����" , 50000 },
          { "��ѫ����" , 10000 },
}

function main( sPlayerID , sItemID )
    for i=1,#gxtbl do
        if lualib:KeyName( sItemID ) == gxtbl[i][1] then
            if lualib:SetInt( sPlayerID , "ach_score" , lualib:GetInt( sPlayerID , "ach_score" ) + gxtbl[i][2] ) then
				lualib:SysCenterMsg( 0 , "ʹ��"..lualib:Guid2Name(sItemID).."�ɹ�,����"..gxtbl[i][2].."��ѫ", sPlayerID )
			end
            return true
        end
    end
    return true
end