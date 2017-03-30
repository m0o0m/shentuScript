--


--boss_points		BOSS积分	
--linglizhi			BOSS灵力	魂力
--Ach_jifen			BOSS成就	


--
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("form/ChallengeBOSS")
require("system/timecount_def")
local BossTbl = {
				{ "超级BOSS积分精魄"	, "boss_points" , 1000000	, "BOSS积分"} ,
				{ "高级BOSS积分精魄"	, "boss_points" , 100000	, "BOSS积分"} ,
				{ "BOSS积分精魄"	, "boss_points" , 5000		, "BOSS积分"} ,
				{ "BOSS积分精魄小"	, "boss_points" , 2000	        , "BOSS积分"} ,
				
				{ "高级成就令牌"		, "Ach_jifen"	, 80000		, "成就"} ,
				{ "高级成就令牌绑"		, "Ach_jifen"	, 80000		, "成就"} ,
				{ "成就令牌"			, "Ach_jifen"	, 10000		, "成就"} ,
}

function main( sPlayerID , sItemID )

	local thekeyname = lualib:KeyName( sItemID )
	local amount = lualib:Item_GetAmount(sPlayerID, sItemID)
	for i=1 , #BossTbl do
		if thekeyname == BossTbl[i][1] then
			lualib:Item_Destroy(sPlayerID, sItemID, "BOSS积分", "BOSS积分")
			lualib:SetInt( sPlayerID , BossTbl[i][2] , lualib:GetInt( sPlayerID , BossTbl[i][2] ) + BossTbl[i][3] * amount)
			
			openChallengeBoss_magic(sPlayerID)
			lualib:SysTipsMsg(sPlayerID, BossTbl[i][4].."增加"..BossTbl[i][3] * amount)
			return true
		end
	end
	return false
end