<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="9" name="ÿ������-��������Թ�" type="1" suggest_level="1" visible="1">
		<script name="ÿ������" />
		<description>
			���ڵ���ʥս��������������ֽ����¶�ħ��ӡ�����ǵص��£�����ռʱ������в���ǵİ����������ǵ���ʿʥս������Ҳ���ǳ���ս�����˳���ħѨ��ֻ�л�����˵�����ص������ǡ������ֳ����˵�����龰�ˣ�������Χ�����˺ܶ�����֩�룬���¶�ħ�ֽ������ˣ�
��������ǣ�ǰ������ɱ��10ֻ����֩�룬10ֻ����֩�룬10ֻ����֩�� ��10ֻ��ħ֩���10ֻ����֩�롣
 �����������飺220000  �󶨽��:80000    ��Ԫ����100
		</description>
		<dialogue>
			<brief>���ڵ���ʥս��������������ֽ����¶�ħ��ӡ�����ǵص��£�����ռʱ������в���ǵİ����������ǵ���ʿʥս������Ҳ���ǳ���ս�����˳���ħѨ��ֻ�л�����˵�����ص������ǡ������ֳ����˵�����龰�ˣ�������Χ�����˺ܶ�����֩�룬���¶�ħ�ֽ������ˣ�
��������ǣ�ǰ������ɱ��10ֻ����֩�룬10ֻ����֩�룬10ֻ����֩�� ��10ֻ��ħ֩���10ֻ����֩�롣
 �����������飺220000  �󶨽��:80000    ��Ԫ����100</brief>
			<await>�������</await>
			<finish>�������</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="999999"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:00" />
			</time>
			<level enable="1" min_num="45" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[#NPCLINK<STR:���͵������Թ�,NPCKEYNAME:�����ϱ�># 
����֩�룺#MONSTERGROUP0#
����֩�룺#MONSTERGROUP1#
����֩�룺#MONSTERGROUP2#
��ħ֩�룺#MONSTERGROUP3#
����֩�룺#MONSTERGROUP4#
(��Ӵ��Ч�ʸ���)]]>
			</progressing>
			<accomplishing>
			<![CDATA[#NPCLINK<STR:����������ʹ�߽�����,NPCKEYNAME:����ʹ��>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="����֩��" />
					<group_hunting keyname="����֩��0" />
				</group>
				<group n="10" >
					<group_hunting keyname="����֩��" />
					<group_hunting keyname="����֩��0" />
				</group>
				<group n="10" >
					<group_hunting keyname="����֩��" />
					<group_hunting keyname="����֩��0" />
				</group>
				<group n="10" >
					<group_hunting keyname="��ħ֩��" />
					<group_hunting keyname="��ħ֩��0" />
				</group>
				<group n="10" >
					<group_hunting keyname="����֩��" />
					<group_hunting keyname="����֩��0" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="100" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>