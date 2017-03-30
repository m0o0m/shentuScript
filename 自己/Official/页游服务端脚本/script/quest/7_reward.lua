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
									{"斩马刀", 1, 1}
								 }

	 data.item_table[WAR][FEM] = 
								 {
									{"斩马刀",1,1}
						 		}


	 data.item_table[MAG][MAL] = 
				{
								
						} 

	 data.item_table[MAG][FEM] = 
				{
								
						 }
	 data.item_table[TAO][MAL] = 
				{
								{"蛊毒咒",1,1}
						} 

	 data.item_table[TAO][FEM] = 
				{
								{"蛊毒咒",1,1}
						 }

return data