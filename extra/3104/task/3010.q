<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3010" name="[����]-Ѱ�Ҳ÷�" type="1" suggest_level="1" visible="1" next_id="3011">
		<description>
			���������ǲ����ģ�����Ĳ÷�Ҳ���԰������㣬ȥ�����￴���ɡ�
		</description>
		<dialogue>
			<brief>���������ǲ����ģ�����Ĳ÷�Ҳ���԰������㣬ȥ�����￴���ɡ�</brief>
			<await>����Ĳ÷�Ҳ����Ϊ�����������ȥ�����￴���ɡ�</await>
			<finish>�Ҿ��Ǵ���Ĳ÷죡���ڷ��߷�����������������ң�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3009" />
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
			<![CDATA[��#NPCLINK<STR:�÷�,NPCKEYNAME:���ִ�÷���,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�÷�,NPCKEYNAME:���ִ�÷���,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>