<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3126" name="[����]-�ﵽ30��" type="1" suggest_level="1" visible="1" next_id="3127">
		<script name="3126" />
		<description>
			����26��������������ˣ������µ����񽻸���
		</description>
		<dialogue>
			<brief>�����ȥŬ������ʵ���ɣ���30��ʱ�����ң��һ�����µ��������ڼ���Ҫ�����ţħ����������</brief>
			<await>������ʵ����̫���ˣ��ȵ�30�������ɣ�����Զ�ȥ��ħ�������������ʵ���������ڼ���Ҫ�����ţħ������</await>
			<finish>���������ˣ���ʵ���������ٶ�ȷʵ�ܿ죬�����е��Ŀ�࿴��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3125" />
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
			<![CDATA[�ﵽ#COLORCOLOR_YELLOW#30��#COLOREND#��ȥ�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ϲ���Ѿ��ﵽ#COLORCOLOR_YELLOW#30��#COLOREND#�ˣ���ȥ�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="30" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>