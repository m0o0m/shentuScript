<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3012" name="[����]-��������" type="1" suggest_level="1" visible="1" next_id="3013">
		<description>
			���û�����õķ��������Ǻ������ܵ��˺���ѽ������ټ��������̵����Σ�������Ч������ã���ȥ�������ǿ����ɡ�
		</description>
		<dialogue>
			<brief>���û�����õķ��������Ǻ������ܵ��˺���ѽ������ټ��������̵����Σ�������Ч������ã���ȥ�������ǿ����ɡ�</brief>
			<await>�����̾��ڴ���Ŷ���������ҵġ�</await>
			<finish>����������Եõ�����ʵ�õ�����Ŷ������Ϊ���ֵ��㣬Ӧ��û���㹻�Ľ�Ұɣ�������ܰ���һ��æ�Ļ����ҿ�������һ�����Ρ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3011" />
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
			<![CDATA[��#NPCLINK<STR:������,NPCKEYNAME:���ִ���������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:������,NPCKEYNAME:���ִ���������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="1680" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>