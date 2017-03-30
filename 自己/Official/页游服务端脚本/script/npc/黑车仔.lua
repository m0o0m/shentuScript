--NPC传送
--

tbl_csmdd={ 
			{"新版新手村"		, 	89 , 	146 }	,
			{"巫山城"			,  190 , 	258 }	,
			{"土城"				,  237 , 	227 }	,
			{"神歌城"			,  348 , 	190 }	,
			{"蜈蚣洞一层"		, 	93 , 	149 }	,
			{"猪洞一层"			, 	62 , 	50 	}	,
			{"沃玛寺庙一层"		,  139 , 	156 }	,
			{"祖玛寺庙入口"		, 	19 , 	31 	}	,
			{"赤月神殿一层"		,  225 , 	225 }	,
			{"牛魔洞一层"		, 	42 , 	55  }	,
			{"尸魔洞"			, 	87 , 	117 }	,
			{"骨魔洞（70级）"	, 	1 , 	1 	}	,
			{"封魔洞（转1）"	, 	1 , 	1 	}	,
			{"魔龙城（转1）"	, 	1 , 	1 	}	,
			{"狐月神殿（转2）"	, 	1 , 	1 	}	,
			{"雷炎洞穴（转2）"	, 	1 , 	1 	}	,
			{"雪域试炼（转2）"	, 	1 , 	1 	}	,
			{"火龙神殿（转3）"	, 	1 , 	1 	}	,
			{"玄冰殿（转3）"	, 	1 , 	1 	}	,
			{"天空之城（转3）"	, 	1 , 	1 	}	,
			{"海底世界（转3）"	, 	1 , 	1 	}	,
			{"苍月岛（转5）"	, 	1 , 	1 	}	,
			{"普通挂机"			, 	1 , 	1 	}	,
			{"VIP挂机"			, 	1 , 	1 	}	,
			}


function main( sNpcID , sPlayerID )
	local msg = "___________________________城    市_________________________\n"
	local msg = msg.."<@cs_#1#sItemID *01*新手村>    ".."<@cs_#2#sItemID *01*巫山城>    ".."<@cs_#3#sItemID *01*土城>    ".."<@cs_#4#sItemID *01*神歌城>    \n"
	local msg = msg.."__________________________危险区域__________________________\n"
	local msg = msg.."<@cs_#5#sItemID *01*毒虫洞（30级）>    ".."<@cs_#6#sItemID *01*食人魔洞穴（30级）>    ".."<@cs_#7#sItemID *01*天荒寺庙（40级）>    \n"
	local msg = msg.."<@cs_#8#sItemID *01*邪庙（40级）>    ".."<@cs_#9#sItemID *01*赤炎禁地（50级）>    ".."<@cs_#10#sItemID *01*牛魔洞（60级）>    \n"
	local msg = msg.."<@cs_#11#sItemID *01*天魔石窟（70级）>    ".."<@cs_#12#sItemID *01*骨魔洞（70级）>    ".."<@cs_#13#sItemID *01*封魔洞（转1）>    \n"
	local msg = msg.."<@cs_#14#sItemID *01*魔龙城（转1）>    ".."<@cs_#15#sItemID *01*狐月神殿（转2）>    ".."<@cs_#16#sItemID *01*雷炎洞穴（转2）>    \n"
	local msg = msg.."<@cs_#17#sItemID *01*雪域试炼（转2）>    ".."<@cs_#18#sItemID *01*火龙神殿（转3）>    ".."<@cs_#19#sItemID *01*玄冰殿（转3）>    \n"
	local msg = msg.."<@cs_#20#sItemID *01*天空之城（转3）>    ".."<@cs_#21#sItemID *01*海底世界（转3）>    ".."<@cs_#22#sItemID *01*苍月岛（转5）>    \n"
	local msg = msg.."____________________________特殊区域________________________\n"
	local msg = msg.."<@cs_#23#sItemID *01*普通挂机>    ".."<@cs_#24#sItemID *01*VIP挂机>    \n"
	lualib:NPCTalk( sPlayerID , msg )
	return true
end


function cs_( sPlayerID , sThemapstr , sItemID )
	local param = tonumber( sThemapstr )
	lualib:Player_MapMoveXY( sPlayerID , tbl_csmdd[param][1] , tbl_csmdd[param][2] , tbl_csmdd[param][3] , 3 )
end
