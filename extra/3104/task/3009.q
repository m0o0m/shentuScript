<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3009" name="[����]-����������" type="1" suggest_level="1" visible="1" next_id="3010">
		<description>
			�Դ���ɽ�ǵĿ󶴱�����֮�����ſ�ʯԽ��Խ�٣�����Ҳ�Ե�Խ��Խ�����񣬶�ħ�ٴ���ʴ��ش�½��Ϊ�˷������������ļ�ֵ��ֻ����������ʿ�����ʸ���������\n�����ұ������һ�����顣���ڲ���ǰ�����Ӹ���ͻȻ������������ħ�ͱ���Ĺ�����ڣ����Ǳ����ڴ��ﲻ�����׳�ȥ�����������߳���������¹����ȡ1���������
		</description>
		<dialogue>
			<brief>�Դ���ɽ�ǵĿ󶴱�����֮�����ǵĿ�ʯԽ��Խ�٣�����Ҳ�Ե�Խ��Խ�����񣬶�ħ�ٴ���ʴ��ش�½��Ϊ�˷������������ļ�ֵ��ֻ����������ʿ�����ʸ���������\n�����ұ������һ�����顣���ڲ���ǰ�����Ӹ���ͻȻ������������ħ�ͱ���Ĺ�����ڣ����Ǳ����ڴ��ﲻ�����׳�ȥ�����������߳���������¹����ȡ1���������</brief>
			<await>�����һֻ¹����</await>
			<finish>������֪��Σ�����أ�Ҳ��������ԣ�����������ȫ����Ϊ��ش�½����ϣ��������������ǳ��ʺ�������ʹ�á�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3008" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="����֮��"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[�ڴ��Ӹ�������#LINK<MAP:���ִ�,POSX:248,POSY:285,STR:¹,MOVE:1>##MONSTERGROUP0#��ȡ1����#ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:����,NPCKEYNAME:���ִ�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="��1" />
					<group_item keyname="��2" />
					<group_item keyname="��3" />
					<group_item keyname="��4" />
					<group_item keyname="��5" />
					<group_item keyname="��6" />
					<group_item keyname="��7" />
					<group_item keyname="��8" />
					<group_item keyname="��9" />
					<group_item keyname="��10" />
					<group_item keyname="��11" />
					<group_item keyname="��12" />
					<group_item keyname="��13" />
					<group_item keyname="��14" />
					<group_item keyname="��15" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="600" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>