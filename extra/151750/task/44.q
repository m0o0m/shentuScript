<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="44" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#���ؽ�Ӧ" type="1" suggest_level="1" visible="1" next_id="10000">
		<description>
			С���ӣ����ȥ��������˸���������������������Ӧ�������ӵģ����������ǣ����������Ӵ�ս���ٻغϣ�
		</description>
		<dialogue>
			<brief>С���ӣ����ȥ��������˸���������������������Ӧ�������ӵģ����������ǣ����������Ӵ�ս���ٻغϣ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>���δ˴��������ݺᣬ��·���裬���Σ������</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="43" />
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
			<![CDATA[#LINK<MAP:��һ��,POSX:39,POSY:55,STR:ʳ�˶���,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:����,NPCKEYNAME:��һ������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="ʳ�˶���" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="40000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>