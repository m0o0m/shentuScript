--


--boss_points		BOSS����	
--linglizhi			BOSS����	����
--Ach_jifen			BOSS�ɾ�	


--
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("form/ChallengeBOSS")
require("system/timecount_def")
local BossTbl = {
				{ "����BOSS���־���"	, "boss_points" , 1000000	, "BOSS����"} ,
				{ "�߼�BOSS���־���"	, "boss_points" , 100000	, "BOSS����"} ,
				{ "BOSS���־���"	, "boss_points" , 5000		, "BOSS����"} ,
				{ "BOSS���־���С"	, "boss_points" , 2000	        , "BOSS����"} ,
				
				{ "�߼��ɾ�����"		, "Ach_jifen"	, 80000		, "�ɾ�"} ,
				{ "�߼��ɾ����ư�"		, "Ach_jifen"	, 80000		, "�ɾ�"} ,
				{ "�ɾ�����"			, "Ach_jifen"	, 10000		, "�ɾ�"} ,
}

function main( sPlayerID , sItemID )

	local thekeyname = lualib:KeyName( sItemID )
	local amount = lualib:Item_GetAmount(sPlayerID, sItemID)
	for i=1 , #BossTbl do
		if thekeyname == BossTbl[i][1] then
			lualib:Item_Destroy(sPlayerID, sItemID, "BOSS����", "BOSS����")
			lualib:SetInt( sPlayerID , BossTbl[i][2] , lualib:GetInt( sPlayerID , BossTbl[i][2] ) + BossTbl[i][3] * amount)
			
			openChallengeBoss_magic(sPlayerID)
			lualib:SysTipsMsg(sPlayerID, BossTbl[i][4].."����"..BossTbl[i][3] * amount)
			return true
		end
	end
	return false
end