<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3113" name="[����]-�ﵽ27��" type="1" suggest_level="1" visible="1" next_id="3114">
		<description>
			����27��������������ˣ������µ����񽻸���
		</description>
		<dialogue>
			<brief>�����ȥŬ������ʵ���ɣ���27��ʱ�����ң��һ�����µ�����</brief>
			<await>������ʵ����̫���ˣ��ȵ�27�������ɣ�����Զ�ȥ��ħ�������������ʵ������</await>
			<finish>�������ã���ɽ��Ѩ����������⣬����׼������ȥһ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3112" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[�ﵽ#COLORCOLOR_YELLOW#27��#COLOREND#��ȥ�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ϲ���Ѿ��ﵽ#COLORCOLOR_YELLOW#27��#COLOREND#�ˣ���ȥ�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="27" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="10000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>