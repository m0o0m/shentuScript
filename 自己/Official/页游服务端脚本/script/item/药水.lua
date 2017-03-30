--
--
--
--
--

tblmdname = {
				["攻击力药水"] = { "物理攻击上升50-100", 600 } ,
				["魔法力药水"] = { "魔法攻击上升50-100", 600 } ,
				["道术力药水"] = { "道术攻击上升50-100", 600 } ,
				["HP强化药水"] = { "HP提升4%", 3600 } ,
				["MP强化药水"] = { "MP提升2%", 3600 } ,
}

tblname = {
				"攻击力药水",
				"魔法力药水",
				"道术力药水",
				"HP强化药水",
				"MP强化药水",
}

function main( sPlayerID , sItemID )
	local keyname = lualib:KeyName( sItemID )
	for i=1,#tblname do
		if tblname[i] == keyname then
			lualib:AddBuff( sPlayerID , tblmdname[keyname][1] , tblmdname[keyname][2] )
			
		end
	end
	return true
end