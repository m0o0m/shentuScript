<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3247" name="[����]-ս���ɣ��粽����(2)" type="1" suggest_level="1" visible="1" next_id="3248">
		<description>
			������ɱ��ħū�ͺ���ħ�����ǲ����ģ�ȥ����100ֻ��ħ��������Щ��������������Ϊ�����Ķ�ҩ�����˶��ٳǣ�
		</description>
		<dialogue>
			<brief>������ɱ��ħū�ͺ���ħ�����ǲ����ģ�ȥ����100ֻ��ħ��������Щ��������������Ϊ�����Ķ�ҩ�����˶��ٳǣ�</brief>
			<await>ȥ����100ֻ��ħ������</await>
			<finish>���ǳ�ª�Ķ�ħ��ѽ��Ӧ����Զ��ʧ�������ϡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3246" />
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
			<![CDATA[����ħʯ�߻���100��#LINK<MAP:��ħʯ��2,POSX:11,POSY:188,STR:��ħ����,MOVE:1>##MONSTERGROUP0#���Ҷ��ٳǵ��ϱ�]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
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
		<rewards exp="7000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>