<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3044" name="[����]-���ñ���(4)" type="1" suggest_level="1" visible="1" next_id="3046">
		<description>
			�������Ƚ������ڣ��Σ���ɣ�����մȾ�϶�ħ֮Ѫ�����ã����Ǿ�ȫ���������\n����ÿ��ɱ��20ֻ���������ȫ��ѹ���õı����ˣ�
		</description>
		<dialogue>
			<brief>�������Ƚ������ڣ��Σ���ɣ�����մȾ�϶�ħ֮Ѫ�����ã����Ǿ�ȫ���������\n����ÿ��ɱ��20ֻ���������ȫ��ѹ���õı����ˣ�</brief>
			<await>ɱ��20ֻ��������</await>
			<finish>�������ڰѽ���ڣ����ɾ��ˣ���ĸ�������̫��Ҫ�ˣ���㽱����һ����Ҫ�ƴǣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="99" max_num="100" />
			<prologues>
				<group>
					<prologue id="3043" />
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
			<![CDATA[ȥ����ڣһ���ɱ����#LINK<MAP:����ڣ1,POSX:88,POSY:87,STR:����,MOVE:1>##MONSTERGROUP0#����������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="�ɵ�����1" />
					<group_hunting keyname="��������1" />
					<group_hunting keyname="����սʿ1" />
					<group_hunting keyname="������1" />
					<group_hunting keyname="�����ɵ�����1" />
					<group_hunting keyname="������������1" />
					<group_hunting keyname="��������սʿ1" />
					<group_hunting keyname="����������1" />
					<group_hunting keyname="����ɵ�����1" />
					<group_hunting keyname="���ⵥ������1" />
					<group_hunting keyname="��������սʿ1" />
					<group_hunting keyname="���������1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="79300" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>