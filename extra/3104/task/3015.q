<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3015" name="[����]-����ҩ��" type="1" suggest_level="1" visible="1" next_id="3016">
		<description>
			������ЩС�ˣ�ȥ��ҩ���̰ɣ�����Ӫ����ҩ�ģ�����������һЩ���������а�����
		</description>
		<dialogue>
			<brief>������ЩС�ˣ�ȥ��ҩ���̰ɣ�����Ӫ����ҩ�ģ�����������һЩ���������а�����</brief>
			<await>ҩ�����������Ա���</await>
			<finish>�����������и��ָ�����ҩ�ġ���������һ��æ�Ļ����ҿ�������һЩŶ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3014" />
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
			<![CDATA[��#NPCLINK<STR:ҩ����,NPCKEYNAME:���ִ�ҩ������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:ҩ����,NPCKEYNAME:���ִ�ҩ������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="2300" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>