<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3242" name="[����]-��ֹ��ħ����ı(6)" type="1" suggest_level="1" visible="1" next_id="3243">
		<description>
			����̫���ˣ������ģ���Ȼ�����˼ٵ��䷽��\n�����Һã����Ƕ�ʴ��֮�����о������з��֣����ֶ�ҩ�ܿ�������ħʯ���ڵ���ħ�������Ƶġ���Ϊ��һ�ε�ҥ���¼����Ҷ���ħ�������Ǻ����о�����ȥ����ħ���������Ǽ����о���ҩ��ϣ��ʱ�仹���ü���
		</description>
		<dialogue>
			<brief>����̫���ˣ������ģ���Ȼ�����˼ٵ��䷽��\n�����Һã����Ƕ�ʴ��֮�����о������з��֣����ֶ�ҩ�ܿ�������ħʯ���ڵ���ħ�������Ƶġ���Ϊ��һ�ε�ҥ���¼����Ҷ���ħ�������Ǻ����о�����ȥ����ħ���������Ǽ����о���ҩ��ϣ��ʱ�仹���ü���</brief>
			<await>ȥ��ħʯ�߻�����ħ������ȡ��ҩ�䷽</await>
			<finish>��Ȼ�������ħ���������ҵ��䷽��������ȥ���飡</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3241" />
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
				<trophy monster="��ħ����1" item="��ҩ�䷽" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
				<trophy monster="��ħ����2" item="��ҩ�䷽" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
				<trophy monster="��ħ����˵��1" item="��ҩ�䷽" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
				<trophy monster="��ħ����˵��2" item="��ҩ�䷽" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
				<trophy monster="��ħ����˵��3" item="��ҩ�䷽" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
				<trophy monster="��ħ����˵��4" item="��ҩ�䷽" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
				<trophy monster="������ħ����1" item="��ҩ�䷽" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
				<trophy monster="��Ӣ��ħ����1" item="��ҩ�䷽" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[����ħʯ�߻�����ħ��������ȡ#LINK<MAP:��ħʯ��2,POSX:11,POSY:188,STR:��ҩ�䷽,MOVE:1>##ITEMGROUP0#������ɽ�ǵ���ҩʦ]]>
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
		<rewards exp="150000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>