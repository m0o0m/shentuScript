<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3221" name="[����]-�������ص�Լ��(5)" type="1" suggest_level="1" visible="1" next_id="3222">
		<description>
			��ɽ�ǵĲ÷�С�����ڽ����صȴ���Ϣ�������ٴ���������һ�˰ɣ�
		</description>
		<dialogue>
			<brief>��ɽ�ǵĲ÷�С�����ڽ����صȴ���Ϣ�������ٴ���������һ�˰ɣ�</brief>
			<await>��������Ϣת����ɽ�ǵĲ÷�С�㡣</await>
			<finish>~�����˵ؿ�����\n������࣬�����й�Լ���ģ��¸��»�����顭��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3220" />
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
			<![CDATA[�ҵ���ɽ�ǵ�#NPCLINK<STR:�÷�,NPCKEYNAME:��ɽ�ǲ÷�,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ɽ�ǵ�#NPCLINK<STR:�÷�,NPCKEYNAME:��ɽ�ǲ÷�,MOVE:1>#�Ի�]]>
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