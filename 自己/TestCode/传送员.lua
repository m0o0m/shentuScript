--NPC����
--

tbl_csmdd={ 
			{"�°����ִ�"		, 	89 , 	146 ,	1}	,	--param = 1
			{"��ɽ��"			,  190 , 	258 ,	1}	,	--param = 2
			{"����"				,  237 , 	227 ,	1}	,	--param = 3
			{"����"			,  348 , 	190 ,	1}	,	--param = 4
			{"��򼶴һ��"		, 	93 , 	149 ,	30}	,	--param = 5 , 30��
			{"��һ��"			, 	62 , 	50 	,	30}	,	--param = 6 , 30��
			{"��������һ��"		,  139 , 	165 ,	40}	,	--param = 7 , 40��
			{"�����������"		, 	19 , 	31 	,	40}	,	--param = 8 , 40��
			{"�������һ��"		,  225 , 	225 ,	50}	,	--param = 9 , 50��
			{"ţħ��һ��"		, 	42 , 	55  ,	60}	,	--param = 10 , 60��
			{"ʬħ��һ��"		, 	87 , 	117 ,	70}	,	--param = 11, 70��
			{"��ħ��һ��"		,  189 , 	93 	,	70}	,	--param = 12, 70��
			{"��ħ��һ��"		, 	67 , 	123 ,	1}	,	--param = 13, 1ת
			{"ħ����һ��"		, 	12 , 	142 ,	1}	,	--param = 14, 1ת
			{"�������һ��"		, 	20 , 	48 	,	1}	,	--param = 15, 2ת
			{"���׶�Ѩһ��"		, 	74 , 	231 ,	1}	,	--param = 16, 2ת
			{"ѩ������һ��"		, 	8  , 	132 ,	1}	,	--param = 17, 2ת
			{"�������һ��"		, 	68 , 	85 	,	1}	,	--param = 18, 3ת
			{"������һ��"		, 	81 , 	161 ,	1}	,	--param = 19, 3ת
			{"���֮��һ��"		, 	13 , 	32 	,	1}	,	--param = 20, 3ת
			{"��������һ��"		, 	30 , 	75 	,	1}	,	--param = 21, 3ת
			{"���µ�"			,  226 , 	174 ,	1}	,	--param = 22, 5ת
			{"��ͨ�һ�"			, 	46 , 	59 	,	1}	,	--param = 23
			}
			
tbl_vip_map={
			
			{"VIP1�һ�"			, 	46, 	59	,	1}	,	--VIP�ȼ�1��
			{"VIP2�һ�"			, 	46, 	59	,	2}	,	--VIP�ȼ�2��
			{"VIP3�һ�"			, 	46, 	59	,	3}	,	--VIP�ȼ�3��
			{"VIP4�һ�"			, 	46, 	59	,	4}	,	--VIP�ȼ�4��
			{"VIP5�һ�"			, 	46, 	59	,	5}	,	--VIP�ȼ�5��
			{"VIP6�һ�"			, 	46, 	59	,	6}	,	--VIP�ȼ�6��
			{"VIP7�һ�"			, 	46, 	59	,	7}	,	--VIP�ȼ�7��
			{"VIP8�һ�"			, 	46, 	59	,	8}	,	--VIP�ȼ�8��
			{"VIP9�һ�"			, 	46, 	59	,	9}	, 	--VIP�ȼ�9��
			{"VIP10�һ�"		, 	46, 	59	,  10}	, 	--VIP�ȼ�10��
			
}
function main( sNpcID , sPlayerID )
	--local msg = "                      #COLORCOLOR_BROWN#�� �� Ա#COLOREND#                    \n"
	--local msg = msg.."\n"
	--local msg = msg.."    #COLORCOLOR_GRAY#��������������������������������������������#COLOREND#\n"
	local msg = "                      #COLORCOLOR_ORANGE#��    ��#COLOREND#                   \n" --��ͷ��4���ַ������ҶԳƶ�����19���ո�
	--local msg = msg.."\n"
	local msg = msg.."         <@cs_#1#sItemID *01*���ִ�>    ".."<@cs_#2#sItemID *01*��ɽ��>    ".."<@cs_#3#sItemID *01*����>    ".."<@cs_#4#sItemID *01*����>    \n"
	--local msg = msg.."    #COLORCOLOR_GRAY#��������������������������������������������#COLOREND#\n" --һ�����45���ַ�
	local msg = msg.."                      #COLORCOLOR_ORANGE#Σ������#COLOREND#                   \n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#5#sItemID *01*�� �� ����30����>".."       <@cs_#6#sItemID *01*ʳ�˶�Ѩ��30����>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#7#sItemID *01*�������40����>".."       <@cs_#8#sItemID *01*а    ��40����>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#9#sItemID *01*���׽��أ�50����>".."       <@cs_#10#sItemID *01*ţ ħ ����60����>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#11#sItemID *01*��ħʯ�ߣ�70����>".."       <@cs_#12#sItemID *01*�� ħ ����70����>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#13#sItemID *01*�� ħ ����ת 1��>".."       <@cs_#14#sItemID *01*ħ �� �ǣ�ת 1��>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#15#sItemID *01*������ת 2��>".."       <@cs_#16#sItemID *01*���׶�Ѩ��ת 2��>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#17#sItemID *01*ѩ��������ת 2��>".."       <@cs_#18#sItemID *01*������ת 3��>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#19#sItemID *01*�� �� �ת 3��>".."       <@cs_#20#sItemID *01*���֮�ǣ�ת 3��>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#21#sItemID *01*�������磨ת 3��>".."       <@cs_#22#sItemID *01*�� �� ����ת 5��>\n"
	--local msg = msg.."\n"
	--local msg = msg.."    #COLORCOLOR_GRAY#��������������������������������������������#COLOREND#\n"
	local msg = msg.."                      #COLORCOLOR_ORANGE#��������#COLOREND#                   \n"
	--local msg = msg.."\n"
	local msg = msg.."              <@cs_#23#sItemID *01*��ͨ�һ�>        ".." <@cs_1#2#sItemID *01*VIP�һ�>    \n"
	--lualib:NPCTalkDetail( sPlayerID , msg , 350 , 490 )
