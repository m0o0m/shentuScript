<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3303" name="[����]-������52��" type="1" suggest_level="1" visible="1" next_id="3286">
		<description>
			����ʵ����Ȼ̫����,����Ҫ��������.�����������52��,����ȥ�����ؾ����� ,���������������֮��ĺô�!
		</description>
		<dialogue>
			<brief>����ʵ����Ȼ̫����,����Ҫ��������.�����������52��,����ȥ�����ؾ����� ,���������������֮��ĺô�!</brief>
			<await>�㻹û���㹻��ʵ��!</await>
			<finish>��,�����е�ʵ��������,��ǿҲ�ܳ�������.</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3285" />
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
			<![CDATA[�ȼ�������52��]]>
			</progressing>
			<accomplishing>
			<![CDATA[���ﺣ�������#NPCLINK<STR:�ؾ�����,NPCKEYNAME:�ؾ�����,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="52" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="160000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>