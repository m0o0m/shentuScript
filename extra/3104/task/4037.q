<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4037" name="[֧��]-ѱ�޴��ˣ�2��" type="2" suggest_level="1" visible="1" next_id="4038">
		<description>
			��׽Ұ��ֻ�ǵ�һ�����ڲ�׽Ұ��֮�󣬻���Ҫһ������Ĺ��򣬿���ʹҰ���Ϊ������˵��������ӵ�ж�������Լӳɡ�������Ҫʹ�ÿ���ӡŶ����Ҫ�����ģ��㿪��һ�Σ��һά������������ӡŶ�����ɣ�����һ�Ρ�
		</description>
		<dialogue>
			<brief>��׽Ұ��ֻ�ǵ�һ�����ڲ�׽Ұ��֮�󣬻���Ҫһ������Ĺ��򣬿���ʹҰ���Ϊ������˵��������ӵ�ж�������Լӳɡ�������Ҫʹ�ÿ���ӡŶ����Ҫ�����ģ��㿪��һ�Σ��һά������������ӡŶ�����ɣ�����һ�Ρ�</brief>
			<await>���ѱ��ʦ����ѱ��ʦ��壻������￪�⡭����</await>
			<finish>�������ַǳ��á�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="4036" />
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
			<![CDATA[���#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:��ɽ��ѱ��ʦ,MOVE:1>#����#COLORCOLOR_GOLD#���￪��#COLOREND#��壬Ϊһֻ����#ITEMGROUP0#���⡣]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:��ɽ��ѱ��ʦ,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="����" />
					<group_item keyname="��Ӱ" />
					<group_item keyname="��Ѫ����" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="30000" >
			<awards>
				<award keyname="��Ӱ(δ����)"  n="1" bind_require="0" />
				<award keyname="����ӡ"  n="2" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>