<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3335" name="[����]-�ͽ���֮��" type="1" suggest_level="1" visible="1" next_id="3336">
		<description>
			�������ṩ�����о�ʯ�����Ѿ��������������졣������Ҫһλ��ʿ�������������죬������λ��ת���з�������ߡ���Ը�����뺣���ؾ���\n������ȥ��������һ��������߰ɡ�
		</description>
		<dialogue>
			<brief>�������ṩ�����о�ʯ�����Ѿ��������������졣������Ҫһλ��ʿ�������������죬������λ��ת���з�������ߡ���Ը�����뺣���ؾ���\n������ȥ��������һ��������߰ɡ�</brief>
			<await>��û���ҵ���ת��֮�����������.</await>
			<finish>���Ѿ��ȴ��˺ܾã�����������֮�죬��֮����Ϳ�����ת�ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3334" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="��֮��"  n="1" bind_require="1" />
				<acquire_item keyname="ľ֮��"  n="1" bind_require="1" />
				<acquire_item keyname="ˮ֮��"  n="1" bind_require="1" />
				<acquire_item keyname="��֮��"  n="1" bind_require="1" />
				<acquire_item keyname="��֮��"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[�ڳ���һ��,����֮�콻��������֮�����#NPCLINK<STR:������,NPCKEYNAME:������,MOVE:1>#.]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ڳ���һ��,����֮�콻��������֮�����#NPCLINK<STR:������,NPCKEYNAME:������,MOVE:1>#.]]>
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
		<rewards exp="315000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
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