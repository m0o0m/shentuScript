<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="60011" name="[֧��]-��Ϥ��������" type="2" suggest_level="1" visible="1">
		<script name="60011" />
		<description>
			���������������������˦������ÿ����Խ�ʮ��������~~������������ѽ����񣬻����Ի�Ԫ����ȡ���߼����������������࣬���������������������~��������û�������\n�������꣬�����������񲻣�
		</description>
		<dialogue>
			<brief>���������������������˦������ÿ����Խ�ʮ��������~~������������ѽ����񣬻����Ի�Ԫ����ȡ���߼����������������࣬���������������������~��������û�������\n�������꣬�����������񲻣�</brief>
			<await>���꣬�㻹û���������������</await>
			<finish>�Ǻǣ���������ܼ򵥰ɣ����� ��5��ѭ��ħ�����������������������������ˢ�µ����ߵ�Ʒ��Ŷ���ǵúã�ÿ�춼���Ե������������ʮ����������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="22" max_num="100" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[���һ�����������ȥ��ɽ����#NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>#�������]]>
			</progressing>
			<accomplishing>
			<![CDATA[���һ�����������ȥ��ɽ����#NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
			<awards>
				<award keyname="ѭ��ħ��"  n="5" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>