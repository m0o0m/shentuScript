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
								{"天魔神甲",1,1}
	}

	 data.item_table[WAR][FEM] = {
								{"圣战宝甲",1,1}
	}


	 data.item_table[MAG][MAL] = {
								{"法神披风",1,1}
									} 

	 data.item_table[MAG][FEM] = {
								{"法神羽衣",1,1}
						 }
	 data.item_table[TAO][MAL] = {
								{"天尊道袍",1,1}
	} 

	 data.item_table[TAO][FEM] = {
								{"天尊道衣",1,1}
	}

return data