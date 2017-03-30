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
								{"青铜腰带战",1,1}
	}

	 data.item_table[WAR][FEM] = {
								{"青铜腰带战",1,1}
	}


	 data.item_table[MAG][MAL] = {
								{"青铜腰带法",1,1}
									} 

	 data.item_table[MAG][FEM] = {
								{"青铜腰带法",1,1}
						 }
	 data.item_table[TAO][MAL] = {
								{"青铜腰带道",1,1}
	} 

	 data.item_table[TAO][FEM] = {
								{"青铜腰带道",1,1}
	}

return data