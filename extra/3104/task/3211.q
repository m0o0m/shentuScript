<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3211" name="[����]-���ص�����(3)" type="1" suggest_level="1" visible="1" next_id="3212">
		<description>
			����λ�ú����е�ƫԶŶ��ƽʱ�������������ʿ�ɲ��࣬�����Ҿ�ί�����ӻ��̰������ˡ�\n�����������ģ������ħ�����棬���ǵĺ���Ƥ���������ߵļ�Ʒ���ϣ��������ʱ��Ļ���ȥ����Ū10��ħ�������Ƥ������ɡ�
		</description>
		<dialogue>
			<brief>����λ�ú����е�ƫԶŶ��ƽʱ�������������ʿ�ɲ��࣬�����Ҿ�ί�����ӻ��̰������ˡ�\n�����������ģ������ħ�����棬���ǵĺ���Ƥ���������ߵļ�Ʒ���ϣ��������ʱ��Ļ���ȥ����Ū10��ħ�������Ƥ������ɡ�</brief>
			<await>�������ʱ��Ļ���ȥ����Ū10�ݵ�����Ƥ������ɡ�</await>
			<finish>�����̫ǿ���ˣ����ֿ��µ�ħ���Ȼ��������׾ٵػ�ɱ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3210" />
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
				<trophy monster="ħ������" item="����Ƥ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="7500" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[�ڶ��ٳǸ�������ħ�����棬��ȡ10��#LINK<MAP:���ٳ�,POSX:253,POSY:205,STR:����Ƥ��,MOVE:1>##ITEMGROUP0#���Ҷ��ٳǵĲ÷�]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�÷�,NPCKEYNAME:���ٳǲ÷�,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="10" bind_require="2" >
					<group_item keyname="����Ƥ��" />
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