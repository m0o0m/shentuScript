<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3214" name="[����]-���ص�����(6)" type="1" suggest_level="1" visible="1" next_id="3215">
		<description>
			��Ĵ��������ڿ����쳹���ٳǰ��������������˵�����ʵ�����ǳ�ϣ������ȥ����һ�ˡ�
		</description>
		<dialogue>
			<brief>��Ĵ��������ڿ����쳹���ٳǰ��������������˵�����ʵ�����ǳ�ϣ������ȥ����һ�ˡ�</brief>
			<await>�����ڳ����ء�</await>
			<finish>����������̫���ˣ���������Ҫ���æ</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3213" />
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
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:����,NPCKEYNAME:���ٳ�����,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:����,NPCKEYNAME:���ٳ�����,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="10000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>