<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3344" name="[����]-������57��" type="1" suggest_level="1" visible="1" next_id="3345">
		<description>
			���з����Ѿ���ת��������Ҫ�ȴ�һ��ʱ���ú����ؾ���ˮ֮����ɢ������������У�����Ҫ����ʵ�������������ս����Ĺ����л��Σ�ա���������57���������Ұɣ�
		</description>
		<dialogue>
			<brief>���з����Ѿ���ת��������Ҫ�ȴ�һ��ʱ���ú����ؾ���ˮ֮����ɢ������������У�����Ҫ����ʵ�������������ս����Ĺ����л��Σ�ա���������57���������Ұɣ�</brief>
			<await>�㻹û��������57����ҪŬ��Ŷ��</await>
			<finish>���ʵ�������ܿ��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3335" />
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
			<![CDATA[������57����]]>
			</progressing>
			<accomplishing>
			<![CDATA[�뺣����ڴ���#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="57" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="315000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>