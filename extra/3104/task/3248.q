<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3248" name="[����]-ս���ɣ��粽����(3)" type="1" suggest_level="1" visible="1">
		<description>
			��ȥΪ��������100ֻ��ħ�ȷ��100ֻ��ħ�����ɣ���Щ������ħʯ�ߵĺ���������
		</description>
		<dialogue>
			<brief>��ȥΪ��������100ֻ��ħ�ȷ��100ֻ��ħ�����ɣ���Щ������ħʯ�ߵĺ���������</brief>
			<await>ȥ��ħʯ������10ֻ��ħ�ȷ��10ֻ��ħ������</await>
			<finish>����ֵķǳ��ã�����ж�����ħʯ��������ش���˺������Ǳ�������ܿ��Ӷ��ٳǵ���ħ�Ѿ������˴�룬���ڵĶ��ٳǲ��е㰲ȫ�С�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3247" />
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
			<![CDATA[����ħʯ�߻���100��#LINK<MAP:��ħʯ��3,POSX:38,POSY:38,STR:��ħ�ȷ�,MOVE:1>##MONSTERGROUP0#��100��#LINK<MAP:��ħʯ��4,POSX:16,POSY:187,STR:��ħ����,MOVE:1>##MONSTERGROUP1#���Ҷ��ٳǵ��ϱ�]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="100" >
					<group_hunting keyname="��ħ�ȷ�1" />
					<group_hunting keyname="��ħ�ȷ�2" />
					<group_hunting keyname="��ħ�ȷ�˵��1" />
					<group_hunting keyname="��ħ�ȷ�˵��2" />
					<group_hunting keyname="��ħ�ȷ�˵��3" />
					<group_hunting keyname="��ħ�ȷ�˵��4" />
					<group_hunting keyname="��Ӣ��ħ�ȷ�1" />
					<group_hunting keyname="������ħ�ȷ�1" />
				</group>
				<group n="100" >
					<group_hunting keyname="��ħ����1" />
					<group_hunting keyname="��ħ����2" />
					<group_hunting keyname="��ħ����˵��1" />
					<group_hunting keyname="��ħ����˵��2" />
					<group_hunting keyname="��ħ����˵��3" />
					<group_hunting keyname="��ħ����˵��4" />
					<group_hunting keyname="��Ӣ��ħ����1" />
					<group_hunting keyname="������ħ����1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="10000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>