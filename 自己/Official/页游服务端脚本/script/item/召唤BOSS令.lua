local Gu_Boss = {
				"�����񸱱�" 		,
				"��ɫ����" 		,
				"�������" 		,
				"��ɫ����" 		,
				"���¶�ħ" 		,
				"ţħ��" 		,
				}

local Ag_Boss = {
				"�����񸱱�" 		,
				"��ɫ����" 		,
				"�������" 		,
				"��ɫ����" 		,
				"���¶�ħ" 		,
				"ţħ��" 		,			
				"��Ȫ����" ,
				"ʬ��" ,
				"��ħ����" ,
				"ħ������" ,
				"��������" ,
				"ѩ��ħ��" ,
				"��β�ں���" ,
				"��צ�����" ,
				"�����غ���" ,
				}

local Au_Boss = {
				"���¶�ħ" ,
				"ţħ��" ,
				"��Ȫ����" ,
				"ʬ��" ,
				"��ħ����" ,
				"ħ������" ,
				"��������" ,
				"ѩ��ħ��" ,
				"��β�ں���" ,
				"��צ�����" ,
				"�����غ���" ,
				"������" ,
				"��������" ,
				"������" ,
				"��Ԩ��ħ" ,
				"���ĺ���" ,
				"����" ,
				}

local itemkey = {
				{ "�߼�BOSS�ٻ���" , Gu_Boss } ,
				{ "����BOSS�ٻ���" , Ag_Boss } ,
				{ "����BOSS�ٻ���" , Au_Boss } ,
				}

function AddMonster( sPlayerID , sItemID , sItemKeyName , i )
	local sMapID = lualib:MapGuid( sPlayerID )
	local sMapKey = lualib:KeyName( sMapID )
	if sMapKey ~= "����" then
		lualib:SysMsg_SendPromptMsg( sPlayerID , "��������ʹ��")
		return true
	else
		lualib:DelItem( sPlayerID , lualib:KeyName( sItemID ) , 1 , 2 , "�ٻ�BOSS" , "�ٻ�BOSS"..i )
		local sMonsterKey = itemkey[i][2][math.random( 1 , #itemkey[i][2] )]
		lualib:SysMsg_SendBroadcastColor( "#COLORCOLOR_BLUE#"..lualib:Name( sPlayerID ).."#COLORCOLOR_GOLD#��#COLORCOLOR_BLUE#����#COLORCOLOR_GOLD#�ɹ��ٻ���BOSS#COLORCOLOR_RED#"..lualib:Name( lualib:Map_GenSingleMonster( sMapID , lualib:X( sPlayerID ) , lualib:Y( sPlayerID ) , 2 , 5 , sMonsterKey , false) ).."#COLORCOLOR_GOLD#����" , "" , 1, 0)
	end
	return true
end

function main( sPlayerID , sItemID )
	local x, y, sum, div = 0, 0, 0, 0
	x = lualib:X(sPlayerID)
	y = lualib:Y(sPlayerID)
	sum = x + y
	div = y - x
	if (sum >= 218 and sum <= 242 and div <= 36 and div >= 12) then
		lualib:SysPromptMsg(sPlayerID, "����Ʒ�����ڰ�ȫ��ʹ��")
		return false
	end
	local sItemKeyName = lualib:KeyName( sItemID )
	for i=1,#itemkey do
		if itemkey[i][1] == sItemKeyName then
			AddMonster( sPlayerID , sItemID , sItemKeyName , i )
		end
	end
	return true
end