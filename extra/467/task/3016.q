<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3016" name="[����]-ҩ�Ĳɼ�" type="1" suggest_level="1" visible="1" next_id="3021">
		<description>
			�ܶ��˶�˵���Ǽ��̣���ʵ������ش�½������ᣬֻ����ҩ��ϡ����Ѱ������������ҩƷ��Ȼ�Եù�����ôһ��㡣�������Ϊ�Ҳɼ�5�����黨�����Ļ����һ�Ϊ�����ṩһ��ҩ��Ŷ��
		</description>
		<dialogue>
			<brief>�ܶ��˶�˵���Ǽ��̣���ʵ������ش�½������ᣬֻ����ҩ��ϡ����Ѱ������������ҩƷ��Ȼ�Եù�����ôһ��㡣�������Ϊ�Ҳɼ�5�����黨�����Ļ����һ�Ϊ�����ṩһ��ҩ��Ŷ��</brief>
			<await>���黨���ڸ���Ŷ��</await>
			<finish>�ɼ���������ѽ���⼸�����黨Ʒ�ʺܸ��ء�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3015" />
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
			<![CDATA[�ڸ����ɼ�5��#LINK<MAP:���ִ�,POSX:243,POSY:309,STR:���黨,MOVE:1>##ITEM0#����ҩ���̡�]]>
			</progressing>
			<accomplishing>
			<![CDATA[���ɼ������黨����#NPCLINK<STR:ҩ����,NPCKEYNAME:���ִ�ҩ������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="���黨"  n="5" bind_require="0" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="3150" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="����ħ��ҩ"  n="1" bind_require="1" />
				<award keyname="������ҩ"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>