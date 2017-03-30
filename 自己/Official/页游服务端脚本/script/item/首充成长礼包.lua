local Item_TblList = {
						{ "高级BOSS召唤令"	, 1 } ,
						{ "宝藏钥匙"		, 1 } ,
						{ "玛雅卷轴"		, 1 } ,
						{ "转生神殿卷轴"	, 1 } ,
						{ "金砖大"		, 1 } ,
}

function main( sPlayerID , sItemID )
	if lualib:GetBagFree( sPlayerID ) < 5 then
		lualib:SysMsg_SendPromptMsg(sPlayerID, "背包空格数量少于5个，请清理包裹后再次领取")
		return false
	else
		if not lualib:DelItem( sPlayerID , lualib:KeyName( sItemID ) , 1 , 2 , sItemID , sPlayerID ) then
			lualib:SysMsg_SendPromptMsg(sPlayerID, "物品使用失败")
			return false
		else
			for i=1,#Item_TblList do
				lualib:AddItem( sPlayerID , Item_TblList[i][1] , Item_TblList[i][2] , true , "CQBY_NewHandGiftBag" , sPlayerID )
			end
		end
	end
	
	
end
	return true