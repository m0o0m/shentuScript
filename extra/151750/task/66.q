<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="66" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#��ĵ�Χ��" type="1" suggest_level="1" visible="1" next_id="67">
		<description>
			ǰ���ۼ��˴�������Ĺ��Χ��������·��Ҫ��ȥ����ͻ�����ǵİ�Χ�ˡ�
		</description>
		<dialogue>
			<brief>ǰ���ۼ��˴�������Ĺ��Χ��������·��Ҫ��ȥ����ͻ�����ǵİ�Χ�ˡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�ۣ���ͻΧ����������������</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="65" />
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
			<![CDATA[#LINK<MAP:��������һ��,POSX:49,POSY:106,STR:���ս��,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:̽�հ�����,NPCKEYNAME:���һ̽�հ�����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="���ս��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>