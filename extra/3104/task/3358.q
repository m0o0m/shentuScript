<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3358" name="[����]-�޸����Ĳ���" type="1" suggest_level="1" visible="1">
		<description>
			��Ϊ��ѽ����ý����ں�ˮ�У����ԣ���Ҫ����������ʴ֮����������������ڶ��麣��ʯ��5�ݾ�Ӣ������ѪҺ���ҾͿ����޸���ѽ��ˡ�����ʯ�ھ�Ӣ���ֵ����϶��п����ҵ���
		</description>
		<dialogue>
			<brief>��Ϊ��ѽ����ý����ں�ˮ�У����ԣ���Ҫ����������ʴ֮����������������ڶ��麣��ʯ��5�ݾ�Ӣ������ѪҺ���ҾͿ����޸���ѽ��ˡ�����ʯ������������ֵȾ�Ӣ���ֵ����϶������ҵ���</brief>
			<await>��û���ҵ��㹻�Ĳ�����?</await>
			<finish>���ģ�����Ʒ�ʲ����һ���������ġ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3357" />
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
				<trophy monster="��Ӣʯ����1" item="����ʯ" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="��Ӣ������1" item="����ʯ" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="��Ӣ������1" item="����ʯ" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="��Ӣ��ǯз1" item="����ʯ" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="��Ӣ�ؾ�����1" item="����ʯ" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="��Ӣ�ؾ�����1" item="����ʯ" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="��Ӣ��ħ�̴�1" item="����ʯ" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="��Ӣ��ħ����1" item="����ʯ" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="�������1" item="����ʯ" min_num="1" max_num="1" bind_require="1" limit="1" chance="5333" />
				<trophy monster="��Ӣ�ؾ�����1" item="��Ӣ����֮Ѫ" min_num="1" max_num="1" bind_require="1" limit="10" chance="5000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[�����⾫Ӣ�����ֵ����ϻ��1�麣��ʯ#ITEMGROUP0#,�Ӿ�Ӣ�ؾ��������ϻ��10�ݾ�Ӣ����֮Ѫ#ITEMGROUP1#.]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ������#NPCLINK<STR:����,NPCKEYNAME:��������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="����ʯ" />
				</group>
				<group n="10" bind_require="1" >
					<group_item keyname="��Ӣ����֮Ѫ" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2255000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>