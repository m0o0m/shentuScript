<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3232" name="[����]-���µ�ҥ��(2)" type="1" suggest_level="1" visible="1" next_id="3233">
		<description>
			��ʿ��������磬����ս���ڿ����˵�ʿ��ְҵ���ܶ�����Ϊ��ʿ����ش�½���е�ְҵ������ħ��������ʱ�����ǿ�ʼ���ɵ�ʿ��\n����������ҪѰ�ҵ���ʿ��׵�֤�ݣ��Ҽǵ������������ħʯ��ʱ��������Ϊһ���������ߵ����ѣ��㲻��ȥ���������룬�����ܻ�����˽���ħʯ���ڵ�һ�С�
		</description>
		<dialogue>
			<brief>��ʿ��������磬����ս���ڿ����˵�ʿ��ְҵ���ܶ�����Ϊ��ʿ����ش�½���е�ְҵ������ħ��������ʱ�����ǿ�ʼ���ɵ�ʿ��\n����������ҪѰ�ҵ���ʿ��׵�֤�ݣ��Ҽǵ������������ħʯ��ʱ��������Ϊһ���������ߵ����ѣ��㲻��ȥ���������룬�����ܻ�����˽���ħʯ���ڵ�һ�С�</brief>
			<await>ȥ��ħʯ�߸�������������</await>
			<finish>��ʿ�����ħ���޻�̸֮��������������Ⱥ��˵�˵��Ĵ��������ȣ��ȣ�����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3231" />
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
			<![CDATA[����ħʯ�߸�����#NPCLINK<STR:��������,NPCKEYNAME:��������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ħʯ�߸�����#NPCLINK<STR:��������,NPCKEYNAME:��������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="30000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>