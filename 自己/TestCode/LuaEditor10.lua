local job = {
	["սʿ"] = {lever = 30,["����"] = "����",["�Ա�"] = "��"},
	["��ʦ"] = {lever = 36,["����"] = "����",["�Ա�"] = "��"},
	["��ʿ"] = {lever = 28,["����"] = "����",["�Ա�"] = "��"}
	
}

local player = {}

for k,v in pairs(job) do 
	if k =="սʿ" then
		player = v;
		
		for k,v in pairs(player) do
			 if k == "lever" then 
				if v>20 and v<30 then 
					print("��ϲ���"..player["����"].."��ú�Ѫ������")
				elseif v>=30 then 
					print("��ϲ���"..player["����"].."��ö����ޣ���")
				else 
					print("���ĵȼ�������Ҫ��")
					
				end
			end
		end
	end
end