<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3153" name="[����]-�ر���˵" type="1" suggest_level="1" visible="1" next_id="3154">
		<description>
			���Ѿ�֪�����뾡������ʵ������Ȼ��ˣ��Ǿ�һ��Ҫȥ�ر�������������ϡ���ı���ռ����ܡ�ϡ�������Ԫ�顭���ܶ������Ǯ���򲻵�Ŷ����������ʵ����˵��ľ������ǲ��ò�ȥ�������ȥ̽���𣿵�Ȼ���ر��󲢲�������Ϳ��Խ����ģ���������Ҫ��ʱ֮ɳ�����Ѿ��͸����ˣ�
		</description>
		<dialogue>
			<brief>���Ѿ�֪�����뾡������ʵ������Ȼ��ˣ��Ǿ�һ��Ҫȥ�ر�������������ϡ���ı���ռ����ܡ�ϡ�������Ԫ�顭���ܶ������Ǯ���򲻵�Ŷ����������ʵ����˵��ľ������ǲ��ò�ȥ�������ȥ̽���𣿵�Ȼ���ر��󲢲�������Ϳ��Խ����ģ���������Ҫ��ʱ֮ɳ�����Ѿ��͸����ˣ�</brief>
			<await>̽���ر�����Ҫʹ��ʱ֮ɳ��������һ�̽��ʱ��Ŷ����Ȼ��ֱ����Ԫ������Ҳ�У�</await>
			<finish>Ϊ����ʵ�����������꣬��û���Ҵ��ˣ����ػ��Ĳر��󣬲����������������ʵ����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3152" />
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
			<![CDATA[��#NPCLINK<STR:�ر����ػ���,NPCKEYNAME:�ر����ػ���,MOVE:1>#�Ի����˽�ر���������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�ر����ػ���,NPCKEYNAME:�ر����ػ���,MOVE:1>#�Ի����˽�ر���������]]>
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