<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3230" name="[����]-��ø�ǿ" type="1" suggest_level="1" visible="1" next_id="3231">
		<description>
			���ٳ��ϱ�����Ѱ��һλʵ��ǿ�����ʿ������������43��ʱ������ȥ����Ŷ��
		</description>
		<dialogue>
			<brief>���ٳ��ϱ�����Ѱ��һλʵ��ǿ�����ʿ������������43��ʱ������ȥ����Ŷ��</brief>
			<await>����43����ʱ���������Ұ�</await>
			<finish>���ڵȵ���һλǿ�����ʿ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3229" />
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
			<![CDATA[�ﵽ43��ʱ����#NPCLINK<STR:���ٳ��ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի���]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ﵽ43��ʱ����#NPCLINK<STR:���ٳ��ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="43" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="25000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>