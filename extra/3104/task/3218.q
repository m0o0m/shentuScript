<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3218" name="[����]-�������ص�Լ��(2)" type="1" suggest_level="1" visible="1" next_id="3219">
		<description>
			���ڶ��ٳ�̫���ˣ���ķ��ż�����ɽ�ǣ������ҿɰ��������Һ͸��������ǳ���ȫ���������ع��\n�����㿴�ң��һ�û�����ҵ������أ�������ɽ�ǵĲ÷�Ŷ��
		</description>
		<dialogue>
			<brief>���ڶ��ٳ�̫���ˣ���ķ��ż�����ɽ�ǣ������ҿɰ��������Һ͸��������ǳ���ȫ���������ع��\n�����㿴�ң���û����������ҵ������أ�������ɽ�ǵĲ÷�Ŷ��</brief>
			<await>����ɽ���Ҳ÷졣</await>
			<finish>������ã������Ż������أ���˵�������ſֲ�����ħ�������ǳԵ��Ļ�����꽫��Զ���ܰ����أ��ҿ��Ƿǳ����ģ��������͸��һ�ж�ƽ���ͺá�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3217" />
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
			<![CDATA[�ҵ���ɽ�ǵ�#NPCLINK<STR:�÷�,NPCKEYNAME:��ɽ�ǲ÷�,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ɽ�ǵ�#NPCLINK<STR:�÷�,NPCKEYNAME:��ɽ�ǲ÷�,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="25000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>