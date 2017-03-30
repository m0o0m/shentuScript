--------------创建副本时触发------------------
function on_map_create(map)
	lualib:Map_GenNpc(map,"精英竞技场药材商",17,33,1,3)
	lualib:Map_GenNpc(map,"精英竞技场仓库",22,28,1,3)
end