<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3018" name="[����]-�˽⼼��(1)" type="1" suggest_level="1" visible="1" next_id="3020">
		<description>
			���Ѿ����Һܾ����𣿲���˵��һ������Ϊ��Ҫѧϰս���ļ��ܣ���ô��������˵˵���ܵ������ɡ�\n�������Ҫ�����ˣ�������̽���֮�󣬸�������Ԫ�ط�����ͽ����֮�У������˸���Ľ̵������Ǽ��ܾ������������˴�½֮�ϡ�������������
		</description>
		<dialogue>
			<brief>���Ѿ����Һܾ����𣿲���˵��һ������Ϊ��Ҫѧϰս���ļ��ܣ���ô��������˵˵���ܵ������ɡ�\n�������Ҫ�����ˣ�������̽���֮�󣬸�������Ԫ�ط�����ͽ����֮�У������˸���Ľ̵������Ǽ��ܾ������������˴�½֮�ϡ�������������</brief>
			<await>~</await>
			<finish>����½���飬��ඥ���ǿ�������ħ�ľ�ս���������ܶ�֪ʶ�������ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3017" />
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
			<![CDATA[��#NPCLINK<STR:����,NPCKEYNAME:���ִ�������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:����,NPCKEYNAME:���ִ�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="4600" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>