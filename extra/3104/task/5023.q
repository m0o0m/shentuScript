<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5023" name="[����]-������Ѫ�֣�3��" type="2" suggest_level="1" visible="1" next_id="5022">
		<description>
			���ƺ��������ε�����������ǳ��ֹ����������һ���˵���ţ�û��֪��������������Ϊ�������һ�����������н��䣬������Ҳ�㹻�󡭡���֪���ܶ���Ϣ�������ȥ�������Ҽǵ����뿪ʱ�������ߵĳ��š�
		</description>
		<dialogue>
			<brief>���ƺ��������ε�����������ǳ��ֹ����������һ���˵���ţ�û��֪��������������Ϊ�������һ�����������н��䣬������Ҳ�㹻�󡭡���֪���ܶ���Ϣ�������ȥ�������Ҽǵ����뿪ʱ�������ߵĳ��š�</brief>
			<await>���������ţ�Ѱ��һ����������ε��ߡ�</await>
			<finish>�꾭����ʿ���ҿɲ���ʶ�㣬Ҳ��������ʶ�㣡</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5022" />
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
			<![CDATA[���������ţ�Ѱ��һ����Ž�#NPCLINK<STR:���,NPCKEYNAME:�ε������,MOVE:1>#���ε��ߡ�]]>
			</progressing>
			<accomplishing>
			<![CDATA[���������ţ�Ѱ��һ����Ž�#NPCLINK<STR:���,NPCKEYNAME:�ε������,MOVE:1>#���ε��ߡ�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>