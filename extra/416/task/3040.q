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
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�����������># �Ի�
ɱ��#LINK<MAP:��·1,POSX:43,POSY:73,STR:����,MOVE:1>##MONSTERGROUP0#
ɱ��#LINK<MAP:��·1,POSX:142,POSY:147,STR:������,MOVE:1>##MONSTERGROUP1# 
ɱ��#LINK<MAP:��·1,POSX:150,POSY:116,STR:����,MOVE:1>##MONSTERGROUP2#
ɱ��#LINK<MAP:��·1,POSX:151,POSY:77,STR:�๳è,MOVE:1>##MONSTERGROUP3#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="����0" />
					<group_hunting keyname="����" />
				</group>
				<group n="5" >
					<group_hunting keyname="������" />
					<group_hunting keyname="������0" />
				</group>
				<group n="5" >
					<group_hunting keyname="����0" />
					<group_hunting keyname="����" />
				</group>
				<group n="5" >
					<group_hunting keyname="�๳è" />
					<group_hunting keyname="�๳è0" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="26000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="����"  n="1" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>