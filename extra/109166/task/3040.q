<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3040" name="[����]-����֮��" type="1" suggest_level="1" visible="1" next_id="3044">
		<description>
			��ɽ�Ƕ������뱱���������������̹�����ħ��������֡�����������˽�ħ����Ϣ������ħ�
		</description>
		<dialogue>
			<brief>���������������ѯħ����Ϣ������֮��</brief>
			<await>��ɽ�Ƕ�����Ⱥ��Ͽ�ȵĻ��������̫�������������ˣ���ϧ����û��̫����������׽�����ߵ��鷳��\n
��ħ���Ĺ������ħ����Ϣ����Ҫ����ħ�����������Ӣ�����أ�</await>
			<finish>��ϲӢ�ۿ��������Ǹ���Ľ�����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3025" />
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
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�������># �Ի�
   ɱ��#LINK<MAP:����ɽ��,POSX:365,POSY:530,STR:����,MOVE:1>##MONSTERGROUP0#
   ɱ��#LINK<MAP:����ɽ��,POSX:388,POSY:517,STR:������,MOVE:1>##MONSTERGROUP1# 
   ɱ��#LINK<MAP:����ɽ��,POSX:318,POSY:474,STR:����,MOVE:1>##MONSTERGROUP2#
   ɱ��#LINK<MAP:����ɽ��,POSX:278,POSY:436,STR:�๳è,MOVE:1>##MONSTERGROUP3#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="26000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>