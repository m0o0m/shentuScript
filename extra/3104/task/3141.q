<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3141" name="[����]-�ظ��ʼ�����" type="1" suggest_level="1" visible="1" next_id="3142">
		<description>
			ǰ���������м�����������Ǳ�������ǲ��Ҿ�����������һ��ƴ����׹�������������а��ķ��򡣲�֪���Ǹ��ʼǱ��ж���ʲô���ݣ�������ش����ܾ�����ˣ�����ȥ����ħ�����ߡ�
		</description>
		<dialogue>
			<brief>ǰ���������м�����������Ǳ�������ǲ��Ҿ�����������һ��ƴ����׹�������������а��ķ��򡣲�֪���Ǹ��ʼǱ��ж���ʲô���ݣ�������ش����ܾ�����ˣ�����ȥ����ħ�����ߡ�</brief>
			<await>��ô�������������ȥ����ħ�����ߡ�</await>
			<finish>��⣬�ҵ��о��ʼ��У��������Ҷ������Է�ӡħ������о�������Ķ����������ö�ħ�Լ���Ⱥ���������ѧȥ����ʿ����һ��Ҫȥ����׷��������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3140" />
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
			<![CDATA[��������ص���Ϣ�����������ǰ��#NPCLINK<STR:ħ������,NPCKEYNAME:��������,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��������ص���Ϣ�������ǹ㳡��#NPCLINK<STR:ħ������,NPCKEYNAME:��������,MOVE:1>#]]>
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