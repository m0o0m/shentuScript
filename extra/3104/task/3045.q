<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3045" name="[����]-�󶴱��(1)" type="1" suggest_level="1" visible="1" next_id="3046">
		<description>
			����������˽�����󶴵������
		</description>
		<dialogue>
			<brief>���ڣ���Ҫ����ȥ��̽�������ˣ�\n����ʲô���㲻֪�������󶴣�����������������·����󶴰ɡ�������ɽ�ǵ������˰ɣ��Ǿ��Ƿ����󶴵����ڡ�</brief>
			<await>����������˽�����󶴵������</await>
			<finish>��ǰ����������Ŀ�ʯ��Ϊ������ħ����ʿ�����˴�����װ����Ҳ����Ϊ��ˣ���һ���ºڷ�ߵ����ϣ���ħǱ��󶴣���ע�˴��������������գ����еĿ󹤺��ػ��߱�ȫ����ʴ����Ϊ�˽�ʬ����ڴ��ڣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3043" />
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
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="29000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>