--���ϰ�
--2015-12-28
--�ճ�����

tbl_YS = {
			[0] = { 
					" #COLORCOLOR_GREENG#������顿����    62��#COLOREND#" , 
					" #COLORCOLOR_GREENG#������𡿡���    63��#COLOREND#" , 
					" #COLORCOLOR_GREENG#������ơ�����    64��#COLOREND#" , 
					" #COLORCOLOR_GREENG#������顿����    65��#COLOREND#" , 
					" #COLORCOLOR_GREENG#����鱦������    65��#COLOREND#" , 
					" <@toJY62 *01*����Ĺ���>" , 
					" <@toYM63 *01*����ħʥ�>" , 
					" <@toHD64 *01*���ڰ���̳��>" , 
					" <@toJY65 *01*���Ϲ�а��>" ,
					" <@toBS65 *01*�����׽��ء�>" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					},
			[1] = { 
					" #COLORCOLOR_GREENG#������顿����    62��#COLOREND#" , 
					" #COLORCOLOR_GREENG#������𡿡���    63��#COLOREND#" , 
					" #COLORCOLOR_GREENG#������ơ�����    64��#COLOREND#" , 
					" #COLORCOLOR_GREENG#������顿����    65��#COLOREND#" , 
					" #COLORCOLOR_GREENG#����鱦������    65��#COLOREND#" , 
					" <@toJY62 *01*����Ĺ���>" , 
					" <@toYM63 *01*����ħʥ�>" , 
					" <@toHD64 *01*���ڰ���̳��>" , 
					" <@toJY65 *01*���Ϲ�а��>" , 
					" <@toBS65 *01*�����׽��ء�>" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					},
			[2] = { 
					" #COLORCOLOR_GRAY#������顿����    62��#COLOREND#" , 
					" #COLORCOLOR_GRAY#������𡿡���    63��#COLOREND#" , 
					" #COLORCOLOR_GRAY#������ơ�����    64��#COLOREND#" , 
					" #COLORCOLOR_GRAY#������顿����    65��#COLOREND#" , 
					" #COLORCOLOR_GRAY#����鱦������    65��#COLOREND#" , 
					" #COLORCOLOR_GRAY#����Ĺ���#COLOREND#" ,
					" #COLORCOLOR_GRAY#����ħʥ�#COLOREND#" ,
					" #COLORCOLOR_GRAY#���ڰ���̳��#COLOREND#" ,
					" #COLORCOLOR_GRAY#����������#COLOREND#" ,
					" #COLORCOLOR_GRAY#�����׽��ء�#COLOREND#" ,
					"#IMAGE1900100000#" ,
					"#IMAGE1900100000#" ,
					"#IMAGE1900100000#" ,
					"#IMAGE1900100000#" ,
					"#IMAGE1900100000#" ,
					},
}

local sKeyName = "��������"
local sItemName = lualib:KeyName2Name( sKeyName , 4 )
local iNum = 1

function main( sNpcID , sPlayerID )
	local JY_ColorParam_62 = lualib:GetDayInt( sPlayerID , "62�����鱾" )
	local YM_ColorParam_63 = lualib:GetDayInt( sPlayerID , "63����ë��" )
	local HD_ColorParam_64 = lualib:GetDayInt( sPlayerID , "64�����ܱ�" )
	local JY_ColorParam_65 = lualib:GetDayInt( sPlayerID , "65�����鱾" )
	local BS_ColorParam_65 = lualib:GetDayInt( sPlayerID , "65����ʯ��" )
	local msg = " #COLORCOLOR_GRAY#����������������#COLORCOLOR_GOLD#ÿ#COLORCOLOR_GRAY#��#COLORCOLOR_GOLD#��#COLORCOLOR_GRAY#��#COLORCOLOR_GOLD#��#COLORCOLOR_GRAY#��#COLORCOLOR_GOLD#��#COLORCOLOR_GRAY#������������������#COLOREND#\n"
	local msg = msg..tbl_YS[JY_ColorParam_62][1].."    "..tbl_YS[JY_ColorParam_62][11]..tbl_YS[JY_ColorParam_62][6].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg..tbl_YS[YM_ColorParam_63][2].."    "..tbl_YS[YM_ColorParam_63][12]..tbl_YS[YM_ColorParam_63][7].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg..tbl_YS[HD_ColorParam_64][3].."    "..tbl_YS[HD_ColorParam_64][13]..tbl_YS[HD_ColorParam_64][8].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg..tbl_YS[JY_ColorParam_65][4].."    "..tbl_YS[JY_ColorParam_65][14]..tbl_YS[JY_ColorParam_65][9].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg..tbl_YS[BS_ColorParam_65][5].."    "..tbl_YS[BS_ColorParam_65][15]..tbl_YS[BS_ColorParam_65][10].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	return msg
