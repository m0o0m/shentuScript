<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3277" name="[����]-ħ�����ߵıʼ�(1)" type="1" suggest_level="1" visible="1" next_id="3278">
		<description>
			������������������ͼ�ȷ�������ϣ�ħ�����������и���ϸ��������о�����Ӧ��ȥ��������
		</description>
		<dialogue>
			<brief>������������������ͼ�ȷ�������ϣ�ħ�����������и���ϸ��������о�����Ӧ��ȥ��������</brief>
			<await>����Ҫȥ��ħ������̸̸</await>
			<finish>�ⷽ��������ҵ�Ȼ�У����������׽������ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3276" />
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
			<![CDATA[ȥ��#NPCLINK<STR:����ħ������,NPCKEYNAME:��������,MOVE:1>#��ȡ�ʼ�]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ��#NPCLINK<STR:����ħ������,NPCKEYNAME:��������,MOVE:1>#��ȡ�ʼ�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="180000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>