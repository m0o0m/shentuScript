<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3032" name="[����]-ծ�����(1)" type="1" suggest_level="1" visible="1" next_id="3033">
		<description>
			�ҵ�Ǯ�������������Ǽ��̽�ȥ�ˣ�������������̫����ô�����׵ش�Ӧ�˽�Ǯ�أ�Ҫ�������ȥ�ߴߣ�
		</description>
		<dialogue>
			<brief>�ҵ�Ǯ�������������Ǽ��̽�ȥ�ˣ�������������̫����ô�����׵ش�Ӧ�˽�Ǯ�أ�Ҫ�������ȥ�ߴߣ�</brief>
			<await>ȥ�Ҽ������˶Ի�</await>
			<finish>��Ǯ����˵ʲô��û������������ѽ����˵��ô����ϲȵ�У�ԭ�����й�����ţ�����������ȥ�˲裡\n����������ô���Բ�Ҫ�裿Ҫ�ģ�Ҫ�ģ���ô����û�в裡��ѽ��С���ڣ����ң����Ҷ���ѽ�������ǻ�Ǯ������������ȫ�����ܵġ�����������ûǮ�������С���ҹ���ҲûǮ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3031" />
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
			<![CDATA[��#NPCLINK<STR:��������,NPCKEYNAME:��������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:��������,NPCKEYNAME:��������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="27000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>