<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3143" name="[����]-а�����ı" type="1" suggest_level="1" visible="1" next_id="3144">
		<description>
			а�����ħ��͵���о��ʼ�һ������ʲô��ı��������ȥ�������������һ�¶Բ�!
		</description>
		<dialogue>
			<brief>���Ǽ�Ȼ������͵�ҵıʼǣ�һ����ʲô��ı�����ȥ�������������һ�¶Բ߰�!</brief>
			<await>а��һ����ʲô��ı��ȥ���������������</await>
			<finish>ʲô�����Ǿ�Ȼ���ȡħ�����ߵķ�ӡħ������о��ʼǣ�����һ�ж�������ɮ���Ĺ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3142" />
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
			<![CDATA[����ε��¼���֪���ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#������һ�¶Բ�]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ε��¼���֪���ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#������һ�¶Բ�]]>
			</accomplishing>
		</tracker>
		<rewards exp="25000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>