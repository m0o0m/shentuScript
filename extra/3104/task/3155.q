<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3155" name="[����]-�ر���֮ľ����" type="1" suggest_level="1" visible="1" next_id="3104">
		<description>
			�ر������ŵ����������ٶȺ�ϡ���ı�������ռ����ܡ�ϡ�������Ԫ��ȵȣ�������Ǯ���򲻵������Ȼ����Ȼ����Ϊ����ʵ����������ô�������������ľ��������������Ϊ�������ս���������Ի��Զ������ľ���Ŷ��\n��������˵��ѽ���������֤������ʵ����ս20��ľ���������Ļ������кô�����Ŷ��
		</description>
		<dialogue>
			<brief>�ر������ŵ����������ٶȺ�ϡ���ı�������ռ����ܡ�ϡ�������Ԫ��ȵȣ�������Ǯ���򲻵������Ȼ����Ȼ����Ϊ����ʵ����������ô�������������ľ��������������Ϊ�������ս���������Ի��Զ������ľ���Ŷ��\n��������˵��ѽ���������֤������ʵ����ս20��ľ���������Ļ������кô�����Ŷ��</brief>
			<await>��ȥ�ɣ�����ˣ�ʱ��ܱ���</await>
			<finish>С����ʵ����ǿѽ��������϶��ջ񲻴�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3154" />
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
			<![CDATA[��ɱ20��#LINK<MAP:ľ����,POSX:41,POSY:85,STR:ľ��������>##MONSTERGROUP0#��#COLORCOLOR_GOLD#��ʾ��ʹ�ö౶���������ľ�������������ܾ�����ǵĿ�У�#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:ľ���ﴫ����,NPCKEYNAME:ľ���ﴫ����,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="ľ��������1" />
					<group_hunting keyname="ľ��������2" />
					<group_hunting keyname="ľ��������3" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="125000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>