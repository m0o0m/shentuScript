<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3116" name="[����]-��ɽ��Ѩ�����ܣ�����" type="1" suggest_level="1" visible="1" next_id="3117">
		<script name="3116" />
		<description>
			�ٴν�����ɽ��Ѩ����ɱ20ֻ����๤��20ֻ����๤��������ɽ��Ѩ����ɽʯ�����������������Ӷ��������ֹǧ����ħ��ǿ��
		</description>
		<dialogue>
			<brief>���ٴν�����ɽ��Ѩ����ɱ20ֻ�๤���������ǵ������������Ӷ��������ֹǧ����ħ��ǿ��</brief>
			<await>\n������ɱ������๤�͹���๤����</await>
			<finish>�������ˣ����ţ�����๤�͹���๤��������������ƻ�ǧ����ħ��ȡɽʯ�������ٶȣ�
������ֻ�л�ɱǧ����ħ�������������Ƴ��˴�Σ�����������ʿ����һ��Ҫ���ǿ�����������ڴ������ɱǧ����ħ��һ�죡</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3115" />
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
			<![CDATA[ȥ��ɽ��Ѩɱ��20ֻ#LINK<MAP:��ɽ��Ѩ1,POSX:82,POSY:171,STR:����๤,MOVE:1>##MONSTERGROUP0#��20ֻ#LINK<MAP:��ɽ��Ѩ1,POSX:82,POSY:171,STR:����๤,MOVE:1>##MONSTERGROUP1#���Դ�������ǧ����ħ��ȡɽʯ�������ٶ�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="����๤1" />
					<group_hunting keyname="����๤2" />
					<group_hunting keyname="����๤3" />
					<group_hunting keyname="��������๤1" />
					<group_hunting keyname="��������๤1" />
					<group_hunting keyname="��������๤2" />
					<group_hunting keyname="��������๤3" />
					<group_hunting keyname="��Ӣ����๤1" />
				</group>
				<group n="20" >
					<group_hunting keyname="����๤1" />
					<group_hunting keyname="����๤2" />
					<group_hunting keyname="����๤3" />
					<group_hunting keyname="��������๤1" />
					<group_hunting keyname="�������๤1" />
					<group_hunting keyname="�������๤2" />
					<group_hunting keyname="�������๤3" />
					<group_hunting keyname="��Ӣ����๤1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="250000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>