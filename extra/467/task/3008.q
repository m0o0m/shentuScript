<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3008" name="[����]-Ѱ������" type="1" suggest_level="1" visible="1" next_id="3009">
		<description>
			��ľ����ǿ��Ķ�ħս����ԶԶ�����ģ�ȥ���Ҵ����������������������������ҵ����ʵ�������
		</description>
		<dialogue>
			<brief>��ľ����ǿ��Ķ�ħս����ԶԶ�����ģ�ȥ���Ҵ����������������������������ҵ����ʵ�������</brief>
			<await>ȥ�Ҵ��������.</await>
			<finish>����ΪѰ��������������������Ҷ����ˣ��������������ҵ����ָ���������Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3007" />
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
			<![CDATA[��#NPCLINK<STR:����,NPCKEYNAME:���ִ�������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:����,NPCKEYNAME:���ִ�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="400" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>