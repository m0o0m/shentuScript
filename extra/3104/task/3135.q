<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3135" name="[����]-������Σ����һ��" type="1" suggest_level="1" visible="1" next_id="3136">
		<description>
			ǰ��ʱ���ħ�����Ƿ�����Ϯ���У�������ӡ��̳�Ƕ�ħ����ҪĿ�꣬�Һã���ҳɹ��ػ����˶�ħ�����ǣ������ķ�ӡȴ�����ɶ������ڣ�����Ĺ��������㾡ȫ�������ӡ��һ������������������������룡
\n������������������н������У���ɱ20ֻ������ħ��������ħ������
		</description>
		<dialogue>
			<brief>ǰ��ʱ���ħ�����Ƿ�����Ϯ���У�������ӡ��̳�����ǵ���ҪĿ�꣬�Һã����ǳɹ��ػ����˶�ħ�����ǣ������ķ�ӡȴ�����ɶ������ڣ�����Ĺ��������㾡ȫ�������ӡ��һ������������������������룡
			\n������ϣ�����ܽ������У���ɱ20ֻ������ħ��������ħ��������</brief>
			<await>��ô��20ֻ�㶼ɱ������</await>
			<finish>�������ˣ���ħ����õ��˳�������
			\n�������ǣ�������Σ��ֻ�ǳ����õ�������ѡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3134" />
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
			<![CDATA[����#COLORCOLOR_GREENG##LINK<MAP:�����1,POSX:89,POSY:97,STR:�����,MOVE:1>##COLOREND#��ɱ20ֻ������ħ#MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#����]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="����1" />
					<group_hunting keyname="��������1" />
					<group_hunting keyname="��������1" />
					<group_hunting keyname="��Ӣ����1" />
					<group_hunting keyname="��ħ1" />
					<group_hunting keyname="��ħ2" />
					<group_hunting keyname="��ħ3" />
					<group_hunting keyname="��ħ4" />
					<group_hunting keyname="��ħ5" />
					<group_hunting keyname="������ħ1" />
					<group_hunting keyname="�����ħ1" />
					<group_hunting keyname="�����ħ2" />
					<group_hunting keyname="�����ħ3" />
					<group_hunting keyname="�����ħ4" />
					<group_hunting keyname="�����ħ5" />
					<group_hunting keyname="��Ӣ��ħ1" />
					<group_hunting keyname="ɳʯħ1" />
					<group_hunting keyname="ɳʯħ2" />
					<group_hunting keyname="ɳʯħ3" />
					<group_hunting keyname="ɳʯħ4" />
					<group_hunting keyname="ɳʯħ5" />
					<group_hunting keyname="����ɳʯħ1" />
					<group_hunting keyname="����ɳʯħ2" />
					<group_hunting keyname="����ɳʯħ3" />
					<group_hunting keyname="����ɳʯħ4" />
					<group_hunting keyname="����ɳʯħ5" />
					<group_hunting keyname="����ɳʯħ1" />
					<group_hunting keyname="��Ӣɳʯħ1" />
					<group_hunting keyname="ɢ��1" />
					<group_hunting keyname="����ɢ��1" />
					<group_hunting keyname="����ɢ��1" />
					<group_hunting keyname="��Ӣɢ��1" />
					<group_hunting keyname="ħ��1" />
					<group_hunting keyname="����ħ��1" />
					<group_hunting keyname="����ħ��1" />
					<group_hunting keyname="��Ӣħ��1" />
					<group_hunting keyname="�Źֵ���1" />
					<group_hunting keyname="����Źֵ���1" />
					<group_hunting keyname="�����Źֵ���1" />
					<group_hunting keyname="��Ӣ�Źֵ���1" />
					<group_hunting keyname="���浶��1" />
					<group_hunting keyname="������浶��1" />
					<group_hunting keyname="�������浶��1" />
					<group_hunting keyname="��Ӣ���浶��1" />
					<group_hunting keyname="˫��������1" />
					<group_hunting keyname="����˫��������1" />
					<group_hunting keyname="����˫��������1" />
					<group_hunting keyname="��Ӣ˫��������1" />
					<group_hunting keyname="��ū1" />
					<group_hunting keyname="��ū2" />
					<group_hunting keyname="���⵶ū1" />
					<group_hunting keyname="���⵶ū2" />
					<group_hunting keyname="������ū1" />
					<group_hunting keyname="��Ӣ��ū1" />
					<group_hunting keyname="��ʯ����" />
					<group_hunting keyname="Ѫ��ʦ" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="80000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>