<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3275" name="[����]-�ر����ػ��˵ıʼ�(3)" type="1" suggest_level="1" visible="1" next_id="3276">
		<description>
			���������㲻Ҫ���ۣ�\n���������������Ǹ����ҵķ��Ȳ�������ȥ�����һ����˰ɡ���׼�ʣ���ȥ����������Ⱥ������ȥ�ˣ�
		</description>
		<dialogue>
			<brief>���������㲻Ҫ���ۣ�\n���������������Ǹ����ҵķ��Ȳ�������ȥ�����һ����˰ɡ���׼�ʣ���ȥ����������Ⱥ������ȥ�ˣ�</brief>
			<await>�ߣ��������ȶ�����������˵���ҵ�æ���ҿ���Ҳûʲô����ѽ~</await>
			<finish>�����ҵķ��ȣ��ҵķ��ȣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3304" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<process>
			<trophies>
				<trophy monster="ʯ����1" item="Сʫ�µķ���" min_num="1" max_num="1" bind_require="1" limit="1" chance="1400" />
				<trophy monster="������1" item="Сʫ�µķ���" min_num="1" max_num="1" bind_require="1" limit="1" chance="1500" />
				<trophy monster="������1" item="Сʫ�µķ���" min_num="1" max_num="1" bind_require="1" limit="1" chance="1600" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[��ɱ�ؾ�����һ��Ĺ���,�ҵ�Сʫ�µķ���#ITEM0#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�����Ȼ���#NPCLINK<STR:Сʫ��,NPCKEYNAME:Сʫ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="Сʫ�µķ���"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="780000" ingot="0" bind_ingot="0" integral="0" gold="1000" bind_gold="10000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>