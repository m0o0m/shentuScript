<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5045" name="[����]-��ʧ����ҫ" type="2" suggest_level="1" visible="1" next_id="5046">
		<description>
			Ϊ��ʰȡ��������ʧ����ҫ���Һ�����������20ֻ��ħ��������ʮ�����������������ҵ����壬�ҵ�ʵ���Ѿ��½���������λ�����������ħ�ļƻ��������Ϊ������ð���ߣ���Ը������ֲ�����ź���
		</description>
		<dialogue>
			<brief>Ϊ��ʰȡ��������ʧ����ҫ���Һ�����������20ֻ��ħ��������ʮ�����������������ҵ����壬�ҵ�ʵ���Ѿ��½���������λ�����������ħ�ļƻ��������Ϊ������ð���ߣ���Ը������ֲ�����ź���</brief>
			<await>����20ֻ��ħ��</await>
			<finish>��Ȼ�����������������������������΢�����ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5044" />
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
			<![CDATA[����20ֻ#LINK<MAP:�����5,POSX:192,POSY:61,STR:��ħ>##MONSTERGROUP0#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:ð���߼Ӳ�,NPCKEYNAME:ð���߼Ӳ�,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="��ħ1" />
					<group_hunting keyname="��ħ2" />
					<group_hunting keyname="��ħ3" />
					<group_hunting keyname="��ħ4" />
					<group_hunting keyname="��ħ5" />
					<group_hunting keyname="������ħ1" />
					<group_hunting keyname="��Ӣ��ħ1" />
					<group_hunting keyname="�����ħ1" />
					<group_hunting keyname="�����ħ2" />
					<group_hunting keyname="�����ħ3" />
					<group_hunting keyname="�����ħ4" />
					<group_hunting keyname="�����ħ5" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="555000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>