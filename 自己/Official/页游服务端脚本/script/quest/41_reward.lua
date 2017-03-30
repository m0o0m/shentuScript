	local data = {}
	local WAR	 	= 1		--	战士
	local MAG 		= 2	 	--	法师
	local TAO 		= 3		--	道士 	
	local MAL 		= 1		--	男
	local FEM	      	= 2		--	女
	data.item_table = {}
	data.item_table[WAR] = {}
	data.item_table[MAG] = {}
	data.item_table[TAO] = {}


	 data.item_table[WAR][MAL] = {
								--{"血符精华小",1,1},
								{"怒斩",1,1}
								 }

	 data.item_table[WAR][FEM] = 
								 {
								--{"血符精华小",1,1},
								{"怒斩",1,1}
						 		}


	 data.item_table[MAG][MAL] = 
				{
								--{"血符精华小",1,1},
								{"骨玉",1,1}
						} 

	 data.item_table[MAG][FEM] = 
				{
								--{"血符精华小",1,1},
								{"骨玉",1,1}
						 }
	 data.item_table[TAO][MAL] = 
				{
								--{"血符精华小",1,1},
								{"逍遥扇",1,1}
						} 

	 data.item_table[TAO][FEM] = 
				{
								--{"血符精华小",1,1},
								{"逍遥扇",1,1}
						 }

return data