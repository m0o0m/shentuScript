local mailReward = 0


function main( sPlayerID , sItemID )
lualib:SetVipLevel( sPlayerID , lualib:GetVipLevel( sPlayerID ) + 1 )
--[[
	local msg = ""
	local msg = msg..mailReward.."\n"
	local msg = msg.."<@getItems *01*����>\n"
	local msg = msg.."<@getDoubleItems *01*˫��>"
	lualib:NPCTalk( sPlayerID , msg )
	return true
]]--
end

function getItems( sPlayerID , param )
	local sMapID = lualib:MapGuid(sPlayerID)
	if lualib:KeyName(sMapID) == "������������" then
		lualib:Player_MapMoveXY( sPlayerID , "��ɽ��" , 190 , 258 , 3 )
		lualib:DisableTimer( sMapID , 2 )
		lualib:Map_DestroyDgn( sMapID )
	end
	if mailReward == 0 then
		lualib:MailToPlayer( "��Ĺ���", sPlayerID , "��ѡ�񵥱�������������ע�����" , 0 , 0 , { "������ƬС" , 2 , 1 } )
		lualib:Player_AddExp( sPlayerID , 1500000 , "��Ĺ���" , sPlayerID )
		mailReward = mailReward + 1
	end
	return ""
end

function getDoubleItems( sPlayerID , param )
	local sMapID = lualib:MapGuid(sPlayerID)
	if lualib:Player_SubIngot( sPlayerID , 198 , false , "��Ԫ��:����", sPlayerID ) then
		if lualib:KeyName(sMapID) == "������������" then
			lualib:Player_MapMoveXY( sPlayerID , "��ɽ��" , 190 , 258 , 3 )
			lualib:DisableTimer( sMapID , 2 )
			lualib:Map_DestroyDgn( sMapID )
		end
		if mailReward == 0 then	
			lualib:MailToPlayer( "��Ĺ���", sPlayerID , "��ѡ�񵥱�������������ע�����" , 0 , 0 , { "������ƬС" , 4 , 1 } )
			lualib:Player_AddExp( sPlayerID , 3000000 , "��Ĺ���" , sPlayerID )
			mailReward = mailReward + 1
		elseif mailReward == 1 then
			lualib:MailToPlayer( "��Ĺ���", sPlayerID , "��Ϊ����ʱ��δ����ѡ��ϵͳ�Ѿ�������������������������ѡ����˫������������˫��������������ע�����" , 0 , 0 , { "������ƬС" , 2 , 1 } )
			lualib:Player_AddExp( sPlayerID , 1500000 , "��Ĺ���" , sPlayerID )
		end
	else
		local msg = ""
		local msg = msg.."�۳�Ԫ��ʧ�ܣ������Ե��Ҳ�#COLORCOLOR_GOLD#�����ء�#COLOREND#������ѡ���    #COLORCOLOR_RED##IMAGE1900100002#<@jllist *01*�����ء�>\n"
		return msg
	end
	return ""
end