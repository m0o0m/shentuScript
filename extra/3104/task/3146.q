<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3146" name="[����]-����һ����һ��" type="1" suggest_level="1" visible="1" next_id="3147">
		<description>
			�����ش�½�Ѿ����������е�ħ��ʦ��׼���㾡ȫ������һ������ħ����һ�ٻ���а��\n������������Ҫ������а������㣬��һ���տ��ĵص����ָ��ħ��ָ����Ϊ���ǵĹ���ָ������
		</description>
		<dialogue>
			<brief>���Ѿ��ۼ��˴�½�����е�ħ��ʦ��׼���㾡ȫ������һ������ħ����һ�ٻ���а��\n������������Ҫ������а������㣬��һ���տ��ĵص����ָ��ħ��ָ����Ϊ���ǵĹ���ָ������</brief>
			<await>������û���ű�ħ���޷������ű�</await>
			<finish>�����ű�~~~~</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3145" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="�ű�ħ��"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[�������а�����㽫#NPCLINK<STR:�ű�,NPCKEYNAME:�ű�,MOVE:1>#����]]>
			</progressing>
			<accomplishing>
			<![CDATA[�������а�����㽫#NPCLINK<STR:�ű�,NPCKEYNAME:�ű�,MOVE:1>#����]]>
			</accomplishing>
		</tracker>
		<achievements>
			<items>
				<item keyname="�ű�ħ��"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>