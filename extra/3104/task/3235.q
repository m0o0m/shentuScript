<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3235" name="[����]-���µ�ҥ��(5)" type="1" suggest_level="1" visible="1" next_id="3236">
		<description>
			�����㽫���˽⵽����Ϣת�涫�ٳǵ��ϱ��ɣ���֪������󣬻�������Եġ�
		</description>
		<dialogue>
			<brief>�����㽫���˽⵽����Ϣת�涫�ٳǵ��ϱ��ɣ���֪������󣬻�������Եġ�</brief>
			<await>ȥ�Ҷ��ٳ��ϱ��������ࡣ</await>
			<finish>ԭ�����������������Ե����飬�һ����ġ����ˣ���ֻ�ϰ���Ϊ�����°���֩��Ĺ����Ȼ��˿ֲ������Ժ����С���ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3234" />
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
			<![CDATA[��#NPCLINK<STR:���ٳ��ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[�����ǵ�#NPCLINK<STR:���ٳ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>