<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3142" name="[����]-׷���о��ʼ�" type="1" suggest_level="1" visible="1" next_id="3143">
		<description>
			һ������Ⱥ׹�������ѱʼ�͵���ˣ�������������⼸��ĶԷ�ӡħ����о�����������ħѧ����������ݣ����ھ�ȥ���������а����ҹ��ɮ�����һ����о��ʼǣ�
		</description>
		<dialogue>
			<brief>һ������Ⱥ׹�������ѱʼ�͵���ˣ�������������⼸��ĶԷ�ӡħ������о�����������ħѧ����������ݣ����ھ�ȥ���������а����ҹ��ɮ�����һ����о��ʼǣ�</brief>
			<await>��ʿ���о��ʼ�׷��������</await>
			<finish>̫���ˣ��������ǻ�û�ƽ���ʼ��ϵķ�ӡ����δ�������е����ݣ���������ݾ�����������ѧ�ᣬ�������ǽ�����������Ƴ���ӡ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3141" />
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
				<trophy monster="ҹ��ɮ1" item="���о��ʼ�" min_num="1" max_num="1" bind_require="1" limit="1" chance="1000" />
				<trophy monster="����ҹ��ɮ1" item="���о��ʼ�" min_num="1" max_num="1" bind_require="1" limit="1" chance="1000" />
				<trophy monster="����ҹ��ɮ1" item="���о��ʼ�" min_num="1" max_num="1" bind_require="1" limit="1" chance="1000" />
				<trophy monster="��Ӣҹ��ɮ1" item="���о��ʼ�" min_num="1" max_num="1" bind_require="1" limit="1" chance="1000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[����#COLORCOLOR_GREENG##LINK<MAP:а��1,POSX:104,POSY:196,STR:���а��,MOVE:1>##COLOREND#,��#LINK<MAP:а��1,POSX:104,POSY:196,STR:ҹ��ɮ,MOVE:1>#����׷��#COLORCOLOR_GREENG#�о��ʼ�#COLOREND##ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[������о��ʼǴ���ȥ���������ǰ��#NPCLINK<STR:ħ������,NPCKEYNAME:��������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="1" >
					<group_item keyname="���о��ʼ�" />
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