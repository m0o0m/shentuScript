<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5024" name="[����]-������Ѫ�֣�4��" type="2" suggest_level="1" visible="1" next_id="5023">
		<description>
			��Ȼ�㲻���뿪���Ǿ�����������������˯��һ���ء��������������Ĵ������˯������񫣡��˯���С˯��С���\n���������Ǳ�����ʲô�ˣ����á����������ʿ�������Ǳߵ�������������һȺ��������ˣ�����������������ߣ��ұ�֤�����Ѫ�ֵ���ϢŶ��
		</description>
		<dialogue>
			<brief>��Ȼ�㲻���뿪���Ǿ�����������������˯��һ���ء��������������Ĵ������˯������񫣡��˯���С˯��С���\n���������Ǳ�����ʲô�ˣ����á����������ʿ�������Ǳߵ�������������һȺ��������ˣ�����������������ߣ��ұ�֤�����Ѫ�ֵ���ϢŶ��</brief>
			<await>��ɱ5�������ߣ��������ǡ�</await>
			<finish>�������������ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5023" />
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
			<![CDATA[Ϊ�˾���ǰ��Ϊ�����Ķ����ߣ���Ҫ���ٻ�ɱ5��#LINK<MAP:����,POSX:69,POSY:380,STR:������,MOVE:1>##MONSTERGROUP0#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�ε������,NPCKEYNAME:�ε������,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="������1" />
					<group_hunting keyname="������2" />
					<group_hunting keyname="������3" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>