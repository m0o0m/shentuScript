<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="32" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#ɱ��֮��" type="1" suggest_level="1" visible="1" next_id="33">
		<description>
			С�һǰ�����һ���ײж������������Ѿ������ڴˡ�������޾�ɫ��Ҳ������Գ�֮�������м�����С��Ϊ�á�
		</description>
		<dialogue>
			<brief>С�һǰ�����һ���ײж������������Ѿ������ڴˡ�������޾�ɫ��Ҳ������Գ�֮�������м�����С��Ϊ�á�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�����ˡ��������ˣ�̫���ˣ��о��ˡ�Ӣ�۾��ҳ�ȥ�ɣ��������ﱻ���˺ü����ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="31" />
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
			<![CDATA[#LINK<MAP:��򼶴һ��,POSX:30,POSY:87,STR:ɱ�˷�,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:���,NPCKEYNAME:���涴һ�����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="8" >
					<group_hunting keyname="������" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>