<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5007" name="[����]-ѩ�����ǵĴ�˵��7��" type="2" suggest_level="1" visible="1">
		<description>
			�����ѽ���Ǿ͸���˵˵���ǵĹ��°ɡ�����ħ���ڵİ������ţ���ʵ����������ѩ�����ǵľ�Ѫ��������İ��Ʒ���ѡ�\n������Ҫ���ȣ�С����Ѱ�ҵĸ�����ʵ����ѩ�����ǡ�ѩ�������Ѿ���Խ�˷��ף����������׳����ڴ�½�����ǳ�Ϊĳ��ǿ��Ӣ�۵����\n����������ˣ��벶׽ѩ�����ǳ�Ϊ����㻹Ҫ����ʵ������������Ϣ����С���ǰɣ�ϣ������˳���ɳ������½�ͻ���ָ����ѩ�����ǡ�
		</description>
		<dialogue>
			<brief>�����ѽ���Ǿ͸���˵˵���ǵĹ��°ɡ�����ħ���ڵİ������ţ���ʵ����������ѩ�����ǵľ�Ѫ��������İ��Ʒ���ѡ�\n������Ҫ���ȣ�С����Ѱ�ҵĸ�����ʵ����ѩ�����ǡ�ѩ�������Ѿ���Խ�˷��ף����������׳����ڴ�½�����ǳ�Ϊĳ��ǿ��Ӣ�۵����\n����������ˣ��벶׽ѩ�����ǳ�Ϊ����㻹Ҫ����ʵ������������Ϣ����С���ǰɣ�ϣ������˳���ɳ������½�ͻ���ָ����ѩ�����ǡ�</brief>
			<await>������Ϣ����С���ǰɣ�</await>
			<finish>�ҵĸ�����ѩ�����ǣ�������֪���ˣ�лл�㣬���࣡</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5006" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[������������Ϣ������#NPCLINK<STR:С����,NPCKEYNAME:С����,MOVE:1>#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[������������Ϣ������#NPCLINK<STR:С����,NPCKEYNAME:С����,MOVE:1>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>