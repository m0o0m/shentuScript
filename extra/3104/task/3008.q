<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3008" name="[����]-Ѱ������" type="1" suggest_level="1" visible="1" next_id="3009">
		<description>
			��ľ����ǿ��Ķ�ħս����ԶԶ�����ģ�ȥ���Ҵ����������������������������ҵ����ʵ�������
		</description>
		<dialogue>
			<brief>��ľ����ǿ��Ķ�ħս����ԶԶ�����ģ�ȥ���Ҵ����������������������������ҵ����ʵ�������</brief>
			<await>ȥ�Ҵ��������.</await>
			<finish>����ΪѰ��������������������Ҷ����ˣ��������������ҵ����ָ���������Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3007" />
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
			<![CDATA[��#NPCLINK<STR:����,NPCKEYNAME:���ִ�������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:����,NPCKEYNAME:���ִ�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="400" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>