end

function toJY62( sNpcID , sPlayerID )
	if lualib:Level( sPlayerID ) < 62 then
		return "���ĵȼ�����"
	end
	if lualib:GetDayInt( sPlayerID , "62�����鱾" ) > 1 then
		return "���Ĵ�������"
	end
	local iCounts = 2 - lualib:GetDayInt( sPlayerID , "62�����鱾" )
	local iJzNum = lualib:ItemCount( sPlayerID , sKeyName )
	local msg = "#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg.."#IMAGE1990020318#".."                  #IMAGE1990020166#\n\n\n" 
	local msg = msg.."           ���� 1500000".."               ������Ƭ��С��*2\n"
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg.."ʣ��������:#COLORCOLOR_GREENG#"..iCounts.."#COLOREND#\n"
	local msg = msg.."����"..sItemName..":#COLORCOLOR_GREENG#"..iNum.."��#COLOREND#��ӵ��#COLORCOLOR_GREENG#"..iJzNum.."#COLOREND#��\n"
	local msg = msg.."ͨ��ʱ������:30����\n"
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n\n"
	local msg = msg.."#IMAGE1900100002#<@intoHY62 *01*�����븱����>".."                     <@relist *01*�������б�>\n"
	return msg
end

function toYM63( sNpcID , sPlayerID )
	if lualib:Level( sPlayerID ) < 63 then
		return "���ĵȼ�����"
	end
	if lualib:GetDayInt( sPlayerID , "63����ë��" ) > 1 then 
		return "���Ĵ�������"
	end
	local iCounts = 2 - lualib:GetDayInt( sPlayerID , "63����ë��" )
	local iJzNum = lualib:ItemCount( sPlayerID , sKeyName )
	local msg = "#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg.."#IMAGE1990020318#".."                  #IMAGE1990020036#\n\n\n" 
	local msg = msg.."           ���� 600000".."               ����֮��*12\n"
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg.."ʣ��������:#COLORCOLOR_GREENG#"..iCounts.."#COLOREND#\n"
	local msg = msg.."����"..sItemName..":#COLORCOLOR_GREENG#"..iNum.."��#COLOREND#��ӵ��#COLORCOLOR_GREENG#"..iJzNum.."#COLOREND#��\n"
	local msg = msg.."ͨ��ʱ������:30����\n"
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n\n"
	local msg = msg.."#IMAGE1900100002#<@intoYM63 *01*�����븱����>".."                     <@relist *01*�������б�>\n"
	return msg
end

function toHD64( sNpcID , sPlayerID )
	if lualib:Level( sPlayerID ) < 64 then
		return "���ĵȼ�����"
	end
	if lualib:GetDayInt( sPlayerID , "64�����ܱ�" ) > 1 then
		return "���Ĵ�������"
	end
	local iCounts = 2 - lualib:GetDayInt( sPlayerID , "64�����ܱ�" )
	local iJzNum = lualib:ItemCount( sPlayerID , sKeyName )
	local msg = "#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg.."#IMAGE1990020318#".."                  #IMAGE1990020186#\n\n\n" 
	local msg = msg.."           ���� 600000".."               �ػ�֮�ģ�С��*2\n"
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg.."ʣ��������:#COLORCOLOR_GREENG#"..iCounts.."#COLOREND#\n"
	local msg = msg.."����"..sItemName..":#COLORCOLOR_GREENG#"..iNum.."��#COLOREND#��ӵ��#COLORCOLOR_GREENG#"..iJzNum.."#COLOREND#��\n"
	local msg = msg.."ͨ��ʱ������:30����\n"
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n\n"
	local msg = msg.."#IMAGE1900100002#<@intoHD64 *01*�����븱����>".."                     <@relist *01*�������б�>\n"
	return msg
