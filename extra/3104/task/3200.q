<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3200" name="[����]-�������ٳ�" type="1" suggest_level="1" visible="1" next_id="3201">
		<description>
			��˵���ٳǸ����Ķ�ħ���������Ű��������ø�ǿ�󣬼���������35����˵�����Ϳ���ȥ�Ͷ�ħ���ս���ˣ�
		</description>
		<dialogue>
			<brief>��˵���ٳǸ����Ķ�ħ���������Ű��������ø�ǿ�󣬼���������35����˵�����Ϳ���ȥ�Ͷ�ħ���ս���ˣ�</brief>
			<await>����35����ʱ���������Ұ�</await>
			<finish>�����ڱ�ǿ���˰����µ�ð�վ�Ҫ��ʼ�ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3147" />
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
			<![CDATA[�ﵽ35��ʱ�������ٳ���#NPCLINK<STR:���ٳǾ����,NPCKEYNAME:���ٳǾ����,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:���ٳǾ����,NPCKEYNAME:���ٳǾ����,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="35" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="10000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>