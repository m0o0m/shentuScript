<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3219" name="[����]-�������ص�Լ��(3)" type="1" suggest_level="1" visible="1" next_id="3220">
		<description>
			��ʵ�ϣ���Ҳ������һ���Ӷ��ٳ�ǰ�߻�������ʿ���Ǹ�������֪��һ�����ж���սʿ�����Ƕ��ٳǵ�����Ŷ��\n����������֪���Ļ��������ܰ�����һ������ֻҪ�������ٳǵ��ϱ����Ϳ���ת�����������ˡ�
		</description>
		<dialogue>
			<brief>��ʵ�ϣ���Ҳ������һ���Ӷ��ٳ�ǰ�߻�������ʿ���Ǹ�������֪��һ�����ж���սʿ�����Ƕ��ٳǵ�����Ŷ��\n����������֪���Ļ��������ܰ�����һ������ֻҪ�������ٳǵ��ϱ����Ϳ���ת�����������ˡ�</brief>
			<await>���Ž������ٳǵ��ϱ���</await>
			<finish>�����͸���������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3218" />
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
			<![CDATA[�ҵ����ٳǵ�#NPCLINK<STR:�ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի�]]>
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