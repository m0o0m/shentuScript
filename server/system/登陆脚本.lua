function main(player)
	lualib:DelayCall(player, 1000, "CheckTestServer", "");						--���Է��嵵�׶�����
	lualib:DelayCall(player, 1, "master:process_master_apprentice_login", ""); 	--ʦͽ��½����
	lualib:DelayCall(player, 1, "marry:marry_load", "");						--�������ܶȼ���
	lualib:DelayCall(player, 1, "ɳ�Ϳ���������:OnWatchWeapon", "");			--��������
	lualib:DelayCall(player, 1, "�л�ս�����:familywar_login", "");			--�л�ս��ʼ֪ͨ
end

function CheckTestServer(player)
	local strTestServerTime = lualib:GetConstVar("TestServerTime");
	local strStartServerTime = lualib:GetConstVar("StartServerTime");
	local strQQQUN = lualib:GetConstVar("QQQUN");
	local strQQ = lualib:GetConstVar("QQ");
	local strWEB = lualib:GetConstVar("WEB");
	
	local dwTestServerTime = ((strTestServerTime == "") and 0 or lualib:Str2Time(strTestServerTime));
	local dwStartServerTime = ((strStartServerTime == "") and 0 or lualib:Str2Time(strStartServerTime));
	dwTestServerTime = (dwTestServerTime > dwStartServerTime) and 0 or dwTestServerTime;
	
	local dwCurTimes = lualib:GetAllTime();
	if not lualib:Player_IsGM(player) then	
		local s = "";
		local s1 = "��������QQȺ��"..strQQQUN.."�����½�ٷ���վ��"..strWEB.."�˽�������Ϣ��������������ϵ��ѯ�ͷ�QQ:"..strQQ.."��";
		if dwCurTimes < dwStartServerTime and  dwCurTimes > dwTestServerTime then
			s = "�𾴵�������ã���".. lualib:GetZoneName() .."�����������ڳﱸ�׶Σ��޷���½����Ϸ����"..strStartServerTime.."��ʽ�����������ڴ���";
			lualib:SysMsg_SendBottomColor(player, s, 7, 2);
			lualib:SysMsg_SendBottomColor(player, s1, 7, 2);
			lualib:DelayCall(player, 5000, "KickPlayer", "");
		elseif dwCurTimes < dwTestServerTime then
			s = "�𾴵�������ã���".. lualib:GetZoneName() .."������"..strTestServerTime.."�����׶Σ���ʱ��ɾ���������������ݣ���Ϸ����"..strStartServerTime.."��ʽ�����������ڴ���\n";
			lualib:SysMsg_SendBottomColor(player, s, 7, 2);
			lualib:SysMsg_SendBottomColor(player, s1, 7, 2);
		end
	end
end

function KickPlayer(player)
	lualib:Player_Kick(player);
end