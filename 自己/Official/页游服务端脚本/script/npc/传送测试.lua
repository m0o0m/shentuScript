--NPC����
--

tbl_csmdd={ 
			{"�°����ִ�"		, 	89 , 	146 }	,
			{"��ɽ��"			, 	1 , 	1 }	,
			{"����"				, 	1 , 	1 }	,
			{"ɳ�Ϳ�"			, 	1 , 	1 }	,
			{"��򼶴��30����"	, 	1 , 	1 }	,
			{"����30����"		, 	1 , 	1 }	,
			{"��������40����"	, 	1 , 	1 }	,
			{"��������40����"	, 	1 , 	1 }	,
			{"������50����"	, 	1 , 	1 }	,
			{"ţħ����60����"	, 	1 , 	1 }	,
			{"ʬħ����70����"	, 	1 , 	1 }	,
			{"��ħ����70����"	, 	1 , 	1 }	,
			{"��ħ����ת1��"	, 	1 , 	1 }	,
			{"ħ���ǣ�ת1��"	, 	1 , 	1 }	,
			{"������ת2��"	, 	1 , 	1 }	,
			{"���׶�Ѩ��ת2��"	, 	1 , 	1 }	,
			{"ѩ��������ת2��"	, 	1 , 	1 }	,
			{"������ת3��"	, 	1 , 	1 }	,
			{"�����ת3��"	, 	1 , 	1 }	,
			{"���֮�ǣ�ת3��"	, 	1 , 	1 }	,
			{"�������磨ת3��"	, 	1 , 	1 }	,
			{"���µ���ת5��"	, 	1 , 	1 }	,
			{"��ͨ�һ�"			, 	1 , 	1 }	,
			{"VIP�һ�"			, 	1 , 	1 }	,
			}


function main( sNpcID , sPlayerID )
	local msg = "��    �С���\n"
	local msg = msg.."<@transfer#1 *01*���ִ�>            ".."<@transfer#2 *01*�����>            ".."<@transfer#3 *01*����>            ".."<@transfer#4 *01*ɳ�Ϳ�>    \n"
	local msg = msg.."Σ�����򡪡�\n"
	local msg = msg.."<@transfer#5 *01*��򼶴��30����>    ".."<@transfer#6 *01*����30����>      ".."<@transfer#7 *01*��������40����>    \n"
	local msg = msg.."<@transfer#8 *01*��������40����>  ".."<@transfer#9 *01*������50����>  ".."<@transfer#10 *01*ţħ����60����>    \n"
	local msg = msg.."<@transfer#11 *01*ʬħ����70����>    ".."<@transfer#12 *01*��ħ����70����>    ".."<@transfer#13 *01*��ħ����ת1��>    \n"
	local msg = msg.."<@transfer#14 *01*ħ���ǣ�ת1��>     ".."<@transfer#15 *01*������ת2��>   ".."<@transfer#16 *01*���׶�Ѩ��ת2��>    \n"
	local msg = msg.."<@transfer#17 *01*ѩ��������ת2��>   ".."<@transfer#18 *01*������ת3��>   ".."<@transfer#19 *01*�����ת3��>    \n"
	local msg = msg.."<@transfer#20 *01*���֮�ǣ�ת3��>   ".."<@transfer#21 *01*�������磨ת3��>   ".."<@transfer#22 *01*���µ���ת5��>    \n"
	local msg = msg.."�������򡪡�\n"
	local msg = msg.."<@transfer#23 *01*��ͨ�һ�>          ".."<@transfer#24 *01*VIP�һ�>    \n"
	return msg
end

function transfer( sNpcID , sPlayerID , param )
	lualib:Player_MapMoveXY( sPlayerID , tbl_csmdd[param][1] , tbl_csmdd[param][2] , tbl_csmdd[param][3] , 3 )
end