<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3212" name="[����]-���ص�����(4)" type="1" suggest_level="1" visible="1" next_id="3213">
		<description>
			��һ��Ҫȥ���ٳǾ���ٴ�Ŷ�����ʱ��������Ϊ�����ٳ��ṩ�㹻��ʳ����ǲ��ð�����������Ϊ������ѽ����ɲ�Ҫ���Ŷ���������Ҹ���ء�
		</description>
		<dialogue>
			<brief>��һ��Ҫȥ���ٳǾ���ٴ�Ŷ�����ʱ��������Ϊ�����ٳ��ṩ�㹻��ʳ����ǲ��ð�����������Ϊ������ѽ����ɲ�Ҫ���Ŷ���������Ҹ���ء�</brief>
			<await>����������Ϸ��ĳ������ء�</await>
			<finish>�����˰������������˰�æ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3211" />
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
			<![CDATA[��#NPCLINK<STR:���ٳǾ����,NPCKEYNAME:���ٳǾ����,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:���ٳǾ����,NPCKEYNAME:���ٳǾ����,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="10000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>