<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3039" name="[����]-����֮��(2)" type="1" suggest_level="1" visible="1" next_id="3040">
		<description>
			������ʿ��������10�����߰ɣ�
		</description>
		<dialogue>
			<brief>ʮ����ǰ�����������ｨ���˴�ׯ��������������ֵ�����Ϊ��ɽ�������˴�������ʳ��ֻ�ǣ��������������˴��鷳����������������ߵ�����ͻȻ�ɱ����ӣ������Ѿ��кü��������ڶ��ߵĶ���֮�£�\n����������ʿ��������10�����߰ɣ���Ȼ������ȫ������ǣ�������һ�������ǾͰ�ȫ�ˣ�</brief>
			<await>������·�ȵ���������10�����ߣ�</await>
			<finish>��ô������������ô�඾�ߣ����ǡ���̫����;�ϲ�ˣ����ǿ��������ջ�һ��ʳ�������ɽ�����Ѿ��ȵú��ż��˰ɡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3038" />
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
			<![CDATA[�ھ�·�Ȼ���10ֻ#LINK<MAP:��·��,POSX:159,POSY:149,STR:����,MOVE:1>##MONSTERGROUP0#����������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:��·���ӻ���,NPCKEYNAME:��·���ӻ���,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="����" />
					<group_hunting keyname="����" />
					<group_hunting keyname="����" />
					<group_hunting keyname="��ˮ��" />
					<group_hunting keyname="ħ��" />
					<group_hunting keyname="������ˮ��" />
					<group_hunting keyname="��������" />
					<group_hunting keyname="��������" />
					<group_hunting keyname="��������" />
					<group_hunting keyname="�����ˮ��" />
					<group_hunting keyname="��������" />
					<group_hunting keyname="�������" />
					<group_hunting keyname="�������" />
					<group_hunting keyname="��Ӣ��ˮ��" />
					<group_hunting keyname="��Ӣ����" />
					<group_hunting keyname="��Ӣ����" />
					<group_hunting keyname="��Ӣ����" />
					<group_hunting keyname="����" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="63000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>