<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4040" name="[֧��]-���̵�����" type="2" suggest_level="1" visible="1" next_id="4041">
		<description>
			��ʿ�����������Ѿ���˵��������ɽ�ǵı��֣��������ڣ�ͷ����󶴵�Σ���������÷ǳ������������������������̵�ί�У�Ѱ��һλ������ǰ�������󶴵���ʿ��������ǳ��ʺϡ�
		</description>
		<dialogue>
			<brief>��ʿ�����������Ѿ���˵��������ɽ�ǵı��֣��������ڣ�ͷ����󶴵�Σ���������÷ǳ������������������������̵�ί�У�Ѱ��һλ������ǰ�������󶴵���ʿ��������ǳ��ʺϡ�</brief>
			<await>ȥ������ѯ�������</await>
			<finish>��æ�����������ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="22" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[�ҳ����#NPCLINK<STR:����,NPCKEYNAME:��������,MOVE:1>#���������]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ҳ����#NPCLINK<STR:����,NPCKEYNAME:��������,MOVE:1>#���������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="25000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>