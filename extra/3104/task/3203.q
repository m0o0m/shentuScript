<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3203" name="[����]-�����ߵ���ʳ(2)" type="1" suggest_level="1" visible="1" next_id="3204">
		<description>
			��а��ľ�������ôǿ����������֡�������ʳ��Ȼ������û�б������ֽţ�������ȻҪ��ϸ�ļ�顣\n������ɽ�ǵ���ҩʦ��������ҩƷ���о����ǳ������ȥ����ȡ�������ڲⶾ����ҩ����ɡ�
		</description>
		<dialogue>
			<brief>��а��ľ�������ôǿ����������֡�������ʳ��Ȼ������û�б������ֽţ�������ȻҪ��ϸ�ļ�顣\n������ɽ�ǵ���ҩʦ��������ҩƷ���о����ǳ������ȥ����ȡ�������ڲⶾ����ҩ����ɡ�</brief>
			<await>�赽��ҩʦ����ҩ��������</await>
			<finish>��Ҫ�ҵ���ҩ������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3202" />
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
			<![CDATA[�ҵ���ɽ�ǵ�#NPCLINK<STR:��ҩʦ,NPCKEYNAME:��ɽ����ҩʦ,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ɽ�ǵ�#NPCLINK<STR:��ҩʦ,NPCKEYNAME:��ɽ����ҩʦ,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="30000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>