end

function toJY65( sNpcID , sPlayerID )
	if lualib:Level( sPlayerID ) < 65 then
		return "���ĵȼ�����"
	end
	if lualib:GetDayInt( sPlayerID , "65�����鱾" ) > 1 then
		return "���Ĵ�������"
	end
	local iCounts = 2 - lualib:GetDayInt( sPlayerID , "62�����鱾" )
	local iJzNum = lualib:ItemCount( sPlayerID , sKeyName )
	local msg = "#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg.."#IMAGE1990020318#".."                  #IMAGE1990020166#\n\n\n" 
	local msg = msg.."           ���� 1500000".."               ������Ƭ��С��*2\n"
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg.."ʣ��������:#COLORCOLOR_GREENG#"..iCounts.."#COLOREND#\n"
	local msg = msg.."����"..sItemName..":#COLORCOLOR_GREENG#"..iNum.."��#COLOREND#��ӵ��#COLORCOLOR_GREENG#"..iJzNum.."#COLOREND#��\n"
	local msg = msg.."ͨ��ʱ������:30����\n"
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n\n"
	local msg = msg.."#IMAGE1900100002#<@intoJY65 *01*�����븱����>".."                     <@relist *01*�������б�>\n"
	return msg
end

function toBS65( sNpcID , sPlayerID )
	if lualib:Level( sPlayerID ) < 65 then
		return "���ĵȼ�����"
	end
	if lualib:GetDayInt( sPlayerID , "65����ʯ��" ) > 1 then
		return "���Ĵ�������"
	end
	local iCounts = 2 - lualib:GetDayInt( sPlayerID , "62�����鱾" )
	local iJzNum = lualib:ItemCount( sPlayerID , sKeyName )
	local msg = "#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg.."#IMAGE1990020318#".."                  #IMAGE1990020170#\n\n\n" 
	local msg = msg.."           ���� 600000".."               ��ʯ�ᾧ��С��*12\n"
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg.."ʣ��������:#COLORCOLOR_GREENG#"..iCounts.."#COLOREND#\n"
	local msg = msg.."����"..sItemName..":#COLORCOLOR_GREENG#"..iNum.."��#COLOREND#��ӵ��#COLORCOLOR_GREENG#"..iJzNum.."#COLOREND#��\n"
	local msg = msg.."ͨ��ʱ������:30����\n"
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n\n"
	local msg = msg.."#IMAGE1900100002#<@intoBS65 *01*�����븱����>".."                     <@relist *01*�������б�>\n"
	return msg
end

function intoHY62( sNpcID , sPlayerID )
	if lualib:DelItem( sPlayerID , sKeyName , 1, 2, "��������" , "��������" ) == false then
		return "��û��"..sItemName
	end
	local MapGuid = lualib:Map_CreateDgn( "������������" , true , 30 * 60 )
	if lualib:Player_SetDgnTicket( sPlayerID , MapGuid ) == true then
		lualib:SetDayInt( sPlayerID , "62�����鱾" , lualib:GetDayInt( sPlayerID , "62�����鱾" ) + 1 )
		lualib:Player_EnterDgn( sPlayerID , "������������" , 67 , 80 , 0 )
		return ""
	else
		return "��������ɽ����ͼ��\n "
	end
end

function intoYM63( sNpcID , sPlayerID )
	if lualib:DelItem( sPlayerID , sKeyName , 1, 2, "��������" , "��������" ) == false then
		return "��û��"..sItemName
	end
	local MapGuid = lualib:Map_CreateDgn( "������ħ���" , true , 30 * 60 )
	if lualib:Player_SetDgnTicket( sPlayerID , MapGuid ) == true then
		lualib:SetDayInt( sPlayerID , "63����ë��" , lualib:GetDayInt( sPlayerID , "63����ë��" ) + 1 )
		lualib:Player_EnterDgn( sPlayerID , "������ħ���" , 62 , 67 , 15 )
		return ""
	else
		return "��������ɽ����ͼ��\n "
	end
end

