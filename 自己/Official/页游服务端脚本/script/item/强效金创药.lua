
local tbl_HP_MP = {
					{ "����ѩ˪" , 120 , 120 },
					{ "��ҩ" , 500 , 100 },
					{ "�󻹵�" , 1500 , 300 },
					}





function main( sPlayerID , sItemID )
	local sItemKey = lualib:KeyName( sItemID )
	local iMp = lualib:MP( sPlayerID )
	local iHp = lualib:HP( sPlayerID )
	for i=1,#tbl_HP_MP do
		if sItemKey == tbl_HP_MP[i][1] then
			lualib:SetHP( sPlayerID , iHp + tbl_HP_MP[i][2] )
			lualib:SetMP( sPlayerID , iMp + tbl_HP_MP[i][3] )
			return ""
		end
	end
end