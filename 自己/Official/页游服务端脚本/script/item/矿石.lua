function main(player, item)
	local keyname = lualib:KeyName(item)
	local gold = 0
	if keyname=="��ͭ��" then
		gold =1000
	elseif "������"==keyname then
		gold =2000
	elseif "������"==keyname then
		gold =3000
	elseif "�ƽ��"==keyname then
		gold =4000
	end
	
	local mine_day = lualib:GetDayInt(player, "mine_day")
	if mine_day >= 100 then
		lualib:SysCenterMsg( 0 , "����ʹ�ÿ�ʯ�����ﵽ����" , player)
		return false
	end
	
	if lualib:Item_Destroy(player, item, "��ʯ", "��ʯ") then
		lualib:AddBindGold(player, gold, "��ʯ", "��ʯ")
	end
	
	local ItemTble = lualib:BagItemList(player,true,false,false) 
	local Ore_tab = {{},{},{},{}}
	local s = 0
	
	for i=1,#ItemTble do 
		if ItemTble[i] ~= nil then
			local item = lualib:KeyName(ItemTble[i])
			if "��ͭ��"==item then 
				s = s+1
				Ore_tab[1][#Ore_tab[1]+1] = item
			elseif "������"==item then
				s = s+1
				Ore_tab[2][#Ore_tab[2]+1] = item
			elseif "������"==item then 
				s = s+1
				Ore_tab[3][#Ore_tab[3]+1] = item
			elseif "�ƽ��"==item then 
				s = s+1
				Ore_tab[4][#Ore_tab[4]+1] = item
			end
		end
	end
	
	if lualib:HasQuest(player, 800) then
		if s < 8 then 
			lualib:DropQuest(player, 800)
			lualib:AcceptQuest(player, 800)
		end
		lualib:SetQuestGroupHuntingsCount(player, 800, 553, s)
	end
	
	if  lualib:HasQuest(player, 83) then
		if s < 8 then 
			lualib:DropQuest(player, 83)
			lualib:AcceptQuest(player, 83)
		end
		lualib:SetQuestGroupHuntingsCount(player, 83, 553, s)
	end
	
	lualib:SetDayInt(player, "mine_day", mine_day + 1)
    return true                               
end
