<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3271" name="[����]-������ʿ����1��" type="1" suggest_level="1" visible="1" next_id="3272">
		<description>
			��Ϊ��ħ���һ�δ��������������ʿ��ʧȥ��սʤ��ħ�����������š�������������⣬����ʿ���½��Ķ��ٳǣ����ڶ�ħ����Ϯ�»���
		</description>
		<dialogue>
			<brief>����Ⱥ��С�����Ǻ����˶�ħ�����ǲ�����ˡ����\n�����㻹������������ʲô����Ⱥ��С����Ϊ��ħ���һ�δ���������������ʧȥ��սʤ��ħ������������ţ���˵�����ܲ�������\n����������˭�ں��£������ȥ���ʶ��ٳ���Щų��</brief>
			<await>��ȥ�ɣ������Ѿ������ٻ��ˣ�</await>
			<finish>��Ȼ�Ҹе����裬���ǣ�����ȷʵ�е��˺��¡�\n�������Ǹ���������ɱ��ħ���Ѿ����������ˣ�������ǿ�����һ�δεظ����������ȥ���ֵ�ȴ��Զ����ȥ�ˣ�������һ�죬���Ƕ��ᱻ��ħɱ�����������޿��κΡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[ȥ���ٳ�����#NPCLINK<STR:�ٷ�,NPCKEYNAME:�ٷ�,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ���ٳ�����#NPCLINK<STR:�ٷ�,NPCKEYNAME:�ٷ�,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="7500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>