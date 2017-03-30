function on_map_create( sMapID )
	
	--lualib:Map_BatchGenMonster(sMapID, "夜袭巫山城怪物", 1, false)
	lualib:Map_GenMonster(sMapID, 24, 39, 3, 4, "魔族入侵雷炎蛛王", 1, false)
	return ""
end