<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3239" name="[����]-��ֹ��ħ����ı(3)" type="1" suggest_level="1" visible="1" next_id="3240">
		<description>
			�����ȡ�ö�ħ���ж��ƻ����Ǿ�Ӧ�ô���ħ��̽�������֡��������ж��ɣ�ȥ���ٳǱ��������ħ��̽�����ܷ�����������ѳ�Щʲô��
		</description>
		<dialogue>
			<brief>�����ȡ�ö�ħ���ж��ƻ����Ǿ�Ӧ�ô���ħ��̽�������֡��������ж��ɣ�ȥ���ٳǱ��������ħ��̽�����ܷ�����������ѳ�Щʲô��</brief>
			<await>������ħ��̽���ܷ���ʲô</await>
			<finish>Ͷ�����棡����⣬���ٳǵ�ˮ�����Ѿ�����ħ��̽Ͷ���������в��������Ѿ�������ˮ��֮���ж��������Ѿ����ӵ������ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3238" />
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
				<trophy monster="��ħ��̽" item="Ͷ������" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[�ڶ��ٳǱ��������ħ��̽����ȡ#LINK<MAP:���ٳ�,POSX:389,POSY:223,STR:Ͷ������,MOVE:1>##ITEMGROUP0#�������ǵ��������]]>
			</progressing>
			<accomplishing>
			<![CDATA[�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="Ͷ������" />
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