<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3125" name="[����]-Ѱ����ħ��֮�ĵİ취" type="1" suggest_level="1" visible="1" next_id="3126">
		<description>
			����������˿����ɣ��������н���İ취��
		</description>
		<dialogue>
			<brief>����������˿����ɣ��������н���İ취��</brief>
			<await>ħ��֮���أ���ò���Ū���˰ɣ�</await>
			<finish>ԭ�������ţ��ħ���ĸ�Դ�ˣ�ħ��֮�ģ��������������ɣ��޷����⣬ֻ�д��ⲿȥ�������ǵ����������ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3124" />
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
			<![CDATA[��ħ��֮�Ĵ������ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#Ѱ����֮��]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ħ��֮�Ĵ������ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#Ѱ����֮��]]>
			</accomplishing>
		</tracker>
		<rewards exp="22000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>