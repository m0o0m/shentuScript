<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3137" name="[����]-�޲�������ӡ" type="1" suggest_level="1" visible="1" next_id="3138">
		<description>
			������̳������ζ����ƻ���������ӡ���뾡���޲����Է�ֹ�������ħ�����������������������������æµ�ţ�ȥ����������û��ʲô��Ҫ�����ġ�
		</description>
		<dialogue>
			<brief>������̳�ķ�ӡ���뾡���޲��ã���������������������æµ�ţ���ȥ����������û��ʲô��Ҫ������У��ͽ߾������ܰ������ǰ�</brief>
			<await>�������������æ�ģ���Ҳ�������ˣ���ȥ��æѽ</await>
			<finish>����������Ƽ�������ʿ�𣿿������ܲ�������ӡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3136" />
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
			<![CDATA[ȥ�������#NPCLINK<STR:���������,NPCKEYNAME:���������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ�������#NPCLINK<STR:���������,NPCKEYNAME:���������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="24000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>