<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4001" name="[֧��]-ί��(1)" type="2" suggest_level="1" visible="1" next_id="4002">
		<description>
			�����ؾ��ķ���,��������˵����һ��ǰ��δ�еĴ��¡�������·��Ҳһֱ�ڴ���һ��ǰ�������ؾ�����ʿ����������ǰȥð�գ�������ȥ����������
		</description>
		<dialogue>
			<brief>�����ؾ��ķ���,��������˵����һ��ǰ��δ�еĴ��¡�������·��Ҳһֱ�ڴ���һ��ǰ�������ؾ�����ʿ����������ǰȥð�գ�������ȥ����������</brief>
			<await>ȥ�Һ�����·�����ʰɣ�Ҳ����԰���æ��</await>
			<finish>�ǵģ��ǵģ�������һλǰ�������ؾ�����ʿ������԰�����</finish>
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
			<![CDATA[�붫�ٳ�#NPCLINK<STR:������·��,NPCKEYNAME:�����ؾ�����,MOVE:1>#̸̸]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳ�#NPCLINK<STR:������·��,NPCKEYNAME:�����ؾ�����,MOVE:1>#̸̸]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="44000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>