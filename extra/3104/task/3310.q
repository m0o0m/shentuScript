<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3310" name="[����]-ʧ�ܵ�Զ��(1)" type="1" suggest_level="1" visible="1" next_id="3311">
		<description>
			������ʶ����սʤ���������ѣ����ҵ��ǣ�����û���ҵ�սʤ���ǵ���ȷ������\n�����ڽ��������ؾ���ս���У������ڵ�����������ʧ�ܣ�����,���˵�ʿ���������ƣ����ǣ�����ȱ���㹻��ҩ�ģ���Ը���æ��������Ҫ10�������ݣ�5���İ�֮�����İ�֮�������ڳ��������ҵ���
		</description>
		<dialogue>
			<brief>������ʶ����սʤ���������ѣ����ҵ��ǣ�����û���ҵ�սʤ���ǵ���ȷ������\n�����ڽ��������ؾ���ս���У������ڵ�����������ʧ�ܣ�����,���˵�ʿ���������ƣ����ǣ�����ȱ���㹻��ҩ�ģ���Ը���æ��������Ҫ10�������ݣ�5���İ�֮�����İ�֮�������ڳ��������ҵ���</brief>
			<await>��û�ҵ������ҩ����?</await>
			<finish>̫��л���ˣ���������ҩ�ģ����˵�ʿ�������Եõ���ʱ�����ơ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="54" max_num="200" />
			<prologues>
				<group>
					<prologue id="3309" />
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
			<![CDATA[�ռ�10��#LINK<MAP:����1,POSX:123,POSY:63,STR:������,MOVE:1>##ITEMGROUP0#,5��#LINK<MAP:����3,POSX:108,POSY:119,STR:�İ�֮��,MOVE:1>##ITEMGROUP1#.	�İ�֮�������ڳ��������ҵ���]]>
			</progressing>
			<accomplishing>
			<![CDATA[���ռ�����ҩ�Ľ���������ڴ���#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#.]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="10" bind_require="2" >
					<group_item keyname="������" />
				</group>
				<group n="5" bind_require="2" >
					<group_item keyname="�İ�֮��" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="280000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>