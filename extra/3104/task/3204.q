<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3204" name="[����]-�����ߵ���ʳ(3)" type="1" suggest_level="1" visible="1" next_id="3205">
		<description>
			�ҵ���ҩ������ڼ�ⶾ�Լ�Ϊ�����������������ҩʦ�Ķ�����������Ȼ�ҿ��Խ���㣬�������Ҫ�ǵ����黹Ŷ��
		</description>
		<dialogue>
			<brief>�ҵ���ҩ������ڼ�ⶾ�Լ�Ϊ�����������������ҩʦ�Ķ�����������Ȼ�ҿ��Խ���㣬�������Ҫ�ǵ����黹Ŷ��</brief>
			<await>��ȥ���ٳǼ��������ʳ~</await>
			<finish>��������ҩ���룬�ҾͿ��Զ�ʳ�����ˮ�����ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3203" />
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
			<![CDATA[�ҵ�#NPCLINK<STR:���ٳǾ����,NPCKEYNAME:���ٳǾ����,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:���ٳǾ����,NPCKEYNAME:���ٳǾ����,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="40000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>