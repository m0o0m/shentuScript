<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5003" name="[����]-ѩ�����ǵĴ�˵��3��" type="2" suggest_level="1" visible="1" next_id="5004">
		<description>
			���࣬��ã���ɭ�ֺܴ󣬿��Ǻ��ٿ������࣬�������೤�ÿ�����֣�\n�������������������ѵ����Ѿ��������𣿰������������ܣ��ȱ����ˣ���û������Χ�ҵĴ�����𣿰��һ������ǰɣ�
		</description>
		<dialogue>
			<brief>���࣬��ã���ɭ�ֺܴ󣬿��Ǻ��ٿ������࣬�������೤�ÿ�����֣�\n�������������������ѵ����Ѿ��������𣿰������������ܣ��ȱ����ˣ���û������Χ�ҵĴ�����𣿰��һ������ǰɣ�</brief>
			<await>��ɱ3ֻ����ǣ���ȱ�Χ����С���ǡ�</await>
			<finish>����̫���������ˣ��������ǣ�����Ҳ���ǣ�����ͬ����������̫������</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5002" />
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
			<![CDATA[Ϊ��С����֮�������ɱ3ֻ#LINK<MAP:����,POSX:419,POSY:349,STR:�����,MOVE:1>##MONSTERGROUP0#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:С����,NPCKEYNAME:С����,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="�����" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>