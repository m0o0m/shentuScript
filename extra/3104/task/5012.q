<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5012" name="[֧��]-��ħ���Σ����2��" type="2" suggest_level="1" visible="1">
		<description>
			��ħ������Ŀռ䣬���ǵ����ħ������ش�½�Ŀռ�ͨ��֮һ����񣬶�ħ������������ʱ��Ļ���ֿ�ʼ�������������ǲ�ͣ�س������ħ��ķ�ӡ�����������ó��������ҽ�ȥ����10ֻ����ţħ��10ֻ����ţħ�ɡ�
		</description>
		<dialogue>
			<brief>��ħ������Ŀռ䣬���ǵ����ħ������ش�½�Ŀռ�ͨ��֮һ����񣬶�ħ������������ʱ��Ļ���ֿ�ʼ�������������ǲ�ͣ�س������ħ��ķ�ӡ�����������ó��������ҽ�ȥ����10ֻ����ţħ��10ֻ����ţħ�ɡ�</brief>
			<await>������ħ������10ֻ����ţħ��10ֻ����ţħ������ɣ�</await>
			<finish>������һ�����ﱻ����ѹ����Ȼ���˺ܶ�ѽ��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="0" max_num="200" />
			<prologues>
				<group>
					<prologue id="5011" />
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
			<![CDATA[������ħ�����10ֻ����ţħ#MONSTERGROUP0#��10ֻ����ţħ#MONSTERGROUP1#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[������#NPCLINK<STR:��ħ�����,NPCKEYNAME:��ħ�����>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="��ħ����ţħ1" />
					<group_hunting keyname="��ħ����ţħ2" />
					<group_hunting keyname="��ħ����ţħ3" />
					<group_hunting keyname="��ħ����ţħ4" />
					<group_hunting keyname="��ħ����ţħ5" />
					<group_hunting keyname="��ħ����ţħ6" />
					<group_hunting keyname="��ħ����ţħ7" />
					<group_hunting keyname="��ħ����ţħ8" />
					<group_hunting keyname="��ħ����ţħ9" />
					<group_hunting keyname="��ħ����ţħ10" />
					<group_hunting keyname="��ħ����ţħ11" />
				</group>
				<group n="10" >
					<group_hunting keyname="��ħ����ţħ1" />
					<group_hunting keyname="��ħ����ţħ2" />
					<group_hunting keyname="��ħ����ţħ3" />
					<group_hunting keyname="��ħ����ţħ4" />
					<group_hunting keyname="��ħ����ţħ5" />
					<group_hunting keyname="��ħ����ţħ6" />
					<group_hunting keyname="��ħ����ţħ7" />
					<group_hunting keyname="��ħ����ţħ8" />
					<group_hunting keyname="��ħ����ţħ9" />
					<group_hunting keyname="��ħ����ţħ10" />
					<group_hunting keyname="��ħ����ţħ11" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="225000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="22500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>