function intoHD64( sNpcID , sPlayerID )
	if lualib:DelItem( sPlayerID , sKeyName , 1, 2, "��������" , "��������" ) == false then
		return "��û��"..sItemName
	end
	local MapGuid = lualib:Map_CreateDgn( "�������֮��" , true , 30 * 60 )
	if lualib:Player_SetDgnTicket( sPlayerID , MapGuid ) == true then
		lualib:SetDayInt( sPlayerID , "64�����ܱ�" , lualib:GetDayInt( sPlayerID , "64�����ܱ�" ) + 1 )
		lualib:Player_EnterDgn( sPlayerID , "�������֮��" , 62 , 67 , 15 )
		return ""
	else
		return "��������ɽ����ͼ��\n "
	end
end

function intoJY65( sNpcID , sPlayerID )
	if lualib:DelItem( sPlayerID , sKeyName , 1, 2, "��������" , "��������" ) == false then
		return "��û��"..sItemName
	end
	local MapGuid = lualib:Map_CreateDgn( "������������" , true , 30 * 60 )
	if lualib:Player_SetDgnTicket( sPlayerID , MapGuid ) == true then
		lualib:SetDayInt( sPlayerID , "65�����鱾" , lualib:GetDayInt( sPlayerID , "65�����鱾" ) + 1 )
		lualib:Player_EnterDgn( sPlayerID , "������������" , 62 , 67 , 15 )
		return ""
	else
		return "��������ɽ����ͼ��\n "
	end
end

function intoBS65( sNpcID , sPlayerID )
	if lualib:DelItem( sPlayerID , sKeyName , 1, 2, "��������" , "��������" ) == false then
		return "��û��"..sItemName
	end
	local MapGuid = lualib:Map_CreateDgn( "�����������" , true , 30 * 60 )
	if lualib:Player_SetDgnTicket( sPlayerID , MapGuid ) == true then
		lualib:SetDayInt( sPlayerID , "65����ʯ��" , lualib:GetDayInt( sPlayerID , "65����ʯ��" ) + 1 )
		lualib:Player_EnterDgn( sPlayerID , "�����������" , 62 , 67 , 15 )
		return ""
	else
		return "��������ɽ����ͼ��\n "
	end
end

function relist( sNpcID , sPlayerID )
	local JY_ColorParam_62 = lualib:GetDayInt( sPlayerID , "62�����鱾" )
	local YM_ColorParam_63 = lualib:GetDayInt( sPlayerID , "63����ë��" )
	local HD_ColorParam_64 = lualib:GetDayInt( sPlayerID , "64�����ܱ�" )
	local JY_ColorParam_65 = lualib:GetDayInt( sPlayerID , "65�����鱾" )
	local BS_ColorParam_65 = lualib:GetDayInt( sPlayerID , "65����ʯ��" )
	local msg = " #COLORCOLOR_GRAY#����������������#COLORCOLOR_GOLD#ÿ#COLORCOLOR_GRAY#��#COLORCOLOR_GOLD#��#COLORCOLOR_GRAY#��#COLORCOLOR_GOLD#��#COLORCOLOR_GRAY#��#COLORCOLOR_GOLD#��#COLORCOLOR_GRAY#������������������#COLOREND#\n"
	local msg = msg..tbl_YS[JY_ColorParam_62][1].."    "..tbl_YS[JY_ColorParam_62][11]..tbl_YS[JY_ColorParam_62][6].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg..tbl_YS[YM_ColorParam_63][2].."    "..tbl_YS[YM_ColorParam_63][12]..tbl_YS[YM_ColorParam_63][7].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg..tbl_YS[HD_ColorParam_64][3].."    "..tbl_YS[HD_ColorParam_64][13]..tbl_YS[HD_ColorParam_64][8].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg..tbl_YS[JY_ColorParam_65][4].."    "..tbl_YS[JY_ColorParam_65][14]..tbl_YS[JY_ColorParam_65][9].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	local msg = msg..tbl_YS[BS_ColorParam_65][5].."    "..tbl_YS[BS_ColorParam_65][15]..tbl_YS[BS_ColorParam_65][10].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#������������������������������������������������#COLOREND#\n"
	return msg
end