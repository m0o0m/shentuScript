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
								{"¹Ƥѥ��ս",1,1}
								 }

	 data.item_table[WAR][FEM] = 
								 {
								{"¹Ƥѥ��ս",1,1}
						 		}


	 data.item_table[MAG][MAL] = 
				{
								{"¹Ƥѥ�ӷ�",1,1}
						} 

	 data.item_table[MAG][FEM] = 
				{
								{"¹Ƥѥ�ӷ�",1,1}
						 }
	 data.item_table[TAO][MAL] = 
				{
								{"¹Ƥѥ�ӵ�",1,1}
						} 

	 data.item_table[TAO][FEM] = 
				{
								{"¹Ƥѥ�ӵ�",1,1}
						 }

return data