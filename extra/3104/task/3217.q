<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3217" name="[����]-�������ص�Լ��(1)" type="1" suggest_level="1" visible="1" next_id="3218">
		<description>
			�ּ������������ļһ��ˣ���˵�㱼���ķ���û��ʲô�ط�����ֹ��ĽŲ�������������Ľѽ��\n�������ˣ�����Ĳ÷������Ĵ��������ء������������ʢ��֮��ѽ�����û�µĻ���ȥ�������ɡ�
		</description>
		<dialogue>
			<brief>�ּ������������ļһ��ˣ���˵�㱼���ķ���û��ʲô�ط�����ֹ��ĽŲ�������������Ľѽ��\n�������ˣ�����Ĳ÷������Ĵ��������ء������������ʢ��֮��ѽ�����û�µĻ���ȥ�������ɡ�</brief>
			<await>����Ĳ÷������Ĵ������㣬ȥ�������ɡ�</await>
			<finish>������������ã������������ء�ûʲô��Ҫ���£�������˵���Ĵ����У���֪�����Ƿ�׼������ɽ�ǡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3216" />
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
			<![CDATA[�ҵ����ٳǵ�#NPCLINK<STR:�÷�,NPCKEYNAME:���ٳǲ÷�,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�÷�,NPCKEYNAME:���ٳǲ÷�,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="25000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>