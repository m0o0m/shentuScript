<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3027" name="[����]-��װ������" type="1" suggest_level="1" visible="1" next_id="3028">
		<description>
			ȥ��װ����ʦ�˽������װװ�����鱨��
		</description>
		<dialogue>
			<brief>���ڣ���Ҫ������һЩ������װ�����顣\n������ش�½���Ÿ�������ǿ���װ������Ϊ�ر����һЩ�������װ������һЩ��ͬ��λ��װ��������ÿһ�����ǳ�������������Ǵ��������������Է��ӳ������������\n����Ϊ��������õ���Ϥ��װ�������ȥ��װ����ʦ����֪�����Ϲ�϶����ղصġ�</brief>
			<await>ȥ��װ����ʦ��Ҳ����о�ϲ��</await>
			<finish>����Ϲ�������ģ�����ѽ�����������Ϲ�������ģ�Ŷ�����ڻ�Ƿ����Ǯ�ķ��ϣ���ô������ʲô�£�\n����ʲô����װ�����������Ϲ���ô֪���ģ��������أ������ĺ��ӣ�����͵�ҵľƣ���Ҫɱ�����ǣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3026" />
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
			<![CDATA[��#NPCLINK<STR:װ����ʦ,NPCKEYNAME:װ����ʦ,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:װ����ʦ,NPCKEYNAME:װ����ʦ,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="16800" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>