
local gxtbl = {
          { "高级功勋卷轴" , 50000 },
          { "功勋卷轴" , 10000 },
}

function main( sPlayerID , sItemID )
    for i=1,#gxtbl do
        if lualib:KeyName( sItemID ) == gxtbl[i][1] then
            if lualib:SetInt( sPlayerID , "ach_score" , lualib:GetInt( sPlayerID , "ach_score" ) + gxtbl[i][2] ) then
				lualib:SysCenterMsg( 0 , "使用"..lualib:Guid2Name(sItemID).."成功,增加"..gxtbl[i][2].."功勋", sPlayerID )
			end
            return true
        end
    end
    return true
end