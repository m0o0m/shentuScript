<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5043" name="[����]-�Ӳ�����ڣ�1��" type="2" suggest_level="1" visible="1" next_id="5044">
		<description>
			лл�������ң�Ҳлл���߶��ҵĵ��ǣ�������������������ұ���Ҫ��ɵ����顣���Ѿ�����ʮ�꣬����ʮ�꣬�������һ�������ս��֮ǰ�����Լ������Ϊ�����ұ��������Ķ��ѣ�
		</description>
		<dialogue>
			<brief>лл�������ң�Ҳлл���߶��ҵĵ��ǣ�������������������ұ���Ҫ��ɵ����顣���Ѿ�����ʮ�꣬����ʮ�꣬�������һ�������ս��֮ǰ�����Լ������Ϊ�����ұ��������Ķ��ѣ�</brief>
			<await>~��</await>
			<finish>�ҵĶ�����Ž���Ѫ�֡�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5042" />
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
			<![CDATA[��#NPCLINK<STR:ð���߼Ӳ�,NPCKEYNAME:ð���߼Ӳ�,MOVE:1>#�Ի���]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:ð���߼Ӳ�,NPCKEYNAME:ð���߼Ӳ�,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>