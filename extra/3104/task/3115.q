<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3115" name="[����]-��ɽ��Ѩ�����ܣ�����" type="1" suggest_level="1" visible="1" next_id="3116">
		<script name="3115" />
		<description>
			��ȥ��ɽ��Ѩ��һ�ˣ�������๤�͹���๤������Ѱһ�£�������õ�ʲô����
		</description>
		<dialogue>
			<brief>������Щ�๤���ϻ�����������Ĵ𰸣�����ȥһ�Σ���������๤�͹���๤���ϣ���õ�ʲô������</brief>
			<await>��ô�����ҵ�ʲô��������</await>
			<finish>ɽʯ������ԭ����ˣ���ǧ����ħ����Ȼ������ɽʯ�������������ʵ���ض�����ǿ���ˣ�һ��Ҫ��ֹ������������ض�����һ������ƥ�еĵ��ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3114" />
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
				<trophy monster="����๤1" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="����๤2" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="����๤3" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="����๤1" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="����๤2" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="����๤3" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="��������๤1" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="��������๤1" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="��������๤1" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="��������๤2" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="��������๤3" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="�������๤1" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="�������๤2" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="�������๤3" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="��Ӣ����๤1" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="��Ӣ����๤1" item="ɽʯ����" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[ȥ��ɽ��Ѩɱ��#COLORCOLOR_GREENG##LINK<MAP:��ɽ��Ѩ1,POSX:82,POSY:171,STR:����๤,MOVE:1>##COLOREND#����#COLORCOLOR_GREENG##LINK<MAP:��ɽ��Ѩ1,POSX:82,POSY:171,STR:����๤,MOVE:1>##COLOREND#���2��ɽʯ����#ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ�ѷ��ָ������ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="2" bind_require="2" >
					<group_item keyname="ɽʯ����" />
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