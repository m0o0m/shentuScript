--������ɻص�
--select_index ��ѡ��������


function on_accept(player, quest_id)	
	local msg = "#COLORCOLOR_RED#\n      ��ϲ��ɹ����ֽ׶Σ������������ͨ�����¼��ַ�ʽѸ����Ϥ��Ϸ��#COLOREND#\n\n"	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#245#221#1 *01*��������(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#�������#COLOREND#��ȡ��������ʱ�ڶ��ܻ���ȶ��Ҳ��͵ľ���ͽ�ң�\n \n"	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#212#212#1 *01*��ħ��(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#��ħ�����#COLOREND#���룺������ӽ��룬ÿ��3�λ��ú������飡\n \n"	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#202#225#1 *01*�ر���(�������)>��\n"  
	msg = msg .. "      ͨ��#COLORCOLOR_GREENG#�ر����ػ���#COLOREND#���룬�������������򱦻��ǲ�׽������Ƿǳ������ѡ��\n \n"			
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#202#225#1 *01*֧������>��\n"
	msg = msg .. "      #COLORCOLOR_GREENG#����Ctrl+R����������壬�ӡ��ɽ��������˽�֧�����񡣲������Ի�ü���ļ����飬Ҳ���ԴӴ���Ϥ��Ϸ�Լ���þ��顣#COLOREND#\n \n"
	lualib:NPCTalk(player, msg)
	msg = nil
	return true
end


function MapMoveXYA(player, map_key_name, x, y, r)
	local x = tonumber(x)
	local y = tonumber(y)
	local r = tonumber(r)
	lualib:Player_MapMoveXY(player,map_key_name, x, y, r)
	on_accept(player)
	return ""
end


