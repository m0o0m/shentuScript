<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3028" name="[����]-��װ������(2)" type="1" suggest_level="1" visible="1" next_id="3030">
		<script name="3028" />
		<description>
			�������Ⱥ�����ĺ��Ӻȵ��ҵ�����֮ǰ�����ܰ����һ�����2̳���ƣ��ұ���һ����װ�Ĳ������㣡
		</description>
		<dialogue>
			<brief>�������Ⱥ�����ĺ��Ӻȵ��ҵ�����֮ǰ�����ܰ����һ�����2̳���ƣ��ұ���һ����װ�Ĳ������㣡</brief>
			<await>�ӳ����������ϣ��һر�͵�ߵ����ơ�</await>
			<finish>��ô��ͻ����ˣ��������ܵÿ����ǿ�ѽ���ðɣ����������ض��������װ��Ŷ����Ȼ������Ϲ�֪���ˣ��Ҿ�֪���϶��ز�ס�ˣ����͸���ɣ�\n���������ư���Խ��Խ���ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3027" />
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
				<trophy monster="���" item="����" min_num="1" max_num="1" bind_require="1" limit="2" chance="10000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[�ڴ��Ӹ�������#LINK<MAP:��ɽ��,POSX:400,POSY:210,STR:���,MOVE:1>##MONSTERGROUP0#���2̳����#ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:װ����ʦ,NPCKEYNAME:װ����ʦ,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="2" bind_require="2" >
					<group_item keyname="����" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="36000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>