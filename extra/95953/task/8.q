<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="8" name="ÿ������-������ص�3" type="1" suggest_level="1" visible="1">
		<script name="ÿ������" />
		<description>
			ħ��ħͷţħ���������ޱߣ��ųơ�����ţħ���������������������ֵܣ�ţħ��Ϊ�֣������Ϊ�ܣ����������̰���Ը񣬴������ţ��ţ��ռ��ţħ������ѹ���࣡
��������ǣ�ǰ��ţħ����ɱ��10ֻţħսʿ��10ֻţͷħ��10ֻţħ������10ֻţħ��ʿ��10ֻţħ��ʦ��
�����������飺200000  �󶨽��:80000    ��Ԫ����100
		</description>
		<dialogue>
			<brief>ħ��ħͷţħ���������ޱߣ��ųơ�����ţħ���������������������ֵܣ�ţħ��Ϊ�֣������Ϊ�ܣ����������̰���Ը񣬴������ţ��ţ��ռ��ţħ������ѹ���࣡
��������ǣ�ǰ��ţħ����ɱ��10ֻţħսʿ��10ֻţͷħ��10ֻţħ������10ֻţħ��ʿ��10ֻţħ��ʦ��
�����������飺200000  �󶨽��:80000    ��Ԫ����100</brief>
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
			<![CDATA[#NPCLINK<STR:���͵���ص�,NPCKEYNAME:�����ϱ�># 
ţħսʿ��#MONSTERGROUP0#
ţͷħ��#MONSTERGROUP1#
ţħ������#MONSTERGROUP2#
ţħ��ʿ��#MONSTERGROUP3#
ţħ��ʦ��#MONSTERGROUP4#
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
					<group_hunting keyname="ţħսʿ" />
					<group_hunting keyname="ţħսʿ0" />
				</group>
				<group n="10" >
					<group_hunting keyname="ţͷħ" />
					<group_hunting keyname="ţͷħ0" />
				</group>
				<group n="10" >
					<group_hunting keyname="ţħ����" />
					<group_hunting keyname="ţħ����0" />
				</group>
				<group n="10" >
					<group_hunting keyname="ţħ��ʿ" />
					<group_hunting keyname="ţħ��ʿ0" />
				</group>
				<group n="10" >
					<group_hunting keyname="ţħ��ʦ" />
					<group_hunting keyname="ţħ��ʦ0" />
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