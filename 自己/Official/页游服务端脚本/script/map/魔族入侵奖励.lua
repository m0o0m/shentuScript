function on_map_create( sMapID )
	
	--lualib:Map_BatchGenMonster(sMapID, "ҹϮ��ɽ�ǹ���", 1, false)
	lualib:Map_GenMonster(sMapID, 24, 39, 3, 4, "ħ��������������", 1, false)
	return ""
end