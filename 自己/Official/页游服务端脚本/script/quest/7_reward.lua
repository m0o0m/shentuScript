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
									{"ն��", 1, 1}
								 }

	 data.item_table[WAR][FEM] = 
								 {
									{"ն��",1,1}
						 		}


	 data.item_table[MAG][MAL] = 
				{
								
						} 

	 data.item_table[MAG][FEM] = 
				{
								
						 }
	 data.item_table[TAO][MAL] = 
				{
								{"�ƶ���",1,1}
						} 

	 data.item_table[TAO][FEM] = 
				{
								{"�ƶ���",1,1}
						 }

return data