<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3206" name="[����]-�����ħʯ��(1)" type="1" suggest_level="1" visible="1" next_id="3207">
		<description>
			��Ȼ�Ѿ������԰���Ϊ�ڵ�ȫ���������ԣ�����������δ֪���˹������ء������ɳ������С�ӣ��ڶ�������������У����ִ󲻿ɽ��ܵ�������\n�������ʵ���Ѿ��ǳ�ǿ�󣬿������ɵ�ʤ����һ�ε���졣���ܽ�����һ�������������\n���������ħ��ɳ�桢ħ�����桢ħ��Ы�ӣ������֮�������������ǵ�ʵ���ɡ�
		</description>
		<dialogue>
			<brief>��Ȼ�Ѿ������԰���Ϊ�ڵ�ȫ���������ԣ�����������δ֪���˹������ء������ɳ������С�ӣ��ڶ�������������У����ִ󲻿ɽ��ܵ�������\n�������ʵ���Ѿ��ǳ�ǿ�󣬿������ɵ�ʤ����һ�ε���졣���ܽ�����һ�������������\n���������ħ��ɳ�桢ħ�����桢ħ��Ы�ӣ������֮�������������ǵ�ʵ���ɡ�</brief>
			<await>����������ǰ���ɡ�</await>
			<finish>������ֹ������������ħռ�ݵ�ʯ�ߡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3205" />
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
			<![CDATA[���15ֻ#LINK<MAP:���ٳ�,POSX:247,POSY:136,STR:ħ��ɳ��,MOVE:1>##MONSTERGROUP0#��15ֻ#LINK<MAP:���ٳ�,POSX:214,POSY:174,STR:ħ��Ы��,MOVE:1>##MONSTERGROUP1#��15ֻ#LINK<MAP:���ٳ�,POSX:253,POSY:205,STR:ħ������,MOVE:1>##MONSTERGROUP2#������������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:��������,NPCKEYNAME:��������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="15" >
					<group_hunting keyname="ħ��ɳ��" />
				</group>
				<group n="15" >
					<group_hunting keyname="ħ��Ы��" />
				</group>
				<group n="15" >
					<group_hunting keyname="ħ������" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="500000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>