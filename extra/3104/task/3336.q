<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3336" name="[����]-�ͽ���֮��" type="1" suggest_level="1" visible="1" next_id="3337">
		<description>
			�����ϴ����˽�֮���𣿽������ڳ����ڶ��㣬�ҵ���������������֮��ɡ�
		</description>
		<dialogue>
			<brief>�����ϴ����˽�֮���𣿽������ڳ����ڶ��㣬�ҵ���������������֮��ɡ�</brief>
			<await>����֮�콻�������߰�~</await>
			<finish>���Ѿ��ȴ��˺ܾã����������֮�죬��֮����Ϳ�����ת�ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3335" />
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
			<![CDATA[�ڳ�������,����֮�콻�����ֽ�֮�����#NPCLINK<STR:������,NPCKEYNAME:������,MOVE:1>#.]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ڳ�������,����֮�콻�����ֽ�֮�����#NPCLINK<STR:������,NPCKEYNAME:������,MOVE:1>#.]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="��֮��"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="345000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="��Ԫ��"  n="2" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>