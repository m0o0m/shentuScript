<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3128" name="[����]-ȥ��ɽ��" type="1" suggest_level="1" visible="1" next_id="3129">
		<description>
			��ɽ�ǵ���ݽ���ί���ϱ�Ѱ��һ��ǿ�����ʿ�������ϱ������Ƽ����ҡ���˵��ݽ�����һ���ǳ�ֵ���𾴵��ˣ���Ϊ��ش�½�����˺ܶ��¸ҵ�սʿ�����Ҿ�ȥ��ɽ����һ�˰�
		</description>
		<dialogue>
			<brief>����֮ǰ����ɽ�ǵ���ݽ���ί����Ѱ��һ��ǿ�����ʿ���������Ƽ����㣬��ȥ�������ɡ���ݽ�����һ���ǳ�ֵ���𾴵��ˣ���Ϊ���������˺ܶ��¸ҵ�սʿ��
\n�������ȥ�ɣ���Ҫ�����Ⱦ��ˡ�</brief>
			<await>��ηη�����ģ�һ�㶼����ƽʱ���㰡</await>
			<finish>�����ϱ���������ʿ����������ս�������������������������Ƽ������Ǻ��ʵġ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3127" />
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
			<![CDATA[ȥ��ɽ����#NPCLINK<STR:��ݽ���,NPCKEYNAME:��ݽ�������,MOVE:1>#������ʲô��]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ��ɽ����#NPCLINK<STR:��ݽ���,NPCKEYNAME:��ݽ�������,MOVE:1>#������ʲô��]]>
			</accomplishing>
		</tracker>
		<rewards exp="22000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>