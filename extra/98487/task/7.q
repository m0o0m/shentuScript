<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="7" name="ÿ������-������ص�2" type="1" suggest_level="1" visible="1">
		<script name="ÿ������" />
		<description>
			����ңԶ���ȵľ����������������࣬���󱻻�Ȫ�����ٻ������µ���������ǰ�������ر�ǿ�����Ϊ���齩ʬ�����졪������ʬ����
��������ǣ�ǰ��ʬħ��ɱ��50ֻ����ʬ����  
�����������飺180000  �󶨽��:80000    ��Ԫ����50
		</description>
		<dialogue>
			<brief>����ңԶ���ȵľ����������������࣬���󱻻�Ȫ�����ٻ������µ���������ǰ�������ر�ǿ�����Ϊ���齩ʬ�����졪������ʬ����
��������ǣ�ǰ��ʬħ��ɱ��50ֻ����ʬ����  
�����������飺180000  �󶨽��:80000    ��Ԫ����50</brief>
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
����ʬ����#MONSTERGROUP0#
(��Ӵ��Ч�ʸ���)]]>
			</progressing>
			<accomplishing>
			<![CDATA[#NPCLINK<STR:����������ʹ�߽�����,NPCKEYNAME:����ʹ��>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="50" >
					<group_hunting keyname="����ʬ��" />
					<group_hunting keyname="����ʬ��0" />
					<group_hunting keyname="����ʬ��1" />
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