<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3222" name="[����]-�������ص�Լ��(6)" type="1" suggest_level="1" visible="1" next_id="3223">
		<description>
			�ٴ��鷳����ĺܱ�Ǹ�����ǣ�����ħ�Ե��Ļ�����꽫ͣ���ڶ�ħ�����ڣ���Զ�ò�����������������ȥ�������ǰɡ������Ҫ��������Ϣ��
		</description>
		<dialogue>
			<brief>�ٴ��鷳����ĺܱ�Ǹ�����ǣ�����ħ�Ե��Ļ�����꽫ͣ���ڶ�ħ�����ڣ���Զ�ò�����������������ȥ�������ǰɡ������Ҫ��������Ϣ��</brief>
			<await>����ħʯ������50����ħ�����ͷŶ�����꣡</await>
			<finish>��࡭����ʧԼ��Ŷ����Ȼ�ǵ�һ�Σ�������Ҳ��������ԭ���ء�������������Ϣ�Ļ����ǾͰ�����˯�ɣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3221" />
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
			<![CDATA[����ħʯ�߻���50ֻ#LINK<MAP:��ħʯ��1,POSX:56,POSY:148,STR:�������,MOVE:1>##MONSTERGROUP0#������ɽ�ǵĲ÷�]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ɽ�ǵ�#NPCLINK<STR:�÷�,NPCKEYNAME:��ɽ�ǲ÷�,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="50" >
					<group_hunting keyname="��ħū��1" />
					<group_hunting keyname="��ħū��2" />
					<group_hunting keyname="��ħ����1" />
					<group_hunting keyname="��ħ����2" />
					<group_hunting keyname="��ħū��˵��1" />
					<group_hunting keyname="��ħū��˵��2" />
					<group_hunting keyname="��ħū��˵��3" />
					<group_hunting keyname="��ħū��˵��4" />
					<group_hunting keyname="��ħ����˵��1" />
					<group_hunting keyname="��ħ����˵��2" />
					<group_hunting keyname="��ħ����˵��3" />
					<group_hunting keyname="��ħ����˵��4" />
					<group_hunting keyname="������ħū��1" />
					<group_hunting keyname="������ħ����1" />
					<group_hunting keyname="��Ӣ��ħū��1" />
					<group_hunting keyname="��Ӣ��ħ����1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="640000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>