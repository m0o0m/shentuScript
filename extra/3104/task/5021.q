<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5021" name="[����]-������Ѫ�֣�1��" type="2" suggest_level="1" visible="1" next_id="5022">
		<description>
			ͨ����\n������ʥ�������գ�������ǰ������ɽ����ɣ���ⷢ��һ������ɱ�˰���������ԭס��������1�����ˡ������֣�������Ѫ�����ش����ɣ������д������������ָ������ӡ��Է��������ߣ����û��ɱ�߽������ͣ�\n�������棬���˼���Σ�գ�
		</description>
		<dialogue>
			<brief>ͨ����\n������ʥ�������գ�������ǰ������ɽ����ɣ���ⷢ��һ������ɱ�˰���������ԭס��������1�����ˡ������֣�������Ѫ�����ش����ɣ������д������������ָ������ӡ��Է��������ߣ����û��ɱ�߽������ͣ�\n�������棬���˼���Σ�գ�</brief>
			<await>ȥ���ϱ���̽��Ϣ��</await>
			<finish>ð���ߣ�����Ҫ���͵�ʲô�ط���</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3120" />
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
			<![CDATA[�����͵�#NPCLINK<STR:�ϱ�,NPCKEYNAME:�����ϱ�>#��Ŀ��󣬻����֪��Щʲô������]]>
			</progressing>
			<accomplishing>
			<![CDATA[�����͵�#NPCLINK<STR:�ϱ�,NPCKEYNAME:�����ϱ�>#��Ŀ��󣬻����֪��Щʲô������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="44000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1120" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>