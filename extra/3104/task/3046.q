<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3046" name="[����]-�󶴱��(2)" type="1" suggest_level="1" visible="1" next_id="3047">
		<script name="3046" />
		<description>
			���ڣ�ȥ�鿴�󶴰ɣ�����5�ݽ�ʬ�ĸ��⣬�����С�ģ�
		</description>
		<dialogue>
			<brief>���ڣ�ȥ�鿴�󶴰ɣ�����5�ݽ�ʬ�ĸ��⣬�����С�ģ�</brief>
			<await>�ռ�5�ݽ�ʬ�ĸ�������</await>
			<finish>����֮�����ô�������ı�����ֶ���֮�����뽩ʬ��ʬ����ϣ�����������һ�ָ��Ե��Ķ������Һ÷��ֵ��磡</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3045" />
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
				<trophy monster="��ʬ1" item="��ʬ�ĸ���" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="��ʬ1" item="��ʬ�ĸ���" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="ʬ��1" item="��ʬ�ĸ���" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="��ʬ2" item="��ʬ�ĸ���" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="��ʬ2" item="��ʬ�ĸ���" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="��ʬ1" item="��ʬ�ĸ���" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="�ױ���ʬ1" item="��ʬ�ĸ���" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="�ױ���ʬ2" item="��ʬ�ĸ���" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[ȥ����ڻ���#LINK<MAP:������1,POSX:27,POSY:64,STR:��ʬ,MOVE:1>#��ý�ʬ�ĸ���#ITEMGROUP0#����������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="5" bind_require="1" >
					<group_item keyname="��ʬ�ĸ���" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="98000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>