return msg
end


function cs_( npc ,sPlayerID , sThemapstr , sItemID )
	local param = tonumber( sThemapstr )
	local player_level = lualib:Level(sPlayerID)
	if player_level >= tbl_csmdd[param][4] then
	lualib:Player_MapMoveXY( sPlayerID , tbl_csmdd[param][1] , tbl_csmdd[param][2] , tbl_csmdd[param][3] , 3 )
	else
	lualib:SysWarnMsg(sPlayerID, "���ĵȼ����㣬�޷�����")
	end
	return ""
end

function cs_1( npc , sPlayerID , sThemapstr , sItemID)
	local param = tonumber( sThemapstr )
	local vip_lv = lualib:GetVipLevel(sPlayerID)
	if vip_lv > 0 then
		lualib:Player_MapMoveXY( sPlayerID , tbl_vip_map[vip_lv][1] , tbl_vip_map[vip_lv][2] , tbl_vip_map[vip_lv][3] , 3 )
	else
		lualib:SysWarnMsg(sPlayerID, "����VIP�ȼ����㣬�޷�����")
	end
	return ""
end
--NPC����
--

tbl_csmdd={ 
			{"�°����ִ�"		, 	89 , 	146 ,	1}	,	--param = 1
			{"��ɽ��"			,  190 , 	258 ,	1}	,	--param = 2
			{"����"				,  237 , 	227 ,	1}	,	--param = 3
			{"����"			,  348 , 	190 ,	1}	,	--param = 4
			{"��򼶴һ��"		, 	93 , 	149 ,	30}	,	--param = 5 , 30��
			{"��һ��"			, 	62 , 	50 	,	30}	,	--param = 6 , 30��
			{"��������һ��"		,  139 , 	165 ,	40}	,	--param = 7 , 40��
			{"�����������"		, 	19 , 	31 	,	40}	,	--param = 8 , 40��
			{"�������һ��"		,  225 , 	225 ,	50}	,	--param = 9 , 50��
			{"ţħ��һ��"		, 	42 , 	55  ,	60}	,	--param = 10 , 60��
			{"ʬħ��һ��"		, 	87 , 	117 ,	70}	,	--param = 11, 70��
			{"��ħ��һ��"		,  189 , 	93 	,	70}	,	--param = 12, 70��
			{"��ħ��һ��"		, 	67 , 	123 ,	1}	,	--param = 13, 1ת
			{"ħ����һ��"		, 	12 , 	142 ,	1}	,	--param = 14, 1ת
			{"�������һ��"		, 	20 , 	48 	,	1}	,	--param = 15, 2ת
			{"���׶�Ѩһ��"		, 	74 , 	231 ,	1}	,	--param = 16, 2ת
			{"ѩ������һ��"		, 	8  , 	132 ,	1}	,	--param = 17, 2ת
			{"�������һ��"		, 	68 , 	85 	,	1}	,	--param = 18, 3ת
			{"������һ��"		, 	81 , 	161 ,	1}	,	--param = 19, 3ת
			{"���֮��һ��"		, 	13 , 	32 	,	1}	,	--param = 20, 3ת
			{"��������һ��"		, 	30 , 	75 	,	1}	,	--param = 21, 3ת
			{"���µ�"			,  226 , 	174 ,	1}	,	--param = 22, 5ת
			{"��ͨ�һ�"			, 	46 , 	59 	,	1}	,	--param = 23
			}
			
