<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3120" name="[����]-��������˵�л" type="1" suggest_level="1" visible="1" next_id="3121">
		<description>
			лл��Ĺ��ģ�Ҳ�鷳�����лл������˵Ĺ��ģ�
		</description>
		<dialogue>
			<brief>лл��Ĺ��ģ�Ҳ�鷳�����лл������˵Ĺ��ģ�</brief>
			<await>����лл�������</await>
			<finish>ԭ������Ϊ���������Գ���������ڱ��˵������У�Ҳ����Ϊ��ķ��ֲŸı������ǵ����ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3119" />
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
			<![CDATA[�汯�˵�������лл���ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#����]]>
			</progressing>
			<accomplishing>
			<![CDATA[�汯�˵�������лл���ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#����]]>
			</accomplishing>
		</tracker>
		<rewards exp="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>