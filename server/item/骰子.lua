function main(player, item)
	local map = lualib:MapGuid(player);
	
	local x = lualib:X(player);
	local y = lualib:Y(player);
	
	local keynames = {"һ", "��", "��", "��", "��", "��"}
	
	if lualib:Item_Destroy(player, item, "ɾ����Ʒ:������", "���ӽű�") then
		lualib:Map_GenItemRnd(map, x, y, 2, keynames[lualib:GenRandom(1, #keynames)], 1, false, 3);
	else
		lualib:SysPromptMsg(player, "�����ƺ�������,����ϵ����!")
	end

	return true
end
