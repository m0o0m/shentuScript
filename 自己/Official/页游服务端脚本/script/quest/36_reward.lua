	local data = {}
	local WAR	 	= 1		--	սʿ
	local MAG 		= 2	 	--	��ʦ
	local TAO 		= 3		--	��ʿ 	
	local MAL 		= 1		--	��
	local FEM	      	= 2		--	Ů
	data.item_table = {}
	data.item_table[WAR] = {}
	data.item_table[MAG] = {}
	data.item_table[TAO] = {}


	 data.item_table[WAR][MAL] = {
								{"������ָ",1,1}
								 }

	 data.item_table[WAR][FEM] = {
								{"������ָ",1,1}
						 		}


	 data.item_table[MAG][MAL] = {
								{"�ϱ���",1,1}
						} 

	 data.item_table[MAG][FEM] = {
								{"�ϱ���",1,1}
						 }
	 data.item_table[TAO][MAL] = {
								{"̩̹��ָ",1,1}
						} 

	 data.item_table[TAO][FEM] = {
								{"̩̹��ָ",1,1}
						 }

return data