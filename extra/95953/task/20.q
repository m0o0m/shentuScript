<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="20" name="��������-�����������" type="1" suggest_level="1" visible="1" next_id="23">
		<description>
			�м���������㣬�ܲ�������ȥҩ���ϰ�һ�ˣ�������Ÿ�ҩ���ϰ壬����Ҳûʲô�����һ��Ҫ
���ֽ�����Ŷ��
		</description>
		<dialogue>
			<brief>�м���������㣬�ܲ�������ȥҩ���ϰ�һ�ˣ�������Ÿ�ҩ���ϰ壬����Ҳûʲô�����һ��Ҫ���ֽ�����Ŷ��</brief>
			<await>�м���������㣬�ܲ�������ȥҩ���ϰ�һ�ˣ�������Ÿ�ҩ���ϰ壬����Ҳûʲô�����һ��Ҫ���ֽ�����Ŷ��</await>
			<finish>��������ţ�����������ô�ã�ʯͷ���쿪���ˣ����ڵȵ��Ҽ����ֳ������ˡ�
</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="19" />
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
			<![CDATA[ǰ��-#NPCLINK<STR:ҩ���ϰ�,NPCKEYNAME:����ҩ��>#
  (������Զ�Ѱ·)]]>
			</progressing>
			<accomplishing>
			<![CDATA[ǰ��-#NPCLINK<STR:ҩ���ϰ�,NPCKEYNAME:����ҩ��>#
  (������Զ�Ѱ·)]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>