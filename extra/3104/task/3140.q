<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3140" name="[����]-��͵�ߵıʼ�" type="1" suggest_level="1" visible="1" next_id="3141">
		<description>
			ħ�����߹��ڷ�ӡħ������о��ʼǲ����ˣ���������Ǹ����⣬����������Ǿ��ܣ����ܱ���ħ���˽⣬ȥ���ϱ�����һ�£������û��ʲô��ֵ����鷢����
		</description>
		<dialogue>
			<brief>�ҵĹ��ڷ�ӡħ������о��ʼǲ����ˣ�������������Ǹ����⣬��Ϊ�ҵıʼǱ��ܵĺ����ܣ���ͨ�˸����޷���ȡ��һ������ʵ������͵�ߵģ���һ��Ҫ�����һذ���\n�����ϱ�������ͨ��Ҳ�����ܹ��ṩһ�������������ȥ�������ɡ�</brief>
			<await>�ϱ���ô˵�İ���</await>
			<finish>͵�ԣ�����һ������Ⱥ��������࣬һ��ǰ�����ϣ��м�����������Ǳ�������ǲ��Ҿ�������������������������ǿ��Ѹ�������ˡ���������ȥ�ķ���һ����а�������Ⱥ׹������ǡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3139" />
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
			<![CDATA[ȥ�����ǵ�#NPCLINK<STR:�ϱ�,NPCKEYNAME:�����ϱ�,MOVE:1>#��ѯһ�������û��ʲô�쳣���]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ�����ǵ�#NPCLINK<STR:�ϱ�,NPCKEYNAME:�����ϱ�,MOVE:1>#��ѯһ�������û��ʲô�쳣���]]>
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