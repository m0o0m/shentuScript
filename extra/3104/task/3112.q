<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3112" name="[����]-��������˱���" type="1" suggest_level="1" visible="1" next_id="3113">
		<description>
			���ʲ����ӵ������Ѿ�������Լ���һ���ص����Ǹ��ߴ�������Ϣ
		</description>
		<dialogue>
			<brief>�������׼����������������Ȼ����Ǹ��ߴ��һ���ɣ��������ǵ��ģ��ص�����ʱ�����ת��������ˣ����Ǿ��账����Ա���ض�ȫ���Ը�����֤�������ʵĹ�Ӧ��</brief>
			<await>\n��������������ͦ�찡����Ϣ̽���������</await>
			<finish>����̫���ˣ���֤���ʹ�Ӧ·�ߵİ�ȫ���������ǵ������ͽ�����˵������Ҫ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3111" />
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
			<![CDATA[������ȥ��#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#���油���ӵ����]]>
			</progressing>
			<accomplishing>
			<![CDATA[������ȥ��#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#���油���ӵ����]]>
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