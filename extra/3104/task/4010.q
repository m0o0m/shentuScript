<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4010" name="[֧��]-���Ի������(1)" type="2" suggest_level="1" visible="1" next_id="4011">
		<description>
			���ٳ���λ�ϸ���,�ƺ��ǳ����ˡ���������ο�����������������������Ը���æ,����ǰȥ���ʡ�
		</description>
		<dialogue>
			<brief>���ٳ���λ�ϸ���,�ƺ��ǳ����ˡ���������ο�����������������������Ը���æ,����ǰȥ���ʡ�</brief>
			<await>��Ӧ��ȥ���Ҷ��ٳǵ��ϸ���~</await>
			<finish>�ǵģ�����Ѱ��һλ��ʿ�İ�����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3286" />
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
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�ϸ���,NPCKEYNAME:�ϸ���,MOVE:1>#̸̸]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�ϸ���,NPCKEYNAME:�ϸ���,MOVE:1>#̸̸]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="55000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>