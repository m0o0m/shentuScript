<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="60008" name="[֧��]-�ر���֮��ħ��2" type="2" suggest_level="1" visible="1">
		<description>
			�Ҹ�����Ϊʲô����ɱ11ֻ��ħ�ɣ���Ϊ��ɱ��11ֻ��ħ����������ħ֮Ѫ��ϴ��������������֮���Ѿ����˺�����ħ��������ֵ������ˣ���������Ҫ���ٴν�����ħ������5������ֵ�����
		</description>
		<dialogue>
			<brief>�Ҹ�����Ϊʲô����ɱ11ֻ��ħ�ɣ���Ϊ��ɱ��11ֻ��ħ����������ħ֮Ѫ��ϴ��������������֮���Ѿ����˺�����ħ��������ֵ������ˣ���������Ҫ���ٴν�����ħ������5������ֵ�����</brief>
			<await>Ҫɱ5ֻ��������ֵ����������Ҫ������һ������������ֵ������</await>
			<finish>�ã�������ħ���е�ħ��Ԫ���Ѿ����ˣ�������Ҳ�޷��ٴ�����������������Ľ������úðɣ������пյ�ʱ��ϣ�������ٴν�����ħ���������ǵ�ʵ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="22" max_num="100" />
			<prologues>
				<group>
					<prologue id="60007" />
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
			<![CDATA[����#COLORCOLOR_YELLOW#��ħ��#COLOREND#������5ֻ#COLORCOLOR_YELLOW#����ֵ�����#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص�ľ�����#NPCLINK<STR:ľ���ﴫ����,NPCKEYNAME:ľ���ﴫ����>#�Ի��������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="��ħ������Գ" />
					<group_hunting keyname="��ħ����" />
					<group_hunting keyname="��ħ����" />
					<group_hunting keyname="��ħ������" />
					<group_hunting keyname="��ħ��ڤʬ��" />
					<group_hunting keyname="��ħţħ����" />
					<group_hunting keyname="��ħǧ����ħ" />
					<group_hunting keyname="��ħѪ��ʦ" />
					<group_hunting keyname="��ħ����ɮ" />
					<group_hunting keyname="��ħ������" />
					<group_hunting keyname="��ħ����ţ" />
					<group_hunting keyname="��ħ������" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
			<awards>
				<award keyname="��Ԫ��"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>