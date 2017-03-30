--
--
--
--
--

local re_x = 35
local re_y = 57

BOSSKey = {
				["转生神殿一层"] = "转生神殿白蛇妖1" ,
				["转生神殿二层"] = "转生神殿白蛇妖2" ,
				["转生神殿三层"] = "转生神殿白蛇妖3" ,
				["转生神殿四层"] = "转生神殿白蛇妖4" ,
				["转生神殿五层"] = "转生神殿白蛇妖5" ,
				["转生神殿六层"] = "转生神殿白蛇妖6" ,
				["转生神殿七层"] = "转生神殿白蛇妖7" ,
				["转生神殿八层"] = "转生神殿白蛇妖8" ,
}

function on_create( sMonsterID )
	lualib:AddBuff( sMonsterID , "无敌" , 0 )
	lualib:SetInt( sMonsterID , "forBorn" , 0 )
	lualib:AddTimerEx( sMonsterID , 10 , 1000 , -1 , "On_Monster_born" , "" )
end

function On_Monster_born( sMonsterID  )
	local TimerCounts = lualib:GetInt( sMonsterID , "forBorn" ) + 1
	lualib:SetInt( sMonsterID , "forBorn" , TimerCounts )
	local sMapID = lualib:MapGuid( sMonsterID )
	if TimerCounts < 9000 then
		local lastCounts = 9000 - TimerCounts
		local hours = math.floor(lastCounts/3600)
		local minutes = math.floor((lastCounts - hours*3600)/60)
		local seconds = lastCounts - hours*3600 - minutes*60
		if hours > 0 then
			lualib:SysRoleTalk( sMonsterID , ""..hours.."时"..minutes.."分"..seconds.."秒后刷新" )
			--lualib:SysMsg_SendMapMsg( sMapID , "巨齿魔晶蟒将在"..hours.."时"..minutes.."分"..seconds.."秒后刷新" )
		else
			if minutes > 0 then
				lualib:SysRoleTalk( sMonsterID , ""..minutes.."分"..seconds.."秒后刷新" )
				--lualib:SysMsg_SendMapMsg( sMapID , "巨齿魔晶蟒将在"..minutes.."分"..seconds.."秒后刷新" )
			else
				lualib:SysRoleTalk( sMonsterID , ""..seconds.."秒后刷新" )
				--lualib:SysMsg_SendMapMsg( sMapID , "巨齿魔晶蟒将在"..seconds.."秒后刷新" )
			end
		end
	else
		if lualib:HasTimer( sMonsterID , 10 ) then lualib:DisableTimer( sMonsterID , 10 ) end
		local sMapKeyName = lualib:KeyName( sMapID )
		lualib:Monster_Remove( sMonsterID )
		lualib:Map_GenMonster( sMapID , re_x , re_y , 0 , 4 , BOSSKey[sMapKeyName] , 1 , false )
		lualib:SetInt( sMonsterID , "forBorn" , 0 )
	end
end