<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3356" name="[����]-�µĳ���" type="1" suggest_level="1" visible="1" next_id="3357">
		<description>
			���з����ˣ����ǵ��ϴ��������Ľ������뵽��һ���޸��İ취�ˣ�����ȥ�ѽ������ɣ�
		</description>
		<dialogue>
			<brief>���з����ˣ����ǵ��ϴ��������Ľ������뵽��һ���޸��İ취�ˣ�����ȥ�ѽ������ɣ�</brief>
			<await>��û�аѽ�������</await>
			<finish>��ʿ�����������ҵ���</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3355" />
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
			<![CDATA[�ҵ��ؾ��Ĳ��е�#NPCLINK<STR:ð����,NPCKEYNAME:ð����,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ҵ��ؾ��Ĳ��е�#NPCLINK<STR:ð����,NPCKEYNAME:ð����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="195000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>