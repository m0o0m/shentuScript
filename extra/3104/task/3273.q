<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3273" name="[����]-���߲�ε�����(1)" type="1" suggest_level="1" visible="1" next_id="3274">
		<description>
			��������ӵ�������Ķ�ħ��ʵ������ζ�����տ���սʤ�������飡\n��������һ������Σ�յĵ�·�������ᶨ���ѡ����ô����ȥ���ҽ����������ϰɡ�����ҪһЩ�������顢�����ʷ����������Դ��������ͼ�ȷ�������ϣ��ر����ػ���Ӧ�ÿ��԰����æ��ȥ����������
		</description>
		<dialogue>
			<brief>��������ӵ�������Ķ�ħ��ʵ������ζ�����տ���սʤ�������飡\n��������һ������Σ�յĵ�·�������ᶨ���ѡ����ô����ȥ���ҽ����������ϰɡ�����ҪһЩ�������顢�����ʷ����������Դ��������ͼ�ȷ�������ϣ��ر����ػ���Ӧ�ÿ��԰����æ��ȥ����������</brief>
			<await>ȥ�Ҳر����ػ������ʰ�</await>
			<finish>��ȷʵ��һЩ����Ҫ�����ϣ�����ɲ������׸���Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="50" max_num="100" />
			<prologues>
				<group>
					<prologue id="3272" />
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
			<![CDATA[���������Ҫ���Ĵ������ϣ�ȥ��#NPCLINK<STR:�ر����ػ���,NPCKEYNAME:�ر����ػ���,MOVE:1>#��æ��]]>
			</progressing>
			<accomplishing>
			<![CDATA[���������Ҫ���Ĵ������ϣ�ȥ��#NPCLINK<STR:�ر����ػ���,NPCKEYNAME:�ر����ػ���,MOVE:1>#��æ��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="300000" ingot="0" bind_ingot="100" integral="0" gold="10000" bind_gold="30000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>