<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5011" name="[֧��]-��ħ���Σ��" type="2" suggest_level="1" visible="1" next_id="5012">
		<description>
			�����������Ϊ���ҿ��������δͣ��׷��ǿ��ĽŲ�����Ȼ��������У��Ǿ�Ӧ��ȥ��ħ������һ�����������յ�������˵ı��棬������������Ҫ�������ʿ��
		</description>
		<dialogue>
			<brief>�����������Ϊ���ҿ��������δͣ��׷��ǿ��ĽŲ�����Ȼ��������У��Ǿ�Ӧ��ȥ��ħ������һ�����������յ�������˵ı��棬������������Ҫ�������ʿ��</brief>
			<await>ȥ����ħ����˰ɣ�</await>
			<finish>�꾭����ʿ����������ħ�����ڡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3121" />
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
			<![CDATA[������#NPCLINK<STR:��ħ�����,NPCKEYNAME:��ħ�����>#�Ի���]]>
			</progressing>
			<accomplishing>
			<![CDATA[������#NPCLINK<STR:��ħ�����,NPCKEYNAME:��ħ�����>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1100" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>