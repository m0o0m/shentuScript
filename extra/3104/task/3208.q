<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3208" name="[����]-�����ħʯ��(3)" type="1" suggest_level="1" visible="1" next_id="3209">
		<description>
			������ӻ�������Ѱ��һλǿ�����ʿ������㲻��̫æ����ȥ�����ɡ�
		</description>
		<dialogue>
			<brief>������ӻ�������Ѱ��һλǿ�����ʿ������㲻��̫æ����ȥ�����ɡ�</brief>
			<await>�������ã���������Ҫ�����æ��</await>
			<finish>�������ã���������Ҫ�����æ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3207" />
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
			<![CDATA[�Ҷ��ٳǵ�#NPCLINK<STR:�ӻ���,NPCKEYNAME:���ٳ��ӻ���,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�ӻ���,NPCKEYNAME:���ٳ��ӻ���,MOVE:1>#�Ի�]]>
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