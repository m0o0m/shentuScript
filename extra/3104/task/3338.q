<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3338" name="[����]-�ͽ�ľ֮��" type="1" suggest_level="1" visible="1" next_id="3339">
		<description>
			�����ϴ�����ľ֮����ľ�����ڳ������Ĳ㣬�ҵ�������������ľ֮��ɡ�
		</description>
		<dialogue>
			<brief>�����ϴ�����ľ֮����ľ�����ڳ������Ĳ㣬�ҵ�������������ľ֮��ɡ�</brief>
			<await>��ľ֮�콻��ľ���߰�~</await>
			<finish>���Ѿ��ȴ��˺ܾã���������ľ֮�죬ľ֮����Ϳ�����ת�ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3337" />
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
			<![CDATA[�ڳ����Ĳ�,��ľ֮�콻������ľ֮�����#NPCLINK<STR:ľ����,NPCKEYNAME:ľ����,MOVE:1>#.]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ڳ����Ĳ�,��ľ֮�콻������ľ֮�����#NPCLINK<STR:ľ����,NPCKEYNAME:ľ����,MOVE:1>#.]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="ľ֮��"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="415000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
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