<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5049" name="[����]-Ѫ�ֵĹ�����4��" type="2" suggest_level="1" visible="1">
		<description>
			������֪�������ڵ�֪Ѫ�ֶ���а��󣬾Ϳ�ʼ��Զ���������ˣ��˺�Ѫ�ֵ����˿�ʼ���������ܴ���������ͳ�������ħϮ�����ӵ�ʱ��û����ȥ��ע�Ͱ������ǣ��������ɣ�Ѫ�ֵ������������ڶ�ħ�����С�ǰ��ʱ�����ͨ������Ѫ����ɱ���ˣ����������޼ɵ������Ѫ�ֵ����˵ġ�
		</description>
		<dialogue>
			<brief>������֪�������ڵ�֪Ѫ�ֶ���а��󣬾Ϳ�ʼ��Զ���������ˣ��˺�Ѫ�ֵ����˿�ʼ���������ܴ���������ͳ�������ħϮ�����ӵ�ʱ��û����ȥ��ע�Ͱ������ǣ��������ɣ�Ѫ�ֵ������������ڶ�ħ�����С�ǰ��ʱ�����ͨ������Ѫ����ɱ���ˣ����������޼ɵ������Ѫ�ֵ����˵ġ�</brief>
			<await>~��</await>
			<finish>��������а���У��кܶ�Ϊ׷����������������࣬���Ǵ󲿷���ǰ�������ħս������ʿ����ϧ����</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5048" />
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
			<![CDATA[������#NPCLINK<STR:�ٷ�,NPCKEYNAME:�ٷ�,MOVE:1>#�Ի���]]>
			</progressing>
			<accomplishing>
			<![CDATA[������#NPCLINK<STR:�ٷ�,NPCKEYNAME:�ٷ�,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="65000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>