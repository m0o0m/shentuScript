<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3038" name="[����]-����֮��(1)" type="1" suggest_level="1" visible="1" next_id="3039">
		<script name="3038" />
		<description>
			ȥ��·���ҵ��ص��ӻ����˴��������
		</description>
		<dialogue>
			<brief>���ڳ����Ұ�޶��ﶼ�����˱��죬�ҷǳ�������Щ����Ұ������ǣ����ܷ�����ȥһ�˾�·�ȣ���̽��·�ȵ������\n������·������ɽ�Ƕ��������һƬɽ�ȣ���ǰ�������˻�ķ�Χ����Ϊа������֣���·ɽ����Ϊ����ĵء�������ʪ�����أ����˶��ߵ���԰��\n������ȥ������֮�󣬿���ȥ�ҵ��ص��ӻ����˴�����</brief>
			<await>ȥ��·�ȣ�Ѱ�Ҿ�·�ȵ��ӻ����˽������</await>
			<finish>������ɽ�������������ˣ�����̫���ˣ��Ҿ�֪����ɽ�ǲ���������ǵģ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3037" />
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
			<![CDATA[��#NPCLINK<STR:��·���ӻ���,NPCKEYNAME:��·���ӻ���,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:��·���ӻ���,NPCKEYNAME:��·���ӻ���,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="30000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>