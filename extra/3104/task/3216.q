<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3216" name="[����]-��ø�ǿ" type="1" suggest_level="1" visible="1" next_id="3217">
		<description>
			Ϊ��ӭ�Ӽ�����������ս�����������ǿһ���Լ���ʵ��������������39�����������Ұɡ�
		</description>
		<dialogue>
			<brief>Ϊ��ӭ�Ӽ�����������ս�����������ǿһ���Լ���ʵ��������������39�������������Ұɡ�</brief>
			<await>����39����ʱ���������Ұ�</await>
			<finish>�����ڱ�ǿ���˰����µ�ð�վ�Ҫ��ʼ�ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3215" />
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
			<![CDATA[�ﵽ39��ʱ�������ٳ���#NPCLINK<STR:�ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="39" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>