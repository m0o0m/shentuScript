--11-16
--HZH
--��ɽѩ��

tbl_tsxl = {
			--	{ "keyname" , bufftime } ,
			["��ɽѩ��С"]	= 3600  ,
			["��ɽѩ����"]	= 10800 ,
			["��ɽѩ����"]	= 43200 ,
			["��ɽѩ����"]	= 86400 ,
			["��ɽѩ��С��"] = 3600  ,
			["��ɽѩ���а�"] = 10800 ,
			["��ɽѩ�����"] = 43200 ,
			["��ɽѩ���ް�"] = 86400 ,
}


function main( sPlayerID , sItemID )

	sItemKey = lualib:KeyName( sItemID )

	if lualib:HasBuff( sPlayerID , "��ɽѩ���ָ�" ) then

		local msg = "\n\n"
		local msg = msg.."    ���ѷ��ù���ɽѩ�����õ��ӳ�Ч��,��������\n\n���Ḳ�ǵ�֮ǰ��ɽѩ����״̬����ȷ��Ҫ����ʹ��\n\n��ǰ��Ʒ��\n\n"
		local msg = msg.."    <@sayes#sPlayerID *01*����ȷ��ʹ�á���>".."        ".."<@sayno *01*�����ݲ�ʹ�á���>\n\n"
		lualib:NPCTalkDetail( sPlayerID , msg , 620 , 220 )
		return true
	else
		if lualib:DelItem( sPlayerID , sItemKey , 1 , 2 , "��ɽѩ��" , "��ɽѩ��" ) == false then
			return "ʹ����Ʒʧ��"
		else
			lualib:AddBuff( sPlayerID , "��ɽѩ���ָ�" , tbl_tsxl[sItemKey] )
			--lualib:SysMsg_SendPromptMsg( sPlayerID , "����"..sItemKey.."ʹ�óɹ���" )
			return true
		end
	end

	return true

end

function sayes( sPlayerID )
	--lualib:SysMsg_SendBroadcastMsg( sItemKey , "sPlayerID=="..sPlayerID )
	if lualib:DelItem( sPlayerID , sItemKey , 1 , 2 , "��ɽѩ��" , "��ɽѩ��" ) == false then
		return "ʹ����Ʒʧ��"
	else
		lualib:AddBuff( sPlayerID , "��ɽѩ���ָ�" , tbl_tsxl[sItemKey] )
	end
end

function sayno()
	return ""
end

--print( tbl_tsxl["��ɽѩ���ް�"] )