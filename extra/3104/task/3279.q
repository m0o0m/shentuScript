<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3279" name="[����]-ħ�����ߵıʼ�(3)" type="1" suggest_level="1" visible="1" next_id="3280">
		<description>
			���룬���ߵıʼ��У�һ���й�������������о������Ƿǳ���Ҫ�����ܣ���������а�����֪��������Ҫȷ�����Ʒ�ԣ�ȷʵ��Ӧ�õġ�\n�����������Ʒ�ԣ��������ħ�ĳ���ս�������Ѿ��˽�÷ǳ���̣������������ȫ���Խ����㡣�պþͿ��ȥ�ɣ�
		</description>
		<dialogue>
			<brief>���룬���ߵıʼ��У�һ���й�������������о������Ƿǳ���Ҫ�����ܣ���������а�����֪��������Ҫȷ�����Ʒ�ԣ�ȷʵ��Ӧ�õġ�\n�����������Ʒ�ԣ��������ħ�ĳ���ս�������Ѿ��˽�÷ǳ���̣������������ȫ���Խ����㡣�պþͿ��ȥ�ɣ�</brief>
			<await>���Ѿ����Ի�ȥ������������</await>
			<finish>��Ȼ�ϱ������������Ʒ����ô���Ȿ�о��ʼǾͽ������ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3278" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="ȷ����"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[��������#NPCLINK<STR:ħ������,NPCKEYNAME:��������,MOVE:1>#��ȡ�ʼ�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��������#NPCLINK<STR:ħ������,NPCKEYNAME:��������,MOVE:1>#��ȡ�ʼ�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="ȷ����"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="180000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="�������ߵıʼ�"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>