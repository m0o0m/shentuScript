<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3130" name="[����]-��·��Ԯ������" type="1" suggest_level="1" visible="1" next_id="3131">
		<description>
			�����ҵ��������¸ҵĹ����֣��������������ˣ��޷��ƶ�������ֻ�л�ȥ����ݽ���Ѱ�ҵ��ܿ��ٻָ����Ƶ�ҩ���ȹ�������
		</description>
		<dialogue>
			<brief>�������ڵ�״̬������ʹ�������㣬�ҿ���Ҳ�Ǽ�ֲ���ȥ�ˡ���������Ҫ����һ�����Ʋ����ж����ܹ������������Ƶ�ҩ������������У����ǣ��Ҳ�֪����������Ȼ�ȥ������ʦ�ɣ���Ӧ��֪��ȥ�����ң�</brief>
			<await>�ҡ��첻���ˣ���ȥ���ҵ���ʦ��</await>
			<finish>�ҵ�ѧ���������ˣ��������𣿻����ţ��⡭�����ã�ֻҪ����û�£�����������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3129" />
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
			<![CDATA[����ɽ��ȥѯ��#NPCLINK<STR:��ݽ���,NPCKEYNAME:��ݽ�������,MOVE:1>#��������ô��]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ɽ��ȥѯ��#NPCLINK<STR:��ݽ���,NPCKEYNAME:��ݽ�������,MOVE:1>#��������ô��]]>
			</accomplishing>
		</tracker>
		<rewards exp="21000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>