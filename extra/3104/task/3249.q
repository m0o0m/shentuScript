<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3249" name="[����]-��ø�ǿ" type="1" suggest_level="1" visible="1" next_id="3237">
		<description>
			������������ǳ�Σ�գ������ɳ���һλ�¸ҵ�սʿ������ħʯ�ߣ���ֱ���������û����������ϣ������������ħʯ��Ѱ���������١�
		</description>
		<dialogue>
			<brief>������������ǳ�Σ�գ������ɳ���һλ�¸ҵ�սʿ������ħʯ�ߣ���ֱ���������û����������ϣ������������ħʯ��Ѱ���������١�</brief>
			<await>�������Ѿ���������ħʯ�ߵ����</await>
			<finish>�㡭���ǡ����ҡ����ҡ�����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3236" />
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
			<![CDATA[���뵽��ħʯ�����㣬�ҵ�#NPCLINK<STR:����������,NPCKEYNAME:����������,MOVE:1>#�������ṩ������]]>
			</progressing>
			<accomplishing>
			<![CDATA[���뵽��ħʯ�����㣬�ҵ�#NPCLINK<STR:����������,NPCKEYNAME:����������,MOVE:1>#�������ṩ������]]>
			</accomplishing>
		</tracker>
		<rewards exp="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>