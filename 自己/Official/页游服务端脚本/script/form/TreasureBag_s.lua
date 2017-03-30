local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function getAllTreasure(player)
	local treasure = lualib:GetStr(player, "player_treasure")
	if  treasure== nil or treasure == "" then
		--��
		lualib:ShowFormWithContent(player, "�ű���Sc", "trace('��');")
		treasure = lualib:GetStr(player, "player_treasures") 
		treasure = json.decode(treasure)
	else
		--��	
		lualib:ShowFormWithContent(player, "�ű���Sc", "trace('��');")	 
		treasure = json.decode(treasure)
		local treasures = {}
		for i = 1, #treasure do
			if treasure[i] ~= "" then
				if treasures[treasure[i]] ~= nil then
					treasures[treasure[i]] = treasures[treasure[i]]+1
				else
					treasures[treasure[i]] = 1
				end
			end
		end
		treasure = treasures
		lualib:SetStr(player, "player_treasure", "")
	end
	local newStr = {}
	for k,v in pairs(treasure) do
		newStr[#newStr+1] = {k,v}
	end
	lualib:SetStr(player, "player_treasures", json.encode(treasure))
	lualib:ShowFormWithContent(player, "�ű���Sc", "TreasureWnd.SortMyTreasure(" .. serializeSc(newStr) .. ");")
	return ""
end

function getTreasure(player, getItemTb)
	local new_tb = deserialize(getItemTb)
	local length = 0
	for k,v in pairs(new_tb) do
		length=length+1
	end
	if length == 0 then 
		return ""
	end
	local treasure = json.decode(lualib:GetStr(player, "player_treasures"))
	for i,j in pairs(treasure) do
		local bagFree = lualib:Player_GetBagFree(player)
		if bagFree == 0 then
			lualib:ShowFormWithContent(player,"�ű���Sc","TreasureWnd.BagMsg_Box(\"�����ռ䲻��,��Ҫ" .. tostring(length) .. "������!\");")
			break
		end
		if length ~= 0 then
			for k,v in pairs(new_tb) do
				if k == i then
					lualib:AddItem(player,i, j, false, "��һ�ȡ���زֿ���Ʒ", "���")
					length = length - 1
					treasure[i] = nil
				end
			end
		end
	end
	local newStr = {}
	for k,v in pairs(treasure) do
		newStr[#newStr+1] = {k,v}
	end
	lualib:SetStr(player, "player_treasures", json.encode(treasure))
	lualib:ShowFormWithContent(player, "�ű���Sc", "TreasureWnd.SortTab(".. serializeSc(newStr) ..");")
	return ""
	
end

function getItem(player, keyName) 
	if keyName == "" then
		return ""
	end
	local bagFree = lualib:Player_GetBagFree(player)  
	if bagFree < 1 then
		--lualib:MsgBox(player, "�����ռ䲻��,��Ҫһ������!")
		lualib:ShowFormWithContent(player,"�ű���Sc","TreasureWnd.BagMsg_Box(\"�����ռ䲻��,��Ҫһ������!\");")
		return ""
	end 
	local treasure = json.decode(lualib:GetStr(player, "player_treasures"))
	for i,j in pairs(treasure) do
		if i == keyName then
			treasure[i] = nil
			lualib:SetStr(player, "player_treasures", json.encode(treasure))
			lualib:AddItem(player, i, j, false, "��һ�ȡ���زֿ���Ʒ", "���")
			lualib:ShowFormWithContent(player, "�ű���Sc", "TreasureWnd.RemoveAitem();")
			return ""
		end
	end
	return "ϵͳ:��û�������Ʒ!"
end
