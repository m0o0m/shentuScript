<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3236" name="[����]-��ø�ǿ" type="1" suggest_level="1" visible="1" next_id="3249">
		<description>
			����Ѱ��һλǿ�����ʿ����Ϊ������������ǳ�Σ�գ�����������45�����������Ұɡ�
		</description>
		<dialogue>
			<brief>����Ѱ��һλǿ�����ʿ����Ϊ������������ǳ�Σ�գ�����������45�����������Ұɡ�</brief>
			<await>����45����ʱ���������Ұ�</await>
			<finish>���ڵȵ���һλǿ�ߡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3235" />
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
			<![CDATA[�ﵽ45��ʱ����#NPCLINK<STR:���ٳ��ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ħʯ�������#NPCLINK<STR:���ٳ��ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="45" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="30000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>