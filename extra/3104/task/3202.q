<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3202" name="[����]-�����ߵ���ʳ(1)" type="1" suggest_level="1" visible="1" next_id="3203">
		<description>
			��Ϊ��������������ʿ��Ŭ����ǰ�����ٳ��������ʵ�·���Ѿ����Ա�֤��ȫ�����ǣ������ǰ���ǵ���ʧ�ǳ����ء�
		</description>
		<dialogue>
			<brief>ǰ���죬����������ʳǰ�����ٳǵĶ��飬��;�б�������ħ��̽Ϯ����������ʳ��˶�ʧ���Ҹյõ���Ϣ��������ʳ������ħ��̽�����ϣ�������ڿ�ʼ�ж������ٿ���׷��10�����ʳ��</brief>
			<await>������ڿ�ʼ�ж������ٿ���׷��10�����ʳ��</await>
			<finish>���������Կ��ֲ�һ����ʧ�ˣ��Ҿ�֪������ж���Զ������ôѸ�٣�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3201" />
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
				<trophy monster="��ħ��̽" item="һ����ʳ" min_num="1" max_num="1" bind_require="2" limit="10" chance="5000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[�ڶ��ٳǱ��������ħ��̽����ȡ#LINK<MAP:���ٳ�,POSX:389,POSY:223,STR:��ʳ,MOVE:1>##ITEMGROUP0#���Ҷ��ٳǾ����]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:���ٳǾ����,NPCKEYNAME:���ٳǾ����,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="10" bind_require="2" >
					<group_item keyname="һ����ʳ" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="750000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>