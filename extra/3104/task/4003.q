<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4003" name="[֧��]-����ĸ���(1)" type="2" suggest_level="1" visible="1" next_id="4004">
		<description>
			�ҽӵ����ٳǲ÷�����š�����Ѱ��һλ���ڽ��뺣���ؾ�̽�յ���ʿ������������һ�����ʵ��ˡ������æ�Ļ���ȥ�������ʰɡ�
		</description>
		<dialogue>
			<brief>�ҽӵ����ٳǲ÷�����š�����Ѱ��һλ���ڽ��뺣���ؾ�̽�յ���ʿ������������һ�����ʵ��ˡ������æ�Ļ���ȥ�������ʰɡ�</brief>
			<await>��Ӧ��ȥ���Ҷ��ٳǵĲ÷�~</await>
			<finish>�ǵģ�����Ѱ��һλ��ʿ�İ�����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="51" max_num="200" />
			<prologues>
				<group>
					<prologue id="3284" />
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
			<![CDATA[�붫�ٳ�#NPCLINK<STR:�÷�,NPCKEYNAME:���ٳǲ÷�,MOVE:1>#̸̸]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳ�#NPCLINK<STR:�÷�,NPCKEYNAME:���ٳǲ÷�,MOVE:1>#̸̸]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>