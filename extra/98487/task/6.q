<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="6" name="ÿ������-������ص�1" type="1" suggest_level="1" visible="1">
		<script name="ÿ������" />
		<description>
			Խ��Խ��Ĺ����ڹ�����ش�½�����µ���ħ���Ļ�Ȫ����������������һ��һ��������ش�½�������������ʿ�Ѿ�����̫��̫���ˣ���ʿ����ȥ���µ���ħ��֧Ԯ����ľ�Ӣ�ɣ�
��������ǣ�ǰ����ħ��ɱ��10�����ó�ǹ����10�����ù����֣�10�����ô�����10�����õ����֡�
�����������飺160000  �󶨽�ң�80000    ��Ԫ����50
		</description>
		<dialogue>
			<brief>Խ��Խ��Ĺ����ڹ�����ش�½�����µ���ħ���Ļ�Ȫ����������������һ��һ��������ش�½�������������ʿ�Ѿ�����̫��̫���ˣ���ʿ����ȥ���µ���ħ��֧Ԯ����ľ�Ӣ�ɣ�
��������ǣ�ǰ����ħ��ɱ��10�����ó�ǹ����10�����ù����֣�10�����ô�����10�����õ����֡�
�����������飺160000  �󶨽�ң�80000    ��Ԫ����50</brief>
			<await>�������</await>
			<finish>�������</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="999999"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:00" />
			</time>
			<level enable="1" min_num="100" max_num="200" />
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
���ó�ǹ����#MONSTERGROUP0#
���ù����֣�#MONSTERGROUP1#
���ô�����#MONSTERGROUP2#
���õ����֣�#MONSTERGROUP3#
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
					<group_hunting keyname="���ó�ǹ��" />
					<group_hunting keyname="���ó�ǹ��0" />
					<group_hunting keyname="���ó�ǹ��1" />
				</group>
				<group n="10" >
					<group_hunting keyname="���ù�����" />
					<group_hunting keyname="���ù�����0" />
					<group_hunting keyname="���ù�����1" />
				</group>
				<group n="10" >
					<group_hunting keyname="���ô���" />
					<group_hunting keyname="���ô���0" />
					<group_hunting keyname="���ô���1" />
				</group>
				<group n="10" >
					<group_hunting keyname="���õ�����" />
					<group_hunting keyname="���õ�����0" />
					<group_hunting keyname="���õ�����1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="50" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>