tbl_vip_map={
			
			{"VIP1�һ�"			, 	46, 	59	,	1}	,	--VIP�ȼ�1��
			{"VIP2�һ�"			, 	46, 	59	,	2}	,	--VIP�ȼ�2��
			{"VIP3�һ�"			, 	46, 	59	,	3}	,	--VIP�ȼ�3��
			{"VIP4�һ�"			, 	46, 	59	,	4}	,	--VIP�ȼ�4��
			{"VIP5�һ�"			, 	46, 	59	,	5}	,	--VIP�ȼ�5��
			{"VIP6�һ�"			, 	46, 	59	,	6}	,	--VIP�ȼ�6��
			{"VIP7�һ�"			, 	46, 	59	,	7}	,	--VIP�ȼ�7��
			{"VIP8�һ�"			, 	46, 	59	,	8}	,	--VIP�ȼ�8��
			{"VIP9�һ�"			, 	46, 	59	,	9}	, 	--VIP�ȼ�9��
			{"VIP10�һ�"		, 	46, 	59	,  10}	, 	--VIP�ȼ�10��
			
}
function main( sNpcID , sPlayerID )
	--local msg = "                      #COLORCOLOR_BROWN#�� �� Ա#COLOREND#                    \n"
	--local msg = msg.."\n"
	--local msg = msg.."    #COLORCOLOR_GRAY#��������������������������������������������#COLOREND#\n"
	local msg = "                      #COLORCOLOR_ORANGE#��    ��#COLOREND#                   \n" --��ͷ��4���ַ������ҶԳƶ�����19���ո�
	--local msg = msg.."\n"
	local msg = msg.."         <@cs_#1#sItemID *01*���ִ�>    ".."<@cs_#2#sItemID *01*��ɽ��>    ".."<@cs_#3#sItemID *01*����>    ".."<@cs_#4#sItemID *01*����>    \n"
	--local msg = msg.."    #COLORCOLOR_GRAY#��������������������������������������������#COLOREND#\n" --һ�����45���ַ�
	local msg = msg.."                      #COLORCOLOR_ORANGE#Σ������#COLOREND#                   \n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#5#sItemID *01*�� �� ����30����>".."       <@cs_#6#sItemID *01*ʳ�˶�Ѩ��30����>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#7#sItemID *01*�������40����>".."       <@cs_#8#sItemID *01*а    ��40����>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#9#sItemID *01*���׽��أ�50����>".."       <@cs_#10#sItemID *01*ţ ħ ����60����>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#11#sItemID *01*��ħʯ�ߣ�70����>".."       <@cs_#12#sItemID *01*�� ħ ����70����>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#13#sItemID *01*�� ħ ����ת 1��>".."       <@cs_#14#sItemID *01*ħ �� �ǣ�ת 1��>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#15#sItemID *01*������ת 2��>".."       <@cs_#16#sItemID *01*���׶�Ѩ��ת 2��>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#17#sItemID *01*ѩ��������ת 2��>".."       <@cs_#18#sItemID *01*������ת 3��>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#19#sItemID *01*�� �� �ת 3��>".."       <@cs_#20#sItemID *01*���֮�ǣ�ת 3��>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#21#sItemID *01*�������磨ת 3��>".."       <@cs_#22#sItemID *01*�� �� ����ת 5��>\n"
	--local msg = msg.."\n"
	--local msg = msg.."    #COLORCOLOR_GRAY#��������������������������������������������#COLOREND#\n"
	local msg = msg.."                      #COLORCOLOR_ORANGE#��������#COLOREND#                   \n"
	--local msg = msg.."\n"
	local msg = msg.."              <@cs_#23#sItemID *01*��ͨ�һ�>        ".." <@cs_1#2#sItemID *01*VIP�һ�>    \n"
	--lualib:NPCTalkDetail( sPlayerID , msg , 350 , 490 )
return msg
end


function cs_( npc ,sPlayerID , sThemapstr , sItemID )
	local param = tonumber( sThemapstr )
	local player_level = lualib:Level(sPlayerID)
	if player_level >= tbl_csmdd[param][4] then
	lualib:Player_MapMoveXY( sPlayerID , tbl_csmdd[param][1] , tbl_csmdd[param][2] , tbl_csmdd[param][3] , 3 )
	else
	lualib:SysWarnMsg(sPlayerID, "���ĵȼ����㣬�޷�����")
	end
	return ""
end

function cs_1( npc , sPlayerID , sThemapstr , sItemID)
	local param = tonumber( sThemapstr )
	local vip_lv = lualib:GetVipLevel(sPlayerID)
	if vip_lv > 0 then
		lualib:Player_MapMoveXY( sPlayerID , tbl_vip_map[vip_lv][1] , tbl_vip_map[vip_lv][2] , tbl_vip_map[vip_lv][3] , 3 )
	else
		lualib:SysWarnMsg(sPlayerID, "����VIP�ȼ����㣬�޷�����")
	end
	return ""
end
