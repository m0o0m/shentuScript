<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3100" name="[����]-Σ��֮��" type="1" suggest_level="1" visible="1" next_id="3101">
		<description>
			������һ��ս��֮�ǣ���������źܶ���ѹ��ħ�ķ�ӡ��ͬʱ������Ҳ��һ��Σ��֮�ǣ���������Ϊ�۹���������ȴ�������ս��ݻ٣��������Ժ��������һֱ���ܶ�ħ��Ϯ����\n��������ǳ���Ҫ�����˵İ�����Ŀǰ����ħ����·�����ҷ����������������ȥ������
		</description>
		<dialogue>
			<brief>������һ��ս��֮�ǣ���������źܶ���ѹ��ħ�ķ�ӡ��ͬʱ������Ҳ��һ��Σ��֮�ǣ���������Ϊ�۹���������ȴ�������ս��ݻ٣��������Ժ��������һֱ���ܶ�ħ��Ϯ����\n��������ǳ���Ҫ�����˵İ�����Ŀǰ����ħ����·�����ҷ����������������ȥ������</brief>
			<await>��û���㹻��ʵ��~,���Ͱ�!</await>
			<finish>�ǵģ����������鷳������Ҫһλ��ʿ�İ���!</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3047" />
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
			<![CDATA[������#NPCLINK<STR:��ħ����·��,NPCKEYNAME:��ħ����·��,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[������#NPCLINK<STR:��ħ����·��,NPCKEYNAME:��ħ����·��,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="38000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>