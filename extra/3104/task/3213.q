<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3213" name="[����]-���ص�����(5)" type="1" suggest_level="1" visible="1" next_id="3214">
		<description>
			����������ί�������������ǡ�������̫�м����ˡ�\n���������������ģ���Ȼ�����Ѿ�����������Ŭ�������ǣ��㹻�����ʹ�Ӧ�����������أ�����˵����ħ��ɳ�����ǳ������������ŷǳ��ߵ�Ӫ��������Ϊ������ȡ10��ħ��ɳ�������
		</description>
		<dialogue>
			<brief>����������ί�������������ǡ�������̫�м����ˡ�\n���������������ģ���Ȼ�����Ѿ�����������Ŭ�������ǣ��㹻�����ʹ�Ӧ�����������أ�����˵����ħ��ɳ�����ǳ������������ŷǳ��ߵ�Ӫ��������Ϊ������ȡ10��ħ��ɳ�������</brief>
			<await>ȥ����Ū10�ݵ�ɳ��������ɡ�</await>
			<finish>̫���ˣ�����ɳ���⣬Ʒ�ʿ����ѽ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3212" />
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
				<trophy monster="ħ��ɳ��" item="ɳ����" min_num="1" max_num="1" bind_require="2" limit="10" chance="7500" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[�ڶ��ٳǸ�������ħ��ɳ�棬��ȡ10��#LINK<MAP:���ٳ�,POSX:247,POSY:136,STR:ɳ����,MOVE:1>##ITEMGROUP0#���Ҷ��ٳǾ����]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:���ٳǾ����,NPCKEYNAME:���ٳǾ����,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="10" bind_require="2" >
					<group_item keyname="ɳ����" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>