<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3134" name="[����]-�ﵽ32��" type="1" suggest_level="1" visible="1" next_id="3135">
		<description>
			����ȥ����һ�£����ȼ��ﵽ32��ʱ��ȥ��������ˣ������µ����񽻸���
		</description>
		<dialogue>
			<brief>���·�ǵ�ţħ��Ȼ�׶񣬵��Ƕ���ʵ��������Ҳ�Ǻ������ģ�����Զ�����������һ��</brief>
			<await>������ʵ����̫���ˣ��ȵ�32�������ɣ�����Զ�ȥ��ħ�������������ʵ������</await>
			<finish>������̳������һ����һ�εĳ����Ҳ��֪�����ܼ�ֶ����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3133" />
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
			<![CDATA[�ﵽ#COLORCOLOR_YELLOW#32��#COLOREND#��ȥ�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ϲ���Ѿ��ﵽ#COLORCOLOR_YELLOW#32��#COLOREND#�ˣ���ȥ�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="32" max_num="200" />
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