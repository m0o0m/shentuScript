<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3033" name="[����]-ծ�����(2)" type="1" suggest_level="1" visible="1" next_id="3034">
		<description>
			��������˴���������������˵�Ƿ�����ġ�
		</description>
		<dialogue>
			<brief>ǰһ��ʱ�䣬��ħϮ�����ǣ����Ѿ�������һ��Ǯ�����ڹ�������֧�����ǵĽ��衣��Ȼ���������΢���޼��죬�һ����ܹ���ծ�ģ������ȥѯ��ѱ��ʦ��������һ������ġ�</brief>
			<await>��ѱ��ʦ��������������˵�Ƿ���ʵ��</await>
			<finish>�벻���������Ȼ������Щ�ؽڣ�����ǰ��ʱ�����������ȷʵ������һ��Ǯ������֧Ԯ���������뽨�顣</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3032" />
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
			<![CDATA[��#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:��ɽ��ѱ��ʦ,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:��ɽ��ѱ��ʦ,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="31000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>