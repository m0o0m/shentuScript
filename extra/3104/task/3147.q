<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3147" name="[����]-����һ��������" type="1" suggest_level="1" visible="1" next_id="3200">
		<description>
			�ű��Ѿ��������Ͽ��ȥ�����������
		</description>
		<dialogue>
			<brief>�ű��Ѿ����������Ͽ��ȥ����������˿��Է���ħ��������</brief>
			<await>������û���ű�ħ���޷������ű�</await>
			<finish>�����������ܺã��ű�����������Ǿ��յ�����Ϣ������ħ���Ѿ�������\n��������¸���һ��չ�����˴�ҵ���ǰ����һ�ε��ж���������չʾ�������������������Ȼû�н�а���׻��𣬵������Ƕ�ʱ����Ҳ���ѻָ��ˣ��ⳤ��������ĺڰ����������ų���һ˿��⣡</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3146" />
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
			<![CDATA[�ű��Ѿ�����������뿪���ħ��������������ȥ�������ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#������Բ�����]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ű��Ѿ�����������뿪���ħ��������������ȥ�������ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#������Բ�����]]>
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