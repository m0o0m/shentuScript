<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3290" name="[����]-ˮ��ʯ������(2)" type="1" suggest_level="1" visible="1" next_id="3291">
		<description>
			�ҿ��Ըо������־������̺������ص�����������������档\n���������������������о�֮ǰ�������ʸ�����ˡ���ô��ȥ�Ҳر����ػ���ѯ�ʰɡ�����ǰ�Ľ����У��������Ѿ���ʶ������һλ֪ʶԨ���Ĵ�ʦ�˰ɡ�
		</description>
		<dialogue>
			<brief>�ҿ��Ըо������־������̺������ص�����������������档\n���������������������о�֮ǰ�������ʸ�����ˡ���ô��ȥ�Ҳر����ػ���ѯ�ʰɡ�����ǰ�Ľ����У��������Ѿ���ʶ������һλ֪ʶԨ���Ĵ�ʦ�˰ɡ�</brief>
			<await>�����ȥѯ��һ�²ر����ػ��ˡ�</await>
			<finish>������ľ���ѽ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3289" />
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
			<![CDATA[ѯ��#NPCLINK<STR:�ر����ػ���,NPCKEYNAME:�ر����ػ���,MOVE:1>#������ɫ��ʯ������]]>
			</progressing>
			<accomplishing>
			<![CDATA[ѯ��#NPCLINK<STR:�ر����ػ���,NPCKEYNAME:�ر����ػ���,MOVE:1>#������ɫ��ʯ������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="205000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>