<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3234" name="[����]-���µ�ҥ��(4)" type="1" suggest_level="1" visible="1" next_id="3235">
		<description>
			20��ǰ����������һֻ�ϰ���Ϊ�����°���Ϊ֩��ľ޴�������Ȼ�������˳�����ȴ���˼��ص����ƣ���������ıʼ�Ҳ��ʧ�����С���Щ��ħа�����������о����ҵıʼǣ�����ѧ����Щ�Ĳ���ĵ�����\n�������ҵ�ʿһ������������裬����������ʦ���������Ϊ��ȡ�ض�ʧ�ıʼǣ�������ڵ�ʿ�����ԣ��ұ��к񱨡�
		</description>
		<dialogue>
			<brief>20��ǰ����������һֻ�ϰ���Ϊ�����°���Ϊ֩��ľ޴�������Ȼ�������˳�����ȴ���˼��ص����ƣ���������ıʼ�Ҳ��ʧ�����С���Щ��ħа�����������о����ҵıʼǣ�����ѧ����Щ�Ĳ���ĵ�����\n�������ҵ�ʿһ������������裬����������ʦ���������Ϊ��ȡ�ض�ʧ�ıʼǣ�������ڵ�ʿ�����ԣ��ұ��к񱨡�</brief>
			<await>����ħ��������ȡ�����߶�ʧ�ıʼǡ�</await>
			<finish>�������ҵıʼǣ���������Ȼ����ħѧȥ��һ���֣���л��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3233" />
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
				<trophy monster="��ħ����1" item="��ʧ�ıʼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="��ħ����2" item="��ʧ�ıʼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="��ħ����˵��1" item="��ʧ�ıʼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="��ħ����˵��2" item="��ʧ�ıʼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="��ħ����˵��3" item="��ʧ�ıʼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="��ħ����˵��4" item="��ʧ�ıʼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="������ħ����1" item="��ʧ�ıʼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="��Ӣ��ħ����1" item="��ʧ�ıʼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[����ħʯ�߶�������㣬������ħ������ȡ1��#LINK<MAP:��ħʯ��2,POSX:11,POSY:188,STR:��ʧ�ıʼ�,MOVE:1>##ITEMGROUP0#������������]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ħʯ����ĵ�#NPCLINK<STR:��������,NPCKEYNAME:��������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="��ʧ�ıʼ�" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" >
			<awards>
				<award keyname="����ӡ"  n="3" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>