<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3124" name="[����]-��Ѱħ��֮��" type="1" suggest_level="1" visible="1" next_id="3125">
		<description>
			�䶷��ʹ�߻����ں���ţħ�����ϣ��϶����ҵ�ħ��֮�ġ���ȥ��·����һ�˰ɡ�
		</description>
		<dialogue>
			<brief>�������Ǻ���ţħ���ɣ�����������һ�˰ɣ����룬�ں���ţħ�����ϣ���϶����ҵ�ħ��֮�ģ�������Ҫ��֤һ�£�</brief>
			<await>��ô��û����ħ��֮���أ�����ȥ��ϸ����һ�°�</await>
			<finish>���������ħ��֮�ģ�������ţ��ħ���Ĺؼ���������ԴԴ���ϵز���а��֮�����ô����ļƻ���</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3123" />
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
				<trophy monster="����ţħ1" item="ħ��֮��" min_num="1" max_num="1" bind_require="1" limit="1" chance="5500" />
				<trophy monster="��Ӣ����ţħ1" item="ħ��֮��" min_num="1" max_num="1" bind_require="1" limit="1" chance="5500" />
				<trophy monster="��������ţħ1" item="ħ��֮��" min_num="1" max_num="1" bind_require="1" limit="1" chance="5500" />
				<trophy monster="�������ţħ1" item="ħ��֮��" min_num="1" max_num="1" bind_require="1" limit="1" chance="5500" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[ȥ��·��ɱ��#COLORCOLOR_GREENG##LINK<MAP:��·��1,POSX:294,POSY:495,STR:����ţħ,MOVE:1>##COLOREND#�������������ҵ�ħ��֮��#ITEMGROUP0#������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ħ��֮�Ľ�����ɽ�ǵ�#NPCLINK<STR:�䶷��ʹ��,NPCKEYNAME:�䶷��ʹ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="1" >
					<group_item keyname="ħ��֮��" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>