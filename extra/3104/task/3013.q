<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3013" name="[����]-��Ѫ��������(1)" type="1" suggest_level="1" visible="1" next_id="3014">
		<description>
			�����ҵ��ɷ���������ѿ�һ�£�����������Ѷ�����漱�����ˡ�����������ͻȻ������˶�Ĺ�����ɷ���������˶��֡���\n������ʿ�����ܰ��������ȥ����������Աѯ������ʲô�����ɣ�
		</description>
		<dialogue>
			<brief>�����ҵ��ɷ���������ѿ�һ�£�����������Ѷ�����漱�����ˡ�����������ͻȻ������˶�Ĺ�����ɷ���������˶��֡���\n������ʿ�����ܰ��������ȥ����������Աѯ������ʲô�����ɣ�</brief>
			<await>ȥ����������Աѯ�ʣ�</await>
			<finish>�Ҽǵ�һ����ǰ��������ǰ����ɽ�ǣ���ʱ���ﻹ�ǳ���ȫ������֮�󣬴�����ΧͻȻ���������İ�é�˺�ľ���ˣ��ܿ�������ǰ����ɽ�ǵ�·ɽ���˶��֣�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3012" />
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
			<![CDATA[��#NPCLINK<STR:��������Ա,NPCKEYNAME:��������Ա��,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:��������Ա,NPCKEYNAME:��������Ա��,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="2000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>