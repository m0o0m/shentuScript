<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5031" name="[֧��]-��·������������1��" type="2" suggest_level="1" visible="1" next_id="5032">
		<description>
			��ʿ����������·���ſڵ�������ί����Ѱ��һλ��ʵ����ʿ���ҿ���ʵ��������ʱ����һ�˾�·����
		</description>
		<dialogue>
			<brief>��ʿ����������·���ſڵ�������ί����Ѱ��һλ��ʵ����ʿ���ҿ���ʵ��������ʱ����һ�˾�·����</brief>
			<await>ǰ����·�����·�������Ի���</await>
			<finish>����ȵ������ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3125" />
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
			<![CDATA[ǰ����·�Ƕ�������#NPCLINK<STR:��·������,NPCKEYNAME:��·������,MOVE:1>#�Ի���]]>
			</progressing>
			<accomplishing>
			<![CDATA[ǰ����·�Ƕ�������#NPCLINK<STR:��·������,NPCKEYNAME:��·������,MOVE:1>#�Ի���]]>
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