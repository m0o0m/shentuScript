<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3041" name="[����]-���ñ���(1)" type="1" suggest_level="1" visible="1" next_id="3042">
		<script name="3041" />
		<description>
			ǰ������ڣ��̽��������5�����õĹ�ͷ�ɡ�
		</description>
		<dialogue>
			<brief>������Ҫ��İ�������Ϊ����ڣ�����˴�Σ�����������˽���������ɽ�Ƕ���ʱ�����ԴԴ���ϵĶ�ħ��Ϊ�˳����������ǣ���ʮ���ʿ��Ѫ�⻯Ϊһ���Ӵ�ķ�ڣ������ħ��ȫ�����ᣡ\n�������ڲ���ǰ������ڣ�����û�ϵس���Ž���ڣ�ķ�ӡ����������ǳ��Ʒ�ӡ����ɽ�Ǳ�Ȼ�������ǵ�Ϳ����</brief>
			<await>ǰ������ڣ��̽���������������</await>
			<finish>����Ϊ�ػ���֮��������ôΣ�յĵط���Ҳ�ܹ���ȥ���磡</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3040" />
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
				<trophy monster="�ɵ�����1" item="���õĹ�ͷ" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="��������1" item="���õĹ�ͷ" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="����սʿ1" item="���õĹ�ͷ" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="������1" item="���õĹ�ͷ" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[ȥ����ڣһ�����#LINK<MAP:����ڣ1,POSX:159,POSY:66,STR:����,MOVE:1>#��������õĹ�ͷ#ITEMGROUP0#����������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="5" bind_require="1" >
					<group_item keyname="���õĹ�ͷ" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="72000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>