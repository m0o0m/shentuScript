<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3007" name="[����]-���͵ļҼ�" type="1" suggest_level="1" visible="1" next_id="3008">
		<description>
			�������ǡ������ħ�ǳ��ڵļ���ս������Զ��������Ҫ���ѣ��ұ������һЩ��Ҫ��ָ����������Ҫ��˽������ҿ�����ȫû��ս���ľ������ȥɱ3ֻ���������Ұɣ�
		</description>
		<dialogue>
			<brief>�������ǡ������ħ�ǳ��ڵļ���ս������Զ��������Ҫ���ѣ��ұ������һЩ��Ҫ��ָ����������Ҫ��˽������ҿ�����ȫû��ս���ľ������ȥɱ3ֻ���������Ұɣ�</brief>
			<await>��Ҫ�������ǣ�����ħ�Ĵ���ƽ�ʱ��а�����ʴ���е������Щ����а����ʴ�����죬���ԣ����Ǳ���ʱ��С�ġ�</await>
			<finish>��Ȼ���������������㲻����Щ����Ľ������벻Ҫ�ܾ���</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3006" />
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
			<![CDATA[�ڴ��Ӹ�������3ֻ#LINK<MAP:���ִ�,POSX:203,POSY:292,STR:��,MOVE:1>##MONSTERGROUP0#����������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:��������Ա,NPCKEYNAME:��������Ա��,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="300" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>