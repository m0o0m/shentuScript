<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3210" name="[����]-���ص�����(2)" type="1" suggest_level="1" visible="1" next_id="3211">
		<description>
			���ˣ�����Ĳ÷�Ҳ��Ѱ��һλǿ�����ʿ������㲻��̫æ����ȥ�����ɡ�
		</description>
		<dialogue>
			<brief>���ˣ�����Ĳ÷�Ҳ��Ѱ��һλǿ�����ʿ������㲻��̫æ����ȥ�����ɡ�</brief>
			<await>�÷���ڳ��ڣ���ȥ�����ɡ�</await>
			<finish>���������ã��ܲ��ܰ���һ��æ�أ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3209" />
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
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�÷�,NPCKEYNAME:���ٳǲ÷�,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�÷�,NPCKEYNAME:���ٳǲ÷�,MOVE:1>#�Ի�]]>
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