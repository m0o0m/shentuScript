<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3121" name="[����]-�ﵽ28��" type="1" suggest_level="1" visible="1" next_id="3161">
		<description>
			����28��������������ˣ������µ����񽻸���
		</description>
		<dialogue>
			<brief>�����ȥŬ������ʵ���ɣ���28��ʱ�����ң��һ�����µ����񣬶లοһ�³���������ǣ����������ʱ��ҲΪ���Ǹ�����̫���ഺ��</brief>
			<await>������ʵ����̫���ˣ��ȵ�28�������ɣ�����Զ�ȥ��ħ�������������ʵ������</await>
			<finish>���������ˣ���������������㣡</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3120" />
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
			<![CDATA[�ﵽ#COLORCOLOR_YELLOW#28��#COLOREND#��ȥ�����ǵ�#COLORCOLOR_GREENG#�������#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ϲ���Ѿ��ﵽ#COLORCOLOR_YELLOW#28��#COLOREND#�ˣ���ȥ�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="28" max_num="200" />
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