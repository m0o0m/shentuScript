<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4035" name="[֧��]-ѱ��ʦ���ж�" type="2" suggest_level="1" visible="1" next_id="4036">
		<description>
			���Ŷ�ħ�Ļ����Ƶ������ش�½�Ѿ���ñȹ�ȥ����Σ�գ�ÿһ����ʿ��Ӧ��ѧ��������ÿһ����Դ���������ͬ�ҵĹ۵㣬����ȥ��ѱ��ʦ����������õ����࣡
		</description>
		<dialogue>
			<brief>���Ŷ�ħ�Ļ����Ƶ������ش�½�Ѿ���ñȹ�ȥ����Σ�գ�ÿһ����ʿ��Ӧ��ѧ��������ÿһ����Դ���������ͬ�ҵĹ۵㣬����ȥ��ѱ��ʦ����������õ����࣡</brief>
			<await>��ѱ��ʦ�Ի���</await>
			<finish>�ǵģ���������һ�׽Ұ����Ұ��ѱ��Ϊ����ļ�����</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="15" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[��#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:��ɽ��ѱ��ʦ,MOVE:1>#�Ի���]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:��ɽ��ѱ��ʦ,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="11000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="20000" >
			<awards>
				<award keyname="����"  n="5" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>