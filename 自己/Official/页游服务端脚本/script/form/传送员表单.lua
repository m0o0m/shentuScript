--NPC����
--

tbl_csmdd={ 
			{"�°����ִ�"		, 	94 , 	261 ,	1}	,	--param = 1
			{"��ɽ��"		, 	161 , 	200 ,	1}	,	--param = 2
			{"����"			, 	103 , 	128 ,	1}	,	--param = 3
			{"����"		, 	160 , 	190 ,	1}	,	--param = 4
			{"��򼶴һ��"		, 	66 , 	75 ,	30}	,	--param = 5 , 30��
			{"��һ��"		, 	88 , 	85 ,	30}	,	--param = 6 , 30��
			{"��������һ��"		, 	145 , 	176 ,	40}	,	--param = 7 , 40��
			{"�����������"		, 	10 , 	30 ,	40}	,	--param = 8 , 40��
			{"�������һ��"		, 	39 , 	107 ,	50}	,	--param = 9 , 50��
			{"ţħ��һ��"		, 	42 , 	55  ,	60}	,	--param = 10 , 60��
			{"ʬħ��һ��"		, 	87 , 	202 ,	70}	,	--param = 11, 70��
			{"��ħ��һ��"		, 	146 , 	195 ,	70}	,	--param = 12, 70��
			{"��ħ��һ��"		, 	100 , 	128 ,	1}	,	--param = 13, 1ת
			{"ħ����һ��"		, 	141 , 	170 ,	1}	,	--param = 14, 1ת
			{"�������һ��"		, 	69, 	88,	2}	,	--param = 15, 2ת
			{"���׶�Ѩһ��"		, 	26 , 	92 ,	2}	,	--param = 16, 2ת
			{"ѩ������һ��"		, 	12  , 	129 ,	2}	,	--param = 17, 2ת
			{"�������һ��"		, 	68 , 	85 ,	3}	,	--param = 18, 3ת
			{"������һ��"		, 	61 , 	86 ,	3}	,	--param = 19, 3ת
			{"���֮��һ��"		, 	38 , 	171 ,	3}	,	--param = 20, 3ת
			{"��������һ��"		, 	48 , 	136 ,	3}	,	--param = 21, 3ת
			{"���µ�"		,	226 , 	174 ,	5}	,	--param = 22, 5ת
			{"��ͨ�һ�"		, 	46 , 	59 ,	50}	,	--param = 23, 50��
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
			{"VIP10�һ�"			, 	46, 	59	,	10}	, 	--VIP�ȼ�10��
			
}
function main(player,param)
	local state = tonumber(param)
	if state == 0 then
		lualib:ShowFormWithContent(player,"form�ļ���","����ԱUI")
	end
	return ""
end


function cs_(sPlayerID , sThemapstr)
	local param = tonumber(sThemapstr)
	local reinLevel = lualib:GetInt(sPlayerID,"reinLevel")
	local player_level = lualib:Level(sPlayerID)
	if  param < 13 then
		if player_level >= tbl_csmdd[param][4] then
			lualib:Player_MapMoveXY( sPlayerID , tbl_csmdd[param][1] , tbl_csmdd[param][2] , tbl_csmdd[param][3] , 3)
			lualib:ShowFormWithContent(sPlayerID,"�ű���","Transmit.Close()")
		else
			lualib:SysPromptMsg(sPlayerID, "���ĵȼ����㣬�޷�����")
		end
	elseif param >= 13  and param < 23 then
		if  reinLevel >= tbl_csmdd[param][4] then
			lualib:Player_MapMoveXY( sPlayerID , tbl_csmdd[param][1] , tbl_csmdd[param][2] , tbl_csmdd[param][3] , 3)
			lualib:ShowFormWithContent(sPlayerID,"�ű���","Transmit.Close()")
		else
			lualib:SysPromptMsg(sPlayerID, "����ת���ȼ����㣬�޷�����")
		end
	elseif param >= 23 then
		if player_level >= tbl_csmdd[param][4] then
			lualib:Player_MapMoveXY( sPlayerID , tbl_csmdd[param][1] , tbl_csmdd[param][2] , tbl_csmdd[param][3] , 3)
			lualib:ShowFormWithContent(sPlayerID,"�ű���","Transmit.Close()")
		else
			lualib:SysPromptMsg(sPlayerID, "���ĵȼ�����50�����޷�����")
		end
	end	
	return ""
end

function cs_1(sPlayerID,sThemapstr)
	local vip_lv = lualib:GetVipLevel(sPlayerID)
	if vip_lv > 0 then
		lualib:Player_MapMoveXY( sPlayerID , tbl_vip_map[vip_lv][1] , tbl_vip_map[vip_lv][2] , tbl_vip_map[vip_lv][3] , 3 )
		lualib:ShowFormWithContent(sPlayerID,"�ű���","Transmit.Close()")
	else
		local str = "\"����VIP�ȼ����㣬�޷����룬��ֵ������ɳ�ΪVIP!\""
		lualib:ShowFormWithContent(sPlayerID,"�ű���","Transmit.MessagePrompt("..str..")")
		--lualib:SysPromptMsg(sPlayerID, "����VIP�ȼ����㣬�޷����룬��ֵ������ɳ�ΪVIP")
	end
	return ""
end
