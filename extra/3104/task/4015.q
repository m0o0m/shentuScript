<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4015" name="[֧��]-��׽����(1)" type="2" suggest_level="1" visible="1" next_id="4016">
		<description>
			�ҽӵ����ٳ��ӻ��̵����š������ǵģ�������������ս��ƽϢ�����ӣ��ҳ�Ϊ��һ����ʹ��������Ѱ��һλ��������ʿ������������һ�����ʵ��ˡ������æ�Ļ���ȥ�������ʰɡ�
		</description>
		<dialogue>
			<brief>�ҽӵ����ٳ��ӻ��̵����š������ǵģ�������������ս��ƽϢ�����ӣ��ҳ�Ϊ��һ����ʹ��������Ѱ��һλ��������ʿ������������һ�����ʵ��ˡ������æ�Ļ���ȥ�������ʰɡ�</brief>
			<await>ȥ���Ҷ��ٳǵ��ӻ�������~</await>
			<finish>�ǵģ�����Ѱ��һλ��������ʿ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="54" max_num="200" />
			<prologues>
				<group>
					<prologue id="3310" />
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
			<![CDATA[�붫�ٳ�#NPCLINK<STR:�ӻ���,NPCKEYNAME:���ٳ��ӻ���,MOVE:1>#̸̸]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳ�#NPCLINK<STR:�ӻ���,NPCKEYNAME:���ٳ��ӻ���,MOVE:1>#̸̸]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="65000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>