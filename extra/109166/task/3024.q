<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3024" name="[����]-����ǰ������(2)" type="1" suggest_level="1" visible="1" next_id="3025">
		<description>
			�ס�������Ķ����ɲ���ѽ�����������������������ǳ������㣬�������׶�ʧ��ȥ���Ҳֿ����Ա�ɣ���������԰ﵽ��Ŷ��
		</description>
		<dialogue>
			<brief>�ס�������Ķ����ɲ���ѽ�����������������������ǳ������㣬�������׶�ʧ��ȥ���Ҳֿ����Ա�ɣ���������԰ﵽ��Ŷ��</brief>
			<await>ȥ���Ҳֿ����Ա�ɣ���������԰ﵽ��Ŷ��</await>
			<finish>������ʱ���õ���Ʒ���Դ���������Ŷ����Ҫʹ��ʱ����������������ֿ����Ա����ȡ����������صĳ�ʱ�մ洢����Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3023" />
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
			<![CDATA[��#NPCLINK<STR:�ֿ����Ա,NPCKEYNAME:���ִ�ֿ����Ա��,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�ֿ����Ա,NPCKEYNAME:���ִ�ֿ����Ա��,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="22000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>