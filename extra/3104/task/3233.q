<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3233" name="[����]-���µ�ҥ��(3)" type="1" suggest_level="1" visible="1" next_id="3234">
		<description>
			���������ħʯ��Ѱ��֤�ݣ������ҿ����㣬��ħʯ�ߵ�Σ�ճ�����������㻹û����������ǿ�����ħ��\n�����������֤�����ʵ��������50����ħ�ȷ棬���Ը�����һЩ���ࡣ
		</description>
		<dialogue>
			<brief>���������ħʯ��Ѱ��֤�ݣ������ҿ����㣬��ħʯ�ߵ�Σ�ճ�����������㻹û����������ǿ�����ħ��\n�����������֤�����ʵ��������50����ħ�ȷ棬���Ը�����һЩ���ࡣ</brief>
			<await>ȥ����10����ħ�ȷ��������Ұɡ�</await>
			<finish>���ȷ�м���ʵ������Ȼδ���ܹ�Ӧ�����е�Σ�ա��ðɣ��Ҿͽ���������㡣</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3232" />
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
			<![CDATA[����ħʯ���������50��#LINK<MAP:��ħʯ��3,POSX:38,POSY:38,STR:��ħ�ȷ�,MOVE:1>##MONSTERGROUP0#������������]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ħʯ�߸�����#NPCLINK<STR:��������,NPCKEYNAME:��������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="50" >
					<group_hunting keyname="��ħ�ȷ�1" />
					<group_hunting keyname="��ħ�ȷ�2" />
					<group_hunting keyname="��ħ�ȷ�˵��1" />
					<group_hunting keyname="��ħ�ȷ�˵��2" />
					<group_hunting keyname="��ħ�ȷ�˵��3" />
					<group_hunting keyname="��ħ�ȷ�˵��4" />
					<group_hunting keyname="��Ӣ��ħ�ȷ�1" />
					<group_hunting keyname="������ħ�ȷ�1" />
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