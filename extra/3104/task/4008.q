<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4008" name="[�ճ�]-ʯ���㴮��" type="3" suggest_level="1" visible="1" next_id="4009">
		<description>
			����Ҫ�ܶ�ʯ���㣬ÿ10ֻʯ����������ʳ����һ����һ�ݣ����ԣ���ץЩʯ����ɡ�\n
		</description>
		<dialogue>
			<brief>����Ҫ�ܶ�ʯ���㣬ÿ10ֻʯ����������ʳ����һ����һ�ݣ����ԣ���ץЩʯ����ɡ�\n</brief>
			<await>����10ֻʯ����ſ���������ʳ�������\n</await>
			<finish>����������ջ񲻴��㻹���Լ����ٶ�ŪЩ����\n</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="1"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
			<level enable="1" min_num="45" max_num="100" />
			<prologues>
				<group>
					<prologue id="4007" />
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
			<![CDATA[ǰȥ����#LINK<MAP:����1,POSX:74,POSY:144,STR:ʯ����,MOVE:1>#�����#COLORCOLOR_GREENG#���ʵ�ʯ����#COLOREND##ITEM0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�غ������,��#NPCLINK<STR:�ؾ�����,NPCKEYNAME:�ؾ�����,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="���ʵ�ʯ����"  n="10" bind_require="2" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="15000" ingot="0" bind_ingot="0" integral="0" gold="1000" bind_gold="0" >
			<awards>
				<award keyname="ʯ���㴮��"  n="1" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>