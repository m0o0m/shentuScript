<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3241" name="[����]-��ֹ��ħ����ı(5)" type="1" suggest_level="1" visible="1" next_id="3242">
		<description>
			���������ʱ��ʵ����̫�����ˣ����Ǳ�������׼���������������������ٳ��⣬����Ⱥ��ħ��̽���ϣ����ܲ��ܻ�ý�ҩ���䷽��
		</description>
		<dialogue>
			<brief>���������ʱ��ʵ����̫�����ˣ����Ǳ�������׼���������������������ٳ��⣬����Ⱥ��ħ��̽���ϣ����ܲ��ܻ�ý�ҩ���䷽��</brief>
			<await>ȥ���ٳǱ��������ħ��̽��ȡ��ҩ�䷽</await>
			<finish>ʴ��֮���Ľ�ҩ���ǻ�û���о��������Һ����Ѿ�ȡ�����䷽���ף��ȵȣ�����������ٲ���ʹ�ã���ħ�Ĵ�������������̵ġ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3240" />
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
				<trophy monster="��ħ��̽" item="��ҩ�䷽" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[�ڶ��ٳǱ���������ħ��̽����ȡ#LINK<MAP:���ٳ�,POSX:389,POSY:223,STR:��ҩ�䷽,MOVE:1>##ITEMGROUP0#������ɽ�ǵ���ҩʦ]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ɽ�ǵ�#NPCLINK<STR:��ҩʦ,NPCKEYNAME:��ɽ����ҩʦ,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="��ҩ�䷽" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>