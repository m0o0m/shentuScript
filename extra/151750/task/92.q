<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="92" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#̽����ħ��" type="1" suggest_level="1" visible="1" next_id="93">
		<script name="����ִ�нű�" />
		<description>
			��ħ��������ʥ�أ�����ʮ��BOSS���Ѷȵͣ�װ������㣬��Ҫ�����
		</description>
		<dialogue>
			<brief>��ħ��������ʥ�أ�����ʮ��BOSS���Ѷȵͣ�װ������㣬��Ҫ�����</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��ô���������BOSS���仹����ɣ��������ջ��˺ܶ�ö���Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="91" />
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
			<![CDATA[��ɱ #NPCLINK<STR:��ħ�����κ�BOSS,NPCKEYNAME:��ɽ�ǰ�����·��># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��������,NPCKEYNAME:��ɽ����������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="����ս��" />
					<group_hunting keyname="��֮�������" />
					<group_hunting keyname="��֮������" />
					<group_hunting keyname="��֮�������" />
					<group_hunting keyname="��֮ţħ��" />
					<group_hunting keyname="��֮���þ���" />
					<group_hunting keyname="��֮��Ȫ����" />
					<group_hunting keyname="��֮˫ͷ���" />
					<group_hunting keyname="��֮��ħ����" />
					<group_hunting keyname="��֮ʬ��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>