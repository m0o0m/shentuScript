--
--
--
--
--

tblmdname = {
				["������ҩˮ"] = { "����������50-100", 600 } ,
				["ħ����ҩˮ"] = { "ħ����������50-100", 600 } ,
				["������ҩˮ"] = { "������������50-100", 600 } ,
				["HPǿ��ҩˮ"] = { "HP����4%", 3600 } ,
				["MPǿ��ҩˮ"] = { "MP����2%", 3600 } ,
}

tblname = {
				"������ҩˮ",
				"ħ����ҩˮ",
				"������ҩˮ",
				"HPǿ��ҩˮ",
				"MPǿ��ҩˮ",
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