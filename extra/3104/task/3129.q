<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3129" name="[����]-��·��Ԯ��һ��" type="1" suggest_level="1" visible="1" next_id="3130">
		<description>
			����ǰ����ݽ�����ǲ��һ������ǰ����·��ִ�����񣬵��������ȥ�ˣ����ĵ���ȴû�л�������ݽ����������ĵ���һ�����������վ������������Լ�ȥ��·��Ѱ����������ɫƤ�׵Ĺ����֡�
		</description>
		<dialogue>
			<brief>���и�������Ҫ�鷳�����������ǰ������ǲ��һ������ǰ����·��ִ�����������ȥ�ˣ���ȴû�л�������һ�����������վ�������ȥ��·�ǣ�����Ѱ������
		\n��������һ�������֣����ź�ɫ��Ƥ�ס�</brief>
			<await>�ҡ��ҡ����ǹ�����</await>
			<finish>�㡭�㡭�����ܡ�����ʦ�������ж������������������������˺����ص��ˣ����·�ǵ�ţħ�ǳ��׺�����ҪС����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3128" />
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
			<![CDATA[ȥ��·�Ƕ���Ѱ��#NPCLINK<STR:���˵Ĺ�����,NPCKEYNAME:���˵Ĺ�����,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ��·�Ƕ���Ѱ��#NPCLINK<STR:���˵Ĺ�����,NPCKEYNAME:���˵Ĺ�����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<rewards exp="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>