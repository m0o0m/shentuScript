<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3246" name="[����]-ս���ɣ��粽����(1)" type="1" suggest_level="1" visible="1" next_id="3247">
		<description>
			���ٳ����ڼӿ콨�裬���ǣ���ħ���ڲ߻���һ�ε�Ϯ������һ�ε�Ͷ���¼�������������̵Ľ�ѵ�����ǲ�����һ�̵�и����Ϊ�˻��ⶫ�ٳǵľ��ƣ�����ħʯ�����ѹ������ʿ��ս���ɣ�
		</description>
		<dialogue>
			<brief>���ٳ����ڼӿ콨�裬���ǣ���ħ���ڲ߻���һ�ε�Ϯ������һ�ε�Ͷ���¼�������������̵Ľ�ѵ�����ǲ�����һ�̵�и����Ϊ�˻��ⶫ�ٳǵľ��ƣ�����ħʯ�����ѹ������ʿ��ս���ɣ�</brief>
			<await>ɱ��100ֻ��ħū�ͺ�100ֻ��ħ������������ħʯ���������˺���</await>
			<finish>�ܺã�����ж���Զ��˿�����Ч���ѹֿ��Զ����Ⱦ��ơ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3245" />
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
			<![CDATA[����ħʯ�߻���100��#LINK<MAP:��ħʯ��1,POSX:56,POSY:148,STR:��ħ����,MOVE:1>##MONSTERGROUP0#��100��#LINK<MAP:��ħʯ��1,POSX:56,POSY:148,STR:��ħū��,MOVE:1>##MONSTERGROUP1#���Ҷ��ٳǵ��ϱ�]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="100" >
					<group_hunting keyname="��ħū��1" />
					<group_hunting keyname="��ħū��2" />
					<group_hunting keyname="��ħū��˵��1" />
					<group_hunting keyname="��ħū��˵��2" />
					<group_hunting keyname="��ħū��˵��3" />
					<group_hunting keyname="��ħū��˵��4" />
					<group_hunting keyname="��Ӣ��ħū��1" />
					<group_hunting keyname="������ħū��1" />
				</group>
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
		<rewards exp="4000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>