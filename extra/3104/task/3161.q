<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3161" name="[����]-����ţħ��Ϯ����1��" type="1" suggest_level="1" visible="1" next_id="3162">
		<description>
			�������ʿ�����ǵ��Ǵ������·���Գ����ж������뿪��ɽ��֮�����ǾͿ�ʼί������ǰ�������ˣ������ڿ��ĵ��ж��������鷳����Ը��ǰ��Ϊ���ǽ�������Ҿ�·���ʿ���˽�����ɣ�
		</description>
		<dialogue>
			<brief>�������ʿ�����ǵ��Ǵ������·���Գ����ж������뿪��ɽ��֮�����ǾͿ�ʼί������ǰ�������ˣ������ڿ��ĵ��ж��������鷳����Ը��ǰ��Ϊ���ǽ�������Ҿ�·���ʿ���˽�����ɣ�</brief>
			<await>ȥ�Ҿ�·��ʿ���������顣</await>
			<finish>�ǵģ����������˴��鷳��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3121" />
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
			<![CDATA[��#NPCLINK<STR:��·��ʿ��,NPCKEYNAME:��·��ʿ��,MOVE:1>#������Ϣ��]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:��·��ʿ��,NPCKEYNAME:��·��ʿ��,MOVE:1>#������Ϣ��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>