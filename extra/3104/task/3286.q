<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3286" name="[����]-��ֵ�����(1)" type="1" suggest_level="1" visible="1" next_id="3287">
		<description>
			���������ı��أ�������ÿһ���Ȱ����������޵ĲƸ���������������������Ҳɼ�5�����飬�һ������ر�Ŷ��
		</description>
		<dialogue>
			<brief>���������ı��أ�������ÿһ���Ȱ����������޵ĲƸ���������������������Ҳɼ�5�����飬�һ������ر�Ŷ��</brief>
			<await>��û�вɼ����㹻������~</await>
			<finish>�����Ư���ɣ���ֻ�Ǻ�������������۵Ĵ��衣��Ȼ�����껹��Ҫ����ġ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3303" />
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
			<![CDATA[�������һ��,�ɼ�5��#LINK<MAP:����1,POSX:67,POSY:138,STR:����,MOVE:1>##ITEM0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[���ɼ��������齻��#NPCLINK<STR:�ؾ�����,NPCKEYNAME:�ؾ�����,MOVE:1>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="����"  n="5" bind_require="0" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="280000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="����֮��"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>