function on_create(monster)
	if lualib:Name(monster) == "Ԫ��С��" then
		lualib:AddBuff(monster,"Ԫ���ƺ�",0)
	elseif 	lualib:Name(monster) == "ʥ��С��" then
		lualib:AddBuff(monster,"ʥ���ƺ�",0)
	end
end