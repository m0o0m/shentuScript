<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3272" name="[����]-������ʿ����2��" type="1" suggest_level="1" visible="1" next_id="3273">
		<description>
			��ħ�����������������������������Զ���������������ǣ����ǡ���\n������Ϊ���ˣ������Ѿ�׼������ʱ�������������ǣ��Ұ�����ȥѰ�ҽ���ķ����� �������֪ʶԨ�����������а취��
		</description>
		<dialogue>
			<brief>��ħ�����������������������������Զ���������������ǣ����ǡ���\n������Ϊ���ˣ������Ѿ�׼������ʱ�������������ǣ��Ұ�����ȥѰ�ҽ���ķ����� �������֪ʶԨ�����������а취��</brief>
			<await>������˻���֪����ȥ���������ɡ�</await>
			<finish>����ѹ�ֵ���Ϣ�����Ѿ�ע�⵽�ˣ�����û��֮ǰ���Ҿ��Ѿ���˼����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3271" />
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
			<![CDATA[ȥ������#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ������#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="250000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="7500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>