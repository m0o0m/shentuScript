<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3244" name="[����]-��ֹ��ħ����ı(8)" type="1" suggest_level="1" visible="1" next_id="3245">
		<description>
			������Ѿ����Ƴ����Ľ�ҩ���������������ٰɣ��������ٳ��ϱ�����������ˮ����¼��ɣ�
		</description>
		<dialogue>
			<brief>������Ѿ����Ƴ����Ľ�ҩ���������������ٰɣ��������ٳǵ��ϱ�����������ˮ����¼��ɣ�</brief>
			<await>��Ͻ��ɣ�Խ�����ҩԽ�ã�</await>
			<finish>��Ȼ������Ȼȫ�������õ�ˮ������Ͷ���¼�����̫�����ˣ������ǵ������������ô���صĺ�����Һ����Ѿ������˽�ҩ���������������Ѵǰ��������������˷��ý�ҩ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3243" />
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
			<![CDATA[�����ٳ���#NPCLINK<STR:�ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="200000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>