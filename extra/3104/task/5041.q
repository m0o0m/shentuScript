<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5041" name="[����]-ħ�����ߵ�����1��" type="2" suggest_level="1" visible="1" next_id="5042">
		<description>
			ð���ߣ����ʵ����ǿ������ħ����������Ѱ��һλ��ʵ�����������ļһ�������ܰ���æ��ȥ��ħ�������˽�����ɣ�
		</description>
		<dialogue>
			<brief>ð���ߣ����ʵ����ǿ������ħ����������Ѱ��һλ��ʵ�����������ļһ�������ܰ���æ��ȥ��ħ�������˽�����ɣ�</brief>
			<await>��ħ�����߶Ի���</await>
			<finish>ð�������������㼴���������Σ�յ������</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5026" />
				</group>
				<group>
					<prologue id="3138" />
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
			<![CDATA[��#NPCLINK<STR:ħ������,NPCKEYNAME:��������,MOVE:1>#�Ի���]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:ħ������,NPCKEYNAME:��������,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>