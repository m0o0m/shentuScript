<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3289" name="[����]-ˮ��ʯ������(1)" type="1" suggest_level="1" visible="1" next_id="3290">
		<description>
			��Ȼ������������ɫ��ʯֻ��һ�鴿��ı�ʯ��������ʶ������������۹⣬������ɫ��ʯӦ������һ�������ܡ���������о���Щ������ȥ�����������̡�
		</description>
		<dialogue>
			<brief>��Ȼ������������ɫ��ʯֻ��һ�鴿��ı�ʯ��������ʶ������������۹⣬������ɫ��ʯӦ������һ�������ܡ���������о���Щ������ȥ�����������̡�</brief>
			<await>��Ӧ��ȥ���������</await>
			<finish>����һλ�����͸������ȷʵ�ǳ���Ư��������������˵���Ǳ�ʯ��ʵ���ϣ���Ӧ����ĳ�������Ľᾧ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3288" />
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
			<![CDATA[ȥ������#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#ѯ����ɫ��ʯ�����顣]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ������#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#ѯ����ɫ��ʯ�����顣]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="180000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>