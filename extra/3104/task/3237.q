<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3237" name="[����]-��ֹ��ħ����ı(1)" type="1" suggest_level="1" visible="1" next_id="3238">
		<description>
			�ҿ졭�����ˣ������á��׷������������ߡ����ϱ�����ħ��а�����ᣬҪ��Ϯ���������ٳǣ�
		</description>
		<dialogue>
			<brief>�ҿ졭�����ˣ������á��׷������������ߡ��ϱ�����ħ��а�����ᣬҪ��Ϯ���������ٳǣ�</brief>
			<await>ȥ�Ҷ��ٳǵ��ϱ����������</await>
			<finish>��һ���ֵ������ˣ���������ħ��������һ��Ҫ������ȫ��������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3249" />
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
			<![CDATA[�����ٳ���#NPCLINK<STR:�ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="35000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>