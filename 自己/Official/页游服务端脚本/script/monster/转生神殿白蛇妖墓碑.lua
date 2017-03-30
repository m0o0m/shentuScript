--
--
--
--
--

local re_x = 35
local re_y = 57

BOSSKey = {
				["ת�����һ��"] = "ת����������1" ,
				["ת��������"] = "ת����������2" ,
				["ת���������"] = "ת����������3" ,
				["ת������Ĳ�"] = "ת����������4" ,
				["ת��������"] = "ת����������5" ,
				["ת���������"] = "ת����������6" ,
				["ת������߲�"] = "ת����������7" ,
				["ת�����˲�"] = "ת����������8" ,
}

function on_create( sMonsterID )
	lualib:AddBuff( sMonsterID , "�޵�" , 0 )
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
			lualib:SysRoleTalk( sMonsterID , ""..hours.."ʱ"..minutes.."��"..seconds.."���ˢ��" )
			--lualib:SysMsg_SendMapMsg( sMapID , "�޳�ħ��������"..hours.."ʱ"..minutes.."��"..seconds.."���ˢ��" )
		else
			if minutes > 0 then
				lualib:SysRoleTalk( sMonsterID , ""..minutes.."��"..seconds.."���ˢ��" )
				--lualib:SysMsg_SendMapMsg( sMapID , "�޳�ħ��������"..minutes.."��"..seconds.."���ˢ��" )
			else
				lualib:SysRoleTalk( sMonsterID , ""..seconds.."���ˢ��" )
				--lualib:SysMsg_SendMapMsg( sMapID , "�޳�ħ��������"..seconds.."���ˢ��" )
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