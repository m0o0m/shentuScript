<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5048" name="[����]-Ѫ�ֵĹ�����3��" type="2" suggest_level="1" visible="1" next_id="5049">
		<description>
			Ѫ������һ���¸ҵ�սʿ�������ս���ڷ�����ħ�ĵ�һ�ߣ����Ǻ�������ʧ��������С�������һ�γ�����������ǰʱ�����Ѿ�������а�����Ӱ���Ѫ��ʦ��������׷�����ѪҺ������а��֮·����ȷ��¼�ڰ��ģ�������������г��������������ж�ʮһ��������\n�����������������˵����������ҵ���������������������ػ��ڶ��ٳ���İٷ򳤣���������Ϯ���Ǹ����ӵĶ�ħ�ľ��ӣ�����������ġ�
		</description>
		<dialogue>
			<brief>Ѫ������һ���¸ҵ�սʿ�������ս���ڷ�����ħ�ĵ�һ�ߣ����Ǻ�������ʧ��������С�������һ�γ�����������ǰʱ�����Ѿ�������а�����Ӱ���Ѫ��ʦ��������׷�����ѪҺ������а��֮·����ȷ��¼�ڰ��ģ�������������г��������������ж�ʮһ��������\n�����������������˵����������ҵ���������������������ػ��ڶ��ٳ���İٷ򳤣���������Ϯ���Ǹ����ӵĶ�ħ�ľ��ӣ�����������ġ�</brief>
			<await>ȥ���ٳ����Ұٷ��˽������</await>
			<finish>�ǵģ���������Ҵ����ֵ�������������Ϯ�����ӵĶ�ħ��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5047" />
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
			<![CDATA[�붫�ٳ����#NPCLINK<STR:�ٷ�,NPCKEYNAME:�ٷ�,MOVE:1>#�Ի���]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳ����#NPCLINK<STR:�ٷ�,NPCKEYNAME:�ٷ�,MOVE:1>#�Ի���]]>
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