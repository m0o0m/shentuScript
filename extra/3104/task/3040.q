<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3040" name="[����]-����֮��(3)" type="1" suggest_level="1" visible="1" next_id="3041">
		<script name="3040" />
		<description>
			�Ȼ�ȥ���������ͨ��һ���ɣ���֪��·�ȵ������
		</description>
		<dialogue>
			<brief>����ʿ�Ȼ�ȥ���������ͨ��һ���ɣ�����һ�죬�����ϰ�����ȥ��ɽ�ǣ�</brief>
			<await>�س���������˶Ի���</await>
			<finish>����Ļ��������̫�������������ˣ���ϧ����û��̫����������׽�����ߵ��鷳��\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3039" />
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
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="26000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>